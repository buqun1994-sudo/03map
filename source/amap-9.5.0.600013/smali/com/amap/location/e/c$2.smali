.class Lcom/amap/location/e/c$2;
.super Lcom/amap/location/support/nl/NetworkLocationListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/e/c;


# direct methods
.method public constructor <init>(Lcom/amap/location/e/c;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/e/c$2;->a:Lcom/amap/location/e/c;

    .line 3
    invoke-direct {p0, p2}, Lcom/amap/location/support/nl/NetworkLocationListener;-><init>(I)V

    .line 6
    return-void
.end method


# virtual methods
.method public onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocationNetwork;Lcom/amap/location/support/bean/AmapFps;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->isCorrect()Z

    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_1

    .line 9
    iget-object p2, p0, Lcom/amap/location/e/c$2;->a:Lcom/amap/location/e/c;

    .line 11
    invoke-static {p2}, Lcom/amap/location/e/c;->d(Lcom/amap/location/e/c;)Lcom/amap/location/e/b;

    .line 14
    move-result-object p2

    .line 15
    if-nez p2, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p2, p0, Lcom/amap/location/e/c$2;->a:Lcom/amap/location/e/c;

    .line 20
    invoke-static {p2}, Lcom/amap/location/e/c;->d(Lcom/amap/location/e/c;)Lcom/amap/location/e/b;

    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p2, p1}, Lcom/amap/location/e/b;->b(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 27
    :cond_1
    :goto_0
    return-void
.end method
