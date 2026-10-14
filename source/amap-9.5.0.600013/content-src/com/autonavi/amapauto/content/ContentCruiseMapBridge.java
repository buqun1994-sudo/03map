package com.autonavi.amapauto.content;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Process;
import android.os.SystemClock;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/** Reads the native map display DTO receipt off the UI thread. No location data is read. */
final class ContentCruiseMapBridge {
    interface Sink {
        void onBatch(int[] raw, int lightCount, boolean sdType, long receivedAtElapsedMs, long generation);
    }

    private static final int MAGIC = 0x43534d31;
    private static final int HEADER_BYTES = 32;
    private static final int MAX_LIGHTS = 16;
    private static final long MAX_AGE_NS = 3_000_000_000L;
    private static final long POLL_MS = 250L;
    private final File receipt;
    private final Sink sink;
    private HandlerThread thread;
    private Handler handler;
    private boolean active;
    private boolean destroyed;
    private long generation;
    private long rejectThroughNs;
    private long lastTimestampNs;
    private long lastFailureLogMs;

    ContentCruiseMapBridge(Context context, Sink sink) {
        receipt = new File(context.getFilesDir(), "content-cruise-map.bin");
        this.sink = sink;
    }

    synchronized void start() {
        if (destroyed || active) return;
        if (thread == null) {
            thread = new HandlerThread("ContentCruiseMapReader", Process.THREAD_PRIORITY_BACKGROUND);
            thread.start();
            handler = new Handler(thread.getLooper());
        }
        active = true;
        invalidateLocked();
        scheduleLocked(generation, 0L);
    }

    synchronized void stop() {
        active = false;
        invalidateLocked();
    }

    synchronized void invalidate() {
        invalidateLocked();
        if (active) scheduleLocked(generation, 0L);
    }

    synchronized void destroy() {
        if (destroyed) return;
        destroyed = true;
        active = false;
        invalidateLocked();
        if (thread != null) thread.quitSafely();
        handler = null;
        thread = null;
    }

    synchronized boolean accepts(long token) {
        return !destroyed && active && generation == token;
    }

    private void invalidateLocked() {
        generation++;
        // System.nanoTime uses CLOCK_MONOTONIC, matching native receipt (not BOOTTIME).
        rejectThroughNs = System.nanoTime();
        lastTimestampNs = 0L;
        if (handler != null) handler.removeCallbacksAndMessages(null);
    }

    private void scheduleLocked(final long token, long delayMs) {
        if (handler == null || !active || destroyed || generation != token) return;
        handler.postDelayed(new Runnable() {
            @Override public void run() { poll(token); }
        }, delayMs);
    }

    static final class Receipt {
        final int[] raw;
        final int lightCount;
        final boolean sdType;
        final long timestampNs;

        Receipt(int[] raw, int lightCount, boolean sdType, long timestampNs) {
            this.raw = raw;
            this.lightCount = lightCount;
            this.sdType = sdType;
            this.timestampNs = timestampNs;
        }
    }

    static Receipt decodeReceipt(byte[] bytes, int length, int processId, long nowNs) {
        if (bytes == null || length < HEADER_BYTES || length > bytes.length) return null;
        ByteBuffer buffer = ByteBuffer.wrap(bytes, 0, length).order(ByteOrder.LITTLE_ENDIAN);
        int magic = buffer.getInt();
        int version = buffer.getInt();
        int pid = buffer.getInt();
        int count = buffer.getInt();
        long stamp = buffer.getLong();
        int lightCount = buffer.getInt();
        int sdType = buffer.getInt();
        if (magic != MAGIC || version != 2 || pid != processId
                || count < 0 || count > MAX_LIGHTS || length != HEADER_BYTES + count * 16
                || lightCount < 0 || lightCount > MAX_LIGHTS || (sdType != 0 && sdType != 1)
                || stamp <= 0 || stamp > nowNs || nowNs - stamp > MAX_AGE_NS) return null;
        int[] raw = new int[count * 4];
        for (int i = 0; i < raw.length; i++) raw[i] = buffer.getInt();
        return new Receipt(raw, lightCount, sdType == 1, stamp);
    }

    private void poll(long token) {
        if (!accepts(token)) return;
        try {
            byte[] bytes = new byte[HEADER_BYTES + MAX_LIGHTS * 16 + 1];
            int length = 0;
            try (FileInputStream input = new FileInputStream(receipt)) {
                int read;
                while (length < bytes.length && (read = input.read(bytes, length, bytes.length - length)) > 0) {
                    length += read;
                }
            }
            long nowNs = System.nanoTime();
            Receipt decoded = decodeReceipt(bytes, length, Process.myPid(), nowNs);
            if (decoded == null) return;
            synchronized (this) {
                if (!accepts(token) || decoded.timestampNs <= rejectThroughNs
                        || decoded.timestampNs <= lastTimestampNs) return;
                lastTimestampNs = decoded.timestampNs;
            }
            // Translate monotonic age into the Store's elapsedRealtime clock domain.
            long receivedAt = SystemClock.elapsedRealtime() - (nowNs - decoded.timestampNs) / 1_000_000L;
            if (accepts(token)) sink.onBatch(decoded.raw, decoded.lightCount, decoded.sdType, receivedAt, token);
        } catch (IOException | RuntimeException | LinkageError unavailable) {
            if (receipt.exists()) logFailure(unavailable);
            // Bad/missing data does not refresh Store freshness; its expiry clears prior data.
        } finally {
            synchronized (this) { scheduleLocked(token, POLL_MS); }
        }
    }

    private void logFailure(Throwable failure) {
        long now = SystemClock.elapsedRealtime();
        synchronized (this) {
            if (now - lastFailureLogMs < 10_000L) return;
            lastFailureLogMs = now;
        }
        android.util.Log.i("ContentCruiseMap", "readerFailure=" + failure.getClass().getSimpleName());
    }
}
