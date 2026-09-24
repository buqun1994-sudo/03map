.class Lcom/amap/location/fusion/b/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/e/a/g;


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
    iput-object p1, p0, Lcom/amap/location/fusion/b/b$1;->a:Lcom/amap/location/fusion/b/b;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(ILcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/amap/location/fusion/b/b$1;->a:Lcom/amap/location/fusion/b/b;

    .line 6
    invoke-static {p1}, Lcom/amap/location/fusion/b/b;->a(Lcom/amap/location/fusion/b/b;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/amap/location/fusion/b/b$1;->a:Lcom/amap/location/fusion/b/b;

    .line 14
    invoke-static {p1}, Lcom/amap/location/fusion/b/b;->a(Lcom/amap/location/fusion/b/b;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1, p2}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/amap/location/fusion/b/b$1;->a:Lcom/amap/location/fusion/b/b;

    .line 23
    invoke-static {p1, p2}, Lcom/amap/location/fusion/b/b;->a(Lcom/amap/location/fusion/b/b;Lcom/amap/location/support/bean/location/AmapLocation;)Lcom/amap/location/support/bean/location/AmapLocation;

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    const-string v0, "agnss soft:"

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-static {p2}, Lcom/amap/location/support/util/TextUtils;->getLocationLog(Lcom/amap/location/support/bean/location/AmapLocation;)Ljava/lang/String;

    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    const-string p2, "gnssloc"

    .line 49
    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method
