.class Lcom/amap/location/sdk/c/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/g/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/sdk/c/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/sdk/c/a$a;


# direct methods
.method public constructor <init>(Lcom/amap/location/sdk/c/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/sdk/c/a$a$a;->a:Lcom/amap/location/sdk/c/a$a;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 2

    if-eqz p1, :cond_1

    :try_start_0
    const-string v0, "suc"

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 5
    iget-object v0, p0, Lcom/amap/location/sdk/c/a$a$a;->a:Lcom/amap/location/sdk/c/a$a;

    iget-object v1, v0, Lcom/amap/location/sdk/c/a$a;->a:Lcom/amap/location/c/d;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, v0, Lcom/amap/location/sdk/c/a$a;->c:Lcom/amap/location/c/c/b;

    invoke-virtual {v1, p1, v0}, Lcom/amap/location/c/d;->a(ZLcom/amap/location/c/c/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public a()[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/location/sdk/c/a$a$a;->a:Lcom/amap/location/sdk/c/a$a;

    iget-object v1, v0, Lcom/amap/location/sdk/c/a$a;->a:Lcom/amap/location/c/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Lcom/amap/location/c/d;->e()Lcom/amap/location/c/c/b;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/location/sdk/c/a$a;->c:Lcom/amap/location/c/c/b;

    .line 3
    iget-object v0, p0, Lcom/amap/location/sdk/c/a$a$a;->a:Lcom/amap/location/sdk/c/a$a;

    iget-object v0, v0, Lcom/amap/location/sdk/c/a$a;->c:Lcom/amap/location/c/c/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/location/c/c/b;->b()[B

    move-result-object v2

    :cond_0
    return-object v2
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/amap/location/c/d;->d()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
