.class public Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;
.super Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;->b:Ljava/lang/String;

    .line 3
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;->a:I

    if-lez p1, :cond_0

    .line 4
    sget-object v0, Lb80;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;J)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;->b:Ljava/lang/String;

    .line 7
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;->a:I

    if-lez p1, :cond_0

    .line 8
    sget-object v0, Lb80;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;->b:Ljava/lang/String;

    .line 9
    :cond_0
    invoke-virtual {p0, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    .line 10
    invoke-virtual {p0, p3}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setCallbackId(I)V

    .line 11
    invoke-virtual {p0, p4}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setPackageName(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, p5, p6}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setTimeStamp(J)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 13
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;->a:I

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;->b:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;->a:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public r()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;->a:I

    .line 3
    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;->b:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public t(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;->a:I

    .line 3
    if-lez p1, :cond_0

    .line 5
    sget-object v0, Lb80;->a:Ljava/util/Map;

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object p1

    .line 11
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;->b:Ljava/lang/String;

    .line 19
    :cond_0
    return-void
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    :try_start_0
    const-string v1, "resultCode"

    .line 8
    iget v2, p0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;->a:I

    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 13
    const-string v1, "errorMessage"

    .line 15
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;->s()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    :goto_0
    return-object v0
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;->b:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;->a:I

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;->b:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    return-void
.end method
