.class public Lch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public a:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lch;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 6
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    const-string v0, "hotfix"

    .line 3
    const-string v1, "catch java exeception"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Ltc0;->m()Ltc0;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ltc0;->y()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 18
    invoke-static {}, Lcom/autonavi/amapauto/bootstrap/AndroidUpdate;->NotifyCrash()Z

    .line 21
    :cond_0
    iget-object v0, p0, Lch;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 23
    if-eqz v0, :cond_1

    .line 25
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 28
    :cond_1
    return-void
.end method
