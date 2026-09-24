.class Lcom/amap/location/e/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/handler/OnLooperPrepared;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/e/b;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/amap/location/e/b;


# direct methods
.method public constructor <init>(Lcom/amap/location/e/b;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/e/b$1;->b:Lcom/amap/location/e/b;

    .line 3
    iput-boolean p2, p0, Lcom/amap/location/e/b$1;->a:Z

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onAmapLooperPrepared(Lcom/amap/location/support/handler/AmapLooper;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 4
    move-result v0

    .line 5
    const-string v1, "gnssalgo"

    .line 7
    const/16 v2, 0x8

    .line 9
    if-ne v0, v2, :cond_0

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const-string v3, "onAmapLooperPrepared, isRemoteProcess:"

    .line 18
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-boolean v3, p0, Lcom/amap/location/e/b$1;->a:Z

    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    const-string v3, ", localCloud:"

    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3}, Lcom/amap/location/support/cloud/AmapCloudManager;->toString()Ljava/lang/String;

    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/amap/location/e/b$1;->b:Lcom/amap/location/e/b;

    .line 51
    invoke-static {v0, p1}, Lcom/amap/location/e/b;->a(Lcom/amap/location/e/b;Lcom/amap/location/support/handler/AmapLooper;)Lcom/amap/location/support/handler/AmapLooper;

    .line 54
    iget-object v0, p0, Lcom/amap/location/e/b$1;->b:Lcom/amap/location/e/b;

    .line 56
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    .line 59
    move-result-object v3

    .line 60
    new-instance v4, Lcom/amap/location/e/b$a;

    .line 62
    iget-object v5, p0, Lcom/amap/location/e/b$1;->b:Lcom/amap/location/e/b;

    .line 64
    const/4 v6, 0x0

    .line 65
    invoke-direct {v4, v5, v6}, Lcom/amap/location/e/b$a;-><init>(Lcom/amap/location/e/b;Lcom/amap/location/e/b$1;)V

    .line 68
    invoke-interface {v3, p1, v4}, Lcom/amap/location/support/handler/HandlerThreadManager;->createHandler(Lcom/amap/location/support/handler/AmapLooper;Lcom/amap/location/support/handler/OnHandleMessage;)Lcom/amap/location/support/handler/AmapHandler;

    .line 71
    move-result-object v3

    .line 72
    invoke-static {v0, v3}, Lcom/amap/location/e/b;->a(Lcom/amap/location/e/b;Lcom/amap/location/support/handler/AmapHandler;)Lcom/amap/location/support/handler/AmapHandler;

    .line 75
    iget-object v0, p0, Lcom/amap/location/e/b$1;->b:Lcom/amap/location/e/b;

    .line 77
    new-instance v3, Lcom/amap/location/e/a/h;

    .line 79
    invoke-direct {v3, p1}, Lcom/amap/location/e/a/h;-><init>(Lcom/amap/location/support/handler/AmapLooper;)V

    .line 82
    invoke-static {v0, v3}, Lcom/amap/location/e/b;->a(Lcom/amap/location/e/b;Lcom/amap/location/e/a/h;)Lcom/amap/location/e/a/h;

    .line 85
    iget-object v0, p0, Lcom/amap/location/e/b$1;->b:Lcom/amap/location/e/b;

    .line 87
    new-instance v3, Lcom/amap/location/e/a/a/e;

    .line 89
    invoke-direct {v3}, Lcom/amap/location/e/a/a/e;-><init>()V

    .line 92
    invoke-static {v0, v3}, Lcom/amap/location/e/b;->a(Lcom/amap/location/e/b;Lcom/amap/location/e/a/a/e;)Lcom/amap/location/e/a/a/e;

    .line 95
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 98
    move-result-object v0

    .line 99
    const-string v3, "gnssrtk"

    .line 101
    new-instance v4, Lorg/json/JSONObject;

    .line 103
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 106
    invoke-virtual {v0, v3, v4}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 109
    move-result-object v0

    .line 110
    invoke-static {v0}, Lcom/amap/location/e/a/d;->a(Lorg/json/JSONObject;)V

    .line 113
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 116
    move-result-object v0

    .line 117
    const-string v3, "gnsssoft"

    .line 119
    new-instance v4, Lorg/json/JSONObject;

    .line 121
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 124
    invoke-virtual {v0, v3, v4}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 127
    move-result-object v0

    .line 128
    invoke-static {v0}, Lcom/amap/location/e/a/d;->b(Lorg/json/JSONObject;)V

    .line 131
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 134
    move-result-object v0

    .line 135
    const-string v3, "gnssdrift"

    .line 137
    new-instance v4, Lorg/json/JSONObject;

    .line 139
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 142
    invoke-virtual {v0, v3, v4}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 145
    move-result-object v0

    .line 146
    invoke-static {v0}, Lcom/amap/location/e/a/d;->c(Lorg/json/JSONObject;)V

    .line 149
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 152
    move-result-object v0

    .line 153
    const-string v3, "gnss3dma"

    .line 155
    new-instance v4, Lorg/json/JSONObject;

    .line 157
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 160
    invoke-virtual {v0, v3, v4}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 163
    move-result-object v0

    .line 164
    invoke-static {v0}, Lcom/amap/location/e/a/d;->d(Lorg/json/JSONObject;)V

    .line 167
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 170
    move-result v0

    .line 171
    if-ne v0, v2, :cond_1

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    .line 175
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    const-string v2, "GnssAlgoConfig.s3dmaEnable:"

    .line 180
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    sget-boolean v2, Lcom/amap/location/e/a/d;->F:Z

    .line 185
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    move-result-object v0

    .line 192
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_1
    sget-boolean v0, Lcom/amap/location/e/a/d;->F:Z

    .line 197
    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/amap/location/e/b$1;->b:Lcom/amap/location/e/b;

    .line 201
    new-instance v1, Lcom/amap/location/e/a;

    .line 203
    invoke-direct {v1, p1}, Lcom/amap/location/e/a;-><init>(Lcom/amap/location/support/handler/AmapLooper;)V

    .line 206
    invoke-static {v0, v1}, Lcom/amap/location/e/b;->a(Lcom/amap/location/e/b;Lcom/amap/location/e/a;)Lcom/amap/location/e/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    goto :goto_0

    .line 210
    :catch_0
    move-exception p1

    .line 211
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 214
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/amap/location/e/b$1;->b:Lcom/amap/location/e/b;

    .line 216
    const/4 v0, 0x1

    .line 217
    invoke-static {p1, v0}, Lcom/amap/location/e/b;->a(Lcom/amap/location/e/b;Z)Z

    .line 220
    return-void
.end method
