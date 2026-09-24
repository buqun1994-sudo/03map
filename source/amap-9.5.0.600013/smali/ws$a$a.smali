.class public Lws$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lws;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lws$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lws$a$a;->a:Landroid/os/IBinder;

    .line 6
    return-void
.end method


# virtual methods
.method public T(Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;)Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 8
    move-result-object v1

    .line 9
    :try_start_0
    const-string v2, "com.autonavi.amapauto.protocol.connector.IProtocolAutoGetterInterface"

    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {v0, p1, v2}, Lws$b;->b(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 18
    iget-object p1, p0, Lws$a$a;->a:Landroid/os/IBinder;

    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 24
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 27
    sget-object p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 29
    invoke-static {v1, p1}, Lws$b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 38
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 41
    return-object p1

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 46
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 49
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lws$a$a;->a:Landroid/os/IBinder;

    .line 3
    return-object v0
.end method
