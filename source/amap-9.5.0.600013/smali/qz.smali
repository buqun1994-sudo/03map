.class public Lqz;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lo2;


# instance fields
.field public d:Lcom/autonavi/amapauto/jni/protocol/data/ManeuverIconData;

.field public e:Lcom/autonavi/amapauto/protocol/model/service/ManeuverIconModel;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/jni/protocol/data/ManeuverIconData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 2
    iput-object p1, p0, Lqz;->d:Lcom/autonavi/amapauto/jni/protocol/data/ManeuverIconData;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/service/ManeuverIconModel;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lec;-><init>()V

    .line 4
    iput-object p1, p0, Lqz;->e:Lcom/autonavi/amapauto/protocol/model/service/ManeuverIconModel;

    return-void
.end method

.method public static g(Lcom/autonavi/amapauto/jni/protocol/data/ManeuverIconData;)Lcom/autonavi/amapauto/protocol/model/service/ManeuverIconModel;
    .locals 8

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ManeuverIconModel;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/ManeuverIconModel;-><init>()V

    .line 10
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/ManeuverIconData;->getIconId()I

    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ManeuverIconModel;->v(I)V

    .line 17
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/ManeuverIconData;->getAroundNum()I

    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ManeuverIconModel;->u(I)V

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    .line 26
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/ManeuverIconData;->getIconRoadInfoList()Ljava/util/ArrayList;

    .line 32
    move-result-object p0

    .line 33
    if-eqz p0, :cond_5

    .line 35
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 38
    move-result v2

    .line 39
    if-lez v2, :cond_5

    .line 41
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object p0

    .line 45
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_4

    .line 51
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Lcom/autonavi/amapauto/jni/protocol/data/IconRoadInfoData;

    .line 57
    new-instance v3, Lcom/autonavi/amapauto/protocol/model/item/IconRoadInfo;

    .line 59
    invoke-direct {v3}, Lcom/autonavi/amapauto/protocol/model/item/IconRoadInfo;-><init>()V

    .line 62
    iget v4, v2, Lcom/autonavi/amapauto/jni/protocol/data/IconRoadInfoData;->roadType:I

    .line 64
    invoke-virtual {v3, v4}, Lcom/autonavi/amapauto/protocol/model/item/IconRoadInfo;->v(I)V

    .line 67
    iget v4, v2, Lcom/autonavi/amapauto/jni/protocol/data/IconRoadInfoData;->roadUsage:I

    .line 69
    invoke-virtual {v3, v4}, Lcom/autonavi/amapauto/protocol/model/item/IconRoadInfo;->w(I)V

    .line 72
    iget-object v4, v2, Lcom/autonavi/amapauto/jni/protocol/data/IconRoadInfoData;->vectorPoints:Ljava/util/ArrayList;

    .line 74
    if-eqz v4, :cond_3

    .line 76
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 79
    move-result v4

    .line 80
    if-lez v4, :cond_3

    .line 82
    iget-object v2, v2, Lcom/autonavi/amapauto/jni/protocol/data/IconRoadInfoData;->vectorPoints:Ljava/util/ArrayList;

    .line 84
    const/4 v4, 0x0

    .line 85
    new-array v5, v4, [Ljava/lang/Integer;

    .line 87
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 90
    move-result-object v2

    .line 91
    check-cast v2, [Ljava/lang/Integer;

    .line 93
    array-length v5, v2

    .line 94
    new-array v5, v5, [I

    .line 96
    const/4 v6, 0x0

    .line 97
    :goto_1
    array-length v7, v2

    .line 98
    if-ge v6, v7, :cond_2

    .line 100
    aget-object v7, v2, v6

    .line 102
    if-nez v7, :cond_1

    .line 104
    const/4 v7, 0x0

    .line 105
    goto :goto_2

    .line 106
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 109
    move-result v7

    .line 110
    :goto_2
    aput v7, v5, v6

    .line 112
    add-int/lit8 v6, v6, 0x1

    .line 114
    goto :goto_1

    .line 115
    :cond_2
    invoke-virtual {v3, v5}, Lcom/autonavi/amapauto/protocol/model/item/IconRoadInfo;->x([I)V

    .line 118
    :cond_3
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    goto :goto_0

    .line 122
    :cond_4
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ManeuverIconModel;->w(Ljava/util/ArrayList;)V

    .line 125
    :cond_5
    return-object v0
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lec;->d()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lqz;->e:Lcom/autonavi/amapauto/protocol/model/service/ManeuverIconModel;

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lqz;->d:Lcom/autonavi/amapauto/jni/protocol/data/ManeuverIconData;

    .line 12
    if-eqz v0, :cond_1

    .line 14
    invoke-static {v0}, Lqz;->g(Lcom/autonavi/amapauto/jni/protocol/data/ManeuverIconData;)Lcom/autonavi/amapauto/protocol/model/service/ManeuverIconModel;

    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    :goto_0
    return-object v0
.end method
