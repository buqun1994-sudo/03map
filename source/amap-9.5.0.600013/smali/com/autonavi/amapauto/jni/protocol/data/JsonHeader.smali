.class public Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INT_TYPE_DISPATCH:I = 0x2

.field public static final INT_TYPE_REQUEST:I = 0x0

.field public static final INT_TYPE_REQUEST_SYNC:I = 0x3

.field public static final INT_TYPE_RESPONSE:I = 0x1

.field public static final MESSAGE_TYPE_DISPATCH:Ljava/lang/String; = "dispatch"

.field public static final MESSAGE_TYPE_REQUEST:Ljava/lang/String; = "request"

.field public static final MESSAGE_TYPE_REQUEST_SYNC:Ljava/lang/String; = "requestsync"

.field public static final MESSAGE_TYPE_RESPONSE:Ljava/lang/String; = "response"


# instance fields
.field public data:Lorg/json/JSONObject;

.field public message:Ljava/lang/String;

.field public messageType:Ljava/lang/String;

.field public needResponse:Z

.field public protocolId:I

.field public requestAuthor:Ljava/lang/String;

.field public requestCode:Ljava/lang/String;

.field public responseCode:Ljava/lang/String;

.field public statusCode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static parseJsonToJsonHeader(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;
    .locals 2

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;-><init>()V

    .line 6
    const-string v1, "requestCode"

    .line 8
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 14
    const-string v1, "responseCode"

    .line 16
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->responseCode:Ljava/lang/String;

    .line 22
    const-string v1, "needResponse"

    .line 24
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 27
    move-result v1

    .line 28
    iput-boolean v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->needResponse:Z

    .line 30
    const-string v1, "protocolId"

    .line 32
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 35
    move-result v1

    .line 36
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->protocolId:I

    .line 38
    const-string v1, "versionName"

    .line 40
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->versionName:Ljava/lang/String;

    .line 46
    const-string v1, "requestAuthor"

    .line 48
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestAuthor:Ljava/lang/String;

    .line 54
    const-string v1, "message"

    .line 56
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->message:Ljava/lang/String;

    .line 62
    const-string v1, "messageType"

    .line 64
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 68
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->messageType:Ljava/lang/String;

    .line 70
    const-string v1, "statusCode"

    .line 72
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 75
    move-result v1

    .line 76
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->statusCode:I

    .line 78
    const-string v1, "data"

    .line 80
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 83
    move-result-object p0

    .line 84
    iput-object p0, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->data:Lorg/json/JSONObject;

    .line 86
    return-object v0
.end method

.method public static parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    const-string p0, "data"

    .line 8
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 11
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    const-string v2, "JsonHeader"

    .line 23
    invoke-static {v2, v0, p0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 26
    const/4 p0, 0x0

    .line 27
    :goto_0
    return-object p0
.end method


# virtual methods
.method public toJsonString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    :try_start_0
    const-string v1, "requestCode"

    .line 8
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    const-string v1, "responseCode"

    .line 15
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->responseCode:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    const-string v1, "needResponse"

    .line 22
    iget-boolean v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->needResponse:Z

    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 27
    const-string v1, "protocolId"

    .line 29
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->protocolId:I

    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 34
    const-string v1, "versionName"

    .line 36
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->versionName:Ljava/lang/String;

    .line 38
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const-string v1, "requestAuthor"

    .line 43
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestAuthor:Ljava/lang/String;

    .line 45
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string v1, "message"

    .line 50
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->message:Ljava/lang/String;

    .line 52
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v1, "messageType"

    .line 57
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->messageType:Ljava/lang/String;

    .line 59
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string v1, "statusCode"

    .line 64
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->statusCode:I

    .line 66
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 69
    const-string v1, "data"

    .line 71
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->data:Lorg/json/JSONObject;

    .line 73
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    .line 78
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 81
    move-result-object v2

    .line 82
    const/4 v3, 0x0

    .line 83
    new-array v3, v3, [Ljava/lang/Object;

    .line 85
    const-string v4, "JsonHeader"

    .line 87
    invoke-static {v4, v2, v1, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 90
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 94
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "JsonHeader{requestAuthor="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestAuthor:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", responseCode="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->responseCode:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", protocolId="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->protocolId:I

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", messageType="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->messageType:Ljava/lang/String;

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ", requestCode="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ", versionName="

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->versionName:Ljava/lang/String;

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", message="

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->message:Ljava/lang/String;

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, ", needResponse="

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-boolean v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->needResponse:Z

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ", statusCode="

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->statusCode:I

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, "}"

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object v0

    .line 105
    return-object v0
.end method
