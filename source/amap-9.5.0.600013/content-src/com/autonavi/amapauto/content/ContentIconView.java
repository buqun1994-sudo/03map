package com.autonavi.amapauto.content;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;

public final class ContentIconView extends View {
    private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Path path = new Path();
    private String iconKey = "settings";
    private int iconColor;
    private int accentColor;
    private int level;
    private int batteryPercent = -1;
    private boolean charging;
    private boolean locked;

    public ContentIconView(Context context) {
        super(context);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeJoin(Paint.Join.ROUND);
        setWillNotDraw(false);
    }

    public void setIcon(String iconKey) {
        this.iconKey = iconKey == null ? "settings" : iconKey;
        invalidate();
    }

    public void setColors(int iconColor, int accentColor) {
        this.iconColor = iconColor;
        this.accentColor = accentColor;
        invalidate();
    }

    public void setLevel(int level) {
        this.level = level;
        invalidate();
    }

    public void setBattery(int batteryPercent, boolean charging) {
        this.batteryPercent = batteryPercent;
        this.charging = charging;
        invalidate();
    }

    public void setLocked(boolean locked) {
        this.locked = locked;
        invalidate();
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float centerX = getWidth() * 0.5f;
        float centerY = getHeight() * 0.5f;
        float size = Math.min(getWidth(), getHeight()) * 0.68f;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(Math.max(2.0f, size * 0.08f));
        paint.setColor(iconColor);
        if ("ventilation".equals(iconKey)) {
            drawSeat(canvas, centerX, centerY, size, false);
            drawWaves(canvas, centerX + size * 0.12f, centerY - size * 0.25f, size * 0.1f, level);
        } else if ("heating".equals(iconKey)) {
            drawSeat(canvas, centerX, centerY, size, false);
            drawWaves(canvas, centerX + size * 0.12f, centerY - size * 0.25f, size * 0.1f, level);
        } else if ("massage".equals(iconKey)) {
            drawSeat(canvas, centerX, centerY, size, true);
            drawMassage(canvas, centerX + size * 0.12f, centerY + size * 0.1f, size * 0.1f, level);
        } else if ("lock".equals(iconKey)) {
            drawLock(canvas, centerX, centerY, size);
        } else if ("map".equals(iconKey)) {
            drawMap(canvas, centerX, centerY, size);
        } else if ("play".equals(iconKey)) {
            drawPlay(canvas, centerX, centerY, size);
        } else if ("pause".equals(iconKey)) {
            drawPause(canvas, centerX, centerY, size);
        } else if ("next".equals(iconKey)) {
            drawNext(canvas, centerX, centerY, size);
        } else if ("source".equals(iconKey)) {
            drawNote(canvas, centerX, centerY, size);
        } else if ("battery".equals(iconKey)) {
            drawBattery(canvas, centerX, centerY, size);
        } else if ("climate".equals(iconKey)) {
            drawClimate(canvas, centerX, centerY, size);
        } else {
            drawSettings(canvas, centerX, centerY, size);
        }
    }

    private void drawSeat(Canvas canvas, float centerX, float centerY, float size, boolean massage) {
        RectF seatBack = new RectF(centerX - size * 0.26f, centerY - size * 0.36f,
                centerX - size * 0.02f, centerY + size * 0.20f);
        canvas.drawRoundRect(seatBack, size * 0.08f, size * 0.08f, paint);
        path.reset();
        path.moveTo(centerX - size * 0.22f, centerY + size * 0.16f);
        path.lineTo(centerX + size * 0.25f, centerY + size * 0.22f);
        path.lineTo(centerX + size * 0.34f, centerY + size * 0.42f);
        canvas.drawPath(path, paint);
        if (massage) {
            paint.setStyle(Paint.Style.FILL);
            paint.setColor(accentColor);
            canvas.drawCircle(centerX + size * 0.12f, centerY - size * 0.18f, size * 0.045f, paint);
            canvas.drawCircle(centerX + size * 0.27f, centerY - size * 0.02f, size * 0.045f, paint);
            paint.setColor(iconColor);
            paint.setStyle(Paint.Style.STROKE);
        }
    }

    private void drawWaves(Canvas canvas, float centerX, float centerY, float waveWidth, int activeLevel) {
        int waveCount = Math.max(0, Math.min(3, activeLevel));
        for (int waveIndex = 0; waveIndex < 3; waveIndex++) {
            paint.setColor(waveIndex < waveCount ? accentColor : iconColor);
            float offset = waveIndex * waveWidth * 1.45f;
            path.reset();
            path.moveTo(centerX + offset, centerY + waveWidth * 0.8f);
            path.cubicTo(centerX + offset - waveWidth, centerY,
                    centerX + offset + waveWidth, centerY - waveWidth,
                    centerX + offset, centerY - waveWidth * 1.8f);
            canvas.drawPath(path, paint);
        }
    }

