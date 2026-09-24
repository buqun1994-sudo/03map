.class public abstract Lcom/amap/location/sdk/fusion/ILocationAosProvider$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/sdk/fusion/ILocationAosProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/sdk/fusion/ILocationAosProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/sdk/fusion/ILocationAosProvider$Stub$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    const-string v0, "com.amap.location.sdk.fusion.ILocationAosProvider"

    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static a()Lcom/amap/location/sdk/fusion/ILocationAosProvider;
    .locals 1

    .line 5
    sget-object v0, Lcom/amap/location/sdk/fusion/ILocationAosProvider$Stub$a;->a:Lcom/amap/location/sdk/fusion/ILocationAosProvider;

    return-object v0
.end method

.method public static a(Landroid/os/IBinder;)Lcom/amap/location/sdk/fusion/ILocationAosProvider;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.amap.location.sdk.fusion.ILocationAosProvider"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/amap/location/sdk/fusion/ILocationAosProvider;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/amap/location/sdk/fusion/ILocationAosProvider;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/amap/location/sdk/fusion/ILocationAosProvider$Stub$a;

    invoke-direct {v0, p0}, Lcom/amap/location/sdk/fusion/ILocationAosProvider$Stub$a;-><init>(Landroid/os/IBinder;)V

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
    const-string v1, "com.amap.location.sdk.fusion.ILocationAosProvider"

    .line 4
    if-eq p1, v0, :cond_2

    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq p1, v2, :cond_1

    .line 9
    const v2, 0x5f4e5446

    .line 12
    if-eq p1, v2, :cond_0

    .line 14
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    return v0

    .line 23
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p0, p1}, Lcom/amap/location/sdk/fusion/ILocationAosProvider;->a([B)[B

    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 37
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 40
    return v0

    .line 41
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    invoke-interface {p0, p1}, Lcom/amap/location/sdk/fusion/ILocationAosProvider;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    return v0
.end method
