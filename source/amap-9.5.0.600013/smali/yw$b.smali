.class public Lyw$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyw;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lyw;


# direct methods
.method public constructor <init>(Lyw;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyw$b;->a:Lyw;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    const-string v0, "load so begin"

    .line 3
    const-string v1, "LibraryLoaderHelper"

    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lyw$b;->a:Lyw;

    .line 10
    invoke-static {v0}, Lyw;->m(Lyw;)Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 16
    invoke-static {}, Ldx;->c()Ldx;

    .line 19
    move-result-object v0

    .line 20
    iget-object v2, p0, Lyw$b;->a:Lyw;

    .line 22
    invoke-static {v2}, Lyw;->c(Lyw;)Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v2}, Ldx;->j(Ljava/lang/String;)V

    .line 29
    :cond_0
    iget-object v0, p0, Lyw$b;->a:Lyw;

    .line 31
    invoke-static {v0}, Lyw;->h(Lyw;)Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/autonavi/amapauto/framework/LibraryLoader;->run()V

    .line 38
    iget-object v0, p0, Lyw$b;->a:Lyw;

    .line 40
    invoke-static {v0}, Lyw;->m(Lyw;)Z

    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 46
    invoke-static {}, Lg80;->i()Lg80;

    .line 49
    move-result-object v0

    .line 50
    iget-object v2, p0, Lyw$b;->a:Lyw;

    .line 52
    invoke-static {v2}, Lyw;->c(Lyw;)Ljava/lang/String;

    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v0, v2}, Lg80;->k(Ljava/lang/String;)V

    .line 59
    :cond_1
    iget-object v0, p0, Lyw$b;->a:Lyw;

    .line 61
    invoke-static {v0}, Lyw;->d(Lyw;)Landroid/content/Context;

    .line 64
    move-result-object v0

    .line 65
    const-string v2, "GTestServer"

    .line 67
    invoke-static {v0, v2}, Lvx;->d(Landroid/content/Context;Ljava/lang/String;)Z

    .line 70
    iget-object v0, p0, Lyw$b;->a:Lyw;

    .line 72
    const-string v2, "EagletEx"

    .line 74
    invoke-virtual {v0, v2}, Lyw;->x(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lyw$b;->a:Lyw;

    .line 79
    invoke-static {v0}, Lyw;->e(Lyw;)Ljava/util/concurrent/CountDownLatch;

    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 86
    const-string v0, "load so end"

    .line 88
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method
