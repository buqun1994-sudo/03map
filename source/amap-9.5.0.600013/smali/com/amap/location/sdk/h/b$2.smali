.class Lcom/amap/location/sdk/h/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/a/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/sdk/h/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/sdk/h/b;


# direct methods
.method public constructor <init>(Lcom/amap/location/sdk/h/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/sdk/h/b$2;->a:Lcom/amap/location/sdk/h/b;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(IIILjava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/sdk/h/b$2;->a:Lcom/amap/location/sdk/h/b;

    .line 3
    invoke-static {v0}, Lcom/amap/location/sdk/h/b;->a(Lcom/amap/location/sdk/h/b;)V

    .line 6
    iget-object v0, p0, Lcom/amap/location/sdk/h/b$2;->a:Lcom/amap/location/sdk/h/b;

    .line 8
    invoke-static {v0, p1, p2, p3}, Lcom/amap/location/sdk/h/b;->a(Lcom/amap/location/sdk/h/b;III)V

    .line 11
    if-lez p1, :cond_0

    .line 13
    new-instance v0, Lcom/amap/location/sdk/h/a/b/a;

    .line 15
    invoke-direct {v0}, Lcom/amap/location/sdk/h/a/b/a;-><init>()V

    .line 18
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amap/location/sdk/h/a/b/a;->a(IIILjava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Lcom/amap/location/sdk/h/a/b/a;->toString()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 28
    move-result-object p1

    .line 29
    const p2, 0x19007

    .line 32
    invoke-static {p2, p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportEvent(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p1

    .line 37
    const-string p2, "PcdClient"

    .line 39
    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    :cond_0
    :goto_0
    return-void
.end method
