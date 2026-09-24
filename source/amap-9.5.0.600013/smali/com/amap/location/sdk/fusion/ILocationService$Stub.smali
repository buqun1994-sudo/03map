.class public abstract Lcom/amap/location/sdk/fusion/ILocationService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/sdk/fusion/ILocationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/sdk/fusion/ILocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/sdk/fusion/ILocationService$Stub$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    const-string v0, "com.amap.location.sdk.fusion.ILocationService"

    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/amap/location/sdk/fusion/ILocationService;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "com.amap.location.sdk.fusion.ILocationService"

    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    instance-of v1, v0, Lcom/amap/location/sdk/fusion/ILocationService;

    .line 15
    if-eqz v1, :cond_1

    .line 17
    check-cast v0, Lcom/amap/location/sdk/fusion/ILocationService;

    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/amap/location/sdk/fusion/ILocationService$Stub$a;

    .line 22
    invoke-direct {v0, p0}, Lcom/amap/location/sdk/fusion/ILocationService$Stub$a;-><init>(Landroid/os/IBinder;)V

    .line 25
    return-object v0
.end method

.method public static g()Lcom/amap/location/sdk/fusion/ILocationService;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/sdk/fusion/ILocationService$Stub$a;->a:Lcom/amap/location/sdk/fusion/ILocationService;

    .line 3
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const v0, 0x5f4e5446

    .line 4
    const/4 v1, 0x1

    .line 5
    const-string v2, "com.amap.location.sdk.fusion.ILocationService"

    .line 7
    if-eq p1, v0, :cond_2

    .line 9
    const/4 v0, 0x0

    .line 10
    packed-switch p1, :pswitch_data_0

    .line 13
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 21
    invoke-interface {p0}, Lcom/amap/location/sdk/fusion/ILocationService;->d()V

    .line 24
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 27
    return v1

    .line 28
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 31
    invoke-interface {p0}, Lcom/amap/location/sdk/fusion/ILocationService;->c()V

    .line 34
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 37
    return v1

    .line 38
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 41
    invoke-interface {p0}, Lcom/amap/location/sdk/fusion/ILocationService;->e()V

    .line 44
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 47
    return v1

    .line 48
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-interface {p0}, Lcom/amap/location/sdk/fusion/ILocationService;->b()I

    .line 54
    move-result p1

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    return v1

    .line 62
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    invoke-interface {p0, p1}, Lcom/amap/location/sdk/fusion/ILocationService;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    return v1

    .line 80
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 86
    move-result-object p1

    .line 87
    invoke-interface {p0, p1}, Lcom/amap/location/sdk/fusion/ILocationService;->a([B)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    return v1

    .line 94
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 100
    move-result-object p1

    .line 101
    invoke-static {p1}, Lcom/amap/location/sdk/fusion/ILocationAosProvider$Stub;->a(Landroid/os/IBinder;)Lcom/amap/location/sdk/fusion/ILocationAosProvider;

    .line 104
    move-result-object p1

    .line 105
    invoke-interface {p0, p1}, Lcom/amap/location/sdk/fusion/ILocationService;->a(Lcom/amap/location/sdk/fusion/ILocationAosProvider;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    return v1

    .line 112
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 122
    move-result p4

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 126
    move-result v0

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 130
    move-result-object p2

    .line 131
    invoke-interface {p0, p1, p4, v0, p2}, Lcom/amap/location/sdk/fusion/ILocationService;->a(Ljava/lang/String;IILjava/lang/String;)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    return v1

    .line 138
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 144
    move-result-object p1

    .line 145
    invoke-interface {p0, p1}, Lcom/amap/location/sdk/fusion/ILocationService;->a(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    return v1

    .line 152
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 158
    move-result-object p1

    .line 159
    invoke-static {p1}, Lcom/amap/location/sdk/fusion/IStatusCallback$Stub;->a(Landroid/os/IBinder;)Lcom/amap/location/sdk/fusion/IStatusCallback;

    .line 162
    move-result-object p1

    .line 163
    invoke-interface {p0, p1}, Lcom/amap/location/sdk/fusion/ILocationService;->a(Lcom/amap/location/sdk/fusion/IStatusCallback;)V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    return v1

    .line 170
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-interface {p0}, Lcom/amap/location/sdk/fusion/ILocationService;->a()V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    return v1

    .line 180
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 186
    move-result-object p1

    .line 187
    invoke-static {p1}, Lcom/amap/location/sdk/fusion/ILocationCallback$Stub;->a(Landroid/os/IBinder;)Lcom/amap/location/sdk/fusion/ILocationCallback;

    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 194
    move-result-wide v2

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 198
    move-result p2

    .line 199
    if-eqz p2, :cond_0

    .line 201
    const/4 v0, 0x1

    .line 202
    :cond_0
    invoke-interface {p0, p1, v2, v3, v0}, Lcom/amap/location/sdk/fusion/ILocationService;->a(Lcom/amap/location/sdk/fusion/ILocationCallback;JZ)V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    return v1

    .line 209
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 215
    move-result-object p1

    .line 216
    invoke-static {p1}, Lcom/amap/location/sdk/fusion/ILocationCallback$Stub;->a(Landroid/os/IBinder;)Lcom/amap/location/sdk/fusion/ILocationCallback;

    .line 219
    move-result-object p1

    .line 220
    invoke-interface {p0, p1}, Lcom/amap/location/sdk/fusion/ILocationService;->a(Lcom/amap/location/sdk/fusion/ILocationCallback;)V

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    return v1

    .line 227
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 233
    move-result v3

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 237
    move-result-wide v4

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    .line 241
    move-result v6

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 245
    move-result p1

    .line 246
    if-eqz p1, :cond_1

    .line 248
    const/4 v7, 0x1

    .line 249
    goto :goto_0

    .line 250
    :cond_1
    const/4 v7, 0x0

    .line 251
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 254
    move-result-object p1

    .line 255
    invoke-static {p1}, Lcom/amap/location/sdk/fusion/ILocationCallback$Stub;->a(Landroid/os/IBinder;)Lcom/amap/location/sdk/fusion/ILocationCallback;

    .line 258
    move-result-object v8

    .line 259
    move-object v2, p0

    .line 260
    invoke-interface/range {v2 .. v8}, Lcom/amap/location/sdk/fusion/ILocationService;->a(IJFZLcom/amap/location/sdk/fusion/ILocationCallback;)V

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    return v1

    .line 267
    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    return v1

    .line 271
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
