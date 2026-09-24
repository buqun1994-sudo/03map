.class public Lyl;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lo2;


# instance fields
.field public d:I

.field public e:Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

.field public f:Lcom/autonavi/amapauto/protocol/model/service/user/ChangedFavoritePoiModel;


# direct methods
.method public constructor <init>(ILcom/autonavi/amapauto/jni/protocol/data/PoiData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 2
    iput p1, p0, Lyl;->d:I

    .line 3
    iput-object p2, p0, Lyl;->e:Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/service/user/ChangedFavoritePoiModel;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lec;-><init>()V

    .line 5
    iput-object p1, p0, Lyl;->f:Lcom/autonavi/amapauto/protocol/model/service/user/ChangedFavoritePoiModel;

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 12

    .line 1
    invoke-virtual {p0}, Lec;->d()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lyl;->f:Lcom/autonavi/amapauto/protocol/model/service/user/ChangedFavoritePoiModel;

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    new-array v1, v0, [Ljava/lang/Object;

    .line 13
    iget v2, p0, Lyl;->d:I

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x0

    .line 20
    aput-object v2, v1, v3

    .line 22
    const-string v2, "FavoriteUpdateInfoDisAction"

    .line 24
    const-string v4, "[parseToAidlModel]editType(\u64cd\u4f5c\u7c7b\u578b 1:\u589e\u52a0/\u66f4\u65b0 2:\u5220\u9664):{?}"

    .line 26
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iget-object v1, p0, Lyl;->e:Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

    .line 31
    if-eqz v1, :cond_2

    .line 33
    iget-object v4, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->address:Ljava/lang/String;

    .line 35
    if-nez v4, :cond_1

    .line 37
    const-string v4, ""

    .line 39
    iput-object v4, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->address:Ljava/lang/String;

    .line 41
    :cond_1
    const/4 v4, 0x5

    .line 42
    new-array v4, v4, [Ljava/lang/Object;

    .line 44
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->getPoiid()Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    aput-object v1, v4, v3

    .line 50
    iget-object v1, p0, Lyl;->e:Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

    .line 52
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->homecopType:I

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    move-result-object v1

    .line 58
    aput-object v1, v4, v0

    .line 60
    iget-object v0, p0, Lyl;->e:Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

    .line 62
    iget-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->name:Ljava/lang/String;

    .line 64
    const/4 v3, 0x2

    .line 65
    aput-object v1, v4, v3

    .line 67
    const/4 v1, 0x3

    .line 68
    iget-object v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->address:Ljava/lang/String;

    .line 70
    aput-object v3, v4, v1

    .line 72
    iget v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->distance:I

    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    move-result-object v0

    .line 78
    const/4 v1, 0x4

    .line 79
    aput-object v0, v4, v1

    .line 81
    const-string v0, "[parseToAidlModel]Poiid:{?}; homecopType:{?}; name:{?}; address:{?}; distance:{?}"

    .line 83
    invoke-static {v2, v0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/user/ChangedFavoritePoiModel;

    .line 88
    iget-object v1, p0, Lyl;->e:Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

    .line 90
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->getPoiid()Ljava/lang/String;

    .line 93
    move-result-object v6

    .line 94
    iget v7, p0, Lyl;->d:I

    .line 96
    iget-object v1, p0, Lyl;->e:Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

    .line 98
    iget v8, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->homecopType:I

    .line 100
    iget-object v9, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->name:Ljava/lang/String;

    .line 102
    iget-object v10, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->address:Ljava/lang/String;

    .line 104
    iget v11, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->distance:I

    .line 106
    move-object v5, v0

    .line 107
    invoke-direct/range {v5 .. v11}, Lcom/autonavi/amapauto/protocol/model/service/user/ChangedFavoritePoiModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V

    .line 110
    return-object v0

    .line 111
    :cond_2
    const-string v0, "[parseToAidlModel]poiData == null"

    .line 113
    new-array v1, v3, [Ljava/lang/Object;

    .line 115
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    const/4 v0, 0x0

    .line 119
    return-object v0
.end method
