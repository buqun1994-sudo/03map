.class Lcom/amap/location/fusion/util/e$b$1;
.super Lcom/amap/location/support/nl/NetworkLocationListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/fusion/util/e$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/fusion/util/e$b;


# direct methods
.method public constructor <init>(Lcom/amap/location/fusion/util/e$b;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/fusion/util/e$b$1;->a:Lcom/amap/location/fusion/util/e$b;

    .line 3
    invoke-direct {p0, p2}, Lcom/amap/location/support/nl/NetworkLocationListener;-><init>(I)V

    .line 6
    return-void
.end method


# virtual methods
.method public onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocationNetwork;Lcom/amap/location/support/bean/AmapFps;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 3
    const p2, 0x189d8

    .line 6
    invoke-static {p2}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 9
    invoke-virtual {p1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getLocType()I

    .line 12
    move-result p1

    .line 13
    const/4 p2, 0x1

    .line 14
    if-ne p1, p2, :cond_0

    .line 16
    const p1, 0x189d9

    .line 19
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 22
    :cond_0
    return-void
.end method
