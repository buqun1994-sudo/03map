.class public abstract Lcom/amap/location/sdk/fusion/ILocationCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/sdk/fusion/ILocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/sdk/fusion/ILocationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/sdk/fusion/ILocationCallback$Stub$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    const-string v0, "com.amap.location.sdk.fusion.ILocationCallback"

    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static a()Lcom/amap/location/sdk/fusion/ILocationCallback;
    .locals 1

    .line 5
    sget-object v0, Lcom/amap/location/sdk/fusion/ILocationCallback$Stub$a;->a:Lcom/amap/location/sdk/fusion/ILocationCallback;

    return-object v0
.end method

.method public static a(Landroid/os/IBinder;)Lcom/amap/location/sdk/fusion/ILocationCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.amap.location.sdk.fusion.ILocationCallback"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/amap/location/sdk/fusion/ILocationCallback;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/amap/location/sdk/fusion/ILocationCallback;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/amap/location/sdk/fusion/ILocationCallback$Stub$a;

    invoke-direct {v0, p0}, Lcom/amap/location/sdk/fusion/ILocationCallback$Stub$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "com.amap.location.sdk.fusion.ILocationCallback"

    .line 4
    if-eq p1, v0, :cond_4

    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq p1, v2, :cond_3

    .line 9
    const/4 v2, 0x3

    .line 10
    if-eq p1, v2, :cond_2

    .line 12
    const/4 v2, 0x4

    .line 13
    if-eq p1, v2, :cond_1

    .line 15
    const v2, 0x5f4e5446

    .line 18
    if-eq p1, v2, :cond_0

    .line 20
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 23
    move-result p1

    .line 24
    return p1

    .line 25
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    return v0

    .line 29
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    invoke-interface {p0, p1}, Lcom/amap/location/sdk/fusion/ILocationCallback;->b(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 42
    return v0

    .line 43
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    invoke-interface {p0, p1}, Lcom/amap/location/sdk/fusion/ILocationCallback;->a(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    return v0

    .line 57
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 67
    move-result p2

    .line 68
    invoke-interface {p0, p1, p2}, Lcom/amap/location/sdk/fusion/ILocationCallback;->a(Ljava/lang/String;I)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    return v0

    .line 75
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 81
    move-result-object p1

    .line 82
    invoke-interface {p0, p1}, Lcom/amap/location/sdk/fusion/ILocationCallback;->a([B)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    return v0
.end method
