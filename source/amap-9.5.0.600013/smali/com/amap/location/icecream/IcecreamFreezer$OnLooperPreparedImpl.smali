.class final Lcom/amap/location/icecream/IcecreamFreezer$OnLooperPreparedImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/handler/OnLooperPrepared;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/icecream/IcecreamFreezer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OnLooperPreparedImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amap/location/icecream/IcecreamFreezer;


# direct methods
.method private constructor <init>(Lcom/amap/location/icecream/IcecreamFreezer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/icecream/IcecreamFreezer$OnLooperPreparedImpl;->this$0:Lcom/amap/location/icecream/IcecreamFreezer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amap/location/icecream/IcecreamFreezer;Lcom/amap/location/icecream/IcecreamFreezer$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/amap/location/icecream/IcecreamFreezer$OnLooperPreparedImpl;-><init>(Lcom/amap/location/icecream/IcecreamFreezer;)V

    return-void
.end method


# virtual methods
.method public onAmapLooperPrepared(Lcom/amap/location/support/handler/AmapLooper;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amap/location/icecream/IcecreamFreezer$OnLooperPreparedImpl;->this$0:Lcom/amap/location/icecream/IcecreamFreezer;

    .line 3
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lcom/amap/location/icecream/IcecreamFreezer$OnHandleMessageImpl;

    .line 9
    iget-object v3, p0, Lcom/amap/location/icecream/IcecreamFreezer$OnLooperPreparedImpl;->this$0:Lcom/amap/location/icecream/IcecreamFreezer;

    .line 11
    invoke-direct {v2, v3, p1}, Lcom/amap/location/icecream/IcecreamFreezer$OnHandleMessageImpl;-><init>(Lcom/amap/location/icecream/IcecreamFreezer;Lcom/amap/location/support/handler/AmapLooper;)V

    .line 14
    invoke-interface {v1, p1, v2}, Lcom/amap/location/support/handler/HandlerThreadManager;->createHandler(Lcom/amap/location/support/handler/AmapLooper;Lcom/amap/location/support/handler/OnHandleMessage;)Lcom/amap/location/support/handler/AmapHandler;

    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Lcom/amap/location/icecream/IcecreamFreezer;->access$102(Lcom/amap/location/icecream/IcecreamFreezer;Lcom/amap/location/support/handler/AmapHandler;)Lcom/amap/location/support/handler/AmapHandler;

    .line 21
    iget-object v0, p0, Lcom/amap/location/icecream/IcecreamFreezer$OnLooperPreparedImpl;->this$0:Lcom/amap/location/icecream/IcecreamFreezer;

    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iget-object v1, p0, Lcom/amap/location/icecream/IcecreamFreezer$OnLooperPreparedImpl;->this$0:Lcom/amap/location/icecream/IcecreamFreezer;

    .line 26
    invoke-static {v1}, Lcom/amap/location/icecream/IcecreamFreezer;->access$200(Lcom/amap/location/icecream/IcecreamFreezer;)Z

    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 32
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    iget-object v0, p0, Lcom/amap/location/icecream/IcecreamFreezer$OnLooperPreparedImpl;->this$0:Lcom/amap/location/icecream/IcecreamFreezer;

    .line 37
    invoke-static {v0, p1}, Lcom/amap/location/icecream/IcecreamFreezer;->access$300(Lcom/amap/location/icecream/IcecreamFreezer;Lcom/amap/location/support/handler/AmapLooper;)V

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw p1
.end method
