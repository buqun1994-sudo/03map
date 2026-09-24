.class public Lcom/autonavi/core/network/inter/statistics/NetworkTracer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/core/network/inter/statistics/NetworkTracer$INetworkTracer;
    }
.end annotation


# static fields
.field private static sNetworkTracerDelegate:Lcom/autonavi/core/network/inter/statistics/NetworkTracer$INetworkTracer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commitStat(Lcom/autonavi/core/network/inter/statistics/RequestStatistics;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/core/network/inter/statistics/NetworkTracer;->sNetworkTracerDelegate:Lcom/autonavi/core/network/inter/statistics/NetworkTracer$INetworkTracer;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p0}, Lcom/autonavi/core/network/inter/statistics/NetworkTracer$INetworkTracer;->commitStat(Lcom/autonavi/core/network/inter/statistics/RequestStatistics;)V

    .line 8
    :cond_0
    return-void
.end method

.method public static setNetworkTracerDelegate(Lcom/autonavi/core/network/inter/statistics/NetworkTracer$INetworkTracer;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/autonavi/core/network/inter/statistics/NetworkTracer;->sNetworkTracerDelegate:Lcom/autonavi/core/network/inter/statistics/NetworkTracer$INetworkTracer;

    .line 3
    return-void
.end method
