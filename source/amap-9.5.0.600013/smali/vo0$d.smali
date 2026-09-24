.class public Lvo0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/rtk/EphemerisListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lvo0;


# direct methods
.method public constructor <init>(Lvo0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvo0$d;->a:Lvo0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lvo0$d;->a:Lvo0;

    .line 10
    invoke-static {v0}, Lvo0;->W(Lvo0;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p0, Lvo0$d;->a:Lvo0;

    .line 23
    invoke-static {v0}, Lvo0;->X(Lvo0;)Z

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_3

    .line 29
    :cond_1
    :try_start_0
    iget-object v0, p0, Lvo0$d;->a:Lvo0;

    .line 31
    invoke-static {p1}, Lcom/amap/ams/jni/gnss/NativeGnssLocator;->updateEphemeris(Ljava/lang/String;)I

    .line 34
    move-result v2

    .line 35
    if-ne v2, v1, :cond_2

    .line 37
    const/4 v2, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/4 v2, 0x0

    .line 40
    :goto_0
    invoke-static {v0, v2}, Lvo0;->E(Lvo0;Z)Z

    .line 43
    iget-object v0, p0, Lvo0$d;->a:Lvo0;

    .line 45
    invoke-static {v0}, Lvo0;->X(Lvo0;)Z

    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_3

    .line 51
    iget-object v0, p0, Lvo0$d;->a:Lvo0;

    .line 53
    invoke-static {v0}, Lvo0;->Y(Lvo0;)Ljava/lang/Runnable;

    .line 56
    move-result-object v2

    .line 57
    invoke-static {v0, v2}, Lvo0;->o(Lvo0;Ljava/lang/Runnable;)V

    .line 60
    iget-object v0, p0, Lvo0$d;->a:Lvo0;

    .line 62
    invoke-static {v0}, Lvo0;->Y(Lvo0;)Ljava/lang/Runnable;

    .line 65
    move-result-object v2

    .line 66
    const-wide/16 v3, 0x7d0

    .line 68
    invoke-static {v0, v2, v3, v4}, Lvo0;->p(Lvo0;Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    goto :goto_1

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 76
    :cond_3
    :goto_1
    iget-object v0, p0, Lvo0$d;->a:Lvo0;

    .line 78
    invoke-static {v0}, Lvo0;->Z(Lvo0;)I

    .line 81
    move-result v0

    .line 82
    if-le v0, v1, :cond_4

    .line 84
    iget-object v0, p0, Lvo0$d;->a:Lvo0;

    .line 86
    invoke-static {v0}, Lvo0;->a0(Lvo0;)Lgw0;

    .line 89
    move-result-object v1

    .line 90
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 93
    move-result-object v0

    .line 94
    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 97
    move-result-wide v3

    .line 98
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 101
    move-result-object v0

    .line 102
    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    .line 105
    move-result-wide v5

    .line 106
    move-object v2, p2

    .line 107
    invoke-virtual/range {v1 .. v6}, Lgw0;->d(Ljava/lang/String;JJ)V

    .line 110
    :cond_4
    iget-object p2, p0, Lvo0$d;->a:Lvo0;

    .line 112
    invoke-static {p2, p1}, Lvo0;->I(Lvo0;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    new-instance p2, Ljava/lang/StringBuilder;

    .line 117
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    const-string v0, "Ephemeris load:"

    .line 122
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-object v0, p0, Lvo0$d;->a:Lvo0;

    .line 127
    invoke-static {v0}, Lvo0;->X(Lvo0;)Z

    .line 130
    move-result v0

    .line 131
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 134
    const-string v0, ", "

    .line 136
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object p1

    .line 146
    const-string p2, "GnssSoftLocator"

    .line 148
    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method
