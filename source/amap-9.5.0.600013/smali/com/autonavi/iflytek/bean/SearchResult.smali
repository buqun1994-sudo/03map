.class public Lcom/autonavi/iflytek/bean/SearchResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/autonavi/iflytek/bean/SearchResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/util/List;

.field public b:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/iflytek/bean/SearchResult$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/iflytek/bean/SearchResult$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/iflytek/bean/SearchResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lcom/autonavi/iflytek/bean/ProtocalPoi;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/autonavi/iflytek/bean/SearchResult;->a:Ljava/util/List;

    .line 12
    sget-object v0, Lcom/autonavi/iflytek/bean/SearchCategory;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/autonavi/iflytek/bean/SearchResult;->b:Ljava/util/List;

    .line 20
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/autonavi/iflytek/bean/SearchResult;->a:Ljava/util/List;

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 6
    iget-object p2, p0, Lcom/autonavi/iflytek/bean/SearchResult;->b:Ljava/util/List;

    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 11
    return-void
.end method
