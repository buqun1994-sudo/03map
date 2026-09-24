.class Lcom/amap/location/b/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/b/c;->a(Lcom/amap/location/b/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/b/b/a;

.field final synthetic b:Lcom/amap/location/b/c;


# direct methods
.method public constructor <init>(Lcom/amap/location/b/c;Lcom/amap/location/b/b/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/b/c$1;->b:Lcom/amap/location/b/c;

    .line 3
    iput-object p2, p0, Lcom/amap/location/b/c$1;->a:Lcom/amap/location/b/b/a;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/location/b/c$1;->b:Lcom/amap/location/b/c;

    .line 3
    invoke-static {v0}, Lcom/amap/location/b/c;->a(Lcom/amap/location/b/c;)Lcom/amap/location/b/a;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Lcom/amap/location/b/a;

    .line 11
    invoke-direct {v0}, Lcom/amap/location/b/a;-><init>()V

    .line 14
    iget-object v1, p0, Lcom/amap/location/b/c$1;->b:Lcom/amap/location/b/c;

    .line 16
    invoke-static {v1}, Lcom/amap/location/b/c;->a(Lcom/amap/location/b/c;)Lcom/amap/location/b/a;

    .line 19
    move-result-object v1

    .line 20
    iget-object v1, v1, Lcom/amap/location/b/a;->e:Lcom/amap/location/b/a$a;

    .line 22
    iput-object v1, v0, Lcom/amap/location/b/a;->e:Lcom/amap/location/b/a$a;

    .line 24
    iget-object v1, p0, Lcom/amap/location/b/c$1;->b:Lcom/amap/location/b/c;

    .line 26
    invoke-static {v1}, Lcom/amap/location/b/c;->a(Lcom/amap/location/b/c;)Lcom/amap/location/b/a;

    .line 29
    move-result-object v1

    .line 30
    iget-object v1, v1, Lcom/amap/location/b/a;->b:Ljava/lang/String;

    .line 32
    iput-object v1, v0, Lcom/amap/location/b/a;->b:Ljava/lang/String;

    .line 34
    iget-object v1, p0, Lcom/amap/location/b/c$1;->a:Lcom/amap/location/b/b/a;

    .line 36
    invoke-interface {v1, v0}, Lcom/amap/location/b/b/a;->a(Lcom/amap/location/b/a;)V

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/amap/location/b/c$1;->b:Lcom/amap/location/b/c;

    .line 42
    invoke-static {v0}, Lcom/amap/location/b/c;->b(Lcom/amap/location/b/c;)Z

    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/amap/location/b/c$1;->a:Lcom/amap/location/b/b/a;

    .line 50
    invoke-interface {v0}, Lcom/amap/location/b/b/a;->a()V

    .line 53
    :cond_1
    :goto_0
    return-void
.end method
