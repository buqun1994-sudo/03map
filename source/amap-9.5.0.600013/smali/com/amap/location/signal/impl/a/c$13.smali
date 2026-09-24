.class Lcom/amap/location/signal/impl/a/c$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/signal/impl/a/c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/signal/impl/a/c;


# direct methods
.method public constructor <init>(Lcom/amap/location/signal/impl/a/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/signal/impl/a/c$13;->a:Lcom/amap/location/signal/impl/a/c;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/c$13;->a:Lcom/amap/location/signal/impl/a/c;

    .line 6
    invoke-static {p1}, Lcom/amap/location/signal/impl/a/c;->a(Lcom/amap/location/signal/impl/a/c;)V

    .line 9
    goto :goto_2

    .line 10
    :cond_0
    const/4 v0, 0x2

    .line 11
    if-ne p1, v0, :cond_1

    .line 13
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/c$13;->a:Lcom/amap/location/signal/impl/a/c;

    .line 15
    invoke-static {p1}, Lcom/amap/location/signal/impl/a/c;->b(Lcom/amap/location/signal/impl/a/c;)V

    .line 18
    goto :goto_2

    .line 19
    :cond_1
    const/4 v0, 0x3

    .line 20
    const-string v1, ""

    .line 22
    const-string v2, "sysgnssprd"

    .line 24
    if-ne p1, v0, :cond_2

    .line 26
    :try_start_0
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/c$13;->a:Lcom/amap/location/signal/impl/a/c;

    .line 28
    invoke-static {}, Lcom/amap/location/signal/impl/util/SystemServerHelper;->getLocaitionManager()Landroid/location/LocationManager;

    .line 31
    move-result-object v0

    .line 32
    iget-object v3, p0, Lcom/amap/location/signal/impl/a/c$13;->a:Lcom/amap/location/signal/impl/a/c;

    .line 34
    invoke-static {v3}, Lcom/amap/location/signal/impl/a/c;->c(Lcom/amap/location/signal/impl/a/c;)Landroid/location/GpsStatus;

    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    .line 41
    move-result-object v0

    .line 42
    invoke-static {p1, v0}, Lcom/amap/location/signal/impl/a/c;->a(Lcom/amap/location/signal/impl/a/c;Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception p1

    .line 47
    invoke-static {v2, v1, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    :goto_0
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/c$13;->a:Lcom/amap/location/signal/impl/a/c;

    .line 52
    invoke-static {p1}, Lcom/amap/location/signal/impl/a/c;->c(Lcom/amap/location/signal/impl/a/c;)Landroid/location/GpsStatus;

    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_3

    .line 58
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/c$13;->a:Lcom/amap/location/signal/impl/a/c;

    .line 60
    invoke-static {p1}, Lcom/amap/location/signal/impl/a/c;->c(Lcom/amap/location/signal/impl/a/c;)Landroid/location/GpsStatus;

    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/location/GpsStatus;->getTimeToFirstFix()I

    .line 67
    move-result v0

    .line 68
    invoke-static {p1, v0}, Lcom/amap/location/signal/impl/a/c;->a(Lcom/amap/location/signal/impl/a/c;I)V

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    const/4 v0, 0x4

    .line 73
    if-ne p1, v0, :cond_3

    .line 75
    :try_start_1
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/c$13;->a:Lcom/amap/location/signal/impl/a/c;

    .line 77
    invoke-static {}, Lcom/amap/location/signal/impl/util/SystemServerHelper;->getLocaitionManager()Landroid/location/LocationManager;

    .line 80
    move-result-object v0

    .line 81
    iget-object v3, p0, Lcom/amap/location/signal/impl/a/c$13;->a:Lcom/amap/location/signal/impl/a/c;

    .line 83
    invoke-static {v3}, Lcom/amap/location/signal/impl/a/c;->c(Lcom/amap/location/signal/impl/a/c;)Landroid/location/GpsStatus;

    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    .line 90
    move-result-object v0

    .line 91
    invoke-static {p1, v0}, Lcom/amap/location/signal/impl/a/c;->a(Lcom/amap/location/signal/impl/a/c;Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    goto :goto_1

    .line 95
    :catch_1
    move-exception p1

    .line 96
    invoke-static {v2, v1, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    :goto_1
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/c$13;->a:Lcom/amap/location/signal/impl/a/c;

    .line 101
    invoke-static {p1}, Lcom/amap/location/signal/impl/a/c;->c(Lcom/amap/location/signal/impl/a/c;)Landroid/location/GpsStatus;

    .line 104
    move-result-object p1

    .line 105
    if-eqz p1, :cond_3

    .line 107
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/c$13;->a:Lcom/amap/location/signal/impl/a/c;

    .line 109
    invoke-static {p1}, Lcom/amap/location/signal/impl/a/c;->c(Lcom/amap/location/signal/impl/a/c;)Landroid/location/GpsStatus;

    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    .line 116
    move-result-object v0

    .line 117
    invoke-static {p1, v0}, Lcom/amap/location/signal/impl/a/c;->a(Lcom/amap/location/signal/impl/a/c;Ljava/lang/Iterable;)V

    .line 120
    :cond_3
    :goto_2
    return-void
.end method