    private void drawMassage(Canvas canvas, float centerX, float centerY, float dotSize, int activeLevel) {
        int dotCount = Math.max(0, Math.min(3, activeLevel));
        paint.setStyle(Paint.Style.FILL);
        for (int dotIndex = 0; dotIndex < 3; dotIndex++) {
            paint.setColor(dotIndex < dotCount ? accentColor : iconColor);
            canvas.drawCircle(centerX + dotIndex * dotSize * 1.7f, centerY, dotSize * 0.52f, paint);
        }
        paint.setStyle(Paint.Style.STROKE);
    }

    private void drawLock(Canvas canvas, float centerX, float centerY, float size) {
        RectF body = new RectF(centerX - size * 0.28f, centerY - size * 0.02f,
                centerX + size * 0.28f, centerY + size * 0.34f);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(iconColor);
        canvas.drawRoundRect(body, size * 0.06f, size * 0.06f, paint);
        paint.setStyle(Paint.Style.STROKE);
        path.reset();
        if (locked) {
            path.moveTo(centerX - size * 0.18f, centerY - size * 0.02f);
            path.lineTo(centerX - size * 0.18f, centerY - size * 0.25f);
            path.cubicTo(centerX - size * 0.18f, centerY - size * 0.52f,
                    centerX + size * 0.18f, centerY - size * 0.52f,
                    centerX + size * 0.18f, centerY - size * 0.25f);
            path.lineTo(centerX + size * 0.18f, centerY - size * 0.02f);
        } else {
            path.moveTo(centerX - size * 0.18f, centerY - size * 0.02f);
            path.lineTo(centerX - size * 0.18f, centerY - size * 0.24f);
            path.cubicTo(centerX - size * 0.18f, centerY - size * 0.48f,
                    centerX + size * 0.08f, centerY - size * 0.49f,
                    centerX + size * 0.18f, centerY - size * 0.30f);
        }
        canvas.drawPath(path, paint);
    }

    private void drawMap(Canvas canvas, float centerX, float centerY, float size) {
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(accentColor);
        canvas.drawCircle(centerX, centerY, size * 0.38f, paint);
        paint.setColor(iconColor);
        canvas.drawCircle(centerX, centerY - size * 0.08f, size * 0.11f, paint);
        path.reset();
        path.moveTo(centerX - size * 0.2f, centerY + size * 0.2f);
        path.lineTo(centerX + size * 0.18f, centerY - size * 0.28f);
        canvas.drawPath(path, paint);
        paint.setStyle(Paint.Style.STROKE);
    }

    private void drawPlay(Canvas canvas, float centerX, float centerY, float size) {
        paint.setStyle(Paint.Style.FILL);
        path.reset();
        path.moveTo(centerX - size * 0.18f, centerY - size * 0.34f);
        path.lineTo(centerX + size * 0.30f, centerY);
        path.lineTo(centerX - size * 0.18f, centerY + size * 0.34f);
        path.close();
        canvas.drawPath(path, paint);
        paint.setStyle(Paint.Style.STROKE);
    }

    private void drawPause(Canvas canvas, float centerX, float centerY, float size) {
        paint.setStyle(Paint.Style.FILL);
        canvas.drawRoundRect(new RectF(centerX - size * 0.25f, centerY - size * 0.30f,
                centerX - size * 0.05f, centerY + size * 0.30f), size * 0.04f, size * 0.04f, paint);
        canvas.drawRoundRect(new RectF(centerX + size * 0.05f, centerY - size * 0.30f,
                centerX + size * 0.25f, centerY + size * 0.30f), size * 0.04f, size * 0.04f, paint);
        paint.setStyle(Paint.Style.STROKE);
    }

    private void drawNext(Canvas canvas, float centerX, float centerY, float size) {
        paint.setStyle(Paint.Style.FILL);
        path.reset();
        path.moveTo(centerX - size * 0.28f, centerY - size * 0.28f);
        path.lineTo(centerX + size * 0.10f, centerY);
        path.lineTo(centerX - size * 0.28f, centerY + size * 0.28f);
        path.close();
        canvas.drawPath(path, paint);
        canvas.drawRoundRect(new RectF(centerX + size * 0.15f, centerY - size * 0.30f,
                centerX + size * 0.25f, centerY + size * 0.30f), size * 0.04f, size * 0.04f, paint);
        paint.setStyle(Paint.Style.STROKE);
    }

