.class public abstract Lcom/amap/location/sdk/h/a/a/b;
.super Lcom/amap/location/sdk/h/a/a/a;
.source "SourceFile"


# instance fields
.field public d:Lcom/amap/location/support/handler/AmapLooper;

.field public e:Lcom/amap/location/support/handler/AmapHandler;

.field public f:Lcom/amap/location/a/b/a;


# direct methods
.method public constructor <init>(Lcom/amap/location/a/b/a;Lcom/amap/location/support/handler/AmapLooper;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p3}, Lcom/amap/location/sdk/h/a/a/a;-><init>(I)V

    .line 4
    iput-object p1, p0, Lcom/amap/location/sdk/h/a/a/b;->f:Lcom/amap/location/a/b/a;

    .line 6
    iput-object p2, p0, Lcom/amap/location/sdk/h/a/a/b;->d:Lcom/amap/location/support/handler/AmapLooper;

    .line 8
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    .line 11
    move-result-object p1

    .line 12
    iget-object p2, p0, Lcom/amap/location/sdk/h/a/a/b;->d:Lcom/amap/location/support/handler/AmapLooper;

    .line 14
    const/4 p3, 0x0

    .line 15
    invoke-interface {p1, p2, p3}, Lcom/amap/location/support/handler/HandlerThreadManager;->createHandler(Lcom/amap/location/support/handler/AmapLooper;Lcom/amap/location/support/handler/OnHandleMessage;)Lcom/amap/location/support/handler/AmapHandler;

    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/amap/location/sdk/h/a/a/b;->e:Lcom/amap/location/support/handler/AmapHandler;

    .line 21
    return-void
.end method


# virtual methods
.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public f()V
    .locals 1

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/location/sdk/h/a/a/a;->a:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/amap/location/sdk/h/a/a/b;->c()V

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/amap/location/sdk/h/a/a/a;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 16
    :goto_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/location/sdk/h/a/a/a;->a:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/amap/location/sdk/h/a/a/b;->d()V

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/amap/location/sdk/h/a/a/a;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 16
    :goto_0
    return-void
.end method
