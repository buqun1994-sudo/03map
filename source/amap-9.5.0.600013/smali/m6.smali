.class public Lm6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "AutoAdapterInfoParser"

    .line 6
    iput-object v0, p0, Lm6;->a:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lm6;->b:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 9

    .line 1
    const-string v0, "getAdapterInfoJson close input"

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    :try_start_0
    new-instance v3, Ljava/io/File;

    .line 7
    iget-object v4, p0, Lm6;->b:Ljava/lang/String;

    .line 9
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 15
    move-result v3

    .line 16
    if-nez v3, :cond_0

    .line 18
    iget-object v3, p0, Lm6;->a:Ljava/lang/String;

    .line 20
    const-string v4, "[{?}] not exist"

    .line 22
    const/4 v5, 0x1

    .line 23
    new-array v5, v5, [Ljava/lang/Object;

    .line 25
    iget-object v6, p0, Lm6;->b:Ljava/lang/String;

    .line 27
    aput-object v6, v5, v1

    .line 29
    invoke-static {v3, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    return-object v2

    .line 33
    :cond_0
    new-instance v3, Ljava/io/FileInputStream;

    .line 35
    iget-object v4, p0, Lm6;->b:Ljava/lang/String;

    .line 37
    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    .line 43
    move-result v4

    .line 44
    new-array v4, v4, [B

    .line 46
    invoke-virtual {v3, v4}, Ljava/io/FileInputStream;->read([B)I

    .line 49
    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    if-gtz v5, :cond_1

    .line 52
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception v3

    .line 57
    iget-object v4, p0, Lm6;->a:Ljava/lang/String;

    .line 59
    new-array v1, v1, [Ljava/lang/Object;

    .line 61
    invoke-static {v4, v0, v3, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 64
    :goto_0
    return-object v2

    .line 65
    :cond_1
    :try_start_3
    new-instance v5, Lorg/json/JSONObject;

    .line 67
    new-instance v6, Ljava/lang/String;

    .line 69
    const-string v7, "UTF-8"

    .line 71
    invoke-direct {v6, v4, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 74
    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 80
    goto :goto_1

    .line 81
    :catch_1
    move-exception v2

    .line 82
    iget-object v3, p0, Lm6;->a:Ljava/lang/String;

    .line 84
    new-array v1, v1, [Ljava/lang/Object;

    .line 86
    invoke-static {v3, v0, v2, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 89
    :goto_1
    return-object v5

    .line 90
    :catchall_0
    move-exception v2

    .line 91
    move-object v8, v3

    .line 92
    move-object v3, v2

    .line 93
    move-object v2, v8

    .line 94
    goto :goto_4

    .line 95
    :catch_2
    move-exception v4

    .line 96
    move-object v8, v4

    .line 97
    move-object v4, v3

    .line 98
    move-object v3, v8

    .line 99
    goto :goto_2

    .line 100
    :catchall_1
    move-exception v3

    .line 101
    goto :goto_4

    .line 102
    :catch_3
    move-exception v3

    .line 103
    move-object v4, v2

    .line 104
    :goto_2
    :try_start_5
    iget-object v5, p0, Lm6;->a:Ljava/lang/String;

    .line 106
    const-string v6, "getAdapterInfoJson"

    .line 108
    new-array v7, v1, [Ljava/lang/Object;

    .line 110
    invoke-static {v5, v6, v3, v7}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 113
    if-eqz v4, :cond_2

    .line 115
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 118
    goto :goto_3

    .line 119
    :catch_4
    move-exception v3

    .line 120
    iget-object v4, p0, Lm6;->a:Ljava/lang/String;

    .line 122
    new-array v1, v1, [Ljava/lang/Object;

    .line 124
    invoke-static {v4, v0, v3, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 127
    :cond_2
    :goto_3
    return-object v2

    .line 128
    :catchall_2
    move-exception v3

    .line 129
    move-object v2, v4

    .line 130
    :goto_4
    if-eqz v2, :cond_3

    .line 132
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 135
    goto :goto_5

    .line 136
    :catch_5
    move-exception v2

    .line 137
    iget-object v4, p0, Lm6;->a:Ljava/lang/String;

    .line 139
    new-array v1, v1, [Ljava/lang/Object;

    .line 141
    invoke-static {v4, v0, v2, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 144
    :cond_3
    :goto_5
    throw v3
.end method

.method public final b(Ll6;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ll6;->c()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 13
    invoke-virtual {p1}, Ll6;->a()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Lm6;->c(Ljava/lang/String;)Z

    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 23
    const/4 p1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    return p1
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    const-string v0, "C0\\d{10}"

    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method public d()Ll6;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lm6;->a()Lorg/json/JSONObject;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 7
    const/4 v1, 0x0

    .line 8
    :try_start_0
    new-instance v2, Ll6;

    .line 10
    invoke-direct {v2}, Ll6;-><init>()V

    .line 13
    const-string v3, "version"

    .line 15
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v2, v3}, Ll6;->f(Ljava/lang/String;)V

    .line 22
    const-string v3, "channelFlag"

    .line 24
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v2, v3}, Ll6;->d(Ljava/lang/String;)V

    .line 31
    const-string v3, "dysmorphismInfo"

    .line 33
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 39
    new-instance v3, Lrk;

    .line 41
    const-string v4, "dysmorphismLeft"

    .line 43
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 46
    move-result v4

    .line 47
    const-string v5, "dysmorphismTop"

    .line 49
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 52
    move-result v5

    .line 53
    const-string v6, "dysmorphismRight"

    .line 55
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 58
    move-result v6

    .line 59
    const-string v7, "dysmorphismBottom"

    .line 61
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 64
    move-result v0

    .line 65
    invoke-direct {v3, v4, v5, v6, v0}, Lrk;-><init>(IIII)V

    .line 68
    invoke-virtual {v2, v3}, Ll6;->e(Lrk;)V

    .line 71
    :cond_0
    invoke-virtual {p0, v2}, Lm6;->b(Ll6;)Z

    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lm6;->a:Ljava/lang/String;

    .line 79
    const-string v3, "parse = {?}"

    .line 81
    const/4 v4, 0x1

    .line 82
    new-array v4, v4, [Ljava/lang/Object;

    .line 84
    invoke-virtual {v2}, Ll6;->toString()Ljava/lang/String;

    .line 87
    move-result-object v5

    .line 88
    aput-object v5, v4, v1

    .line 90
    invoke-static {v0, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    return-object v2

    .line 94
    :catch_0
    move-exception v0

    .line 95
    iget-object v2, p0, Lm6;->a:Ljava/lang/String;

    .line 97
    const-string v3, "parse"

    .line 99
    new-array v1, v1, [Ljava/lang/Object;

    .line 101
    invoke-static {v2, v3, v0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 104
    :cond_1
    const/4 v0, 0x0

    .line 105
    return-object v0
.end method
