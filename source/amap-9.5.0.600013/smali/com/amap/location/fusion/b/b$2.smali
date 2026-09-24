.class Lcom/amap/location/fusion/b/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/fusion/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/fusion/b/b;


# direct methods
.method public constructor <init>(Lcom/amap/location/fusion/b/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/fusion/b/b$2;->a:Lcom/amap/location/fusion/b/b;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/location/fusion/b/b$2;->a:Lcom/amap/location/fusion/b/b;

    .line 3
    invoke-static {v0}, Lcom/amap/location/fusion/b/b;->b(Lcom/amap/location/fusion/b/b;)Lcom/amap/location/e/b;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/amap/location/fusion/b/b$2;->a:Lcom/amap/location/fusion/b/b;

    .line 11
    invoke-static {v0}, Lcom/amap/location/fusion/b/b;->b(Lcom/amap/location/fusion/b/b;)Lcom/amap/location/e/b;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x2

    .line 16
    invoke-virtual {v0, v1}, Lcom/amap/location/e/b;->a(I)V

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/amap/location/fusion/b/b$2;->a:Lcom/amap/location/fusion/b/b;

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-static {v0, v1}, Lcom/amap/location/fusion/b/b;->a(Lcom/amap/location/fusion/b/b;Z)Z

    .line 25
    return-void
.end method
