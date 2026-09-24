.class public Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo;
    .locals 9

    .line 1
    new-instance v8, Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    .line 10
    move-result-wide v3

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 14
    move-result v5

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 18
    move-result v6

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 22
    move-result v7

    .line 23
    move-object v0, v8

    .line 24
    invoke-direct/range {v0 .. v7}, Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo;-><init>(DDIII)V

    .line 27
    return-object v8
.end method

.method public b(I)[Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo;

    .line 3
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo$a;->a(Landroid/os/Parcel;)Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo$a;->b(I)[Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
