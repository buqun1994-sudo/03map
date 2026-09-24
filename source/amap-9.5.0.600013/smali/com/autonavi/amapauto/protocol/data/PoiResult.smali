.class public Lcom/autonavi/amapauto/protocol/data/PoiResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/autonavi/amapauto/protocol/data/PoiResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/util/List;

.field public b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/data/PoiResult$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/data/PoiResult$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/data/PoiResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/data/PoiResult;->b:I

    .line 6
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/data/PoiResult;->a:Ljava/util/List;

    const-class v1, Lcom/autonavi/amapauto/protocol/data/PoiResult;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/data/PoiResult;->a:Ljava/util/List;

    .line 3
    iput p2, p0, Lcom/autonavi/amapauto/protocol/data/PoiResult;->b:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public r()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/data/PoiResult;->a:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public s(Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/data/PoiResult;->a:Ljava/util/List;

    .line 3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/data/PoiResult;->a:Ljava/util/List;

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 6
    iget p2, p0, Lcom/autonavi/amapauto/protocol/data/PoiResult;->b:I

    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    return-void
.end method
