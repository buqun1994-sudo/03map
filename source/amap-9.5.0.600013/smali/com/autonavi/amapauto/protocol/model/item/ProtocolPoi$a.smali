.class public Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;
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
.method public a(Landroid/os/Parcel;)Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;
    .locals 7

    .line 1
    invoke-static {}, Lqk0;->c()Ljava/util/Map;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "ProtocolPoi"

    .line 8
    if-eqz v0, :cond_3

    .line 10
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 13
    move-result v3

    .line 14
    if-nez v3, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v0

    .line 25
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_2

    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/String;

    .line 37
    const/4 v4, 0x1

    .line 38
    new-array v5, v4, [Ljava/lang/Object;

    .line 40
    aput-object v3, v5, v1

    .line 42
    const-string v6, "ProtocolPoi createFromParcel clientVersion = {?}"

    .line 44
    invoke-static {v2, v6, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    const/4 v5, 0x6

    .line 48
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 51
    move-result-object v3

    .line 52
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 55
    move-result v3

    .line 56
    new-array v4, v4, [Ljava/lang/Object;

    .line 58
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v5

    .line 62
    aput-object v5, v4, v1

    .line 64
    const-string v5, "ProtocolPoi createFromParcel clientVersion versionInt = {?}"

    .line 66
    invoke-static {v2, v5, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    const v4, 0x134146e

    .line 72
    if-gt v3, v4, :cond_1

    .line 74
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 76
    invoke-direct {v0, p1, v3}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;-><init>(Landroid/os/Parcel;I)V

    .line 79
    return-object v0

    .line 80
    :cond_2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 82
    invoke-direct {v0, p1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;-><init>(Landroid/os/Parcel;)V

    .line 85
    return-object v0

    .line 86
    :cond_3
    :goto_0
    const-string v0, "getClientVersion is null"

    .line 88
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 93
    invoke-direct {v0, p1, v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;-><init>(Landroid/os/Parcel;I)V

    .line 96
    return-object v0
.end method

.method public b(I)[Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 3
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi$a;->a(Landroid/os/Parcel;)Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi$a;->b(I)[Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
