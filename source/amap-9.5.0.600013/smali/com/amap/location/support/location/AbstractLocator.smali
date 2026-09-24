.class public abstract Lcom/amap/location/support/location/AbstractLocator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/app/IModule;


# static fields
.field private static final LOG_INTERVAL:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "AbstractLocator"


# instance fields
.field private iod:I

.field public mCallback:Lcom/amap/location/support/location/AbstractLocationCallback;

.field private mExtras:Ljava/lang/String;

.field private mIodStay:Ljava/lang/String;

.field private mLastFilterType:I

.field private mLastLogReportTime:J

.field private mPriority:I

.field private mStart:Z

.field private scene:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/amap/location/support/location/AbstractLocator;->mStart:Z

    .line 7
    iput v0, p0, Lcom/amap/location/support/location/AbstractLocator;->mLastFilterType:I

    .line 9
    return-void
.end method


# virtual methods
.method public filter(Lcom/amap/location/support/bean/location/AmapLocation;)Z
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/amap/location/support/location/AbstractLocator;->needFilterByIod()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/amap/location/support/location/AbstractLocator;->needFilterByScene()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 17
    const/4 v0, 0x2

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    :goto_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 23
    move-result-object v3

    .line 24
    invoke-interface {v3}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    .line 27
    move-result-wide v3

    .line 28
    iget v5, p0, Lcom/amap/location/support/location/AbstractLocator;->mLastFilterType:I

    .line 30
    if-ne v5, v0, :cond_2

    .line 32
    iget-wide v5, p0, Lcom/amap/location/support/location/AbstractLocator;->mLastLogReportTime:J

    .line 34
    sub-long v5, v3, v5

    .line 36
    const-wide/16 v7, 0x1388

    .line 38
    cmp-long v9, v5, v7

    .line 40
    if-lez v9, :cond_3

    .line 42
    :cond_2
    iput-wide v3, p0, Lcom/amap/location/support/location/AbstractLocator;->mLastLogReportTime:J

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    const-string v4, "get loc:"

    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 57
    move-result-object v4

    .line 58
    invoke-static {p1, v4}, Lcom/amap/location/support/util/TextUtils;->getSimpleLocationLog(Lcom/amap/location/support/bean/location/AmapLocation;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    const-string v3, "AbstractLocator"

    .line 71
    invoke-static {v3, p1}, Lcom/amap/location/support/log/ALLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_3
    iput v0, p0, Lcom/amap/location/support/location/AbstractLocator;->mLastFilterType:I

    .line 76
    if-eqz v0, :cond_4

    .line 78
    goto :goto_1

    .line 79
    :cond_4
    const/4 v1, 0x0

    .line 80
    :goto_1
    return v1
.end method

.method public getExtras()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/location/AbstractLocator;->mExtras:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getIod()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/location/support/location/AbstractLocator;->iod:I

    .line 3
    return v0
.end method

.method public getIodStay()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/location/AbstractLocator;->mIodStay:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/location/support/location/AbstractLocator;->mPriority:I

    .line 3
    return v0
.end method

.method public getScene()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/location/AbstractLocator;->scene:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public hasStart()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/support/location/AbstractLocator;->mStart:Z

    .line 3
    return v0
.end method

.method public needFilterByIod()Z
    .locals 3

    .line 1
    const-string v0, "3"

    .line 3
    invoke-virtual {p0}, Lcom/amap/location/support/location/AbstractLocator;->getIodStay()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    return v1

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/amap/location/support/location/AbstractLocator;->getIod()I

    .line 18
    move-result v0

    .line 19
    const/4 v2, -0x2

    .line 20
    if-eq v0, v2, :cond_1

    .line 22
    invoke-virtual {p0}, Lcom/amap/location/support/location/AbstractLocator;->getIod()I

    .line 25
    move-result v0

    .line 26
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getIod()I

    .line 29
    move-result v2

    .line 30
    if-eq v0, v2, :cond_1

    .line 32
    const/4 v1, 0x1

    .line 33
    :cond_1
    return v1
.end method

.method public needFilterByScene()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/location/AbstractLocator;->scene:Ljava/lang/String;

    .line 3
    const-string v1, "_0_"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/amap/location/support/location/AbstractLocator;->scene:Ljava/lang/String;

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    const-string v2, "_"

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getScene()I

    .line 26
    move-result v3

    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v0, 0x0

    .line 46
    :goto_0
    return v0
.end method

.method public needFilterBySceneAndIod()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/amap/location/support/location/AbstractLocator;->filter(Lcom/amap/location/support/bean/location/AmapLocation;)Z

    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public report(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/location/AbstractLocator;->mCallback:Lcom/amap/location/support/location/AbstractLocationCallback;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 8
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/amap/location/support/location/AbstractLocationCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/location/AbstractLocator;->mCallback:Lcom/amap/location/support/location/AbstractLocationCallback;

    .line 3
    return-void
.end method

.method public setExtras(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/location/AbstractLocator;->mExtras:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setIod(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/location/support/location/AbstractLocator;->iod:I

    .line 3
    return-void
.end method

.method public setIodStay(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/location/AbstractLocator;->mIodStay:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setPriority(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/location/support/location/AbstractLocator;->mPriority:I

    .line 3
    return-void
.end method

.method public setScene(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/location/AbstractLocator;->scene:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/support/location/AbstractLocator;->mStart:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/amap/location/support/location/AbstractLocator;->startLocation()V

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/amap/location/support/location/AbstractLocator;->mStart:Z

    .line 11
    return-void
.end method

.method public abstract startLocation()V
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/support/location/AbstractLocator;->mStart:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/amap/location/support/location/AbstractLocator;->stopLocation()V

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/amap/location/support/location/AbstractLocator;->mStart:Z

    .line 11
    return-void
.end method

.method public abstract stopLocation()V
.end method
