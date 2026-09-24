.class final Lcom/amap/location/g/g$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/signal/wifi/AmapWifiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/g/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/g/g;


# direct methods
.method private constructor <init>(Lcom/amap/location/g/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/g/g$d;->a:Lcom/amap/location/g/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amap/location/g/g;Lcom/amap/location/g/g$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/amap/location/g/g$d;-><init>(Lcom/amap/location/g/g;)V

    return-void
.end method


# virtual methods
.method public onWifiInfoChanged(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/wifi/AmapWifi;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 9
    :cond_0
    const-string v0, "nlcontext"

    .line 11
    const-string v1, "nl wifi scan size = 0"

    .line 13
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/amap/location/g/g$d;->a:Lcom/amap/location/g/g;

    .line 18
    invoke-static {v0, p1}, Lcom/amap/location/g/g;->b(Lcom/amap/location/g/g;Ljava/util/List;)V

    .line 21
    const p1, 0x18991

    .line 24
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 27
    if-eqz p2, :cond_2

    .line 29
    const p1, 0x18992

    .line 32
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 35
    :cond_2
    return-void
.end method
