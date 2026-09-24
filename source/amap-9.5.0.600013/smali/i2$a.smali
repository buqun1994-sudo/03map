.class public Li2$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Lorg/json/JSONObject;

.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ljava/lang/String;)Li2$a;
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "[NewProtocol] AidlJsonDataHandle"

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    const-string p0, "[parseJsonToTagModel]jsonString empty,please check!"

    .line 13
    new-array v0, v1, [Ljava/lang/Object;

    .line 15
    invoke-static {v2, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    return-object v3

    .line 19
    :cond_0
    :try_start_0
    new-instance v0, Li2$a;

    .line 21
    invoke-direct {v0}, Li2$a;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 24
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    .line 26
    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 29
    const-string p0, "requestCode"

    .line 31
    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    iput-object p0, v0, Li2$a;->a:Ljava/lang/String;

    .line 37
    const-string p0, "responseCode"

    .line 39
    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    iput-object p0, v0, Li2$a;->b:Ljava/lang/String;

    .line 45
    const-string p0, "needResponse"

    .line 47
    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 50
    move-result p0

    .line 51
    iput-boolean p0, v0, Li2$a;->c:Z

    .line 53
    const-string p0, "protocolId"

    .line 55
    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 58
    move-result p0

    .line 59
    iput p0, v0, Li2$a;->d:I

    .line 61
    const-string p0, "versionName"

    .line 63
    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 67
    iput-object p0, v0, Li2$a;->e:Ljava/lang/String;

    .line 69
    const-string p0, "requestAuthor"

    .line 71
    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 75
    iput-object p0, v0, Li2$a;->f:Ljava/lang/String;

    .line 77
    const-string p0, "message"

    .line 79
    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object p0

    .line 83
    iput-object p0, v0, Li2$a;->g:Ljava/lang/String;

    .line 85
    const-string p0, "messageType"

    .line 87
    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    move-result-object p0

    .line 91
    iput-object p0, v0, Li2$a;->h:Ljava/lang/String;

    .line 93
    const-string p0, "statusCode"

    .line 95
    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 98
    move-result p0

    .line 99
    iput p0, v0, Li2$a;->i:I

    .line 101
    const-string p0, "data"

    .line 103
    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 106
    move-result-object p0

    .line 107
    iput-object p0, v0, Li2$a;->j:Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    goto :goto_1

    .line 110
    :catch_0
    move-exception p0

    .line 111
    move-object v3, v0

    .line 112
    goto :goto_0

    .line 113
    :catch_1
    move-exception p0

    .line 114
    :goto_0
    const-string v0, "parseJsonToTagModel ex"

    .line 116
    new-array v1, v1, [Ljava/lang/Object;

    .line 118
    invoke-static {v2, v0, p0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 121
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 124
    move-object v0, v3

    .line 125
    :goto_1
    return-object v0
.end method


# virtual methods
.method public a()Li2$a;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Li2$a;->c:Z

    .line 4
    invoke-static {}, Lrv;->H()Lrv;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lrv;->L()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Li2$a;->f:Ljava/lang/String;

    .line 14
    const-string v0, "dispatch"

    .line 16
    iput-object v0, p0, Li2$a;->h:Ljava/lang/String;

    .line 18
    const/16 v0, 0xc8

    .line 20
    iput v0, p0, Li2$a;->i:I

    .line 22
    const-string v0, "4.0.0.20200410"

    .line 24
    iput-object v0, p0, Li2$a;->e:Ljava/lang/String;

    .line 26
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    :try_start_0
    const-string v1, "requestCode"

    .line 8
    iget-object v2, p0, Li2$a;->a:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    const-string v1, "responseCode"

    .line 15
    iget-object v2, p0, Li2$a;->b:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    const-string v1, "needResponse"

    .line 22
    iget-boolean v2, p0, Li2$a;->c:Z

    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 27
    const-string v1, "protocolId"

    .line 29
    iget v2, p0, Li2$a;->d:I

    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 34
    const-string v1, "versionName"

    .line 36
    iget-object v2, p0, Li2$a;->e:Ljava/lang/String;

    .line 38
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const-string v1, "requestAuthor"

    .line 43
    iget-object v2, p0, Li2$a;->f:Ljava/lang/String;

    .line 45
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string v1, "message"

    .line 50
    iget-object v2, p0, Li2$a;->g:Ljava/lang/String;

    .line 52
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v1, "messageType"

    .line 57
    iget-object v2, p0, Li2$a;->h:Ljava/lang/String;

    .line 59
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string v1, "statusCode"

    .line 64
    iget v2, p0, Li2$a;->i:I

    .line 66
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 69
    const-string v1, "data"

    .line 71
    iget-object v2, p0, Li2$a;->j:Lorg/json/JSONObject;

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
    const-string v2, "AidlJsonModel"

    .line 80
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 83
    move-result-object v3

    .line 84
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 90
    move-result-object v0

    .line 91
    return-object v0
.end method
