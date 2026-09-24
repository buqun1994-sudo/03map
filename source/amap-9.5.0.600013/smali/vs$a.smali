.class public abstract Lvs$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lvs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvs$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    const-string v0, "com.autonavi.amapauto.protocol.connector.IProtocolAidlInterface"

    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static t1(Landroid/os/IBinder;)Lvs;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "com.autonavi.amapauto.protocol.connector.IProtocolAidlInterface"

    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    instance-of v1, v0, Lvs;

    .line 15
    if-eqz v1, :cond_1

    .line 17
    check-cast v0, Lvs;

    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lvs$a$a;

    .line 22
    invoke-direct {v0, p0}, Lvs$a$a;-><init>(Landroid/os/IBinder;)V

    .line 25
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .line 1
    const-string v0, "com.autonavi.amapauto.protocol.connector.IProtocolAidlInterface"

    .line 3
    const/4 v1, 0x1

    .line 4
    if-lt p1, v1, :cond_0

    .line 6
    const v2, 0xffffff

    .line 9
    if-gt p1, v2, :cond_0

    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 14
    :cond_0
    const v2, 0x5f4e5446

    .line 17
    if-eq p1, v2, :cond_1

    .line 19
    packed-switch p1, :pswitch_data_0

    .line 22
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p0, p1}, Lvs;->x0(Ljava/lang/String;)Z

    .line 34
    move-result p1

    .line 35
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 38
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    goto :goto_0

    .line 42
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 49
    move-result-object p2

    .line 50
    invoke-static {p2}, Lxs$a;->t1(Landroid/os/IBinder;)Lxs;

    .line 53
    move-result-object p2

    .line 54
    invoke-interface {p0, p1, p2}, Lvs;->Y(Ljava/lang/String;Lxs;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    goto :goto_0

    .line 61
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 68
    move-result-object p2

    .line 69
    invoke-static {p2}, Lxs$a;->t1(Landroid/os/IBinder;)Lxs;

    .line 72
    move-result-object p2

    .line 73
    invoke-interface {p0, p1, p2}, Lvs;->u0(Ljava/lang/String;Lxs;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    goto :goto_0

    .line 80
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 83
    move-result-object p1

    .line 84
    invoke-static {p1}, Lws$a;->t1(Landroid/os/IBinder;)Lws;

    .line 87
    move-result-object p1

    .line 88
    invoke-interface {p0, p1}, Lvs;->X0(Lws;)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    goto :goto_0

    .line 95
    :pswitch_4
    sget-object p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 97
    invoke-static {p2, p1}, Lvs$b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;

    .line 103
    invoke-interface {p0, p1}, Lvs;->e0(Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;)Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;

    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-static {p3, p1, v1}, Lvs$b;->b(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 113
    goto :goto_0

    .line 114
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 117
    move-result-object p1

    .line 118
    invoke-interface {p0, p1}, Lvs;->U0(Ljava/lang/String;)I

    .line 121
    move-result p1

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    goto :goto_0

    .line 129
    :pswitch_6
    sget-object p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 131
    invoke-static {p2, p1}, Lvs$b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 134
    move-result-object p1

    .line 135
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;

    .line 137
    invoke-interface {p0, p1}, Lvs;->Y0(Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;)I

    .line 140
    move-result p1

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    :goto_0
    return v1

    .line 148
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    return v1

    .line 152
    nop

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
