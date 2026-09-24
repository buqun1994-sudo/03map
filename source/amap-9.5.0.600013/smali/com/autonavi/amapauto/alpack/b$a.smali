.class public abstract Lcom/autonavi/amapauto/alpack/b$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/amapauto/alpack/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/alpack/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/amapauto/alpack/b$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    const-string v0, "com.autonavi.amapauto.alpack.AutoBroadcastRequest"

    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static t1(Landroid/os/IBinder;)Lcom/autonavi/amapauto/alpack/b;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "com.autonavi.amapauto.alpack.AutoBroadcastRequest"

    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    instance-of v1, v0, Lcom/autonavi/amapauto/alpack/b;

    .line 15
    if-eqz v1, :cond_1

    .line 17
    check-cast v0, Lcom/autonavi/amapauto/alpack/b;

    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/autonavi/amapauto/alpack/b$a$a;

    .line 22
    invoke-direct {v0, p0}, Lcom/autonavi/amapauto/alpack/b$a$a;-><init>(Landroid/os/IBinder;)V

    .line 25
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "com.autonavi.amapauto.alpack.AutoBroadcastRequest"

    .line 4
    if-eq p1, v0, :cond_3

    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq p1, v2, :cond_2

    .line 9
    const/4 v2, 0x4

    .line 10
    if-eq p1, v2, :cond_1

    .line 12
    const v2, 0x5f4e5446

    .line 15
    if-eq p1, v2, :cond_0

    .line 17
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    return v0

    .line 26
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p0, p1}, Lcom/autonavi/amapauto/alpack/b;->a0(Ljava/lang/String;)[B

    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 40
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 43
    return v0

    .line 44
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 54
    move-result-object p2

    .line 55
    invoke-interface {p0, p1, p2}, Lcom/autonavi/amapauto/alpack/b;->b1(Ljava/lang/String;[B)V

    .line 58
    return v0

    .line 59
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 69
    move-result p3

    .line 70
    if-eqz p3, :cond_4

    .line 72
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 74
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 77
    move-result-object p2

    .line 78
    check-cast p2, Landroid/os/Bundle;

    .line 80
    goto :goto_0

    .line 81
    :cond_4
    const/4 p2, 0x0

    .line 82
    :goto_0
    invoke-interface {p0, p1, p2}, Lcom/autonavi/amapauto/alpack/b;->c0(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 85
    return v0
.end method
