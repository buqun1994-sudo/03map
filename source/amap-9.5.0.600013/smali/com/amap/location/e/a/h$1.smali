.class Lcom/amap/location/e/a/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/rtk/EphemerisListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/e/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/e/a/h;


# direct methods
.method public constructor <init>(Lcom/amap/location/e/a/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/e/a/h$1;->a:Lcom/amap/location/e/a/h;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

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
    iget-object v0, p0, Lcom/amap/location/e/a/h$1;->a:Lcom/amap/location/e/a/h;

    .line 10
    invoke-static {v0}, Lcom/amap/location/e/a/h;->a(Lcom/amap/location/e/a/h;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 20
    iget-object v0, p0, Lcom/amap/location/e/a/h$1;->a:Lcom/amap/location/e/a/h;

    .line 22
    invoke-virtual {v0}, Lcom/amap/location/e/a/h;->c()Z

    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 28
    :cond_1
    :try_start_0
    sput-object p2, Lcom/amap/location/e/a/d;->a:Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lcom/amap/location/e/a/h$1;->a:Lcom/amap/location/e/a/h;

    .line 32
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNativeAbility()Lcom/amap/location/support/security/INativeAbility;

    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v1, p1}, Lcom/amap/location/support/security/INativeAbility;->setupRTKnav(Ljava/lang/String;)I

    .line 39
    move-result v1

    .line 40
    invoke-static {v0, v1}, Lcom/amap/location/e/a/h;->a(Lcom/amap/location/e/a/h;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :catchall_0
    :cond_2
    iget-object v0, p0, Lcom/amap/location/e/a/h$1;->a:Lcom/amap/location/e/a/h;

    .line 45
    invoke-static {v0, p1}, Lcom/amap/location/e/a/h;->a(Lcom/amap/location/e/a/h;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    const-string v1, " Ephemeris filePath:"

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string p1, ", "

    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string p1, ", rtkNavOk :"

    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object p1, p0, Lcom/amap/location/e/a/h$1;->a:Lcom/amap/location/e/a/h;

    .line 76
    invoke-static {p1}, Lcom/amap/location/e/a/h;->b(Lcom/amap/location/e/a/h;)I

    .line 79
    move-result p1

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object p1

    .line 87
    const-string p2, "gnssalgo"

    .line 89
    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method
