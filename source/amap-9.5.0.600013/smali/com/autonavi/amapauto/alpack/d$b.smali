.class public abstract Lcom/autonavi/amapauto/alpack/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/alpack/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Landroid/os/HandlerThread;

.field public static b:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    .line 3
    const-string v1, "AutoLocalBroadcastManager"

    .line 5
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lcom/autonavi/amapauto/alpack/d$b;->a:Landroid/os/HandlerThread;

    .line 10
    const/4 v1, 0x0

    .line 11
    sput-object v1, Lcom/autonavi/amapauto/alpack/d$b;->b:Landroid/os/Handler;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 16
    new-instance v1, Landroid/os/Handler;

    .line 18
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 21
    move-result-object v0

    .line 22
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 25
    sput-object v1, Lcom/autonavi/amapauto/alpack/d$b;->b:Landroid/os/Handler;

    .line 27
    return-void
.end method

.method public static synthetic a()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/alpack/d$b;->b:Landroid/os/Handler;

    .line 3
    return-object v0
.end method
