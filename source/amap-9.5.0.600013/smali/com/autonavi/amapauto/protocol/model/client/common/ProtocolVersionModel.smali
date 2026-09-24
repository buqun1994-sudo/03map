.class public Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel;
.super Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mapClientModelVersion:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mapServiceModelVersion:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private versionName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 8
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel;->versionName:Ljava/lang/String;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel;->mapClientModelVersion:Ljava/util/Map;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel;->mapServiceModelVersion:Ljava/util/Map;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel;->versionName:Ljava/lang/String;

    .line 13
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    const/4 v1, 0x1

    const-class v2, Ljava/util/HashMap;

    if-lt v0, v1, :cond_0

    .line 14
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel;->mapClientModelVersion:Ljava/util/Map;

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 16
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel;->mapServiceModelVersion:Ljava/util/Map;

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel;->versionName:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel;->mapClientModelVersion:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel;->versionName:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel;->mapServiceModelVersion:Ljava/util/Map;

    const p1, 0x1869f

    .line 7
    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMapClientModelVersion()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel;->mapClientModelVersion:Ljava/util/Map;

    .line 3
    return-object v0
.end method

.method public getMapServiceModelVersion()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel;->mapServiceModelVersion:Ljava/util/Map;

    .line 3
    return-object v0
.end method

.method public getModelVersion()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel;->versionName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel;->versionName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel;->versionName:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 12
    move-result p2

    .line 13
    const/4 v0, 0x1

    .line 14
    if-lt p2, v0, :cond_0

    .line 16
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel;->mapClientModelVersion:Ljava/util/Map;

    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 24
    move-result p2

    .line 25
    const/4 v0, 0x2

    .line 26
    if-lt p2, v0, :cond_1

    .line 28
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel;->mapServiceModelVersion:Ljava/util/Map;

    .line 30
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 33
    :cond_1
    return-void
.end method
