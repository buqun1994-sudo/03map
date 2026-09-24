.class public Lt10;
.super Lq70;
.source "SourceFile"


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lq70;-><init>(Z)V

    .line 4
    const-string p1, "ModelProtocolAssert"

    .line 6
    iput-object p1, p0, Lq70;->h:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Lr;->c()V

    .line 11
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 p3, 0x0

    .line 2
    :try_start_0
    iget-object v0, p0, Lq70;->j:Ljava/lang/Class;

    .line 4
    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lq70;->i:Ljava/lang/String;

    .line 8
    if-nez v0, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lr;->e:Ljava/util/List;

    .line 13
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 16
    new-instance v0, Lorg/json/JSONObject;

    .line 18
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lq70;->j:Ljava/lang/Class;

    .line 23
    invoke-virtual {p0, p1}, Lq70;->j(Ljava/lang/Class;)Ljava/util/List;

    .line 26
    move-result-object p1

    .line 27
    iget-object v1, p0, Lq70;->i:Ljava/lang/String;

    .line 29
    invoke-virtual {p0, p2, v1, v0, p1}, Lq70;->h(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/List;)V

    .line 32
    const/4 p1, 0x1

    .line 33
    return p1

    .line 34
    :cond_1
    :goto_0
    iget-object p1, p0, Lr;->c:Ljava/lang/String;

    .line 36
    const-string p2, "doAssert modelClass == null || modelName == null"

    .line 38
    new-array v0, p3, [Ljava/lang/Object;

    .line 40
    invoke-static {p1, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    return p3

    .line 44
    :catch_0
    move-exception p1

    .line 45
    iget-object p2, p0, Lr;->c:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    new-array v1, p3, [Ljava/lang/Object;

    .line 53
    invoke-static {p2, v0, p1, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 56
    goto :goto_1

    .line 57
    :catch_1
    move-exception p1

    .line 58
    iget-object p2, p0, Lr;->c:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    new-array v1, p3, [Ljava/lang/Object;

    .line 66
    invoke-static {p2, v0, p1, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 69
    :goto_1
    return p3
.end method
