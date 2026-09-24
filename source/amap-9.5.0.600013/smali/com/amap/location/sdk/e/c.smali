.class public Lcom/amap/location/sdk/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/sdk/e/c$a;,
        Lcom/amap/location/sdk/e/c$b;
    }
.end annotation


# static fields
.field public static a:Z

.field protected static volatile b:Lcom/amap/location/sdk/e/a;

.field protected static volatile c:Lcom/amap/location/sdk/e/a;

.field private static d:Lcom/amap/location/sdk/e/c$b;

.field private static e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static synthetic a(Lcom/amap/location/sdk/e/c$b;)Lcom/amap/location/sdk/e/c$b;
    .locals 0

    .line 3
    sput-object p0, Lcom/amap/location/sdk/e/c;->d:Lcom/amap/location/sdk/e/c$b;

    return-object p0
.end method

.method public static a()V
    .locals 2

    .line 4
    new-instance v0, Lcom/amap/location/sdk/e/c$1;

    invoke-direct {v0}, Lcom/amap/location/sdk/e/c$1;-><init>()V

    invoke-static {v0}, Lcom/amap/location/support/AmapContext;->initLog(Lcom/amap/location/support/log/ILog;)V

    .line 5
    new-instance v0, Lcom/amap/location/sdk/e/c$2;

    const-string v1, "locsdklog"

    invoke-direct {v0, v1}, Lcom/amap/location/sdk/e/c$2;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static a(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public static a(I[BLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 8
    array-length p2, p1

    if-lez p2, :cond_0

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 9
    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/amap/location/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-static {p0}, Lcom/amap/location/sdk/e/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 11
    sget-object v2, Lcom/amap/location/sdk/e/c;->c:Lcom/amap/location/sdk/e/a;

    if-eqz v2, :cond_0

    .line 12
    sget-object v2, Lcom/amap/location/sdk/e/c;->c:Lcom/amap/location/sdk/e/a;

    invoke-interface {v2, p0, v0, v1, p1}, Lcom/amap/location/sdk/e/a;->a(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Z)V
    .locals 0

    .line 2
    return-void
.end method

.method public static b()V
    .locals 2

    const v0, 0x1ae2f

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportEvent(I[B)V

    .line 4
    invoke-static {}, Lcom/amap/location/sdk/e/b;->a()V

    return-void
.end method

.method public static b(I[BLjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static b(Z)V
    .locals 0

    .line 2
    return-void
.end method

.method public static c()V
    .locals 0

    .line 1
    return-void
.end method

.method public static c(Z)V
    .locals 0

    .line 2
    return-void
.end method

.method public static d()V
    .locals 0

    .line 1
    return-void
.end method

.method public static d(Z)V
    .locals 0

    .line 2
    return-void
.end method

.method public static e()V
    .locals 0

    return-void
.end method

.method public static f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic g()Lcom/amap/location/sdk/e/c$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/sdk/e/c;->d:Lcom/amap/location/sdk/e/c$b;

    .line 3
    return-object v0
.end method
