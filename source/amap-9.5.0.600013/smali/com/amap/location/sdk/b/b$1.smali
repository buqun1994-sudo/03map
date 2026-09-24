.class Lcom/amap/location/sdk/b/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/b/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/sdk/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/sdk/b/b;


# direct methods
.method public constructor <init>(Lcom/amap/location/sdk/b/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/sdk/b/b$1;->a:Lcom/amap/location/sdk/b/b;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Lcom/amap/location/b/a;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/sdk/b/b$1;->a:Lcom/amap/location/sdk/b/b;

    invoke-static {v0}, Lcom/amap/location/sdk/b/b;->a(Lcom/amap/location/sdk/b/b;)Lcom/amap/location/sdk/b/b$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/amap/location/sdk/b/b$1;->a:Lcom/amap/location/sdk/b/b;

    invoke-static {v0}, Lcom/amap/location/sdk/b/b;->a(Lcom/amap/location/sdk/b/b;)Lcom/amap/location/sdk/b/b$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/location/b/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amap/location/sdk/b/b$a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
