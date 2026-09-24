.class Lcom/amap/location/fusion/a/c/a/a$2;
.super Lcom/amap/location/support/nl/NetworkLocationListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/fusion/a/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/fusion/a/c/a/a;


# direct methods
.method public constructor <init>(Lcom/amap/location/fusion/a/c/a/a;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/fusion/a/c/a/a$2;->a:Lcom/amap/location/fusion/a/c/a/a;

    .line 3
    invoke-direct {p0, p2}, Lcom/amap/location/support/nl/NetworkLocationListener;-><init>(I)V

    .line 6
    return-void
.end method


# virtual methods
.method public onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocationNetwork;Lcom/amap/location/support/bean/AmapFps;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/amap/location/fusion/a/c/a/a$2;->a:Lcom/amap/location/fusion/a/c/a/a;

    .line 3
    invoke-virtual {p2, p1}, Lcom/amap/location/support/location/AbstractLocator;->filter(Lcom/amap/location/support/bean/location/AmapLocation;)Z

    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 9
    const p1, 0x18efd

    .line 12
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p2, p0, Lcom/amap/location/fusion/a/c/a/a$2;->a:Lcom/amap/location/fusion/a/c/a/a;

    .line 18
    invoke-virtual {p2, p1}, Lcom/amap/location/fusion/a/c/a/a;->a(Lcom/amap/location/support/bean/location/AmapLocationNetwork;)V

    .line 21
    return-void
.end method