    private void drawNote(Canvas canvas, float centerX, float centerY, float size) {
        paint.setStyle(Paint.Style.FILL);
        canvas.drawCircle(centerX - size * 0.18f, centerY + size * 0.23f, size * 0.13f, paint);
        canvas.drawRoundRect(new RectF(centerX - size * 0.08f, centerY - size * 0.33f,
                centerX + size * 0.01f, centerY + size * 0.24f), size * 0.03f, size * 0.03f, paint);
        path.reset();
        path.moveTo(centerX - size * 0.03f, centerY - size * 0.32f);
        path.cubicTo(centerX + size * 0.25f, centerY - size * 0.28f,
                centerX + size * 0.26f, centerY - size * 0.12f,
                centerX + size * 0.34f, centerY - size * 0.05f);
        canvas.drawPath(path, paint);
        paint.setStyle(Paint.Style.STROKE);
    }

    private void drawBattery(Canvas canvas, float centerX, float centerY, float size) {
        RectF outer = new RectF(centerX - size * 0.40f, centerY - size * 0.22f,
                centerX + size * 0.34f, centerY + size * 0.22f);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(Math.max(2.0f, size * 0.06f));
        canvas.drawRoundRect(outer, size * 0.07f, size * 0.07f, paint);
        paint.setStyle(Paint.Style.FILL);
        canvas.drawRoundRect(new RectF(centerX + size * 0.36f, centerY - size * 0.10f,
                centerX + size * 0.46f, centerY + size * 0.10f), size * 0.03f, size * 0.03f, paint);
        int fillPercent = Math.max(0, Math.min(100, batteryPercent));
        float fillWidth = size * 0.64f * fillPercent / 100.0f;
        paint.setColor(charging ? accentColor : iconColor);
        canvas.drawRoundRect(new RectF(centerX - size * 0.32f, centerY - size * 0.13f,
                centerX - size * 0.32f + fillWidth, centerY + size * 0.13f),
                size * 0.03f, size * 0.03f, paint);
        if (charging) {
            paint.setColor(accentColor);
            path.reset();
            path.moveTo(centerX + size * 0.02f, centerY - size * 0.18f);
            path.lineTo(centerX - size * 0.09f, centerY + size * 0.02f);
            path.lineTo(centerX + size * 0.01f, centerY + size * 0.02f);
            path.lineTo(centerX - size * 0.03f, centerY + size * 0.20f);
            path.lineTo(centerX + size * 0.14f, centerY - size * 0.04f);
            path.lineTo(centerX + size * 0.04f, centerY - size * 0.04f);
            path.close();
            canvas.drawPath(path, paint);
        }
    }

    private void drawClimate(Canvas canvas, float centerX, float centerY, float size) {
        paint.setStyle(Paint.Style.STROKE);
        canvas.drawCircle(centerX, centerY, size * 0.26f, paint);
        for (int spoke = 0; spoke < 4; spoke++) {
            double angle = spoke * Math.PI / 2.0;
            float startX = centerX + (float) Math.cos(angle) * size * 0.30f;
            float startY = centerY + (float) Math.sin(angle) * size * 0.30f;
            float endX = centerX + (float) Math.cos(angle) * size * 0.42f;
            float endY = centerY + (float) Math.sin(angle) * size * 0.42f;
            canvas.drawLine(startX, startY, endX, endY, paint);
        }
    }

    private void drawSettings(Canvas canvas, float centerX, float centerY, float size) {
        paint.setStyle(Paint.Style.STROKE);
        RectF outer = new RectF(centerX - size * 0.34f, centerY - size * 0.30f,
                centerX + size * 0.34f, centerY + size * 0.30f);
        canvas.drawRoundRect(outer, size * 0.08f, size * 0.08f, paint);
        canvas.drawLine(centerX - size * 0.18f, centerY - size * 0.10f,
                centerX + size * 0.18f, centerY - size * 0.10f, paint);
        canvas.drawLine(centerX - size * 0.18f, centerY + size * 0.12f,
                centerX + size * 0.18f, centerY + size * 0.12f, paint);
        paint.setStyle(Paint.Style.FILL);
        canvas.drawCircle(centerX - size * 0.04f, centerY - size * 0.10f, size * 0.06f, paint);
        canvas.drawCircle(centerX + size * 0.09f, centerY + size * 0.12f, size * 0.06f, paint);
    }
}
