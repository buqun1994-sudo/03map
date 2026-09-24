.class public Lt1$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt1$e$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/util/List;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lt1$e;->a:Z

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iput-object v0, p0, Lt1$e;->b:Ljava/util/List;

    .line 14
    return-void
.end method

.method public static synthetic a(Lt1$e;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lt1$e;->c:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lt1$e;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lt1$e;->g()V

    .line 4
    return-void
.end method

.method public static synthetic c(Lt1$e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lt1$e;->a:Z

    .line 3
    return p0
.end method

.method public static synthetic d(Lt1$e;Lt1$b;)Lt1$e$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lt1$e;->f(Lt1$b;)Lt1$e$a;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public e(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lt1$e;->d:Ljava/lang/String;

    .line 3
    const-string v1, "xxx"

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final f(Lt1$b;)Lt1$e$a;
    .locals 5

    .line 1
    iget-object v0, p0, Lt1$e;->b:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_2

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lt1$e$a;

    .line 20
    iget v3, v2, Lt1$e$a;->a:I

    .line 22
    iget v4, p1, Lt1$b;->a:I

    .line 24
    if-ne v3, v4, :cond_0

    .line 26
    iget v3, v2, Lt1$e$a;->b:I

    .line 28
    iget v4, p1, Lt1$b;->b:I

    .line 30
    if-ne v3, v4, :cond_0

    .line 32
    iget-object v3, v2, Lt1$e$a;->c:Ljava/lang/String;

    .line 34
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_1

    .line 40
    if-nez v1, :cond_0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    iget-object v3, v2, Lt1$e$a;->c:Ljava/lang/String;

    .line 45
    iget-object v4, p1, Lt1$b;->c:Ljava/lang/String;

    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_0

    .line 53
    :goto_1
    move-object v1, v2

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    return-object v1
.end method

.method public final g()V
    .locals 11

    .line 1
    const-string v0, "DeviceAdapterSurvey.dat"

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    const-string v3, "AdapterSurveyManager"

    .line 8
    const-string v4, "AdapterSurveyConfig init start"

    .line 10
    invoke-static {v3, v4, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    invoke-static {}, Lrv;->H()Lrv;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lrv;->z()Landroid/content/Context;

    .line 20
    move-result-object v2

    .line 21
    const/4 v4, 0x0

    .line 22
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    invoke-static {}, Lrv;->H()Lrv;

    .line 30
    move-result-object v6

    .line 31
    invoke-virtual {v6}, Lrv;->M()Ljava/lang/String;

    .line 34
    move-result-object v6

    .line 35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    .line 40
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v5

    .line 50
    new-instance v6, Ljava/io/File;

    .line 52
    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    const-string v7, "AdapterSurveyConfig, updatePath:{?}, isFile:{?}"

    .line 57
    const/4 v8, 0x2

    .line 58
    new-array v8, v8, [Ljava/lang/Object;

    .line 60
    aput-object v5, v8, v1

    .line 62
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    .line 65
    move-result v5

    .line 66
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 69
    move-result-object v5

    .line 70
    const/4 v9, 0x1

    .line 71
    aput-object v5, v8, v9

    .line 73
    invoke-static {v3, v7, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    .line 79
    move-result v5

    .line 80
    if-eqz v5, :cond_0

    .line 82
    new-instance v0, Ljava/io/FileInputStream;

    .line 84
    invoke-direct {v0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 87
    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 99
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 100
    :goto_0
    :try_start_1
    invoke-static {v0}, Lu1;->b(Ljava/io/InputStream;)[B

    .line 103
    move-result-object v2

    .line 104
    const-string v5, "AdapterSurveyConfig nativeConfigDecrypt"

    .line 106
    new-array v6, v1, [Ljava/lang/Object;

    .line 108
    invoke-static {v3, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 111
    const-string v5, "AdapterSurveyConfig buffer == null"

    .line 113
    if-eqz v2, :cond_1

    .line 115
    :try_start_2
    array-length v6, v2

    .line 116
    invoke-static {v2, v6, v4}, Lcom/autonavi/amapauto/jni/config/AndroidAdapterConfiger;->nativeConfigDecrypt([BILjava/lang/String;)[B

    .line 119
    move-result-object v2

    .line 120
    goto :goto_1

    .line 121
    :cond_1
    new-array v6, v1, [Ljava/lang/Object;

    .line 123
    invoke-static {v3, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    :goto_1
    if-eqz v2, :cond_2

    .line 128
    const-string v6, "AdapterSurveyConfig uncompress"

    .line 130
    new-array v7, v1, [Ljava/lang/Object;

    .line 132
    invoke-static {v3, v6, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-static {v2}, Lu1;->f([B)[B

    .line 138
    move-result-object v2

    .line 139
    :cond_2
    if-eqz v2, :cond_5

    .line 141
    const-string v5, "AdapterSurveyConfig parse"

    .line 143
    new-array v6, v1, [Ljava/lang/Object;

    .line 145
    invoke-static {v3, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    new-instance v5, Ljava/lang/String;

    .line 150
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 152
    invoke-direct {v5, v2, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 155
    new-instance v2, Ljava/io/BufferedReader;

    .line 157
    new-instance v6, Ljava/io/StringReader;

    .line 159
    invoke-direct {v6, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 165
    :cond_3
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 168
    move-result-object v4

    .line 169
    if-eqz v4, :cond_4

    .line 171
    invoke-virtual {p0, v4}, Lt1$e;->h(Ljava/lang/String;)V

    .line 174
    iget-boolean v4, p0, Lt1$e;->a:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 176
    if-nez v4, :cond_3

    .line 178
    :cond_4
    move-object v4, v2

    .line 179
    goto :goto_2

    .line 180
    :catchall_0
    move-exception v1

    .line 181
    move-object v4, v2

    .line 182
    goto :goto_3

    .line 183
    :catch_0
    move-exception v4

    .line 184
    move-object v10, v2

    .line 185
    move-object v2, v0

    .line 186
    move-object v0, v4

    .line 187
    move-object v4, v10

    .line 188
    goto :goto_4

    .line 189
    :cond_5
    :try_start_4
    new-array v2, v1, [Ljava/lang/Object;

    .line 191
    invoke-static {v3, v5, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 194
    :goto_2
    invoke-static {v4}, Lns;->a(Ljava/io/Closeable;)V

    .line 197
    invoke-static {v0}, Lns;->a(Ljava/io/Closeable;)V

    .line 200
    goto :goto_5

    .line 201
    :catchall_1
    move-exception v1

    .line 202
    :goto_3
    move-object v2, v0

    .line 203
    move-object v0, v1

    .line 204
    goto :goto_6

    .line 205
    :catch_1
    move-exception v2

    .line 206
    move-object v10, v2

    .line 207
    move-object v2, v0

    .line 208
    move-object v0, v10

    .line 209
    goto :goto_4

    .line 210
    :catchall_2
    move-exception v0

    .line 211
    move-object v2, v4

    .line 212
    goto :goto_6

    .line 213
    :catch_2
    move-exception v0

    .line 214
    move-object v2, v4

    .line 215
    :goto_4
    :try_start_5
    const-string v5, "AdapterSurveyConfig:"

    .line 217
    new-array v6, v1, [Ljava/lang/Object;

    .line 219
    invoke-static {v3, v5, v0, v6}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 222
    invoke-static {v4}, Lns;->a(Ljava/io/Closeable;)V

    .line 225
    invoke-static {v2}, Lns;->a(Ljava/io/Closeable;)V

    .line 228
    :goto_5
    const-string v0, "AdapterSurveyConfig init end"

    .line 230
    new-array v1, v1, [Ljava/lang/Object;

    .line 232
    invoke-static {v3, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    return-void

    .line 236
    :catchall_3
    move-exception v0

    .line 237
    :goto_6
    invoke-static {v4}, Lns;->a(Ljava/io/Closeable;)V

    .line 240
    invoke-static {v2}, Lns;->a(Ljava/io/Closeable;)V

    .line 243
    throw v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "#"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 16
    return-void

    .line 17
    :cond_1
    const-string v0, "="

    .line 19
    const/4 v1, -0x1

    .line 20
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    array-length v2, v0

    .line 25
    const/4 v3, 0x2

    .line 26
    const-string v4, "AdapterSurveyManager"

    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v6, 0x1

    .line 30
    if-eq v2, v3, :cond_2

    .line 32
    new-array v0, v6, [Ljava/lang/Object;

    .line 34
    aput-object p1, v0, v5

    .line 36
    const-string p1, "addQuestionTextItem,invalid line:{?}"

    .line 38
    invoke-static {v4, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    return-void

    .line 42
    :cond_2
    new-array v2, v6, [Ljava/lang/Object;

    .line 44
    aput-object p1, v2, v5

    .line 46
    const-string v7, "parseSurveyTextItem,line:{?}"

    .line 48
    invoke-static {v4, v7, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    aget-object v2, v0, v5

    .line 53
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 56
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 59
    move-result v7

    .line 60
    const/4 v8, 0x3

    .line 61
    sparse-switch v7, :sswitch_data_0

    .line 64
    :goto_0
    const/4 v2, -0x1

    .line 65
    goto :goto_1

    .line 66
    :sswitch_0
    const-string v7, "content"

    .line 68
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v2

    .line 72
    if-nez v2, :cond_3

    .line 74
    goto :goto_0

    .line 75
    :cond_3
    const/4 v2, 0x3

    .line 76
    goto :goto_1

    .line 77
    :sswitch_1
    const-string v7, "title"

    .line 79
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v2

    .line 83
    if-nez v2, :cond_4

    .line 85
    goto :goto_0

    .line 86
    :cond_4
    const/4 v2, 0x2

    .line 87
    goto :goto_1

    .line 88
    :sswitch_2
    const-string v7, "question"

    .line 90
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    move-result v2

    .line 94
    if-nez v2, :cond_5

    .line 96
    goto :goto_0

    .line 97
    :cond_5
    const/4 v2, 0x1

    .line 98
    goto :goto_1

    .line 99
    :sswitch_3
    const-string v7, "enable"

    .line 101
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    move-result v2

    .line 105
    if-nez v2, :cond_6

    .line 107
    goto :goto_0

    .line 108
    :cond_6
    const/4 v2, 0x0

    .line 109
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 112
    new-array v0, v6, [Ljava/lang/Object;

    .line 114
    aput-object p1, v0, v5

    .line 116
    const-string p1, "addQuestionTextItem, not support:{?}"

    .line 118
    invoke-static {v4, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    goto/16 :goto_2

    .line 123
    :pswitch_0
    aget-object p1, v0, v6

    .line 125
    iput-object p1, p0, Lt1$e;->d:Ljava/lang/String;

    .line 127
    goto :goto_2

    .line 128
    :pswitch_1
    aget-object p1, v0, v6

    .line 130
    iput-object p1, p0, Lt1$e;->c:Ljava/lang/String;

    .line 132
    goto :goto_2

    .line 133
    :pswitch_2
    aget-object v0, v0, v6

    .line 135
    const-string v2, "\\|"

    .line 137
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 140
    move-result-object v0

    .line 141
    array-length v2, v0

    .line 142
    const/4 v7, 0x7

    .line 143
    if-ge v2, v7, :cond_7

    .line 145
    new-array v0, v6, [Ljava/lang/Object;

    .line 147
    aput-object p1, v0, v5

    .line 149
    const-string p1, "addQuestionTextItem, invalid question:{?}"

    .line 151
    invoke-static {v4, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    goto :goto_2

    .line 155
    :cond_7
    new-instance p1, Lt1$e$a;

    .line 157
    invoke-direct {p1}, Lt1$e$a;-><init>()V

    .line 160
    aget-object v2, v0, v5

    .line 162
    invoke-static {v2, v1}, Lu1;->h(Ljava/lang/String;I)I

    .line 165
    move-result v2

    .line 166
    iput v2, p1, Lt1$e$a;->a:I

    .line 168
    aget-object v2, v0, v6

    .line 170
    invoke-static {v2, v1}, Lu1;->h(Ljava/lang/String;I)I

    .line 173
    move-result v1

    .line 174
    iput v1, p1, Lt1$e$a;->b:I

    .line 176
    aget-object v1, v0, v3

    .line 178
    iput-object v1, p1, Lt1$e$a;->c:Ljava/lang/String;

    .line 180
    aget-object v1, v0, v8

    .line 182
    iput-object v1, p1, Lt1$e$a;->d:Ljava/lang/String;

    .line 184
    iget-object v1, p1, Lt1$e$a;->e:Ljava/util/List;

    .line 186
    const/4 v2, 0x4

    .line 187
    aget-object v2, v0, v2

    .line 189
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v1, p1, Lt1$e$a;->e:Ljava/util/List;

    .line 194
    const/4 v2, 0x5

    .line 195
    aget-object v2, v0, v2

    .line 197
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v1, p1, Lt1$e$a;->e:Ljava/util/List;

    .line 202
    const/4 v2, 0x6

    .line 203
    aget-object v0, v0, v2

    .line 205
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v0, p0, Lt1$e;->b:Ljava/util/List;

    .line 210
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    goto :goto_2

    .line 214
    :pswitch_3
    const-string p1, "true"

    .line 216
    aget-object v1, v0, v6

    .line 218
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 221
    move-result p1

    .line 222
    if-nez p1, :cond_8

    .line 224
    const-string p1, "1"

    .line 226
    aget-object v0, v0, v6

    .line 228
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    move-result p1

    .line 232
    if-eqz p1, :cond_9

    .line 234
    :cond_8
    const/4 v5, 0x1

    .line 235
    :cond_9
    iput-boolean v5, p0, Lt1$e;->a:Z

    .line 237
    :goto_2
    return-void

    .line 238
    nop

    .line 239
    :sswitch_data_0
    .sparse-switch
        -0x4d6ada7d -> :sswitch_3
        -0x457dc41a -> :sswitch_2
        0x6942258 -> :sswitch_1
        0x38b73479 -> :sswitch_0
    .end sparse-switch

    .line 257
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
