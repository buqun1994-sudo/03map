.class public abstract Lcom/amap/location/sdk/fusion/IStatusCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/sdk/fusion/IStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/sdk/fusion/IStatusCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/sdk/fusion/IStatusCallback$Stub$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    const-string v0, "com.amap.location.sdk.fusion.IStatusCallback"

    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static a()Lcom/amap/location/sdk/fusion/IStatusCallback;
    .locals 1

    .line 5
    sget-object v0, Lcom/amap/location/sdk/fusion/IStatusCallback$Stub$a;->a:Lcom/amap/location/sdk/fusion/IStatusCallback;

    return-object v0
.end method

.method public static a(Landroid/os/IBinder;)Lcom/amap/location/sdk/fusion/IStatusCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.amap.location.sdk.fusion.IStatusCallback"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/amap/location/sdk/fusion/IStatusCallback;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/amap/location/sdk/fusion/IStatusCallback;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/amap/location/sdk/fusion/IStatusCallback$Stub$a;

    invoke-direct {v0, p0}, Lcom/amap/location/sdk/fusion/IStatusCallback$Stub$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    move/from16 v0, p1

    .line 3
    move-object/from16 v1, p2

    .line 5
    const/4 v2, 0x1

    .line 6
    const-string v3, "com.amap.location.sdk.fusion.IStatusCallback"

    .line 8
    if-eq v0, v2, :cond_2

    .line 10
    const/4 v4, 0x2

    .line 11
    if-eq v0, v4, :cond_1

    .line 13
    const v4, 0x5f4e5446

    .line 16
    if-eq v0, v4, :cond_0

    .line 18
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 21
    move-result v0

    .line 22
    return v0

    .line 23
    :cond_0
    move-object/from16 v0, p3

    .line 25
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    return v2

    .line 29
    :cond_1
    move-object/from16 v0, p3

    .line 31
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 37
    move-result-object v5

    .line 38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 41
    move-result-wide v6

    .line 42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 45
    move-result-wide v8

    .line 46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 49
    move-result-object v10

    .line 50
    move-object/from16 v4, p0

    .line 52
    invoke-interface/range {v4 .. v10}, Lcom/amap/location/sdk/fusion/IStatusCallback;->a(Ljava/lang/String;JJ[B)V

    .line 55
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    return v2

    .line 59
    :cond_2
    move-object/from16 v0, p3

    .line 61
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 67
    move-result-object v12

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 71
    move-result-wide v13

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 75
    move-result-wide v15

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 79
    move-result-object v17

    .line 80
    move-object/from16 v11, p0

    .line 82
    invoke-interface/range {v11 .. v17}, Lcom/amap/location/sdk/fusion/IStatusCallback;->a(Ljava/lang/String;JJLjava/lang/String;)V

    .line 85
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    return v2
.end method
