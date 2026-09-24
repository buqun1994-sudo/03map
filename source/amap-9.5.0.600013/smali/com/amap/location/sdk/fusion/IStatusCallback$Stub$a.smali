.class Lcom/amap/location/sdk/fusion/IStatusCallback$Stub$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/sdk/fusion/IStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/sdk/fusion/IStatusCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/amap/location/sdk/fusion/IStatusCallback;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/amap/location/sdk/fusion/IStatusCallback$Stub$a;->b:Landroid/os/IBinder;

    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;JJLjava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.amap.location.sdk.fusion.IStatusCallback"

    .line 3
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object v0, p1

    .line 4
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-wide v5, p2

    .line 5
    invoke-virtual {v1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    move-wide/from16 v7, p4

    .line 6
    invoke-virtual {v1, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v9, p6

    .line 7
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v10, p0

    .line 8
    :try_start_1
    iget-object v3, v10, Lcom/amap/location/sdk/fusion/IStatusCallback$Stub$a;->b:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v11, 0x0

    invoke-interface {v3, v4, v1, v2, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 9
    invoke-static {}, Lcom/amap/location/sdk/fusion/IStatusCallback$Stub;->a()Lcom/amap/location/sdk/fusion/IStatusCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 10
    invoke-static {}, Lcom/amap/location/sdk/fusion/IStatusCallback$Stub;->a()Lcom/amap/location/sdk/fusion/IStatusCallback;

    move-result-object v3

    move-object v4, p1

    move-wide v5, p2

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Lcom/amap/location/sdk/fusion/IStatusCallback;->a(Ljava/lang/String;JJLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 12
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 13
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 15
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v10, p0

    .line 16
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 17
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 18
    throw v0
.end method

.method public a(Ljava/lang/String;JJ[B)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 20
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.amap.location.sdk.fusion.IStatusCallback"

    .line 21
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object v0, p1

    .line 22
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-wide v5, p2

    .line 23
    invoke-virtual {v1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    move-wide/from16 v7, p4

    .line 24
    invoke-virtual {v1, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v9, p6

    .line 25
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v10, p0

    .line 26
    :try_start_1
    iget-object v3, v10, Lcom/amap/location/sdk/fusion/IStatusCallback$Stub$a;->b:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v11, 0x0

    invoke-interface {v3, v4, v1, v2, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 27
    invoke-static {}, Lcom/amap/location/sdk/fusion/IStatusCallback$Stub;->a()Lcom/amap/location/sdk/fusion/IStatusCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 28
    invoke-static {}, Lcom/amap/location/sdk/fusion/IStatusCallback$Stub;->a()Lcom/amap/location/sdk/fusion/IStatusCallback;

    move-result-object v3

    move-object v4, p1

    move-wide v5, p2

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Lcom/amap/location/sdk/fusion/IStatusCallback;->a(Ljava/lang/String;JJ[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 30
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 31
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 33
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v10, p0

    .line 34
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 35
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 36
    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/IStatusCallback$Stub$a;->b:Landroid/os/IBinder;

    .line 3
    return-object v0
.end method
