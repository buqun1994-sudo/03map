.class public Lq1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq1$b;
    }
.end annotation


# static fields
.field public static e:Ljava/lang/String; = "AdapterInfoLoader"

.field public static final f:Ljava/lang/String;


# instance fields
.field public a:Lqi;

.field public b:Lp1;

.field public c:Loi;

.field public d:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {}, Lr50;->m()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "AutoDeviceAdapter/"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lq1;->f:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lq1;->d:Ljava/util/Map;

    .line 11
    invoke-static {}, Lp1;->b()Lp1;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lq1;->b:Lp1;

    .line 17
    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lq1;->e:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static synthetic b(Lq1;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lq1;->k(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method public static synthetic c(Lq1;Landroid/content/Context;Lq1$b;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lq1;->h(Landroid/content/Context;Lq1$b;)V

    .line 4
    return-void
.end method

.method public static synthetic d(Lq1;)Loi;
    .locals 0

    .line 1
    iget-object p0, p0, Lq1;->c:Loi;

    .line 3
    return-object p0
.end method

.method public static synthetic e(Lq1;)Lp1;
    .locals 0

    .line 1
    iget-object p0, p0, Lq1;->b:Lp1;

    .line 3
    return-object p0
.end method

.method public static o([B)J
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    if-eqz p0, :cond_3

    .line 5
    array-length v2, p0

    .line 6
    if-nez v2, :cond_0

    .line 8
    goto :goto_2

    .line 9
    :cond_0
    new-instance v2, Ljava/io/StringReader;

    .line 11
    new-instance v3, Ljava/lang/String;

    .line 13
    invoke-direct {v3, p0}, Ljava/lang/String;-><init>([B)V

    .line 16
    invoke-direct {v2, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 19
    new-instance p0, Ljava/io/BufferedReader;

    .line 21
    invoke-direct {p0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 24
    const/4 v3, 0x0

    .line 25
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 28
    move-result-object v4

    .line 29
    if-nez v4, :cond_1

    .line 31
    sget-object v4, Lq1;->e:Ljava/lang/String;

    .line 33
    const-string v5, "readVersion, version == null"

    .line 35
    new-array v6, v3, [Ljava/lang/Object;

    .line 37
    invoke-static {v4, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :goto_0
    invoke-static {p0}, Lns;->a(Ljava/io/Closeable;)V

    .line 43
    invoke-static {v2}, Lns;->a(Ljava/io/Closeable;)V

    .line 46
    return-wide v0

    .line 47
    :cond_1
    :try_start_1
    const-string v5, "#"

    .line 49
    const/4 v6, -0x1

    .line 50
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 53
    move-result-object v4

    .line 54
    array-length v5, v4

    .line 55
    if-lez v5, :cond_2

    .line 57
    aget-object v4, v4, v3

    .line 59
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 62
    move-result-wide v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    goto :goto_1

    .line 66
    :catch_0
    move-exception v4

    .line 67
    :try_start_2
    sget-object v5, Lq1;->e:Ljava/lang/String;

    .line 69
    const-string v6, "getVersion exception:"

    .line 71
    new-array v3, v3, [Ljava/lang/Object;

    .line 73
    invoke-static {v5, v6, v4, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    :cond_2
    invoke-static {p0}, Lns;->a(Ljava/io/Closeable;)V

    .line 79
    invoke-static {v2}, Lns;->a(Ljava/io/Closeable;)V

    .line 82
    return-wide v0

    .line 83
    :goto_1
    invoke-static {p0}, Lns;->a(Ljava/io/Closeable;)V

    .line 86
    invoke-static {v2}, Lns;->a(Ljava/io/Closeable;)V

    .line 89
    throw v0

    .line 90
    :cond_3
    :goto_2
    return-wide v0
.end method


# virtual methods
.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lq1;->b:Lp1;

    .line 3
    const-string v1, "isLoaded"

    .line 5
    invoke-virtual {v0, v1}, Lp1;->h(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lq1;->b:Lp1;

    .line 10
    const-string v1, "isAdapted"

    .line 12
    invoke-virtual {v0, v1}, Lp1;->h(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lq1;->b:Lp1;

    .line 17
    const-string v1, "fileVersion"

    .line 19
    invoke-virtual {v0, v1}, Lp1;->h(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lq1;->b:Lp1;

    .line 24
    const-string v1, "adapterItemId"

    .line 26
    invoke-virtual {v0, v1}, Lp1;->h(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lq1;->b:Lp1;

    .line 31
    const-string v1, "businessType"

    .line 33
    invoke-virtual {v0, v1}, Lp1;->h(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lq1;->b:Lp1;

    .line 38
    const-string v1, "deviceFeature"

    .line 40
    invoke-virtual {v0, v1}, Lp1;->h(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lq1;->b:Lp1;

    .line 45
    const-string v1, "funcGroups"

    .line 47
    invoke-virtual {v0, v1}, Lp1;->h(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lq1;->b:Lp1;

    .line 52
    const-string v1, "configGroup"

    .line 54
    invoke-virtual {v0, v1}, Lp1;->h(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lq1;->b:Lp1;

    .line 59
    const-string v1, "isCloudControl"

    .line 61
    invoke-virtual {v0, v1}, Lp1;->h(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public g(Landroid/content/Context;ZLq1$b;)Z
    .locals 5

    .line 1
    sget-object v0, Lq1;->e:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    const-string v3, "sync load start"

    .line 8
    invoke-static {v0, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v0, Ljava/io/File;

    .line 13
    sget-object v2, Lq1;->f:Ljava/lang/String;

    .line 15
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x1

    .line 23
    if-eqz v2, :cond_0

    .line 25
    iget-object v0, p0, Lq1;->b:Lp1;

    .line 27
    invoke-virtual {v0}, Lp1;->f()V

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 34
    move-result v0

    .line 35
    sget-object v2, Lq1;->e:Ljava/lang/String;

    .line 37
    new-array v4, v3, [Ljava/lang/Object;

    .line 39
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    move-result-object v0

    .line 43
    aput-object v0, v4, v1

    .line 45
    const-string v0, "load mkdirs ret={?}"

    .line 47
    invoke-static {v2, v0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    :goto_0
    new-instance v0, Lo1;

    .line 52
    invoke-direct {v0}, Lo1;-><init>()V

    .line 55
    invoke-virtual {v0}, Lo1;->d()V

    .line 58
    iget-object v0, p0, Lq1;->b:Lp1;

    .line 60
    const-string v2, "isAdapted"

    .line 62
    invoke-virtual {v0, v2, v1}, Lp1;->a(Ljava/lang/String;Z)Z

    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {p0, p3}, Lq1;->i(Lq1$b;)V

    .line 71
    :cond_1
    new-instance v0, Lq1$a;

    .line 73
    invoke-direct {v0, p0, p1, p3}, Lq1$a;-><init>(Lq1;Landroid/content/Context;Lq1$b;)V

    .line 76
    if-eqz p2, :cond_2

    .line 78
    sget-object p1, Lq1;->e:Ljava/lang/String;

    .line 80
    const-string p2, "sync load database"

    .line 82
    new-array p3, v1, [Ljava/lang/Object;

    .line 84
    invoke-static {p1, p2, p3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 90
    goto :goto_1

    .line 91
    :cond_2
    sget-object p1, Lq1;->e:Ljava/lang/String;

    .line 93
    const-string p2, "async load database"

    .line 95
    new-array p3, v1, [Ljava/lang/Object;

    .line 97
    invoke-static {p1, p2, p3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-static {v0}, Lbg0;->f(Ljava/lang/Runnable;)V

    .line 103
    :goto_1
    sget-object p1, Lq1;->e:Ljava/lang/String;

    .line 105
    const-string p2, "sync load end"

    .line 107
    new-array p3, v1, [Ljava/lang/Object;

    .line 109
    invoke-static {p1, p2, p3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    return v3
.end method

.method public final h(Landroid/content/Context;Lq1$b;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p2

    .line 5
    sget-object v2, Lq1;->e:Ljava/lang/String;

    .line 7
    const/4 v7, 0x0

    .line 8
    new-array v3, v7, [Ljava/lang/Object;

    .line 10
    const-string v4, "loadAdapterDatabase start"

    .line 12
    invoke-static {v2, v4, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    iget-object v2, v0, Lq1;->b:Lp1;

    .line 17
    const-string v3, "fileVersion"

    .line 19
    const-wide/16 v4, 0x0

    .line 21
    invoke-virtual {v2, v3, v4, v5}, Lp1;->d(Ljava/lang/String;J)J

    .line 24
    move-result-wide v2

    .line 25
    sget-object v4, Lq1;->e:Ljava/lang/String;

    .line 27
    const/4 v8, 0x1

    .line 28
    new-array v5, v8, [Ljava/lang/Object;

    .line 30
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 33
    move-result-object v6

    .line 34
    aput-object v6, v5, v7

    .line 36
    const-string v6, "loadAdapterDatabase, historyVersion={?}"

    .line 38
    invoke-static {v4, v6, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-virtual {v0, v7}, Lq1;->n(Z)[B

    .line 44
    move-result-object v4

    .line 45
    invoke-static {v4}, Lq1;->o([B)J

    .line 48
    move-result-wide v5

    .line 49
    sget-object v9, Lq1;->e:Ljava/lang/String;

    .line 51
    new-array v10, v8, [Ljava/lang/Object;

    .line 53
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    move-result-object v11

    .line 57
    aput-object v11, v10, v7

    .line 59
    const-string v11, "loadAdapterDatabase, fileVersion={?}"

    .line 61
    invoke-static {v9, v11, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    invoke-virtual {v0, v8}, Lq1;->n(Z)[B

    .line 67
    move-result-object v9

    .line 68
    invoke-static {v9}, Lq1;->o([B)J

    .line 71
    move-result-wide v10

    .line 72
    sget-object v12, Lq1;->e:Ljava/lang/String;

    .line 74
    new-array v13, v8, [Ljava/lang/Object;

    .line 76
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 79
    move-result-object v14

    .line 80
    aput-object v14, v13, v7

    .line 82
    const-string v14, "loadAdapterDatabase, cloudFileVersion={?}"

    .line 84
    invoke-static {v12, v14, v13}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    invoke-virtual/range {p0 .. p1}, Lq1;->m(Landroid/content/Context;)[B

    .line 90
    move-result-object v12

    .line 91
    invoke-static {v12}, Lq1;->o([B)J

    .line 94
    move-result-wide v13

    .line 95
    sget-object v15, Lq1;->e:Ljava/lang/String;

    .line 97
    new-array v1, v8, [Ljava/lang/Object;

    .line 99
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 102
    move-result-object v16

    .line 103
    aput-object v16, v1, v7

    .line 105
    const-string v8, "loadAdapterDatabase, assetVersion={?}"

    .line 107
    invoke-static {v15, v8, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    cmp-long v1, v2, v5

    .line 112
    if-ltz v1, :cond_0

    .line 114
    cmp-long v1, v2, v13

    .line 116
    if-ltz v1, :cond_0

    .line 118
    cmp-long v1, v2, v10

    .line 120
    if-ltz v1, :cond_0

    .line 122
    sget-object v1, Lq1;->e:Ljava/lang/String;

    .line 124
    const-string v4, "loadAdapterDatabase, historyVersion is newest, don\'t need to be updated"

    .line 126
    new-array v5, v7, [Ljava/lang/Object;

    .line 128
    invoke-static {v1, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    const/4 v1, 0x0

    .line 132
    move-object v4, v1

    .line 133
    move-wide v13, v2

    .line 134
    goto :goto_0

    .line 135
    :cond_0
    const-string v1, "loadAdapterDatabase, loadAdapterInfo end"

    .line 137
    cmp-long v8, v5, v13

    .line 139
    if-lez v8, :cond_1

    .line 141
    cmp-long v8, v5, v10

    .line 143
    if-ltz v8, :cond_1

    .line 145
    sget-object v8, Lq1;->e:Ljava/lang/String;

    .line 147
    const-string v9, "loadAdapterDatabase, fileVersion is newest, need to update"

    .line 149
    new-array v10, v7, [Ljava/lang/Object;

    .line 151
    invoke-static {v8, v9, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 157
    move-result-object v8

    .line 158
    invoke-virtual {v0, v4, v8}, Lq1;->j([BLjava/lang/String;)Loi;

    .line 161
    move-result-object v4

    .line 162
    sget-object v8, Lq1;->e:Ljava/lang/String;

    .line 164
    new-array v9, v7, [Ljava/lang/Object;

    .line 166
    invoke-static {v8, v1, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    move-wide v13, v5

    .line 170
    goto :goto_0

    .line 171
    :cond_1
    cmp-long v4, v10, v13

    .line 173
    if-lez v4, :cond_2

    .line 175
    sget-object v4, Lq1;->e:Ljava/lang/String;

    .line 177
    const-string v5, "loadAdapterDatabase, cloudFileVersion is newest, need to update"

    .line 179
    new-array v6, v7, [Ljava/lang/Object;

    .line 181
    invoke-static {v4, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 187
    move-result-object v4

    .line 188
    invoke-virtual {v0, v9, v4}, Lq1;->j([BLjava/lang/String;)Loi;

    .line 191
    move-result-object v4

    .line 192
    sget-object v5, Lq1;->e:Ljava/lang/String;

    .line 194
    new-array v6, v7, [Ljava/lang/Object;

    .line 196
    invoke-static {v5, v1, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    move-wide v13, v10

    .line 200
    const/4 v8, 0x1

    .line 201
    goto :goto_1

    .line 202
    :cond_2
    sget-object v4, Lq1;->e:Ljava/lang/String;

    .line 204
    const-string v5, "loadAdapterDatabase, assetVersion is newest, need to update"

    .line 206
    new-array v6, v7, [Ljava/lang/Object;

    .line 208
    invoke-static {v4, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 214
    move-result-object v4

    .line 215
    invoke-virtual {v0, v12, v4}, Lq1;->j([BLjava/lang/String;)Loi;

    .line 218
    move-result-object v4

    .line 219
    sget-object v5, Lq1;->e:Ljava/lang/String;

    .line 221
    new-array v6, v7, [Ljava/lang/Object;

    .line 223
    invoke-static {v5, v1, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    :goto_0
    const/4 v8, 0x0

    .line 227
    :goto_1
    cmp-long v9, v13, v2

    .line 229
    if-lez v9, :cond_4

    .line 231
    if-eqz v4, :cond_4

    .line 233
    iget-object v1, v0, Lq1;->c:Loi;

    .line 235
    if-nez v1, :cond_3

    .line 237
    iput-object v4, v0, Lq1;->c:Loi;

    .line 239
    move-object/from16 v1, p2

    .line 241
    if-eqz v1, :cond_4

    .line 243
    const/4 v2, 0x1

    .line 244
    move-object/from16 v1, p2

    .line 246
    move v3, v8

    .line 247
    move-wide v5, v13

    .line 248
    invoke-interface/range {v1 .. v6}, Lq1$b;->a(ZZLoi;J)V

    .line 251
    goto :goto_2

    .line 252
    :cond_3
    move-object/from16 v1, p2

    .line 254
    iput-object v4, v0, Lq1;->c:Loi;

    .line 256
    if-eqz v1, :cond_4

    .line 258
    invoke-interface {v1, v4, v13, v14}, Lq1$b;->b(Loi;J)V

    .line 261
    :cond_4
    :goto_2
    sget-object v1, Lq1;->e:Ljava/lang/String;

    .line 263
    const/4 v2, 0x1

    .line 264
    new-array v2, v2, [Ljava/lang/Object;

    .line 266
    iget-object v3, v0, Lq1;->c:Loi;

    .line 268
    aput-object v3, v2, v7

    .line 270
    const-string v3, "loadAdapterDatabase mAdapterInfo={?}"

    .line 272
    invoke-static {v1, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    if-eqz v9, :cond_5

    .line 277
    iget-object v1, v0, Lq1;->c:Loi;

    .line 279
    invoke-virtual {v0, v13, v14, v1, v8}, Lq1;->p(JLoi;Z)V

    .line 282
    :cond_5
    sget-object v1, Lq1;->e:Ljava/lang/String;

    .line 284
    const-string v2, "loadAdapterDatabase end"

    .line 286
    new-array v3, v7, [Ljava/lang/Object;

    .line 288
    invoke-static {v1, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    return-void
.end method

.method public final i(Lq1$b;)V
    .locals 13

    .line 1
    sget-object v0, Lq1;->e:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    const-string v3, "loadAdapterFromHistory start"

    .line 8
    invoke-static {v0, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v0, Loi;

    .line 13
    invoke-direct {v0}, Loi;-><init>()V

    .line 16
    iput-object v0, p0, Lq1;->c:Loi;

    .line 18
    iget-object v2, p0, Lq1;->b:Lp1;

    .line 20
    const-string v3, "adapterItemId"

    .line 22
    const-string v4, ""

    .line 24
    invoke-virtual {v2, v3, v4}, Lp1;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    iput-object v2, v0, Loi;->a:Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lq1;->c:Loi;

    .line 32
    iput v1, v0, Loi;->b:I

    .line 34
    iget-object v2, p0, Lq1;->b:Lp1;

    .line 36
    const-string v3, "businessType"

    .line 38
    invoke-virtual {v2, v3, v1}, Lp1;->c(Ljava/lang/String;I)I

    .line 41
    move-result v2

    .line 42
    iput v2, v0, Loi;->c:I

    .line 44
    iget-object v0, p0, Lq1;->b:Lp1;

    .line 46
    const-string v2, "fileVersion"

    .line 48
    const-wide/16 v5, 0x0

    .line 50
    invoke-virtual {v0, v2, v5, v6}, Lp1;->d(Ljava/lang/String;J)J

    .line 53
    move-result-wide v11

    .line 54
    iget-object v0, p0, Lq1;->b:Lp1;

    .line 56
    const-string v2, "isCloudControl"

    .line 58
    invoke-virtual {v0, v2, v1}, Lp1;->a(Ljava/lang/String;Z)Z

    .line 61
    move-result v9

    .line 62
    iget-object v0, p0, Lq1;->b:Lp1;

    .line 64
    const-string v2, "deviceFeature"

    .line 66
    invoke-virtual {v0, v2, v4}, Lp1;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    iget-object v2, p0, Lq1;->c:Loi;

    .line 72
    new-instance v3, Lqi;

    .line 74
    const/4 v5, 0x1

    .line 75
    invoke-direct {v3, v0, v5}, Lqi;-><init>(Ljava/lang/String;Z)V

    .line 78
    iput-object v3, v2, Loi;->d:Lqi;

    .line 80
    iget-object v2, p0, Lq1;->b:Lp1;

    .line 82
    const-string v3, "configGroup"

    .line 84
    invoke-virtual {v2, v3, v4}, Lp1;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    move-result-object v2

    .line 88
    iget-object v3, p0, Lq1;->c:Loi;

    .line 90
    new-instance v6, Lm1;

    .line 92
    invoke-direct {v6, v2, v5}, Lm1;-><init>(Ljava/lang/String;Z)V

    .line 95
    iput-object v6, v3, Loi;->e:Lm1;

    .line 97
    iget-object v3, p0, Lq1;->b:Lp1;

    .line 99
    const-string v6, "funcGroups"

    .line 101
    invoke-virtual {v3, v6, v4}, Lp1;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    move-result-object v3

    .line 105
    iget-object v4, p0, Lq1;->c:Loi;

    .line 107
    invoke-static {}, Loi;->a()Landroid/util/SparseArray;

    .line 110
    move-result-object v6

    .line 111
    iput-object v6, v4, Loi;->f:Landroid/util/SparseArray;

    .line 113
    const-string v4, "#"

    .line 115
    const/4 v6, -0x1

    .line 116
    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 119
    move-result-object v4

    .line 120
    const/4 v6, 0x0

    .line 121
    :goto_0
    array-length v7, v4

    .line 122
    if-ge v6, v7, :cond_1

    .line 124
    iget-object v7, p0, Lq1;->c:Loi;

    .line 126
    iget-object v7, v7, Loi;->f:Landroid/util/SparseArray;

    .line 128
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 131
    move-result-object v7

    .line 132
    if-eqz v7, :cond_0

    .line 134
    iget-object v7, p0, Lq1;->c:Loi;

    .line 136
    iget-object v7, v7, Loi;->f:Landroid/util/SparseArray;

    .line 138
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 141
    move-result-object v7

    .line 142
    check-cast v7, Lhc;

    .line 144
    aget-object v8, v4, v6

    .line 146
    invoke-virtual {v7, v8, v5}, Lhc;->i(Ljava/lang/String;Z)Z

    .line 149
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 151
    goto :goto_0

    .line 152
    :cond_1
    sget-object v4, Lq1;->e:Ljava/lang/String;

    .line 154
    const/4 v6, 0x5

    .line 155
    new-array v6, v6, [Ljava/lang/Object;

    .line 157
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 160
    move-result-object v7

    .line 161
    aput-object v7, v6, v1

    .line 163
    iget-object v7, p0, Lq1;->c:Loi;

    .line 165
    iget-object v7, v7, Loi;->a:Ljava/lang/String;

    .line 167
    aput-object v7, v6, v5

    .line 169
    const/4 v7, 0x2

    .line 170
    aput-object v0, v6, v7

    .line 172
    const/4 v0, 0x3

    .line 173
    aput-object v2, v6, v0

    .line 175
    const/4 v0, 0x4

    .line 176
    aput-object v3, v6, v0

    .line 178
    const-string v0, "loadAdapterFromHistory, mAdapterInfo,version={?},  id={?}, deviceFeature={?}, configGroup={?}, funcGroups={?}"

    .line 180
    invoke-static {v4, v0, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    if-eqz p1, :cond_3

    .line 185
    iget-object v10, p0, Lq1;->c:Loi;

    .line 187
    if-eqz v10, :cond_2

    .line 189
    const/4 v8, 0x1

    .line 190
    goto :goto_1

    .line 191
    :cond_2
    const/4 v8, 0x0

    .line 192
    :goto_1
    move-object v7, p1

    .line 193
    invoke-interface/range {v7 .. v12}, Lq1$b;->a(ZZLoi;J)V

    .line 196
    :cond_3
    sget-object p1, Lq1;->e:Ljava/lang/String;

    .line 198
    const-string v0, "loadAdapterFromHistory end"

    .line 200
    new-array v1, v1, [Ljava/lang/Object;

    .line 202
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    return-void
.end method

.method public final j([BLjava/lang/String;)Loi;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Ljava/io/StringReader;

    .line 5
    new-instance v3, Ljava/lang/String;

    .line 7
    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([B)V

    .line 10
    invoke-direct {v2, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    new-instance p1, Ljava/io/BufferedReader;

    .line 15
    invoke-direct {p1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 21
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 24
    move-result-object v3

    .line 25
    if-eqz v3, :cond_1

    .line 27
    invoke-virtual {p0, v3}, Lq1;->l(Ljava/lang/String;)Loi;

    .line 30
    move-result-object v3

    .line 31
    if-nez v3, :cond_0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-static {}, Lr1;->c()Lr1;

    .line 37
    move-result-object v4

    .line 38
    iget-object v5, p0, Lq1;->a:Lqi;

    .line 40
    invoke-virtual {v4, v5, v3, p2}, Lr1;->k(Lqi;Loi;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-static {v2}, Lns;->a(Ljava/io/Closeable;)V

    .line 47
    invoke-static {p1}, Lns;->a(Ljava/io/Closeable;)V

    .line 50
    iget-object p1, p0, Lq1;->d:Ljava/util/Map;

    .line 52
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 55
    invoke-static {}, Lr1;->c()Lr1;

    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lr1;->e()Loi;

    .line 62
    move-result-object p1

    .line 63
    if-nez p1, :cond_2

    .line 65
    sget-object p1, Lq1;->e:Ljava/lang/String;

    .line 67
    const-string p2, "no match to this device"

    .line 69
    new-array v0, v0, [Ljava/lang/Object;

    .line 71
    invoke-static {p1, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    return-object v1

    .line 75
    :cond_2
    invoke-virtual {p1}, Loi;->b()Loi;

    .line 78
    move-result-object p1

    .line 79
    return-object p1

    .line 80
    :catch_0
    move-exception p2

    .line 81
    goto :goto_1

    .line 82
    :catchall_0
    move-exception p2

    .line 83
    move-object p1, v1

    .line 84
    goto :goto_2

    .line 85
    :catch_1
    move-exception p2

    .line 86
    move-object p1, v1

    .line 87
    goto :goto_1

    .line 88
    :catchall_1
    move-exception p2

    .line 89
    move-object p1, v1

    .line 90
    goto :goto_3

    .line 91
    :catch_2
    move-exception p2

    .line 92
    move-object p1, v1

    .line 93
    move-object v2, p1

    .line 94
    :goto_1
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 97
    sget-object v3, Lq1;->e:Ljava/lang/String;

    .line 99
    const-string v4, "load fail, file:{?}"

    .line 101
    new-array v0, v0, [Ljava/lang/Object;

    .line 103
    invoke-static {v3, v4, p2, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 106
    invoke-static {v2}, Lns;->a(Ljava/io/Closeable;)V

    .line 109
    invoke-static {p1}, Lns;->a(Ljava/io/Closeable;)V

    .line 112
    iget-object p1, p0, Lq1;->d:Ljava/util/Map;

    .line 114
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 117
    return-object v1

    .line 118
    :catchall_2
    move-exception p2

    .line 119
    :goto_2
    move-object v1, v2

    .line 120
    :goto_3
    invoke-static {v1}, Lns;->a(Ljava/io/Closeable;)V

    .line 123
    invoke-static {p1}, Lns;->a(Ljava/io/Closeable;)V

    .line 126
    iget-object p1, p0, Lq1;->d:Ljava/util/Map;

    .line 128
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 131
    throw p2
.end method

.method public final k(Landroid/content/Context;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lq1;->a:Lqi;

    .line 3
    if-nez v0, :cond_1

    .line 5
    sget-object v0, Lq1;->e:Ljava/lang/String;

    .line 7
    const-string v1, "loadLocalDeviceFeature start"

    .line 9
    const/4 v2, 0x0

    .line 10
    new-array v3, v2, [Ljava/lang/Object;

    .line 12
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    sget-object v0, Lq1;->e:Ljava/lang/String;

    .line 17
    const/4 v1, 0x1

    .line 18
    new-array v3, v1, [Ljava/lang/Object;

    .line 20
    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 22
    aput-object v4, v3, v2

    .line 24
    const-string v5, "loadLocalDeviceFeature, fingerPrint:{?}"

    .line 26
    invoke-static {v0, v5, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    new-instance v0, Lqi;

    .line 31
    invoke-direct {v0}, Lqi;-><init>()V

    .line 34
    iput-object v0, p0, Lq1;->a:Lqi;

    .line 36
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v3, "/"

    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 59
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 67
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v4, ":"

    .line 72
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 77
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    sget-object v5, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 85
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    sget-object v5, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 93
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 101
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    sget-object v3, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 109
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v3, p0, Lq1;->a:Lqi;

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v3, v2, v0}, Lqi;->d(ILjava/lang/String;)V

    .line 121
    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lq1;->a:Lqi;

    .line 124
    invoke-virtual {v0, v2, v4}, Lqi;->d(ILjava/lang/String;)V

    .line 127
    :goto_0
    iget-object v0, p0, Lq1;->a:Lqi;

    .line 129
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 131
    invoke-virtual {v0, v1, v3}, Lqi;->d(ILjava/lang/String;)V

    .line 134
    iget-object v0, p0, Lq1;->a:Lqi;

    .line 136
    const/4 v3, 0x2

    .line 137
    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 139
    invoke-virtual {v0, v3, v4}, Lqi;->d(ILjava/lang/String;)V

    .line 142
    iget-object v0, p0, Lq1;->a:Lqi;

    .line 144
    const/4 v3, 0x3

    .line 145
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 147
    invoke-virtual {v0, v3, v4}, Lqi;->d(ILjava/lang/String;)V

    .line 150
    iget-object v0, p0, Lq1;->a:Lqi;

    .line 152
    const/4 v3, 0x4

    .line 153
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 155
    invoke-virtual {v0, v3, v4}, Lqi;->d(ILjava/lang/String;)V

    .line 158
    iget-object v0, p0, Lq1;->a:Lqi;

    .line 160
    const/4 v3, 0x5

    .line 161
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 163
    invoke-virtual {v0, v3, v4}, Lqi;->d(ILjava/lang/String;)V

    .line 166
    iget-object v0, p0, Lq1;->a:Lqi;

    .line 168
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 170
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 173
    move-result-object v3

    .line 174
    const/4 v4, 0x6

    .line 175
    invoke-virtual {v0, v4, v3}, Lqi;->d(ILjava/lang/String;)V

    .line 178
    iget-object v0, p0, Lq1;->a:Lqi;

    .line 180
    const/4 v3, 0x7

    .line 181
    sget-object v4, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 183
    invoke-virtual {v0, v3, v4}, Lqi;->d(ILjava/lang/String;)V

    .line 186
    iget-object v0, p0, Lq1;->a:Lqi;

    .line 188
    const/16 v3, 0x8

    .line 190
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 192
    invoke-virtual {v0, v3, v4}, Lqi;->d(ILjava/lang/String;)V

    .line 195
    iget-object v0, p0, Lq1;->a:Lqi;

    .line 197
    const-string v3, "ro.board.platform"

    .line 199
    invoke-static {v3}, Luf0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 202
    move-result-object v3

    .line 203
    const/16 v4, 0x9

    .line 205
    invoke-virtual {v0, v4, v3}, Lqi;->d(ILjava/lang/String;)V

    .line 208
    iget-object v0, p0, Lq1;->a:Lqi;

    .line 210
    const/16 v3, 0xa

    .line 212
    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 214
    invoke-virtual {v0, v3, v4}, Lqi;->d(ILjava/lang/String;)V

    .line 217
    iget-object v0, p0, Lq1;->a:Lqi;

    .line 219
    invoke-static {p1}, Lsi;->u(Landroid/content/Context;)Lsi;

    .line 222
    move-result-object v3

    .line 223
    invoke-virtual {v3}, Lsi;->I()I

    .line 226
    move-result v3

    .line 227
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 230
    move-result-object v3

    .line 231
    const/16 v4, 0xb

    .line 233
    invoke-virtual {v0, v4, v3}, Lqi;->d(ILjava/lang/String;)V

    .line 236
    iget-object v0, p0, Lq1;->a:Lqi;

    .line 238
    invoke-static {p1}, Lsi;->u(Landroid/content/Context;)Lsi;

    .line 241
    move-result-object v3

    .line 242
    invoke-virtual {v3}, Lsi;->H()I

    .line 245
    move-result v3

    .line 246
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 249
    move-result-object v3

    .line 250
    const/16 v4, 0xc

    .line 252
    invoke-virtual {v0, v4, v3}, Lqi;->d(ILjava/lang/String;)V

    .line 255
    iget-object v0, p0, Lq1;->a:Lqi;

    .line 257
    invoke-static {p1}, Lsi;->u(Landroid/content/Context;)Lsi;

    .line 260
    move-result-object p1

    .line 261
    invoke-virtual {p1}, Lsi;->G()F

    .line 264
    move-result p1

    .line 265
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 268
    move-result-object p1

    .line 269
    const/16 v3, 0xd

    .line 271
    invoke-virtual {v0, v3, p1}, Lqi;->d(ILjava/lang/String;)V

    .line 274
    iget-object p1, p0, Lq1;->a:Lqi;

    .line 276
    const/16 v0, 0xe

    .line 278
    sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 280
    invoke-virtual {p1, v0, v3}, Lqi;->d(ILjava/lang/String;)V

    .line 283
    sget-object p1, Lq1;->e:Ljava/lang/String;

    .line 285
    new-array v0, v1, [Ljava/lang/Object;

    .line 287
    iget-object v1, p0, Lq1;->a:Lqi;

    .line 289
    aput-object v1, v0, v2

    .line 291
    const-string v1, "loadLocalDeviceFeature end, {?}"

    .line 293
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    :cond_1
    return-void
.end method

.method public final l(Ljava/lang/String;)Loi;
    .locals 6

    .line 1
    const-string v0, "#"

    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    array-length v1, v0

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x5

    .line 12
    if-ge v1, v4, :cond_0

    .line 14
    sget-object v0, Lq1;->e:Ljava/lang/String;

    .line 16
    new-array v1, v2, [Ljava/lang/Object;

    .line 18
    aput-object p1, v1, v3

    .line 20
    const-string p1, "parseAdapterItem fail, record={?}"

    .line 22
    invoke-static {v0, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    const/4 p1, 0x0

    .line 26
    return-object p1

    .line 27
    :cond_0
    new-instance p1, Loi;

    .line 29
    invoke-direct {p1}, Loi;-><init>()V

    .line 32
    aget-object v1, v0, v3

    .line 34
    iput-object v1, p1, Loi;->a:Ljava/lang/String;

    .line 36
    aget-object v1, v0, v2

    .line 38
    invoke-static {v1, v3}, Lu1;->h(Ljava/lang/String;I)I

    .line 41
    move-result v1

    .line 42
    iput v1, p1, Loi;->b:I

    .line 44
    const/4 v1, 0x2

    .line 45
    aget-object v1, v0, v1

    .line 47
    invoke-static {v1, v3}, Lu1;->h(Ljava/lang/String;I)I

    .line 50
    move-result v1

    .line 51
    iput v1, p1, Loi;->c:I

    .line 53
    new-instance v1, Lqi;

    .line 55
    const/4 v5, 0x3

    .line 56
    aget-object v5, v0, v5

    .line 58
    invoke-direct {v1, v5, v2}, Lqi;-><init>(Ljava/lang/String;Z)V

    .line 61
    iput-object v1, p1, Loi;->d:Lqi;

    .line 63
    iget v1, p1, Loi;->b:I

    .line 65
    const/4 v5, 0x4

    .line 66
    if-ne v1, v2, :cond_2

    .line 68
    new-instance v1, Landroid/util/SparseArray;

    .line 70
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 73
    iput-object v1, p1, Loi;->f:Landroid/util/SparseArray;

    .line 75
    iget-object v1, p0, Lq1;->d:Ljava/util/Map;

    .line 77
    aget-object v0, v0, v5

    .line 79
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Loi;

    .line 85
    if-eqz v0, :cond_1

    .line 87
    iget-object v1, v0, Loi;->e:Lm1;

    .line 89
    iput-object v1, p1, Loi;->e:Lm1;

    .line 91
    iget-object v0, v0, Loi;->f:Landroid/util/SparseArray;

    .line 93
    iput-object v0, p1, Loi;->f:Landroid/util/SparseArray;

    .line 95
    goto :goto_1

    .line 96
    :cond_1
    sget-object v0, Lq1;->e:Ljava/lang/String;

    .line 98
    const-string v1, "parseAdapterItem otherItem = null"

    .line 100
    new-array v2, v3, [Ljava/lang/Object;

    .line 102
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    goto :goto_1

    .line 106
    :cond_2
    new-instance v1, Lm1;

    .line 108
    aget-object v2, v0, v5

    .line 110
    invoke-direct {v1, v2, v3}, Lm1;-><init>(Ljava/lang/String;Z)V

    .line 113
    iput-object v1, p1, Loi;->e:Lm1;

    .line 115
    invoke-static {}, Loi;->a()Landroid/util/SparseArray;

    .line 118
    move-result-object v1

    .line 119
    iput-object v1, p1, Loi;->f:Landroid/util/SparseArray;

    .line 121
    const/4 v1, 0x0

    .line 122
    :goto_0
    array-length v2, v0

    .line 123
    sub-int/2addr v2, v4

    .line 124
    if-ge v1, v2, :cond_4

    .line 126
    iget-object v2, p1, Loi;->f:Landroid/util/SparseArray;

    .line 128
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 131
    move-result-object v2

    .line 132
    if-eqz v2, :cond_3

    .line 134
    iget-object v2, p1, Loi;->f:Landroid/util/SparseArray;

    .line 136
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 139
    move-result-object v2

    .line 140
    check-cast v2, Lhc;

    .line 142
    add-int/lit8 v5, v1, 0x5

    .line 144
    aget-object v5, v0, v5

    .line 146
    invoke-virtual {v2, v5, v3}, Lhc;->i(Ljava/lang/String;Z)Z

    .line 149
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 151
    goto :goto_0

    .line 152
    :cond_4
    :goto_1
    iget-object v0, p0, Lq1;->d:Ljava/util/Map;

    .line 154
    iget-object v1, p1, Loi;->a:Ljava/lang/String;

    .line 156
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    return-object p1
.end method

.method public final m(Landroid/content/Context;)[B
    .locals 10

    .line 1
    const-string v0, "DeviceAdapterRepository.dat"

    .line 3
    sget-object v1, Lq1;->e:Ljava/lang/String;

    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v3, v2, [Ljava/lang/Object;

    .line 8
    const-string v4, "readDataFromAsset start"

    .line 10
    invoke-static {v1, v4, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    invoke-static {}, Lrv;->H()Lrv;

    .line 23
    move-result-object v5

    .line 24
    invoke-virtual {v5}, Lrv;->M()Ljava/lang/String;

    .line 27
    move-result-object v5

    .line 28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v4

    .line 43
    new-instance v5, Ljava/io/File;

    .line 45
    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    sget-object v6, Lq1;->e:Ljava/lang/String;

    .line 50
    const-string v7, "readDataFromAsset, updatePath:{?}, isFile:{?}"

    .line 52
    const/4 v8, 0x2

    .line 53
    new-array v8, v8, [Ljava/lang/Object;

    .line 55
    aput-object v4, v8, v2

    .line 57
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    .line 60
    move-result v4

    .line 61
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 64
    move-result-object v4

    .line 65
    aput-object v4, v8, v1

    .line 67
    invoke-static {v6, v7, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_0

    .line 76
    new-instance p1, Ljava/io/FileInputStream;

    .line 78
    invoke-direct {p1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 93
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 94
    :goto_0
    :try_start_1
    invoke-static {p1}, Lu1;->b(Ljava/io/InputStream;)[B

    .line 97
    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    invoke-static {p1}, Lns;->a(Ljava/io/Closeable;)V

    .line 101
    goto :goto_2

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    move-object v3, p1

    .line 104
    move-object p1, v0

    .line 105
    goto :goto_4

    .line 106
    :catch_0
    move-exception v0

    .line 107
    move-object v9, v0

    .line 108
    move-object v0, p1

    .line 109
    move-object p1, v9

    .line 110
    goto :goto_1

    .line 111
    :catchall_1
    move-exception p1

    .line 112
    goto :goto_4

    .line 113
    :catch_1
    move-exception p1

    .line 114
    move-object v0, v3

    .line 115
    :goto_1
    :try_start_2
    sget-object v4, Lq1;->e:Ljava/lang/String;

    .line 117
    const-string v5, "loadAdapterDatabase exception"

    .line 119
    new-array v6, v2, [Ljava/lang/Object;

    .line 121
    invoke-static {v4, v5, p1, v6}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 124
    invoke-static {v0}, Lns;->a(Ljava/io/Closeable;)V

    .line 127
    move-object v0, v3

    .line 128
    :goto_2
    if-eqz v0, :cond_1

    .line 130
    sget-object p1, Lq1;->e:Ljava/lang/String;

    .line 132
    const-string v4, "readDataFromAsset decrypt"

    .line 134
    new-array v5, v2, [Ljava/lang/Object;

    .line 136
    invoke-static {p1, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    array-length p1, v0

    .line 140
    invoke-static {v0, p1, v3}, Lcom/autonavi/amapauto/jni/config/AndroidAdapterConfiger;->nativeConfigDecrypt([BILjava/lang/String;)[B

    .line 143
    move-result-object p1

    .line 144
    sget-object v0, Lq1;->e:Ljava/lang/String;

    .line 146
    const-string v3, "readDataFromAsset uncompress"

    .line 148
    new-array v4, v2, [Ljava/lang/Object;

    .line 150
    invoke-static {v0, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    invoke-static {p1}, Lu1;->f([B)[B

    .line 156
    move-result-object v0

    .line 157
    :cond_1
    sget-object p1, Lq1;->e:Ljava/lang/String;

    .line 159
    new-array v1, v1, [Ljava/lang/Object;

    .line 161
    if-nez v0, :cond_2

    .line 163
    const/4 v3, 0x0

    .line 164
    goto :goto_3

    .line 165
    :cond_2
    array-length v3, v0

    .line 166
    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    move-result-object v3

    .line 170
    aput-object v3, v1, v2

    .line 172
    const-string v2, "readDataFromAsset end, assetBuffer len={?}"

    .line 174
    invoke-static {p1, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    return-object v0

    .line 178
    :catchall_2
    move-exception p1

    .line 179
    move-object v3, v0

    .line 180
    :goto_4
    invoke-static {v3}, Lns;->a(Ljava/io/Closeable;)V

    .line 183
    throw p1
.end method

.method public final n(Z)[B
    .locals 6

    .line 1
    sget-object v0, Lq1;->e:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    const-string v3, "readDataFromFile start"

    .line 8
    invoke-static {v0, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    if-eqz p1, :cond_0

    .line 13
    const-string p1, "cc_DeviceAdapterRepository.dat"

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string p1, "DeviceAdapterRepository.dat"

    .line 18
    :goto_0
    new-instance v0, Ljava/io/File;

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    sget-object v3, Lq1;->f:Ljava/lang/String;

    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 43
    move-result p1

    .line 44
    const/4 v2, 0x0

    .line 45
    if-eqz p1, :cond_2

    .line 47
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    .line 49
    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :try_start_1
    invoke-static {p1}, Lu1;->b(Ljava/io/InputStream;)[B

    .line 55
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    invoke-static {p1}, Lns;->a(Ljava/io/Closeable;)V

    .line 59
    goto :goto_2

    .line 60
    :catch_0
    move-exception v0

    .line 61
    goto :goto_1

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    goto :goto_3

    .line 64
    :catch_1
    move-exception v0

    .line 65
    move-object p1, v2

    .line 66
    :goto_1
    :try_start_2
    sget-object v3, Lq1;->e:Ljava/lang/String;

    .line 68
    const-string v4, "loadAdapterDatabase exception"

    .line 70
    new-array v5, v1, [Ljava/lang/Object;

    .line 72
    invoke-static {v3, v4, v0, v5}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 75
    invoke-static {p1}, Lns;->a(Ljava/io/Closeable;)V

    .line 78
    move-object v0, v2

    .line 79
    :goto_2
    if-eqz v0, :cond_1

    .line 81
    sget-object p1, Lq1;->e:Ljava/lang/String;

    .line 83
    const-string v3, "readDataFromFile decrypt"

    .line 85
    new-array v4, v1, [Ljava/lang/Object;

    .line 87
    invoke-static {p1, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    array-length p1, v0

    .line 91
    invoke-static {v0, p1, v2}, Lcom/autonavi/amapauto/jni/config/AndroidAdapterConfiger;->nativeConfigDecrypt([BILjava/lang/String;)[B

    .line 94
    move-result-object p1

    .line 95
    sget-object v0, Lq1;->e:Ljava/lang/String;

    .line 97
    const-string v2, "readDataFromFile uncompress"

    .line 99
    new-array v3, v1, [Ljava/lang/Object;

    .line 101
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    invoke-static {p1}, Lu1;->f([B)[B

    .line 107
    move-result-object v2

    .line 108
    goto :goto_4

    .line 109
    :cond_1
    move-object v2, v0

    .line 110
    goto :goto_4

    .line 111
    :catchall_1
    move-exception v0

    .line 112
    move-object v2, p1

    .line 113
    :goto_3
    invoke-static {v2}, Lns;->a(Ljava/io/Closeable;)V

    .line 116
    throw v0

    .line 117
    :cond_2
    :goto_4
    sget-object p1, Lq1;->e:Ljava/lang/String;

    .line 119
    const/4 v0, 0x1

    .line 120
    new-array v0, v0, [Ljava/lang/Object;

    .line 122
    if-nez v2, :cond_3

    .line 124
    const/4 v3, 0x0

    .line 125
    goto :goto_5

    .line 126
    :cond_3
    array-length v3, v2

    .line 127
    :goto_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    move-result-object v3

    .line 131
    aput-object v3, v0, v1

    .line 133
    const-string v1, "readDataFromFile end, fileBuffer len={?}"

    .line 135
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    return-object v2
.end method

.method public final p(JLoi;Z)V
    .locals 6

    .line 1
    sget-object v0, Lq1;->e:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    const-string v3, "storeAdaptedInfo start"

    .line 8
    invoke-static {v0, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lq1;->f()V

    .line 14
    iget-object v0, p0, Lq1;->b:Lp1;

    .line 16
    const-string v2, "isLoaded"

    .line 18
    const/4 v3, 0x1

    .line 19
    invoke-virtual {v0, v2, v3}, Lp1;->l(Ljava/lang/String;Z)V

    .line 22
    iget-object v0, p0, Lq1;->b:Lp1;

    .line 24
    const-string v2, "fileVersion"

    .line 26
    invoke-virtual {v0, v2, p1, p2}, Lp1;->j(Ljava/lang/String;J)V

    .line 29
    const-wide/16 v4, 0x0

    .line 31
    const-string v0, "isAdapted"

    .line 33
    cmp-long v2, p1, v4

    .line 35
    if-eqz v2, :cond_3

    .line 37
    if-nez p3, :cond_0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    iget-object p1, p0, Lq1;->b:Lp1;

    .line 42
    invoke-virtual {p1, v0, v3}, Lp1;->l(Ljava/lang/String;Z)V

    .line 45
    iget-object p1, p0, Lq1;->b:Lp1;

    .line 47
    const-string p2, "isCloudControl"

    .line 49
    invoke-virtual {p1, p2, p4}, Lp1;->l(Ljava/lang/String;Z)V

    .line 52
    iget-object p1, p0, Lq1;->b:Lp1;

    .line 54
    const-string p2, "adapterItemId"

    .line 56
    iget-object p4, p3, Loi;->a:Ljava/lang/String;

    .line 58
    invoke-virtual {p1, p2, p4}, Lp1;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lq1;->b:Lp1;

    .line 63
    const-string p2, "businessType"

    .line 65
    iget p4, p3, Loi;->c:I

    .line 67
    invoke-virtual {p1, p2, p4}, Lp1;->i(Ljava/lang/String;I)V

    .line 70
    iget-object p1, p0, Lq1;->b:Lp1;

    .line 72
    iget-object p2, p3, Loi;->d:Lqi;

    .line 74
    invoke-virtual {p2}, Lqi;->c()Ljava/lang/String;

    .line 77
    move-result-object p2

    .line 78
    const-string p4, "deviceFeature"

    .line 80
    invoke-virtual {p1, p4, p2}, Lp1;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lq1;->b:Lp1;

    .line 85
    iget-object p2, p3, Loi;->e:Lm1;

    .line 87
    invoke-virtual {p2}, Ldc;->c()Ljava/lang/String;

    .line 90
    move-result-object p2

    .line 91
    const-string p4, "configGroup"

    .line 93
    invoke-virtual {p1, p4, p2}, Lp1;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    .line 98
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    const/4 p2, 0x0

    .line 102
    :goto_0
    iget-object p4, p3, Loi;->f:Landroid/util/SparseArray;

    .line 104
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    .line 107
    move-result p4

    .line 108
    if-ge p2, p4, :cond_2

    .line 110
    iget-object p4, p3, Loi;->f:Landroid/util/SparseArray;

    .line 112
    invoke-virtual {p4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 115
    move-result-object p4

    .line 116
    check-cast p4, Lhc;

    .line 118
    invoke-virtual {p4}, Lhc;->f()Ljava/lang/String;

    .line 121
    move-result-object p4

    .line 122
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-object p4, p3, Loi;->f:Landroid/util/SparseArray;

    .line 127
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    .line 130
    move-result p4

    .line 131
    sub-int/2addr p4, v3

    .line 132
    if-ge p2, p4, :cond_1

    .line 134
    const-string p4, "#"

    .line 136
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 141
    goto :goto_0

    .line 142
    :cond_2
    iget-object p2, p0, Lq1;->b:Lp1;

    .line 144
    const-string p3, "funcGroups"

    .line 146
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p2, p3, p1}, Lp1;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    goto :goto_2

    .line 154
    :cond_3
    :goto_1
    iget-object p1, p0, Lq1;->b:Lp1;

    .line 156
    invoke-virtual {p1, v0, v1}, Lp1;->l(Ljava/lang/String;Z)V

    .line 159
    :goto_2
    iget-object p1, p0, Lq1;->b:Lp1;

    .line 161
    invoke-virtual {p1}, Lp1;->m()V

    .line 164
    sget-object p1, Lq1;->e:Ljava/lang/String;

    .line 166
    const-string p2, "storeAdaptedInfo end"

    .line 168
    new-array p3, v1, [Ljava/lang/Object;

    .line 170
    invoke-static {p1, p2, p3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    return-void
.end method
