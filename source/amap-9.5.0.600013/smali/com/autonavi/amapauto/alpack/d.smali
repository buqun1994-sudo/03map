.class public abstract Lcom/autonavi/amapauto/alpack/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/amapauto/alpack/d$f;,
        Lcom/autonavi/amapauto/alpack/d$d;,
        Lcom/autonavi/amapauto/alpack/d$c;,
        Lcom/autonavi/amapauto/alpack/d$e;,
        Lcom/autonavi/amapauto/alpack/d$b;
    }
.end annotation


# static fields
.field public static a:Ljava/util/HashMap;

.field public static b:Ljava/util/HashMap;

.field public static volatile c:Lcom/autonavi/amapauto/alpack/d$c;

.field public static volatile d:Lcom/autonavi/amapauto/alpack/d$d;

.field public static volatile e:Lcom/autonavi/amapauto/alpack/d$f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/alpack/d;->a:Ljava/util/HashMap;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    sput-object v0, Lcom/autonavi/amapauto/alpack/d;->b:Ljava/util/HashMap;

    .line 15
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Parcelable;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/autonavi/amapauto/alpack/d;->f(Ljava/lang/String;Landroid/os/Bundle;Lcom/autonavi/amapauto/alpack/d$e;)Landroid/os/Parcelable;

    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static b(Lcom/autonavi/amapauto/alpack/d$c;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/alpack/d;->c:Lcom/autonavi/amapauto/alpack/d$c;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 p0, 0x0

    .line 6
    new-array p0, p0, [Ljava/lang/Object;

    .line 8
    const-string v0, "AutoLocalBroadcastManager"

    .line 10
    const-string v1, "sOnBroadcastInterceptor isn\'t null"

    .line 12
    invoke-static {v0, v1, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    return-void

    .line 16
    :cond_0
    sput-object p0, Lcom/autonavi/amapauto/alpack/d;->c:Lcom/autonavi/amapauto/alpack/d$c;

    .line 18
    return-void
.end method

.method public static c(JLjava/lang/Object;)V
    .locals 2

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v0, "notifyAutoLocalBroadcast action "

    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p2

    .line 18
    const/4 v0, 0x0

    .line 19
    new-array v0, v0, [Ljava/lang/Object;

    .line 21
    const-string v1, "AutoLocalBroadcastManager"

    .line 23
    invoke-static {v1, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    sget-object p2, Lcom/autonavi/amapauto/alpack/d;->a:Ljava/util/HashMap;

    .line 28
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Ld00;->a(Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v0, "notifyAutoLocalBroadcast string action "

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    const/4 v0, 0x0

    .line 19
    new-array v1, v0, [Ljava/lang/Object;

    .line 21
    const-string v2, "AutoLocalBroadcastManager"

    .line 23
    invoke-static {v2, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    const-string p1, "notifyAutoLocalBroadcast sOnRegisterInterceptor is null"

    .line 28
    new-array v1, v0, [Ljava/lang/Object;

    .line 30
    invoke-static {v2, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    sget-object p1, Lcom/autonavi/amapauto/alpack/d;->b:Ljava/util/HashMap;

    .line 35
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Ld00;->a(Ljava/lang/Object;)V

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    const-string v1, "autoLocalBroadcastReceiver is null , "

    .line 49
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string p0, " not registered"

    .line 57
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 64
    new-array p1, v0, [Ljava/lang/Object;

    .line 66
    invoke-static {v2, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public static e(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v0, "notifyAutoLocalBroadcast string action "

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    const/4 v0, 0x0

    .line 19
    new-array v1, v0, [Ljava/lang/Object;

    .line 21
    const-string v2, "AutoLocalBroadcastManager"

    .line 23
    invoke-static {v2, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    sget-object p1, Lcom/autonavi/amapauto/alpack/d;->b:Ljava/util/HashMap;

    .line 28
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 32
    invoke-static {p0}, Ld00;->a(Ljava/lang/Object;)V

    .line 35
    const-string p0, "AutoLocalBroadcast is null"

    .line 37
    new-array p1, v0, [Ljava/lang/Object;

    .line 39
    invoke-static {v2, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    const/4 p0, 0x0

    .line 43
    return-object p0
.end method

.method public static f(Ljava/lang/String;Landroid/os/Bundle;Lcom/autonavi/amapauto/alpack/d$e;)Landroid/os/Parcelable;
    .locals 3

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v0, "onFetchForReceiver string action "

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    const/4 v0, 0x0

    .line 19
    new-array v1, v0, [Ljava/lang/Object;

    .line 21
    const-string v2, "AutoLocalBroadcastManager"

    .line 23
    invoke-static {v2, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    sget-object p1, Lcom/autonavi/amapauto/alpack/d;->b:Ljava/util/HashMap;

    .line 28
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 32
    invoke-static {p0}, Ld00;->a(Ljava/lang/Object;)V

    .line 35
    const-string p0, "autoLocalBroadcastReceiver is null"

    .line 37
    new-array p1, v0, [Ljava/lang/Object;

    .line 39
    invoke-static {v2, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    new-instance p0, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    const-string p1, "onFetchParcelableForReceiver unknown localBroadcastReceiver "

    .line 49
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 59
    new-array p1, v0, [Ljava/lang/Object;

    .line 61
    invoke-static {v2, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    const-string p0, "AutoLocalBroadcast isn\'t AutoFetchReceiver"

    .line 66
    new-array p1, v0, [Ljava/lang/Object;

    .line 68
    invoke-static {v2, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    const/4 p0, 0x0

    .line 72
    return-object p0
.end method

.method public static g(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 11
    invoke-static {}, Lcom/autonavi/amapauto/alpack/d$b;->a()Landroid/os/Handler;

    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/autonavi/amapauto/alpack/d$a;

    .line 17
    invoke-direct {v1, p0, p1}, Lcom/autonavi/amapauto/alpack/d$a;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {p0, p1}, Lcom/autonavi/amapauto/alpack/d;->h(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 27
    :goto_0
    return-void
.end method

.method public static h(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    move-result-object v1

    .line 9
    if-eq v0, v1, :cond_4

    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x0

    .line 13
    const-string v2, "AutoLocalBroadcastManager"

    .line 15
    if-eqz p0, :cond_3

    .line 17
    const-string v3, ""

    .line 19
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    if-nez p1, :cond_1

    .line 28
    const-string p0, "sendBundle bundle must not be null"

    .line 30
    new-array p1, v0, [Ljava/lang/Object;

    .line 32
    invoke-static {v2, p0, v1, p1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 35
    return-void

    .line 36
    :cond_1
    invoke-static {p0, p1}, Lcom/autonavi/amapauto/alpack/d;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    sget-object v3, Lcom/autonavi/amapauto/alpack/d;->c:Lcom/autonavi/amapauto/alpack/d$c;

    .line 41
    if-nez v3, :cond_2

    .line 43
    const-string p0, "sendParcelable sOnBroadcastInterceptor must not be null"

    .line 45
    new-array p1, v0, [Ljava/lang/Object;

    .line 47
    invoke-static {v2, p0, v1, p1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    sget-object v0, Lcom/autonavi/amapauto/alpack/d;->c:Lcom/autonavi/amapauto/alpack/d$c;

    .line 53
    invoke-interface {v0, p0, p1}, Lcom/autonavi/amapauto/alpack/d$c;->C(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 56
    :goto_0
    return-void

    .line 57
    :cond_3
    :goto_1
    const-string p0, "sendBundle action must not be null"

    .line 59
    new-array p1, v0, [Ljava/lang/Object;

    .line 61
    invoke-static {v2, p0, v1, p1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 64
    return-void

    .line 65
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    .line 67
    const-string p1, "sendBundleSync must not be ui thread"

    .line 69
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 72
    throw p0
.end method

.method public static i(Lcom/autonavi/amapauto/alpack/d$d;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/autonavi/amapauto/alpack/d;->d:Lcom/autonavi/amapauto/alpack/d$d;

    .line 3
    return-void
.end method

.method public static j(Lcom/autonavi/amapauto/alpack/d$f;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/autonavi/amapauto/alpack/d;->e:Lcom/autonavi/amapauto/alpack/d$f;

    .line 3
    return-void
.end method
