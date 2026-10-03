package com.icar03.content.runtime.lyrics

import java.util.concurrent.Callable
import java.util.concurrent.Future
import java.util.concurrent.FutureTask
import java.util.concurrent.PriorityBlockingQueue
import java.util.concurrent.ThreadPoolExecutor
import java.util.concurrent.TimeUnit
import java.util.concurrent.ExecutorService
import java.util.concurrent.atomic.AtomicLong

/** Ready primary bodies and artwork outrank further recall and optional word tracks. */
internal enum class ProviderWork { BASE, ARTWORK, CATALOG, ENRICHMENT }
internal class LyricsProviderExecutor(threads: Int = 8) : ThreadPoolExecutor(threads, threads, 0L,
    TimeUnit.MILLISECONDS, PriorityBlockingQueue<Runnable>(), { runnable ->
        Thread(runnable, "content-provider").apply { isDaemon = true }
    }) {
    private val sequence = AtomicLong()
    fun submit(work: ProviderWork, task: () -> Unit): Future<*> =
        RankedTask(work.ordinal, sequence.incrementAndGet(), Callable { task() }).also { execute(it) }
    override fun execute(command: Runnable) {
        super.execute(if (command is RankedTask<*>) command else
            RankedTask(ProviderWork.CATALOG.ordinal, sequence.incrementAndGet(), Callable { command.run() }))
    }
    private class RankedTask<T>(private val rank: Int, private val sequence: Long, task: Callable<T>) :
        FutureTask<T>(task), Comparable<RankedTask<*>> {
        override fun compareTo(other: RankedTask<*>): Int = compareValuesBy(this, other, { it.rank }, { it.sequence })
    }
}
internal fun submitProviderWork(executor: ExecutorService, work: ProviderWork, task: () -> Unit): Future<*> =
    if (executor is LyricsProviderExecutor) executor.submit(work, task) else executor.submit(task)
