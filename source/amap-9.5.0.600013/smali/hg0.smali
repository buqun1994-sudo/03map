.class public Lhg0;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    iput-object p1, p0, Lhg0;->k:Landroid/content/Intent;

    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const-string p1, "TestAction"

    .line 9
    const-string v1, "TestAction responseBack data:{?}"

    .line 11
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "TestAction"

    .line 6
    const-string v2, "do receive TestAction"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lhg0;->x()V

    .line 14
    return-void
.end method

.method public final x()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lu70;->a()Lzs;

    .line 4
    new-instance v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;

    .line 6
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;-><init>()V

    .line 9
    const-string v1, "{\"requestAuthor\":\"com.autonavi.amapauto\",\"responseCode\":\"\",\"protocolId\":66666,\"messageType\":\"request\",\"requestCode\":\"\",\"versionName\":\"4.9.0.100280\",\"message\":\"\",\"data\":{\"geolocation\":0},\"needResponse\":false,\"statusCode\":200}"

    .line 11
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonData:Ljava/lang/String;

    .line 13
    new-instance v1, Lorg/json/JSONObject;

    .line 15
    const-string v2, "{\"requestCode\":\"88888\",\"responseCode\":\"\",\"needResponse\":false,\"protocolId\":66666,\"versionName\":\"4.9.0.100280\",\"requestAuthor\":\"com.autonavi.amapauto\",\"message\":\"\",\"messageType\":\"dispatch\",\"statusCode\":200}"

    .line 17
    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-static {v1}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonHeader(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;

    .line 23
    move-result-object v1

    .line 24
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonHeader:Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;

    .line 26
    invoke-static {}, Lu70;->a()Lzs;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    :goto_0
    return-void
.end method
