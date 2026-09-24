.class public abstract Lmb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "mb"

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {}, Lr50;->d()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "widget"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lmb;->b:Ljava/lang/String;

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v0, "/"

    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string v0, "widget_ui_config.txt"

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Lmb;->c:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    .line 49
    sput-object v0, Lmb;->d:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    .line 53
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 56
    sput-object v0, Lmb;->e:Ljava/util/HashMap;

    .line 58
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "Exception={?}"

    .line 3
    new-instance v1, Lsd;

    .line 5
    const/16 v2, 0xfa0

    .line 7
    invoke-direct {v1, v2}, Lsd;-><init>(I)V

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    :try_start_0
    invoke-static {p1}, Lcom/autonavi/amapauto/utils/FileUtils;->replaceIllegalChar(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    new-instance v4, Ljava/io/File;

    .line 18
    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 27
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p0, Ljava/io/FileInputStream;

    .line 36
    invoke-direct {p0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 39
    move-object v3, p0

    .line 40
    goto :goto_4

    .line 41
    :cond_1
    :goto_0
    sget-object p1, Lmb;->d:Ljava/lang/String;

    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    const-string v5, "widget_ui_config.txt"

    .line 49
    if-nez v4, :cond_4

    .line 51
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string p1, "/"

    .line 61
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    new-instance v4, Ljava/io/File;

    .line 73
    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_3

    .line 82
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 85
    move-result p1

    .line 86
    if-nez p1, :cond_2

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    new-instance p1, Ljava/io/FileInputStream;

    .line 91
    invoke-direct {p1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 94
    move-object v3, p1

    .line 95
    goto :goto_2

    .line 96
    :cond_3
    :goto_1
    sget-object p1, Lmb;->a:Ljava/lang/String;

    .line 98
    const-string v4, "SelfUpdate\u914d\u7f6e\u6587\u4ef6\u7f3a\u5931\uff01"

    .line 100
    new-array v6, v2, [Ljava/lang/Object;

    .line 102
    invoke-static {p1, v4, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    :cond_4
    :goto_2
    if-nez v3, :cond_6

    .line 107
    sget-object p1, Lmb;->a:Ljava/lang/String;

    .line 109
    const-string v4, "\u5185\u5b58\u5361\u4e0a\u914d\u7f6e\u6587\u4ef6\u7f3a\u5931\uff01"

    .line 111
    new-array v6, v2, [Ljava/lang/Object;

    .line 113
    invoke-static {p1, v4, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    invoke-static {p0, v5}, Lcom/autonavi/amapauto/utils/FileUtils;->readStringFromAsets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    if-eqz v3, :cond_5

    .line 122
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 125
    goto :goto_3

    .line 126
    :catch_0
    move-exception p1

    .line 127
    sget-object v1, Lmb;->a:Ljava/lang/String;

    .line 129
    new-array v2, v2, [Ljava/lang/Object;

    .line 131
    invoke-static {v1, v0, p1, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 134
    :cond_5
    :goto_3
    return-object p0

    .line 135
    :cond_6
    :goto_4
    const/16 p0, 0x400

    .line 137
    :try_start_3
    new-array p0, p0, [B

    .line 139
    :goto_5
    invoke-virtual {v3, p0}, Ljava/io/InputStream;->read([B)I

    .line 142
    move-result p1

    .line 143
    const/4 v4, -0x1

    .line 144
    if-eq v4, p1, :cond_7

    .line 146
    invoke-virtual {v1, p0, v2, p1}, Lsd;->a([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 149
    goto :goto_5

    .line 150
    :cond_7
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 153
    goto :goto_6

    .line 154
    :catch_1
    move-exception p0

    .line 155
    sget-object p1, Lmb;->a:Ljava/lang/String;

    .line 157
    new-array v3, v2, [Ljava/lang/Object;

    .line 159
    invoke-static {p1, v0, p0, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 162
    goto :goto_6

    .line 163
    :catchall_0
    move-exception p0

    .line 164
    goto :goto_7

    .line 165
    :catch_2
    move-exception p0

    .line 166
    :try_start_5
    sget-object p1, Lmb;->a:Ljava/lang/String;

    .line 168
    new-array v4, v2, [Ljava/lang/Object;

    .line 170
    invoke-static {p1, v0, p0, v4}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 173
    if-eqz v3, :cond_8

    .line 175
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 178
    goto :goto_6

    .line 179
    :catch_3
    move-exception p0

    .line 180
    sget-object p1, Lmb;->a:Ljava/lang/String;

    .line 182
    new-array v3, v2, [Ljava/lang/Object;

    .line 184
    invoke-static {p1, v0, p0, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 187
    :cond_8
    :goto_6
    new-instance p0, Ljava/lang/String;

    .line 189
    invoke-virtual {v1}, Lsd;->d()[B

    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {v1}, Lsd;->c()I

    .line 196
    move-result v0

    .line 197
    invoke-direct {p0, p1, v2, v0}, Ljava/lang/String;-><init>([BII)V

    .line 200
    return-object p0

    .line 201
    :goto_7
    if-eqz v3, :cond_9

    .line 203
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 206
    goto :goto_8

    .line 207
    :catch_4
    move-exception p1

    .line 208
    sget-object v1, Lmb;->a:Ljava/lang/String;

    .line 210
    new-array v2, v2, [Ljava/lang/Object;

    .line 212
    invoke-static {v1, v0, p1, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 215
    :cond_9
    :goto_8
    throw p0
.end method

.method public static b()Z
    .locals 3

    .line 1
    sget-object v0, Lmb;->e:Ljava/util/HashMap;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    const/4 v2, 0x6

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lyl0;

    .line 17
    if-eqz v0, :cond_0

    .line 19
    iget v0, v0, Lyl0;->d:I

    .line 21
    if-nez v0, :cond_0

    .line 23
    const/4 v1, 0x1

    .line 24
    :cond_0
    return v1
.end method

.method public static c()Z
    .locals 3

    .line 1
    sget-object v0, Lmb;->e:Ljava/util/HashMap;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    const/4 v2, 0x3

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lyl0;

    .line 17
    if-eqz v0, :cond_0

    .line 19
    iget v0, v0, Lyl0;->d:I

    .line 21
    if-nez v0, :cond_0

    .line 23
    const/4 v1, 0x1

    .line 24
    :cond_0
    return v1
.end method

.method public static d()Z
    .locals 3

    .line 1
    sget-object v0, Lmb;->e:Ljava/util/HashMap;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    const/4 v2, 0x2

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lyl0;

    .line 17
    if-eqz v0, :cond_0

    .line 19
    iget v0, v0, Lyl0;->d:I

    .line 21
    if-nez v0, :cond_0

    .line 23
    const/4 v1, 0x1

    .line 24
    :cond_0
    return v1
.end method

.method public static e()Z
    .locals 3

    .line 1
    sget-object v0, Lmb;->e:Ljava/util/HashMap;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    const/4 v2, 0x7

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lyl0;

    .line 17
    if-eqz v0, :cond_0

    .line 19
    iget v0, v0, Lyl0;->d:I

    .line 21
    if-nez v0, :cond_0

    .line 23
    const/4 v1, 0x1

    .line 24
    :cond_0
    return v1
.end method

.method public static f()Z
    .locals 3

    .line 1
    sget-object v0, Lmb;->e:Ljava/util/HashMap;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    const/16 v2, 0x65

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lyl0;

    .line 18
    if-eqz v0, :cond_0

    .line 20
    iget v0, v0, Lyl0;->d:I

    .line 22
    if-nez v0, :cond_0

    .line 24
    const/4 v1, 0x1

    .line 25
    :cond_0
    return v1
.end method

.method public static g()Z
    .locals 3

    .line 1
    sget-object v0, Lmb;->e:Ljava/util/HashMap;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    const/16 v2, 0x67

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lyl0;

    .line 18
    if-eqz v0, :cond_0

    .line 20
    iget v0, v0, Lyl0;->d:I

    .line 22
    if-nez v0, :cond_0

    .line 24
    const/4 v1, 0x1

    .line 25
    :cond_0
    return v1
.end method

.method public static h(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 0

    .line 1
    invoke-static {p0}, Lmb;->k(Ljava/lang/String;)Ljava/util/HashMap;

    .line 4
    invoke-static {p0}, Lmb;->n(Ljava/lang/String;)Ljava/util/HashMap;

    .line 7
    invoke-static {p0}, Lmb;->i(Ljava/lang/String;)Ljava/util/HashMap;

    .line 10
    sget-object p0, Lmb;->e:Ljava/util/HashMap;

    .line 12
    return-object p0
.end method

.method public static i(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1

    .line 1
    const-string v0, "daohang_status"

    .line 3
    invoke-static {p0, v0}, Lmb;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static j(Landroid/content/Context;I)Ljava/util/HashMap;
    .locals 3

    .line 1
    sget-object v0, Lmb;->c:Ljava/lang/String;

    .line 3
    invoke-static {p0, v0}, Lmb;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Lmb;->a:Ljava/lang/String;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    const-string v2, "jsonStr == "

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    new-array v2, v2, [Ljava/lang/Object;

    .line 29
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    const/4 v0, 0x1

    .line 33
    if-eq p1, v0, :cond_3

    .line 35
    const/4 v0, 0x2

    .line 36
    if-eq p1, v0, :cond_2

    .line 38
    const/4 v0, 0x3

    .line 39
    if-eq p1, v0, :cond_1

    .line 41
    const/4 v0, 0x4

    .line 42
    if-eq p1, v0, :cond_0

    .line 44
    invoke-static {p0}, Lmb;->h(Ljava/lang/String;)Ljava/util/HashMap;

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-static {p0}, Lmb;->h(Ljava/lang/String;)Ljava/util/HashMap;

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-static {p0}, Lmb;->i(Ljava/lang/String;)Ljava/util/HashMap;

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-static {p0}, Lmb;->n(Ljava/lang/String;)Ljava/util/HashMap;

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    invoke-static {p0}, Lmb;->k(Ljava/lang/String;)Ljava/util/HashMap;

    .line 63
    :goto_0
    sget-object p0, Lmb;->e:Ljava/util/HashMap;

    .line 65
    return-object p0
.end method

.method public static k(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1

    .line 1
    const-string v0, "jingmo_status"

    .line 3
    invoke-static {p0, v0}, Lmb;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static l(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Lmb;->m(Lorg/json/JSONArray;)Ljava/util/HashMap;

    .line 13
    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return-object p0

    .line 15
    :catch_0
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method

.method public static m(Lorg/json/JSONArray;)Ljava/util/HashMap;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 8
    move-result v2

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 v2, 0x0

    .line 11
    :goto_1
    if-ge v1, v2, :cond_1

    .line 13
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 16
    move-result-object v2

    .line 17
    const-string v3, "id"

    .line 19
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 22
    move-result v3

    .line 23
    const-string v4, "category"

    .line 25
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v4

    .line 29
    const-string v5, "name"

    .line 31
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v5

    .line 35
    const-string v6, "visibility"

    .line 37
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 40
    move-result v2

    .line 41
    sget-object v6, Lmb;->e:Ljava/util/HashMap;

    .line 43
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v7

    .line 47
    new-instance v8, Lyl0;

    .line 49
    invoke-direct {v8, v3, v4, v5, v2}, Lyl0;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 52
    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    sget-object p0, Lmb;->e:Ljava/util/HashMap;

    .line 60
    return-object p0
.end method

.method public static n(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1

    .line 1
    const-string v0, "xunhang_status"

    .line 3
    invoke-static {p0, v0}, Lmb;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
