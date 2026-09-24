.class Lcom/amap/location/b/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/b/c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/support/handler/AmapHandler;

.field final synthetic b:Lcom/amap/location/b/c;


# direct methods
.method public constructor <init>(Lcom/amap/location/b/c;Lcom/amap/location/support/handler/AmapHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/b/c$2;->b:Lcom/amap/location/b/c;

    .line 3
    iput-object p2, p0, Lcom/amap/location/b/c$2;->a:Lcom/amap/location/support/handler/AmapHandler;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/b/c$2;->a:Lcom/amap/location/support/handler/AmapHandler;

    .line 3
    invoke-interface {v0}, Lcom/amap/location/support/handler/AmapHandler;->getLooper()Lcom/amap/location/support/handler/AmapLooper;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0}, Lcom/amap/location/support/handler/AmapLooper;->quit()V

    .line 12
    :cond_0
    return-void
.end method
