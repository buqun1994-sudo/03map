.class Lcom/amap/location/e/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/e/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/e/c;-><init>(Lcom/amap/location/support/handler/AmapLooper;Lcom/amap/location/e/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/e/c;


# direct methods
.method public constructor <init>(Lcom/amap/location/e/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/e/c$1;->a:Lcom/amap/location/e/c;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(ILcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 2

    .line 1
    const/4 p2, 0x1

    .line 2
    if-eq p1, p2, :cond_3

    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_2

    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p1, v0, :cond_1

    .line 10
    const/4 p2, 0x4

    .line 11
    if-eq p1, p2, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/amap/location/e/c$1;->a:Lcom/amap/location/e/c;

    .line 16
    invoke-static {p1}, Lcom/amap/location/e/c;->c(Lcom/amap/location/e/c;)V

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/amap/location/e/c$1;->a:Lcom/amap/location/e/c;

    .line 22
    invoke-static {p1}, Lcom/amap/location/e/c;->b(Lcom/amap/location/e/c;)Lcom/amap/location/e/a/a/d;

    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1, p2}, Lcom/amap/location/e/a/a/d;->a(Z)V

    .line 29
    iget-object p1, p0, Lcom/amap/location/e/c$1;->a:Lcom/amap/location/e/c;

    .line 31
    invoke-static {p1}, Lcom/amap/location/e/c;->c(Lcom/amap/location/e/c;)V

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    iget-object p1, p0, Lcom/amap/location/e/c$1;->a:Lcom/amap/location/e/c;

    .line 37
    invoke-static {p1, p2}, Lcom/amap/location/e/c;->a(Lcom/amap/location/e/c;Z)Z

    .line 40
    goto :goto_0

    .line 41
    :cond_3
    iget-object p1, p0, Lcom/amap/location/e/c$1;->a:Lcom/amap/location/e/c;

    .line 43
    invoke-static {p1}, Lcom/amap/location/e/c;->a(Lcom/amap/location/e/c;)Z

    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_4

    .line 49
    iget-object p1, p0, Lcom/amap/location/e/c$1;->a:Lcom/amap/location/e/c;

    .line 51
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 54
    move-result-object p2

    .line 55
    invoke-interface {p2}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 58
    move-result-wide v0

    .line 59
    invoke-static {p1, v0, v1}, Lcom/amap/location/e/c;->a(Lcom/amap/location/e/c;J)J

    .line 62
    :cond_4
    iget-object p1, p0, Lcom/amap/location/e/c$1;->a:Lcom/amap/location/e/c;

    .line 64
    const/4 p2, 0x0

    .line 65
    invoke-static {p1, p2}, Lcom/amap/location/e/c;->a(Lcom/amap/location/e/c;Z)Z

    .line 68
    :goto_0
    return-void
.end method
