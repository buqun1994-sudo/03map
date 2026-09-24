.class public Lvo0$n;
.super Lcom/amap/location/support/signal/gnss/AmapLocationListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "n"
.end annotation


# instance fields
.field public final synthetic d:Lvo0;


# direct methods
.method public constructor <init>(Lvo0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvo0$n;->d:Lvo0;

    .line 3
    invoke-direct {p0}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lvo0$n;->d:Lvo0;

    .line 5
    new-instance v1, Lvo0$n$a;

    .line 7
    invoke-direct {v1, p0, p1}, Lvo0$n$a;-><init>(Lvo0$n;Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 10
    invoke-static {v0, v1}, Lvo0;->x(Lvo0;Ljava/lang/Runnable;)V

    .line 13
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;I)V
    .locals 0

    .line 1
    return-void
.end method
