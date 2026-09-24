.class public Llv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llv$a;
    }
.end annotation


# static fields
.field public static d:Ljava/lang/String; = "IssueClusionLoader"

.field public static final e:Ljava/lang/String;


# instance fields
.field public a:Lqi;

.field public b:Ljava/lang/String;

.field public c:Lkv;


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
    sput-object v0, Llv;->e:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static g([B)J
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
    sget-object v4, Llv;->d:Ljava/lang/String;

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
    sget-object v5, Llv;->d:Ljava/lang/String;

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
.method public a(Landroid/content/Context;ZLlv$a;)Z
    .locals 4

    .line 1
    sget-object p2, Llv;->d:Ljava/lang/String;

    .line 3
    const/4 v0, 0x0

    .line 4
    new-array v1, v0, [Ljava/lang/Object;

    .line 6
    const-string v2, "sync load start"

    .line 8
    invoke-static {p2, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0, p1}, Llv;->d(Landroid/content/Context;)V

    .line 14
    invoke-static {}, Lf30;->n()Ljava/lang/String;

    .line 17
    move-result-object p2

    .line 18
    iput-object p2, p0, Llv;->b:Ljava/lang/String;

    .line 20
    sget-object v1, Llv;->d:Ljava/lang/String;

    .line 22
    const/4 v2, 0x1

    .line 23
    new-array v3, v2, [Ljava/lang/Object;

    .line 25
    aput-object p2, v3, v0

    .line 27
    const-string p2, "sync load start,mDiu={?}"

    .line 29
    invoke-static {v1, p2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    invoke-virtual {p0, p1, p3}, Llv;->b(Landroid/content/Context;Llv$a;)V

    .line 35
    return v2
.end method

.method public final b(Landroid/content/Context;Llv$a;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-virtual/range {p0 .. p0}, Llv;->f()[B

    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Llv;->g([B)J

    .line 10
    move-result-wide v7

    .line 11
    sget-object v2, Llv;->d:Ljava/lang/String;

    .line 13
    const/4 v9, 0x1

    .line 14
    new-array v3, v9, [Ljava/lang/Object;

    .line 16
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    move-result-object v4

    .line 20
    const/4 v10, 0x0

    .line 21
    aput-object v4, v3, v10

    .line 23
    const-string v4, "loadIssueClusionDatabase, cloudFileVersion={?}"

    .line 25
    invoke-static {v2, v4, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    const-wide/16 v11, 0x0

    .line 30
    cmp-long v2, v7, v11

    .line 32
    if-gtz v2, :cond_1

    .line 34
    if-eqz p2, :cond_0

    .line 36
    const/4 v2, 0x0

    .line 37
    const/4 v3, 0x0

    .line 38
    const/4 v4, 0x0

    .line 39
    move-object/from16 v1, p2

    .line 41
    move-wide v5, v7

    .line 42
    invoke-interface/range {v1 .. v6}, Llv$a;->a(ZZLkv;J)V

    .line 45
    :cond_0
    return-void

    .line 46
    :cond_1
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v0, v1, v2}, Llv;->c([BLjava/lang/String;)Lkv;

    .line 53
    move-result-object v4

    .line 54
    sget-object v1, Llv;->d:Ljava/lang/String;

    .line 56
    const-string v2, "loadIssueClusionDatabase, loadAdapterInfo end"

    .line 58
    new-array v3, v10, [Ljava/lang/Object;

    .line 60
    invoke-static {v1, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iput-object v4, v0, Llv;->c:Lkv;

    .line 65
    if-eqz p2, :cond_2

    .line 67
    const/4 v2, 0x1

    .line 68
    const/4 v3, 0x1

    .line 69
    move-object/from16 v1, p2

    .line 71
    move-wide v5, v7

    .line 72
    invoke-interface/range {v1 .. v6}, Llv$a;->a(ZZLkv;J)V

    .line 75
    :cond_2
    invoke-static {}, Lnv;->c()Lnv;

    .line 78
    move-result-object v1

    .line 79
    const-string v2, "repositoryVersion"

    .line 81
    invoke-virtual {v1, v2, v11, v12}, Lnv;->e(Ljava/lang/String;J)J

    .line 84
    move-result-wide v3

    .line 85
    cmp-long v1, v3, v7

    .line 87
    if-eqz v1, :cond_3

    .line 89
    sget-object v1, Llv;->d:Ljava/lang/String;

    .line 91
    const/4 v5, 0x2

    .line 92
    new-array v5, v5, [Ljava/lang/Object;

    .line 94
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 97
    move-result-object v3

    .line 98
    aput-object v3, v5, v10

    .line 100
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 103
    move-result-object v3

    .line 104
    aput-object v3, v5, v9

    .line 106
    const-string v3, "loadIssueClusionDatabase, has new version! repositoryVersion={?},version={?}"

    .line 108
    invoke-static {v1, v3, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    invoke-static {}, Lnv;->c()Lnv;

    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v1}, Lnv;->a()V

    .line 118
    invoke-static {}, Lnv;->c()Lnv;

    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v1, v2, v7, v8}, Lnv;->j(Ljava/lang/String;J)V

    .line 125
    invoke-static {}, Lnv;->c()Lnv;

    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v1}, Lnv;->l()V

    .line 132
    const/4 v11, 0x1

    .line 133
    const/4 v12, -0x1

    .line 134
    const/4 v13, -0x1

    .line 135
    const/4 v14, -0x1

    .line 136
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 139
    move-result-object v15

    .line 140
    const-string v16, ""

    .line 142
    const-string v17, ""

    .line 144
    const-string v18, ""

    .line 146
    invoke-static/range {v11 .. v18}, Ljv;->a(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_3
    sget-object v1, Llv;->d:Ljava/lang/String;

    .line 151
    new-array v2, v9, [Ljava/lang/Object;

    .line 153
    iget-object v3, v0, Llv;->c:Lkv;

    .line 155
    aput-object v3, v2, v10

    .line 157
    const-string v3, "loadIssueClusionDatabase mAdapterInfo={?}"

    .line 159
    invoke-static {v1, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    sget-object v1, Llv;->d:Ljava/lang/String;

    .line 164
    const-string v2, "loadIssueClusionDatabase end"

    .line 166
    new-array v3, v10, [Ljava/lang/Object;

    .line 168
    invoke-static {v1, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    return-void
.end method

.method public final c([BLjava/lang/String;)Lkv;
    .locals 7

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
    invoke-virtual {p0, v3}, Llv;->e(Ljava/lang/String;)Lkv;

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
    iget-object v5, p0, Llv;->a:Lqi;

    .line 40
    iget-object v6, p0, Llv;->b:Ljava/lang/String;

    .line 42
    invoke-virtual {v4, v5, v3, p2, v6}, Lr1;->l(Lqi;Lkv;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-static {v2}, Lns;->a(Ljava/io/Closeable;)V

    .line 49
    invoke-static {p1}, Lns;->a(Ljava/io/Closeable;)V

    .line 52
    invoke-static {}, Lr1;->c()Lr1;

    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lr1;->d()Lkv;

    .line 59
    move-result-object p1

    .line 60
    if-nez p1, :cond_2

    .line 62
    sget-object p1, Llv;->d:Ljava/lang/String;

    .line 64
    const-string p2, "no match to this device"

    .line 66
    new-array v0, v0, [Ljava/lang/Object;

    .line 68
    invoke-static {p1, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    return-object v1

    .line 72
    :cond_2
    invoke-virtual {p1}, Lkv;->a()Lkv;

    .line 75
    move-result-object p1

    .line 76
    return-object p1

    .line 77
    :catch_0
    move-exception p2

    .line 78
    goto :goto_1

    .line 79
    :catchall_0
    move-exception p2

    .line 80
    move-object p1, v1

    .line 81
    goto :goto_2

    .line 82
    :catch_1
    move-exception p2

    .line 83
    move-object p1, v1

    .line 84
    goto :goto_1

    .line 85
    :catchall_1
    move-exception p2

    .line 86
    move-object p1, v1

    .line 87
    goto :goto_3

    .line 88
    :catch_2
    move-exception p2

    .line 89
    move-object p1, v1

    .line 90
    move-object v2, p1

    .line 91
    :goto_1
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    sget-object v3, Llv;->d:Ljava/lang/String;

    .line 96
    const-string v4, "load fail, file:{?}"

    .line 98
    new-array v0, v0, [Ljava/lang/Object;

    .line 100
    invoke-static {v3, v4, p2, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 103
    invoke-static {v2}, Lns;->a(Ljava/io/Closeable;)V

    .line 106
    invoke-static {p1}, Lns;->a(Ljava/io/Closeable;)V

    .line 109
    return-object v1

    .line 110
    :catchall_2
    move-exception p2

    .line 111
    :goto_2
    move-object v1, v2

    .line 112
    :goto_3
    invoke-static {v1}, Lns;->a(Ljava/io/Closeable;)V

    .line 115
    invoke-static {p1}, Lns;->a(Ljava/io/Closeable;)V

    .line 118
    throw p2
.end method

.method public final d(Landroid/content/Context;)V
    .locals 6

    .line 1
    iget-object v0, p0, Llv;->a:Lqi;

    .line 3
    if-nez v0, :cond_1

    .line 5
    sget-object v0, Llv;->d:Ljava/lang/String;

    .line 7
    const-string v1, "loadLocalDeviceFeature start"

    .line 9
    const/4 v2, 0x0

    .line 10
    new-array v3, v2, [Ljava/lang/Object;

    .line 12
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    sget-object v0, Llv;->d:Ljava/lang/String;

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
    iput-object v0, p0, Llv;->a:Lqi;

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
    iget-object v3, p0, Llv;->a:Lqi;

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
    iget-object v0, p0, Llv;->a:Lqi;

    .line 124
    invoke-virtual {v0, v2, v4}, Lqi;->d(ILjava/lang/String;)V

    .line 127
    :goto_0
    iget-object v0, p0, Llv;->a:Lqi;

    .line 129
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 131
    invoke-virtual {v0, v1, v3}, Lqi;->d(ILjava/lang/String;)V

    .line 134
    iget-object v0, p0, Llv;->a:Lqi;

    .line 136
    const/4 v3, 0x2

    .line 137
    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 139
    invoke-virtual {v0, v3, v4}, Lqi;->d(ILjava/lang/String;)V

    .line 142
    iget-object v0, p0, Llv;->a:Lqi;

    .line 144
    const/4 v3, 0x3

    .line 145
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 147
    invoke-virtual {v0, v3, v4}, Lqi;->d(ILjava/lang/String;)V

    .line 150
    iget-object v0, p0, Llv;->a:Lqi;

    .line 152
    const/4 v3, 0x4

    .line 153
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 155
    invoke-virtual {v0, v3, v4}, Lqi;->d(ILjava/lang/String;)V

    .line 158
    iget-object v0, p0, Llv;->a:Lqi;

    .line 160
    const/4 v3, 0x5

    .line 161
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 163
    invoke-virtual {v0, v3, v4}, Lqi;->d(ILjava/lang/String;)V

    .line 166
    iget-object v0, p0, Llv;->a:Lqi;

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
    iget-object v0, p0, Llv;->a:Lqi;

    .line 180
    const/4 v3, 0x7

    .line 181
    sget-object v4, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 183
    invoke-virtual {v0, v3, v4}, Lqi;->d(ILjava/lang/String;)V

    .line 186
    iget-object v0, p0, Llv;->a:Lqi;

    .line 188
    const/16 v3, 0x8

    .line 190
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 192
    invoke-virtual {v0, v3, v4}, Lqi;->d(ILjava/lang/String;)V

    .line 195
    iget-object v0, p0, Llv;->a:Lqi;

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
    iget-object v0, p0, Llv;->a:Lqi;

    .line 210
    const/16 v3, 0xa

    .line 212
    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 214
    invoke-virtual {v0, v3, v4}, Lqi;->d(ILjava/lang/String;)V

    .line 217
    iget-object v0, p0, Llv;->a:Lqi;

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
    iget-object v0, p0, Llv;->a:Lqi;

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
    iget-object v0, p0, Llv;->a:Lqi;

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
    iget-object p1, p0, Llv;->a:Lqi;

    .line 276
    const/16 v0, 0xe

    .line 278
    sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 280
    invoke-virtual {p1, v0, v3}, Lqi;->d(ILjava/lang/String;)V

    .line 283
    sget-object p1, Llv;->d:Ljava/lang/String;

    .line 285
    new-array v0, v1, [Ljava/lang/Object;

    .line 287
    iget-object v1, p0, Llv;->a:Lqi;

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

.method public final e(Ljava/lang/String;)Lkv;
    .locals 5

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
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    const/4 v4, 0x3

    .line 12
    if-ge v1, v4, :cond_0

    .line 14
    sget-object v0, Llv;->d:Ljava/lang/String;

    .line 16
    new-array v1, v3, [Ljava/lang/Object;

    .line 18
    aput-object p1, v1, v2

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
    new-instance p1, Lkv;

    .line 29
    invoke-direct {p1}, Lkv;-><init>()V

    .line 32
    aget-object v1, v0, v2

    .line 34
    iput-object v1, p1, Lkv;->a:Ljava/lang/String;

    .line 36
    aget-object v1, v0, v3

    .line 38
    invoke-static {v1, v2}, Lu1;->h(Ljava/lang/String;I)I

    .line 41
    move-result v1

    .line 42
    iput v1, p1, Lkv;->b:I

    .line 44
    const/4 v2, 0x2

    .line 45
    if-ne v1, v3, :cond_1

    .line 47
    aget-object v1, v0, v2

    .line 49
    iput-object v1, p1, Lkv;->c:Ljava/lang/String;

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    new-instance v1, Lqi;

    .line 54
    aget-object v2, v0, v2

    .line 56
    invoke-direct {v1, v2, v3}, Lqi;-><init>(Ljava/lang/String;Z)V

    .line 59
    iput-object v1, p1, Lkv;->d:Lqi;

    .line 61
    :goto_0
    aget-object v1, v0, v4

    .line 63
    iput-object v1, p1, Lkv;->e:Ljava/lang/String;

    .line 65
    const/4 v1, 0x4

    .line 66
    aget-object v1, v0, v1

    .line 68
    iput-object v1, p1, Lkv;->f:Ljava/lang/String;

    .line 70
    const/4 v1, 0x5

    .line 71
    aget-object v0, v0, v1

    .line 73
    iput-object v0, p1, Lkv;->g:Ljava/lang/String;

    .line 75
    return-object p1
.end method

.method public final f()[B
    .locals 7

    .line 1
    sget-object v0, Llv;->d:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    const-string v3, "readDataFromFile start"

    .line 8
    invoke-static {v0, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v0, Ljava/io/File;

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    sget-object v3, Llv;->e:Ljava/lang/String;

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v3, "cc_IssueClusionRepository.dat"

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 38
    move-result v2

    .line 39
    const/4 v3, 0x0

    .line 40
    if-eqz v2, :cond_1

    .line 42
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    .line 44
    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :try_start_1
    invoke-static {v2}, Lu1;->b(Ljava/io/InputStream;)[B

    .line 50
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 51
    invoke-static {v2}, Lns;->a(Ljava/io/Closeable;)V

    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    goto :goto_2

    .line 59
    :catch_1
    move-exception v0

    .line 60
    move-object v2, v3

    .line 61
    :goto_0
    :try_start_2
    sget-object v4, Llv;->d:Ljava/lang/String;

    .line 63
    const-string v5, "loadAdapterDatabase exception"

    .line 65
    new-array v6, v1, [Ljava/lang/Object;

    .line 67
    invoke-static {v4, v5, v0, v6}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 70
    invoke-static {v2}, Lns;->a(Ljava/io/Closeable;)V

    .line 73
    move-object v0, v3

    .line 74
    :goto_1
    if-eqz v0, :cond_0

    .line 76
    sget-object v2, Llv;->d:Ljava/lang/String;

    .line 78
    const-string v4, "readDataFromFile decrypt"

    .line 80
    new-array v5, v1, [Ljava/lang/Object;

    .line 82
    invoke-static {v2, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    array-length v2, v0

    .line 86
    invoke-static {v0, v2, v3}, Lcom/autonavi/amapauto/jni/config/AndroidAdapterConfiger;->nativeConfigDecrypt([BILjava/lang/String;)[B

    .line 89
    move-result-object v0

    .line 90
    sget-object v2, Llv;->d:Ljava/lang/String;

    .line 92
    const-string v3, "readDataFromFile uncompress"

    .line 94
    new-array v4, v1, [Ljava/lang/Object;

    .line 96
    invoke-static {v2, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    invoke-static {v0}, Lu1;->f([B)[B

    .line 102
    move-result-object v3

    .line 103
    goto :goto_3

    .line 104
    :cond_0
    move-object v3, v0

    .line 105
    goto :goto_3

    .line 106
    :catchall_1
    move-exception v0

    .line 107
    move-object v3, v2

    .line 108
    :goto_2
    invoke-static {v3}, Lns;->a(Ljava/io/Closeable;)V

    .line 111
    throw v0

    .line 112
    :cond_1
    :goto_3
    sget-object v0, Llv;->d:Ljava/lang/String;

    .line 114
    const/4 v2, 0x1

    .line 115
    new-array v2, v2, [Ljava/lang/Object;

    .line 117
    if-nez v3, :cond_2

    .line 119
    const/4 v4, 0x0

    .line 120
    goto :goto_4

    .line 121
    :cond_2
    array-length v4, v3

    .line 122
    :goto_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    move-result-object v4

    .line 126
    aput-object v4, v2, v1

    .line 128
    const-string v1, "readDataFromFile end, fileBuffer len={?}"

    .line 130
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    return-object v3
.end method
