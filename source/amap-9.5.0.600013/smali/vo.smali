.class public abstract Lvo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/os/Handler;

.field public static final b:Landroid/os/HandlerThread;

.field public static c:Landroid/os/Handler;

.field public static d:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 10
    sput-object v0, Lvo;->a:Landroid/os/Handler;

    .line 12
    new-instance v0, Landroid/os/HandlerThread;

    .line 14
    const-string v1, "HandlerUtils"

    .line 16
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 19
    sput-object v0, Lvo;->b:Landroid/os/HandlerThread;

    .line 21
    const/4 v1, 0x0

    .line 22
    sput-object v1, Lvo;->c:Landroid/os/Handler;

    .line 24
    sput-object v1, Lvo;->d:Landroid/os/Handler;

    .line 26
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 29
    new-instance v1, Landroid/os/Handler;

    .line 31
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 34
    move-result-object v0

    .line 35
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 38
    sput-object v1, Lvo;->c:Landroid/os/Handler;

    .line 40
    return-void
.end method

.method public static a()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lvo;->d:Landroid/os/Handler;

    .line 3
    return-object v0
.end method

.method public static b()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lvo;->a:Landroid/os/Handler;

    .line 3
    return-object v0
.end method

.method public static c()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lvo;->c:Landroid/os/Handler;

    .line 3
    return-object v0
.end method

.method public static d(Landroid/os/Handler;)V
    .locals 0

    .line 1
    sput-object p0, Lvo;->d:Landroid/os/Handler;

    .line 3
    return-void
.end method
