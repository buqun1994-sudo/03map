.class public Lcom/amap/location/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lorg/json/JSONObject;Lcom/amap/location/c/b;)V
    .locals 2

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/amap/location/c/b;->b()Lcom/amap/location/c/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/location/c/b$a;->d()Z

    move-result v0

    const-string v1, "cls"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/amap/location/c/b;->b()Lcom/amap/location/c/b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/location/c/b$a;->d()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/amap/location/c/b;->b()Lcom/amap/location/c/b$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amap/location/c/b$a;->a(Z)V

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/amap/location/c/b;->c()Lcom/amap/location/c/b$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/location/c/b$b;->b()Z

    move-result v0

    const-string v1, "cts"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/amap/location/c/b;->c()Lcom/amap/location/c/b$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/location/c/b$b;->b()Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/amap/location/c/b;->c()Lcom/amap/location/c/b$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amap/location/c/b$b;->a(Z)V

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/amap/location/c/b;->d()Lcom/amap/location/c/b$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/location/c/b$c;->a()Z

    move-result v0

    const-string v1, "cnwuss"

    invoke-static {p0, v1, v0}, Lcom/amap/location/c/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 8
    invoke-virtual {p1}, Lcom/amap/location/c/b;->d()Lcom/amap/location/c/b$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/location/c/b$c;->a()Z

    move-result v1

    if-eq v0, v1, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/amap/location/c/b;->d()Lcom/amap/location/c/b$c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amap/location/c/b$c;->b(Z)V

    .line 10
    :cond_3
    invoke-virtual {p1}, Lcom/amap/location/c/b;->b()Lcom/amap/location/c/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/location/c/b$a;->f()Z

    move-result v0

    const-string v1, "cfup"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 11
    invoke-virtual {p1}, Lcom/amap/location/c/b;->b()Lcom/amap/location/c/b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/location/c/b$a;->f()Z

    move-result v1

    if-eq v0, v1, :cond_4

    .line 12
    invoke-virtual {p1}, Lcom/amap/location/c/b;->b()Lcom/amap/location/c/b$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/amap/location/c/b$a;->b(Z)V

    :cond_4
    const-string p1, "peaktime"

    const-string v0, ""

    .line 13
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {p1}, Lcom/amap/location/c/g/b/c;->a(Ljava/lang/String;)V

    const-string p1, "drt"

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 16
    invoke-static {p1}, Lcom/amap/location/c/g/b/c;->b(I)V

    const-string p1, "fcmt"

    .line 17
    sget-wide v0, Lcom/amap/location/c/c/a;->a:J

    invoke-virtual {p0, p1, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/amap/location/c/c/a;->a:J

    const-string p1, "fcmd"

    .line 18
    sget v0, Lcom/amap/location/c/c/a;->b:I

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    sput p1, Lcom/amap/location/c/c/a;->b:I

    const-string p1, "wifispeed"

    .line 19
    sget v0, Lcom/amap/location/c/c/a;->c:I

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    sput p1, Lcom/amap/location/c/c/a;->c:I

    const-string p1, "filtercell"

    .line 20
    sget-boolean v0, Lcom/amap/location/c/c/a;->d:Z

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/amap/location/c/c/a;->d:Z

    const-string p1, "filtercoll"

    .line 21
    sget-boolean v0, Lcom/amap/location/c/c/a;->e:Z

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/amap/location/c/c/a;->e:Z

    const-string p1, "tcmt"

    .line 22
    sget-wide v0, Lcom/amap/location/c/b/c;->a:J

    invoke-virtual {p0, p1, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/amap/location/c/b/c;->a:J

    const-string p1, "tcmd"

    .line 23
    sget v0, Lcom/amap/location/c/b/c;->b:I

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/amap/location/c/b/c;->b:I

    :cond_5
    :goto_0
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
