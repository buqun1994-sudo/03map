.class public Lcom/autonavi/amapauto/protocol/model/client/ReqMapMoveofEightDirectionModel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/protocol/model/client/ReqMapMoveofEightDirectionModel;
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
.method public a(Landroid/os/Parcel;)Lcom/autonavi/amapauto/protocol/model/client/ReqMapMoveofEightDirectionModel;
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqMapMoveofEightDirectionModel;

    .line 3
    invoke-direct {v0, p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqMapMoveofEightDirectionModel;-><init>(Landroid/os/Parcel;)V

    .line 6
    return-object v0
.end method

.method public b(I)[Lcom/autonavi/amapauto/protocol/model/client/ReqMapMoveofEightDirectionModel;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/autonavi/amapauto/protocol/model/client/ReqMapMoveofEightDirectionModel;

    .line 3
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqMapMoveofEightDirectionModel$a;->a(Landroid/os/Parcel;)Lcom/autonavi/amapauto/protocol/model/client/ReqMapMoveofEightDirectionModel;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqMapMoveofEightDirectionModel$a;->b(I)[Lcom/autonavi/amapauto/protocol/model/client/ReqMapMoveofEightDirectionModel;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
