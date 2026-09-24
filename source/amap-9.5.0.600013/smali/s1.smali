.class public abstract Ls1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1$b;,
        Ls1$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = "amapauto9"

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/util/ArrayList;

.field public static final j:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    sget-object v1, Ls1;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "/data"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Ls1;->b:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    sget-object v1, Ls1;->a:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, "/data/route"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Ls1;->c:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    sget-object v2, Ls1;->a:Ljava/lang/String;

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v2, "/data/map"

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Ls1;->d:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    sget-object v2, Ls1;->a:Ljava/lang/String;

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v2, "/800_850"

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    sput-object v0, Ls1;->e:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 87
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    sget-object v3, Ls1;->a:Ljava/lang/String;

    .line 92
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v3, "/detail_list"

    .line 97
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object v0

    .line 104
    sput-object v0, Ls1;->f:Ljava/lang/String;

    .line 106
    const-string v0, "amapautolog"

    .line 108
    sput-object v0, Ls1;->g:Ljava/lang/String;

    .line 110
    new-instance v4, Ljava/util/ArrayList;

    .line 112
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 115
    sput-object v4, Ls1;->i:Ljava/util/ArrayList;

    .line 117
    new-instance v4, Ljava/util/concurrent/locks/ReentrantLock;

    .line 119
    invoke-direct {v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 122
    sput-object v4, Ls1;->j:Ljava/util/concurrent/locks/Lock;

    .line 124
    :try_start_0
    const-string v4, "amapauto"

    .line 126
    sput-object v4, Ls1;->a:Ljava/lang/String;

    .line 128
    invoke-static {}, Lrv;->H()Lrv;

    .line 131
    move-result-object v4

    .line 132
    invoke-virtual {v4}, Lrv;->w()Ljava/lang/String;

    .line 135
    move-result-object v4

    .line 136
    const-string v5, "2."

    .line 138
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 141
    move-result v4

    .line 142
    if-eqz v4, :cond_0

    .line 144
    const-string v4, "amapauto9"

    .line 146
    sput-object v4, Ls1;->a:Ljava/lang/String;

    .line 148
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 150
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    sget-object v5, Ls1;->a:Ljava/lang/String;

    .line 155
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object v1

    .line 165
    sput-object v1, Ls1;->c:Ljava/lang/String;

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    .line 169
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    sget-object v4, Ls1;->a:Ljava/lang/String;

    .line 174
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v4, "/data/vmap"

    .line 179
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    move-result-object v1

    .line 186
    sput-object v1, Ls1;->d:Ljava/lang/String;

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    .line 190
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    sget-object v4, Ls1;->a:Ljava/lang/String;

    .line 195
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    move-result-object v1

    .line 205
    sput-object v1, Ls1;->e:Ljava/lang/String;

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    .line 209
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    sget-object v2, Ls1;->a:Ljava/lang/String;

    .line 214
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    move-result-object v1

    .line 224
    sput-object v1, Ls1;->f:Ljava/lang/String;

    .line 226
    sput-object v0, Ls1;->g:Ljava/lang/String;

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    .line 230
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    const-string v1, "/Android/data/"

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-static {}, Lrv;->H()Lrv;

    .line 241
    move-result-object v1

    .line 242
    invoke-virtual {v1}, Lrv;->L()Ljava/lang/String;

    .line 245
    move-result-object v1

    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    move-result-object v0

    .line 253
    sput-object v0, Ls1;->h:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 260
    :goto_0
    return-void
.end method

.method public static A(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    const-string v1, " and "

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, " check isSame:"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    move-result v1

    .line 26
    const-string v2, "false"

    .line 28
    const-string v3, "AdapterStorageUtil"

    .line 30
    const/4 v4, 0x0

    .line 31
    if-nez v1, :cond_4

    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 39
    goto/16 :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v1

    .line 45
    const-string v5, "true"

    .line 47
    const/4 v6, 0x1

    .line 48
    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 57
    new-array p1, v4, [Ljava/lang/Object;

    .line 59
    invoke-static {v3, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    return v6

    .line 63
    :cond_1
    invoke-static {p0}, Lcom/autonavi/amapauto/utils/FileUtils;->replaceIllegalChar(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 67
    new-instance v1, Ljava/io/File;

    .line 69
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-static {p1}, Lcom/autonavi/amapauto/utils/FileUtils;->replaceIllegalChar(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 76
    new-instance p1, Ljava/io/File;

    .line 78
    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1}, Ljava/io/File;->getTotalSpace()J

    .line 84
    move-result-wide v7

    .line 85
    const-wide/16 v9, 0x0

    .line 87
    cmp-long p0, v7, v9

    .line 89
    if-lez p0, :cond_3

    .line 91
    invoke-virtual {v1}, Ljava/io/File;->getTotalSpace()J

    .line 94
    move-result-wide v7

    .line 95
    invoke-virtual {p1}, Ljava/io/File;->getTotalSpace()J

    .line 98
    move-result-wide v9

    .line 99
    cmp-long p0, v7, v9

    .line 101
    if-nez p0, :cond_3

    .line 103
    new-instance p0, Ljava/lang/StringBuilder;

    .line 105
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 111
    move-result-wide v7

    .line 112
    invoke-virtual {p0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 115
    const-string v2, ".txt"

    .line 117
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object p0

    .line 124
    new-instance v2, Ljava/io/File;

    .line 126
    invoke-direct {v2, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 129
    new-instance v1, Ljava/io/File;

    .line 131
    invoke-direct {v1, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 134
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 137
    move-result p0

    .line 138
    if-eqz p0, :cond_2

    .line 140
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 143
    move-result p0

    .line 144
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 147
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 150
    const-string p1, " space equal"

    .line 152
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    move-result-object p1

    .line 159
    new-array v1, v4, [Ljava/lang/Object;

    .line 161
    invoke-static {v3, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    return p0

    .line 165
    :catch_0
    move-exception p0

    .line 166
    new-array p1, v6, [Ljava/lang/Object;

    .line 168
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 171
    move-result-object p0

    .line 172
    aput-object p0, p1, v4

    .line 174
    const-string p0, "isSame Exception={?}"

    .line 176
    invoke-static {v3, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string p0, " space equal2"

    .line 184
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    return v6

    .line 188
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    move-result-object p0

    .line 195
    new-array p1, v4, [Ljava/lang/Object;

    .line 197
    invoke-static {v3, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    return v4

    .line 201
    :cond_4
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    move-result-object p0

    .line 208
    new-array p1, v4, [Ljava/lang/Object;

    .line 210
    invoke-static {v3, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    return v4
.end method

.method public static B(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0, v0}, Ls1;->C(Ljava/lang/String;ZZ)Z

    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public static C(Ljava/lang/String;ZZ)Z
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p0, v1, v2

    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    move-result-object v3

    .line 11
    const/4 v4, 0x1

    .line 12
    aput-object v3, v1, v4

    .line 14
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    move-result-object v3

    .line 18
    const/4 v5, 0x2

    .line 19
    aput-object v3, v1, v5

    .line 21
    const-string v3, "AdapterStorageUtil"

    .line 23
    const-string v6, "isValidatePath path={?},checkRead={?},checkWrite={?}"

    .line 25
    invoke-static {v3, v6, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    if-eqz p0, :cond_5

    .line 30
    const-string v1, "/storage/emulated/legacy"

    .line 32
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_5

    .line 38
    :try_start_0
    invoke-static {p0}, Lcom/autonavi/amapauto/utils/FileUtils;->replaceIllegalChar(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    new-instance v1, Ljava/io/File;

    .line 44
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 50
    move-result v6

    .line 51
    if-nez v6, :cond_0

    .line 53
    const-string p1, "isValidatePath \u6821\u9a8c\u8def\u5f84 = {?},tempFile.canRead() ={?},tempFile.exists() = {?}"

    .line 55
    new-array p2, v0, [Ljava/lang/Object;

    .line 57
    aput-object p0, p2, v2

    .line 59
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    .line 62
    move-result v0

    .line 63
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 66
    move-result-object v0

    .line 67
    aput-object v0, p2, v4

    .line 69
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 72
    move-result v0

    .line 73
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 76
    move-result-object v0

    .line 77
    aput-object v0, p2, v5

    .line 79
    invoke-static {v3, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    return v2

    .line 83
    :cond_0
    if-eqz p1, :cond_1

    .line 85
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    .line 88
    move-result p1

    .line 89
    if-nez p1, :cond_1

    .line 91
    const-string p1, "isValidatePath \u6821\u9a8c\u8def\u5f84 = {?},\u4e0d\u53ef\u8bfb"

    .line 93
    new-array p2, v4, [Ljava/lang/Object;

    .line 95
    aput-object p0, p2, v2

    .line 97
    invoke-static {v3, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    return v2

    .line 101
    :cond_1
    if-eqz p2, :cond_4

    .line 103
    invoke-static {p0}, Lcom/autonavi/amapauto/utils/FileUtils;->replaceIllegalChar(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    move-result-object p0

    .line 107
    new-instance p1, Ljava/io/File;

    .line 109
    const-string p2, "test.txt"

    .line 111
    invoke-direct {p1, p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 117
    move-result p2

    .line 118
    if-eqz p2, :cond_2

    .line 120
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 123
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 126
    move-result p2

    .line 127
    const-string v0, "isValidatePath \u6821\u9a8c\u8def\u5f84 = {?},createNewFile={?}"

    .line 129
    new-array v1, v5, [Ljava/lang/Object;

    .line 131
    aput-object p0, v1, v2

    .line 133
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 136
    move-result-object v6

    .line 137
    aput-object v6, v1, v4

    .line 139
    invoke-static {v3, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    if-eqz p2, :cond_3

    .line 144
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 147
    const-string p1, "isValidatePath \u6821\u9a8c\u8def\u5f84 = {?},\u53ef\u5199"

    .line 149
    new-array p2, v4, [Ljava/lang/Object;

    .line 151
    aput-object p0, p2, v2

    .line 153
    invoke-static {v3, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    goto :goto_0

    .line 157
    :cond_3
    const-string p1, "isValidatePath \u6821\u9a8c\u8def\u5f84 = {?},\u4e0d\u53ef\u5199,createNewFile false"

    .line 159
    new-array p2, v4, [Ljava/lang/Object;

    .line 161
    aput-object p0, p2, v2

    .line 163
    invoke-static {v3, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    return v2

    .line 167
    :cond_4
    :goto_0
    const/4 p1, 0x1

    .line 168
    goto :goto_1

    .line 169
    :catch_0
    move-exception p1

    .line 170
    new-array p2, v5, [Ljava/lang/Object;

    .line 172
    aput-object p0, p2, v2

    .line 174
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 177
    move-result-object p0

    .line 178
    aput-object p0, p2, v4

    .line 180
    const-string p0, "isValidatePath path={?};\u6821\u9a8c\u8def\u5f84\u53d1\u751f\u5f02\u5e38 = {?}"

    .line 182
    invoke-static {v3, p0, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 188
    return v2

    .line 189
    :cond_5
    const/4 p1, 0x0

    .line 190
    :goto_1
    new-array p2, v5, [Ljava/lang/Object;

    .line 192
    aput-object p0, p2, v2

    .line 194
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 197
    move-result-object p0

    .line 198
    aput-object p0, p2, v4

    .line 200
    const-string p0, "isValidatePath \u6821\u9a8c\u8def\u5f84 = {?}\uff0cresult = {?}"

    .line 202
    invoke-static {v3, p0, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    return p1
.end method

.method public static D()Ljava/util/ArrayList;
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    const-string v1, "/proc/mounts"

    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    const/4 v2, 0x0

    .line 14
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    .line 16
    new-instance v4, Ljava/io/InputStreamReader;

    .line 18
    new-instance v5, Ljava/io/FileInputStream;

    .line 20
    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 23
    const-string v0, "UTF8"

    .line 25
    invoke-direct {v4, v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 28
    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_1

    .line 37
    const-string v2, " "

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 42
    move-result-object v2

    .line 43
    if-eqz v2, :cond_0

    .line 45
    array-length v4, v2

    .line 46
    const/4 v5, 0x4

    .line 47
    if-lt v4, v5, :cond_0

    .line 49
    new-instance v4, Ll70;

    .line 51
    invoke-direct {v4}, Ll70;-><init>()V

    .line 54
    invoke-virtual {v4, v0}, Ll70;->c(Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x1

    .line 58
    aget-object v0, v2, v0

    .line 60
    invoke-virtual {v4, v0}, Ll70;->d(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 70
    goto :goto_2

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    move-object v2, v3

    .line 73
    goto :goto_3

    .line 74
    :catch_0
    move-exception v0

    .line 75
    move-object v2, v3

    .line 76
    goto :goto_1

    .line 77
    :catchall_1
    move-exception v0

    .line 78
    goto :goto_3

    .line 79
    :catch_1
    move-exception v0

    .line 80
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 83
    if-eqz v2, :cond_2

    .line 85
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 88
    goto :goto_2

    .line 89
    :catch_2
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 93
    :cond_2
    :goto_2
    return-object v1

    .line 94
    :goto_3
    if-eqz v2, :cond_3

    .line 96
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 99
    goto :goto_4

    .line 100
    :catch_3
    move-exception v1

    .line 101
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 104
    :cond_3
    :goto_4
    throw v0
.end method

.method public static E(ZZ)Ljava/util/ArrayList;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/4 v1, 0x2

    .line 7
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x0

    .line 14
    aput-object v2, v1, v3

    .line 16
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    move-result-object v2

    .line 20
    const/4 v4, 0x1

    .line 21
    aput-object v2, v1, v4

    .line 23
    const-string v2, "AdapterStorageUtil"

    .line 25
    const-string v5, "parseProcFile checkRead={?};checkWrite={?}"

    .line 27
    invoke-static {v2, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    invoke-static {}, Ls1;->s()Ll70;

    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_3

    .line 36
    invoke-virtual {v1}, Ll70;->a()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    const-string v5, " /proc "

    .line 42
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_3

    .line 48
    sget-object v1, Ls1;->i:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object v1

    .line 54
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_3

    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object v5

    .line 64
    check-cast v5, Ll70;

    .line 66
    invoke-virtual {v5}, Ll70;->a()Ljava/lang/String;

    .line 69
    move-result-object v5

    .line 70
    new-array v6, v4, [Ljava/lang/Object;

    .line 72
    aput-object v5, v6, v3

    .line 74
    const-string v7, "parseProcFile mountPath={?}"

    .line 76
    invoke-static {v2, v7, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    const-string v6, "/dev/sd"

    .line 81
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 84
    move-result v6

    .line 85
    if-nez v6, :cond_1

    .line 87
    const-string v6, "/dev/fuse"

    .line 89
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 92
    move-result v6

    .line 93
    if-nez v6, :cond_1

    .line 95
    const-string v6, "/dev/block/sd"

    .line 97
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 100
    move-result v6

    .line 101
    if-nez v6, :cond_1

    .line 103
    const-string v6, "/dev/block/vold/"

    .line 105
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 108
    move-result v6

    .line 109
    if-nez v6, :cond_1

    .line 111
    const-string v6, "/dev/lefuse"

    .line 113
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 116
    move-result v6

    .line 117
    if-eqz v6, :cond_0

    .line 119
    :cond_1
    const-string v6, " "

    .line 121
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 124
    move-result-object v5

    .line 125
    const/4 v6, 0x0

    .line 126
    :goto_0
    array-length v7, v5

    .line 127
    if-ge v6, v7, :cond_0

    .line 129
    aget-object v7, v5, v6

    .line 131
    new-array v8, v4, [Ljava/lang/Object;

    .line 133
    aput-object v7, v8, v3

    .line 135
    const-string v9, "parseProcFile item={?}"

    .line 137
    invoke-static {v2, v9, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    invoke-static {v7, p0, p1}, Ls1;->C(Ljava/lang/String;ZZ)Z

    .line 143
    move-result v8

    .line 144
    if-eqz v8, :cond_2

    .line 146
    const-string v8, "/mnt/media_rw/"

    .line 148
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 151
    move-result v8

    .line 152
    if-nez v8, :cond_2

    .line 154
    const-string v8, "/data/media/obb/"

    .line 156
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 159
    move-result v8

    .line 160
    if-nez v8, :cond_2

    .line 162
    const-string v8, "/Android/data/"

    .line 164
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 167
    move-result v8

    .line 168
    if-nez v8, :cond_2

    .line 170
    const-string v8, "/Android/obb"

    .line 172
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 175
    move-result v8

    .line 176
    if-nez v8, :cond_2

    .line 178
    const-string v8, "/"

    .line 180
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    move-result v8

    .line 184
    if-nez v8, :cond_2

    .line 186
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 189
    move-result v8

    .line 190
    if-nez v8, :cond_2

    .line 192
    invoke-static {v7}, Ls1;->z(Ljava/lang/String;)Z

    .line 195
    move-result v8

    .line 196
    if-nez v8, :cond_2

    .line 198
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    new-array v8, v4, [Ljava/lang/Object;

    .line 203
    aput-object v7, v8, v3

    .line 205
    const-string v7, " \u89e3\u6790proc\u83b7\u53d6\u5916\u5361\u8def\u5f84\u4e3a {?}"

    .line 207
    invoke-static {v2, v7, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 212
    goto :goto_0

    .line 213
    :cond_3
    return-object v0
.end method

.method public static F(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p0, v1, v2

    .line 7
    const-string v3, "AdapterStorageUtil"

    .line 9
    const-string v4, "resetExternalPath path  = {?}"

    .line 11
    invoke-static {v3, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-static {}, Lrv;->H()Lrv;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 21
    move-result-object v1

    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-virtual {v1, v4}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    .line 26
    move-result-object v1

    .line 27
    const/4 v5, 0x2

    .line 28
    if-eqz v1, :cond_3

    .line 30
    invoke-static {}, Lrv;->H()Lrv;

    .line 33
    move-result-object v6

    .line 34
    invoke-virtual {v6}, Lrv;->L()Ljava/lang/String;

    .line 37
    move-result-object v6

    .line 38
    new-array v7, v0, [Ljava/lang/Object;

    .line 40
    array-length v8, v1

    .line 41
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v8

    .line 45
    aput-object v8, v7, v2

    .line 47
    const-string v8, "resetExternalPath file.length ={?}"

    .line 49
    invoke-static {v3, v8, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    array-length v7, v1

    .line 53
    const/4 v8, 0x0

    .line 54
    :goto_0
    if-ge v8, v7, :cond_3

    .line 56
    aget-object v9, v1, v8

    .line 58
    if-nez v9, :cond_0

    .line 60
    const-string v9, "resetExternalPath f == null"

    .line 62
    new-array v10, v2, [Ljava/lang/Object;

    .line 64
    invoke-static {v3, v9, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    goto :goto_1

    .line 68
    :cond_0
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 71
    move-result-object v10

    .line 72
    const/4 v11, 0x3

    .line 73
    new-array v11, v11, [Ljava/lang/Object;

    .line 75
    aput-object v10, v11, v2

    .line 77
    aput-object v6, v11, v0

    .line 79
    aput-object p0, v11, v5

    .line 81
    const-string v12, "resetExternalPath externalPath={?}\uff0cpackageName={?},path={?}"

    .line 83
    invoke-static {v3, v12, v11}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    invoke-virtual {v10, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 89
    move-result v11

    .line 90
    if-nez v11, :cond_1

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 96
    move-result-object v9

    .line 97
    invoke-virtual {v9, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 100
    move-result v9

    .line 101
    if-eqz v9, :cond_2

    .line 103
    sget-object v9, Lu40$a;->a:Lu40$a;

    .line 105
    invoke-static {v10}, Lu40;->b(Ljava/lang/String;)Lu40$a;

    .line 108
    move-result-object v11

    .line 109
    invoke-virtual {v9, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 112
    move-result v9

    .line 113
    if-eqz v9, :cond_2

    .line 115
    new-array p0, v0, [Ljava/lang/Object;

    .line 117
    aput-object v10, p0, v2

    .line 119
    const-string v0, "resetExternalPath externalPath ={?}"

    .line 121
    invoke-static {v3, v0, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    return-object v10

    .line 125
    :cond_2
    :goto_1
    add-int/lit8 v8, v8, 0x1

    .line 127
    goto :goto_0

    .line 128
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 130
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v6, "/Android/data/"

    .line 138
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-static {}, Lrv;->H()Lrv;

    .line 144
    move-result-object v6

    .line 145
    invoke-virtual {v6}, Lrv;->L()Ljava/lang/String;

    .line 148
    move-result-object v6

    .line 149
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    move-result-object v1

    .line 156
    new-array v6, v0, [Ljava/lang/Object;

    .line 158
    aput-object v1, v6, v2

    .line 160
    const-string v7, "resetExternalPath assemblePath ={?}"

    .line 162
    invoke-static {v3, v7, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    sget-object v6, Lu40$a;->a:Lu40$a;

    .line 167
    invoke-static {v1}, Lu40;->b(Ljava/lang/String;)Lu40$a;

    .line 170
    move-result-object v7

    .line 171
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 174
    move-result v6

    .line 175
    if-eqz v6, :cond_4

    .line 177
    new-array p0, v0, [Ljava/lang/Object;

    .line 179
    aput-object v1, p0, v2

    .line 181
    const-string v0, "resetExternalPath useable assemblePath ={?}"

    .line 183
    invoke-static {v3, v0, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    return-object v1

    .line 187
    :cond_4
    new-array v1, v5, [Ljava/lang/Object;

    .line 189
    const v5, 0xbfb5651

    .line 192
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    move-result-object v5

    .line 196
    aput-object v5, v1, v2

    .line 198
    aput-object p0, v1, v0

    .line 200
    const-string p0, "Auto_Exception_Info_{?},path={?}"

    .line 202
    invoke-static {v3, p0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    return-object v4
.end method

.method public static a(Ljava/util/List;)V
    .locals 8

    .line 1
    if-eqz p0, :cond_6

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-le v0, v1, :cond_6

    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 16
    move-result v4

    .line 17
    sub-int/2addr v4, v1

    .line 18
    if-ge v3, v4, :cond_3

    .line 20
    add-int/lit8 v4, v3, 0x1

    .line 22
    move v5, v4

    .line 23
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 26
    move-result v6

    .line 27
    if-ge v5, v6, :cond_2

    .line 29
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v6

    .line 33
    check-cast v6, Ljava/lang/String;

    .line 35
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v7

    .line 39
    check-cast v7, Ljava/lang/String;

    .line 41
    invoke-static {v6, v7}, Ls1;->A(Ljava/lang/String;Ljava/lang/String;)Z

    .line 44
    move-result v6

    .line 45
    if-eqz v6, :cond_1

    .line 47
    if-nez v2, :cond_0

    .line 49
    new-instance v2, Ljava/util/ArrayList;

    .line 51
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 54
    :cond_0
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object v6

    .line 58
    check-cast v6, Ljava/lang/String;

    .line 60
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    move v3, v4

    .line 67
    goto :goto_0

    .line 68
    :cond_3
    if-eqz v2, :cond_6

    .line 70
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 73
    move-result v3

    .line 74
    if-lez v3, :cond_6

    .line 76
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 79
    move-result-object v3

    .line 80
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_5

    .line 86
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    move-result-object v4

    .line 90
    check-cast v4, Ljava/lang/String;

    .line 92
    invoke-interface {p0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 95
    move-result v5

    .line 96
    if-eqz v5, :cond_4

    .line 98
    new-array v5, v1, [Ljava/lang/Object;

    .line 100
    aput-object v4, v5, v0

    .line 102
    const-string v6, "AdapterStorageUtil"

    .line 104
    const-string v7, "checkIsSameInList \u53bb\u6389\u91cd\u590d\u7684\u8def\u5f84 = {?}"

    .line 106
    invoke-static {v6, v7, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    invoke-interface {p0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 112
    new-array v5, v1, [Ljava/lang/Object;

    .line 114
    aput-object v4, v5, v0

    .line 116
    const-string v4, " \u6392\u91cd\u5916\u5361\u8def\u5f84 {?}"

    .line 118
    invoke-static {v6, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    goto :goto_2

    .line 122
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 125
    :cond_6
    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 3
    const-class v0, Landroid/os/storage/StorageManager;

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    const/4 v4, 0x1

    .line 13
    new-array v5, v4, [Ljava/lang/Object;

    .line 15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v6

    .line 19
    const/4 v7, 0x0

    .line 20
    aput-object v6, v5, v7

    .line 22
    const-string v6, "AdapterStorageUtil"

    .line 24
    const-string v8, "enumExternalSDcardInfo currentapiVersion={?}"

    .line 26
    invoke-static {v6, v8, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    :try_start_0
    const-string v5, "storage"

    .line 31
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    move-result-object v5

    .line 35
    check-cast v5, Landroid/os/storage/StorageManager;

    .line 37
    const-string v8, "getVolumeList"

    .line 39
    new-array v9, v7, [Ljava/lang/Class;

    .line 41
    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 44
    move-result-object v8

    .line 45
    const-string v9, "getVolumeState"

    .line 47
    new-array v10, v4, [Ljava/lang/Class;

    .line 49
    const-class v11, Ljava/lang/String;

    .line 51
    aput-object v11, v10, v7

    .line 53
    invoke-virtual {v0, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 56
    move-result-object v9

    .line 57
    new-array v0, v7, [Ljava/lang/Object;

    .line 59
    invoke-virtual {v8, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    move-result-object v0

    .line 63
    move-object v8, v0

    .line 64
    check-cast v8, [Ljava/lang/Object;

    .line 66
    array-length v10, v8

    .line 67
    const/4 v0, 0x0

    .line 68
    const/4 v12, 0x0

    .line 69
    :goto_0
    if-ge v12, v10, :cond_8

    .line 71
    aget-object v13, v8, v12

    .line 73
    const/16 v14, 0x1e

    .line 75
    if-lt v3, v14, :cond_0

    .line 77
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    move-result-object v14

    .line 81
    const-string v15, "getDirectory"

    .line 83
    new-array v11, v7, [Ljava/lang/Class;

    .line 85
    invoke-virtual {v14, v15, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 88
    move-result-object v11

    .line 89
    new-array v14, v7, [Ljava/lang/Object;

    .line 91
    invoke-virtual {v11, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    move-result-object v11

    .line 95
    check-cast v11, Ljava/io/File;

    .line 97
    if-eqz v11, :cond_1

    .line 99
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 102
    move-result-object v0

    .line 103
    goto :goto_1

    .line 104
    :cond_0
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    move-result-object v0

    .line 108
    const-string v11, "getPath"

    .line 110
    new-array v14, v7, [Ljava/lang/Class;

    .line 112
    invoke-virtual {v0, v11, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 115
    move-result-object v0

    .line 116
    new-array v11, v7, [Ljava/lang/Object;

    .line 118
    invoke-virtual {v0, v13, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Ljava/lang/String;

    .line 124
    :cond_1
    :goto_1
    move-object v11, v0

    .line 125
    new-array v0, v4, [Ljava/lang/Object;

    .line 127
    aput-object v11, v0, v7

    .line 129
    invoke-virtual {v9, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Ljava/lang/String;

    .line 135
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    move-result-object v14

    .line 139
    const-string v15, "isRemovable"

    .line 141
    new-array v4, v7, [Ljava/lang/Class;

    .line 143
    invoke-virtual {v14, v15, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 146
    move-result-object v4

    .line 147
    new-array v14, v7, [Ljava/lang/Object;

    .line 149
    invoke-virtual {v4, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    move-result-object v4

    .line 153
    check-cast v4, Ljava/lang/Boolean;

    .line 155
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 158
    move-result v4

    .line 159
    const-string v13, "enumExternalSDcardInfo path = {?},state = {?},isRemove = {?}"

    .line 161
    const/4 v14, 0x3

    .line 162
    new-array v14, v14, [Ljava/lang/Object;

    .line 164
    aput-object v11, v14, v7

    .line 166
    const/4 v15, 0x1

    .line 167
    aput-object v0, v14, v15

    .line 169
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 172
    move-result-object v15

    .line 173
    const/16 v17, 0x2

    .line 175
    aput-object v15, v14, v17

    .line 177
    invoke-static {v6, v13, v14}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    if-eqz v11, :cond_7

    .line 182
    if-eqz v0, :cond_7

    .line 184
    const-string v13, "mounted"

    .line 186
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_7

    .line 192
    array-length v0, v8
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    const/4 v13, 0x1

    .line 194
    if-le v0, v13, :cond_5

    .line 196
    if-ne v4, v13, :cond_5

    .line 198
    const/4 v13, 0x0

    .line 199
    :try_start_1
    invoke-virtual {v1, v13}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    .line 202
    move-result-object v0

    .line 203
    if-eqz v0, :cond_3

    .line 205
    array-length v4, v0

    .line 206
    if-lez v4, :cond_3

    .line 208
    array-length v4, v0

    .line 209
    move-object v15, v11

    .line 210
    const/4 v14, 0x0

    .line 211
    :goto_2
    if-ge v14, v4, :cond_4

    .line 213
    aget-object v16, v0, v14

    .line 215
    if-eqz v16, :cond_2

    .line 217
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 220
    move-result-object v13

    .line 221
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 224
    move-result v16

    .line 225
    if-nez v16, :cond_2

    .line 227
    invoke-virtual {v13, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 230
    move-result v16

    .line 231
    if-eqz v16, :cond_2

    .line 233
    move-object v15, v13

    .line 234
    :cond_2
    add-int/lit8 v14, v14, 0x1

    .line 236
    const/4 v13, 0x0

    .line 237
    goto :goto_2

    .line 238
    :cond_3
    move-object v15, v11

    .line 239
    :cond_4
    new-instance v0, Lcom/autonavi/amapauto/offline/model/StorageInfo;

    .line 241
    invoke-direct {v0}, Lcom/autonavi/amapauto/offline/model/StorageInfo;-><init>()V

    .line 244
    const/4 v4, 0x1

    .line 245
    iput v4, v0, Lcom/autonavi/amapauto/offline/model/StorageInfo;->isExternalCard:I

    .line 247
    iput-object v15, v0, Lcom/autonavi/amapauto/offline/model/StorageInfo;->path:Ljava/lang/String;

    .line 249
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    goto :goto_4

    .line 253
    :catchall_0
    move-exception v0

    .line 254
    :try_start_2
    const-string v4, "enumExternalSDcardInfo e={?}"

    .line 256
    const/4 v13, 0x1

    .line 257
    new-array v14, v13, [Ljava/lang/Object;

    .line 259
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 262
    move-result-object v0

    .line 263
    aput-object v0, v14, v7

    .line 265
    invoke-static {v6, v4, v14}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    goto :goto_4

    .line 269
    :cond_5
    new-instance v0, Lcom/autonavi/amapauto/offline/model/StorageInfo;

    .line 271
    invoke-direct {v0}, Lcom/autonavi/amapauto/offline/model/StorageInfo;-><init>()V

    .line 274
    iput-object v11, v0, Lcom/autonavi/amapauto/offline/model/StorageInfo;->path:Ljava/lang/String;

    .line 276
    if-eqz v4, :cond_6

    .line 278
    const/4 v4, 0x1

    .line 279
    iput v4, v0, Lcom/autonavi/amapauto/offline/model/StorageInfo;->isExternalCard:I

    .line 281
    goto :goto_3

    .line 282
    :cond_6
    iput v7, v0, Lcom/autonavi/amapauto/offline/model/StorageInfo;->isExternalCard:I

    .line 284
    :goto_3
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0

    .line 287
    :cond_7
    :goto_4
    add-int/lit8 v12, v12, 0x1

    .line 289
    move-object v0, v11

    .line 290
    const/4 v4, 0x1

    .line 291
    goto/16 :goto_0

    .line 293
    :cond_8
    const/4 v1, 0x1

    .line 294
    goto :goto_5

    .line 295
    :catch_0
    move-exception v0

    .line 296
    const/4 v1, 0x1

    .line 297
    new-array v3, v1, [Ljava/lang/Object;

    .line 299
    aput-object v0, v3, v7

    .line 301
    const-string v0, "enumExternalSDcardInfo IllegalAccessException"

    .line 303
    invoke-static {v6, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    goto :goto_5

    .line 307
    :catch_1
    move-exception v0

    .line 308
    const/4 v1, 0x1

    .line 309
    new-array v3, v1, [Ljava/lang/Object;

    .line 311
    aput-object v0, v3, v7

    .line 313
    const-string v0, "enumExternalSDcardInfo InvocationTargetException"

    .line 315
    invoke-static {v6, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    goto :goto_5

    .line 319
    :catch_2
    move-exception v0

    .line 320
    const/4 v1, 0x1

    .line 321
    new-array v3, v1, [Ljava/lang/Object;

    .line 323
    aput-object v0, v3, v7

    .line 325
    const-string v0, "enumExternalSDcardInfo NoSuchMethodException"

    .line 327
    invoke-static {v6, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    :goto_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 333
    move-result v0

    .line 334
    if-lez v0, :cond_a

    .line 336
    new-array v0, v1, [Ljava/lang/Object;

    .line 338
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 341
    move-result v1

    .line 342
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 345
    move-result-object v1

    .line 346
    aput-object v1, v0, v7

    .line 348
    const-string v1, "enumExternalSDcardInfo sdCardInfoList.size()={?}"

    .line 350
    invoke-static {v6, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 356
    move-result-object v0

    .line 357
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 360
    move-result v1

    .line 361
    if-eqz v1, :cond_a

    .line 363
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 366
    move-result-object v1

    .line 367
    check-cast v1, Lcom/autonavi/amapauto/offline/model/StorageInfo;

    .line 369
    iget v3, v1, Lcom/autonavi/amapauto/offline/model/StorageInfo;->isExternalCard:I

    .line 371
    if-nez v3, :cond_9

    .line 373
    const/4 v3, 0x1

    .line 374
    new-array v4, v3, [Ljava/lang/Object;

    .line 376
    iget-object v1, v1, Lcom/autonavi/amapauto/offline/model/StorageInfo;->path:Ljava/lang/String;

    .line 378
    aput-object v1, v4, v7

    .line 380
    const-string v1, " \u53cd\u5c04\u65b9\u5f0f\u83b7\u53d6\u5185\u5361\u8def\u5f84\u4e3a {?}"

    .line 382
    invoke-static {v6, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    goto :goto_6

    .line 386
    :cond_9
    const/4 v3, 0x1

    .line 387
    new-array v4, v3, [Ljava/lang/Object;

    .line 389
    iget-object v1, v1, Lcom/autonavi/amapauto/offline/model/StorageInfo;->path:Ljava/lang/String;

    .line 391
    aput-object v1, v4, v7

    .line 393
    const-string v1, " \u53cd\u5c04\u65b9\u5f0f\u83b7\u53d6\u5916\u5361\u8def\u5f84\u4e3a {?}"

    .line 395
    invoke-static {v6, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    goto :goto_6

    .line 399
    :cond_a
    return-object v2
.end method

.method public static c(Ljava/util/List;Ljava/util/List;)V
    .locals 8

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_6

    .line 7
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_6

    .line 13
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v0

    .line 21
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_6

    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/String;

    .line 33
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_5

    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Ljava/lang/String;

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v4, "/"

    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 65
    move-result v3

    .line 66
    const/4 v5, 0x0

    .line 67
    const/4 v6, 0x1

    .line 68
    const-string v7, "AdapterStorageUtil"

    .line 70
    if-nez v3, :cond_4

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_2

    .line 78
    goto :goto_2

    .line 79
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 81
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 97
    move-result v3

    .line 98
    if-nez v3, :cond_3

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_1

    .line 106
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 109
    new-array v2, v6, [Ljava/lang/Object;

    .line 111
    aput-object v1, v2, v5

    .line 113
    const-string v3, "\u53cd\u5c04\u5305\u542bproc\u7684\u8def\u5f84\uff0c\u5220\u9664proc\u8def\u5f84 == {?}"

    .line 115
    invoke-static {v7, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    goto :goto_1

    .line 119
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 122
    new-array v3, v6, [Ljava/lang/Object;

    .line 124
    aput-object v2, v3, v5

    .line 126
    const-string v2, "proc\u5305\u542b\u53cd\u5c04\u7684\u8def\u5f84\uff0c\u5220\u9664\u53cd\u5c04\u8def\u5f84 == {?}"

    .line 128
    invoke-static {v7, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    goto :goto_1

    .line 132
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 135
    move-result v1

    .line 136
    if-lez v1, :cond_0

    .line 138
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 141
    move-result-object v0

    .line 142
    goto :goto_0

    .line 143
    :cond_6
    return-void
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Ls1;->h:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-static {}, Lr50;->p()Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 15
    sget-object v0, Ls1;->h:Ljava/lang/String;

    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    :cond_0
    return-object p0
.end method

.method public static e()Ljava/util/List;
    .locals 7

    .line 1
    const-string v0, "AdapterStorageUtil"

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v3}, Lrv;->z()Landroid/content/Context;

    .line 16
    move-result-object v3

    .line 17
    invoke-static {v3}, Ls1;->i(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 20
    move-result-object v3

    .line 21
    if-eqz v3, :cond_1

    .line 23
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 26
    move-result v4

    .line 27
    if-lez v4, :cond_1

    .line 29
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object v3

    .line 33
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_1

    .line 39
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Lkl;

    .line 45
    if-eqz v4, :cond_0

    .line 47
    invoke-virtual {v4}, Lkl;->a()Ljava/lang/String;

    .line 50
    move-result-object v4

    .line 51
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    move-result v5

    .line 55
    if-nez v5, :cond_0

    .line 57
    new-instance v5, Ls1$a;

    .line 59
    const/4 v6, 0x1

    .line 60
    invoke-direct {v5, v4, v6}, Ls1$a;-><init>(Ljava/lang/String;I)V

    .line 63
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    const-string v5, "[getAdapterAllUsbStorage] extend card path = {?}"

    .line 68
    new-array v6, v6, [Ljava/lang/Object;

    .line 70
    aput-object v4, v6, v2

    .line 72
    invoke-static {v0, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception v3

    .line 77
    const-string v4, "[getAdapterAllUsbStorage]"

    .line 79
    new-array v2, v2, [Ljava/lang/Object;

    .line 81
    invoke-static {v0, v4, v3, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 84
    :cond_1
    return-object v1
.end method

.method public static f()Ljava/util/List;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-static {}, Ls1;->p()Ls1$a;

    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 12
    const/4 v2, 0x1

    .line 13
    new-array v2, v2, [Ljava/lang/Object;

    .line 15
    const/4 v3, 0x0

    .line 16
    iget-object v4, v1, Ls1$a;->b:Ljava/lang/String;

    .line 18
    aput-object v4, v2, v3

    .line 20
    const-string v3, "AdapterStorageUtil"

    .line 22
    const-string v4, "[getAdapterInnerStorage]: inner card path={?}"

    .line 24
    invoke-static {v3, v4, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_0
    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    const v1, 0x9c45

    .line 8
    invoke-virtual {v0, v1}, Lse;->getStringValue(I)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    new-array v1, v1, [Ljava/lang/Object;

    .line 15
    const/4 v2, 0x0

    .line 16
    aput-object v0, v1, v2

    .line 18
    const-string v2, "AdapterStorageUtil"

    .line 20
    const-string v3, "getAdapterMapDataPath = {?}"

    .line 22
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    return-object v0
.end method

.method public static h()Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-static {}, Ls1;->g()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 16
    new-instance v2, Ls1$a;

    .line 18
    const/4 v3, 0x2

    .line 19
    invoke-direct {v2, v1, v3}, Ls1$a;-><init>(Ljava/lang/String;I)V

    .line 22
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_0
    return-object v0
.end method

.method public static i(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0, v0}, Ls1;->j(Landroid/content/Context;ZZ)Ljava/util/ArrayList;

    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static j(Landroid/content/Context;ZZ)Ljava/util/ArrayList;
    .locals 12

    .line 1
    const-string v0, "AdapterStorageUtil"

    .line 3
    sget-object v1, Ls1;->j:Ljava/util/concurrent/locks/Lock;

    .line 5
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    new-instance v2, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 18
    const/4 v3, 0x1

    .line 19
    const/4 v4, 0x0

    .line 20
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    .line 22
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-static {}, Lzm;->d()Lzm;

    .line 28
    move-result-object v6

    .line 29
    const-string v7, "setUdiskPath"

    .line 31
    const-string v8, ""

    .line 33
    invoke-virtual {v6, v7, v8}, Lzm;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v6

    .line 37
    if-eqz v6, :cond_0

    .line 39
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 42
    move-result v7

    .line 43
    if-nez v7, :cond_0

    .line 45
    const-string v7, ";"

    .line 47
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 50
    move-result-object v6

    .line 51
    array-length v7, v6

    .line 52
    const/4 v8, 0x0

    .line 53
    :goto_0
    if-ge v8, v7, :cond_1

    .line 55
    aget-object v9, v6, v8

    .line 57
    const-string v10, "getAllPaths path={?}"

    .line 59
    new-array v11, v3, [Ljava/lang/Object;

    .line 61
    aput-object v9, v11, v4

    .line 63
    invoke-static {v0, v10, v11}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    add-int/lit8 v8, v8, 0x1

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    invoke-static {}, Lse;->c()Lse;

    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v5}, Lse;->getUsbUpdataPath()Ljava/util/List;

    .line 79
    move-result-object v5

    .line 80
    :cond_1
    const-string v6, "getAllPahts channel udisk usbUpdataPath={?}"

    .line 82
    new-array v7, v3, [Ljava/lang/Object;

    .line 84
    aput-object v5, v7, v4

    .line 86
    invoke-static {v0, v6, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-static {}, Lse;->c()Lse;

    .line 92
    move-result-object v6

    .line 93
    const/16 v7, 0x2744

    .line 95
    invoke-virtual {v6, v7}, Lse;->getBooleanValue(I)Z

    .line 98
    move-result v6

    .line 99
    const/4 v7, 0x2

    .line 100
    if-eqz v5, :cond_2

    .line 102
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 105
    move-result v8

    .line 106
    if-lez v8, :cond_2

    .line 108
    const-string p0, "getAllPahts use Channel udisk paths"

    .line 110
    new-array p1, v4, [Ljava/lang/Object;

    .line 112
    invoke-static {v0, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 118
    goto/16 :goto_2

    .line 120
    :cond_2
    if-eqz v6, :cond_3

    .line 122
    const-string p0, "skip to check mounted path"

    .line 124
    new-array p1, v4, [Ljava/lang/Object;

    .line 126
    invoke-static {v0, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    goto/16 :goto_2

    .line 131
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    .line 133
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 136
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 139
    new-instance v6, Ljava/util/ArrayList;

    .line 141
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 144
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 147
    invoke-static {p0}, Ls1;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 150
    move-result-object p0

    .line 151
    if-eqz p0, :cond_5

    .line 153
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 156
    move-result v8

    .line 157
    if-lez v8, :cond_5

    .line 159
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 162
    move-result-object p0

    .line 163
    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 166
    move-result v8

    .line 167
    if-eqz v8, :cond_5

    .line 169
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 172
    move-result-object v8

    .line 173
    check-cast v8, Lcom/autonavi/amapauto/offline/model/StorageInfo;

    .line 175
    const-string v9, "getAllPaths info.path={?};info.isExternalCard={?}"

    .line 177
    new-array v10, v7, [Ljava/lang/Object;

    .line 179
    iget-object v11, v8, Lcom/autonavi/amapauto/offline/model/StorageInfo;->path:Ljava/lang/String;

    .line 181
    aput-object v11, v10, v4

    .line 183
    iget v11, v8, Lcom/autonavi/amapauto/offline/model/StorageInfo;->isExternalCard:I

    .line 185
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    move-result-object v11

    .line 189
    aput-object v11, v10, v3

    .line 191
    invoke-static {v0, v9, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    iget v9, v8, Lcom/autonavi/amapauto/offline/model/StorageInfo;->isExternalCard:I

    .line 196
    if-ne v9, v3, :cond_4

    .line 198
    iget-object v9, v8, Lcom/autonavi/amapauto/offline/model/StorageInfo;->path:Ljava/lang/String;

    .line 200
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 203
    move-result v9

    .line 204
    if-nez v9, :cond_4

    .line 206
    iget-object v9, v8, Lcom/autonavi/amapauto/offline/model/StorageInfo;->path:Ljava/lang/String;

    .line 208
    invoke-static {v9}, Ls1;->z(Ljava/lang/String;)Z

    .line 211
    move-result v9

    .line 212
    if-nez v9, :cond_4

    .line 214
    iget-object v9, v8, Lcom/autonavi/amapauto/offline/model/StorageInfo;->path:Ljava/lang/String;

    .line 216
    invoke-static {v9, p1, v4}, Ls1;->C(Ljava/lang/String;ZZ)Z

    .line 219
    move-result v9

    .line 220
    if-eqz v9, :cond_4

    .line 222
    iget-object v9, v8, Lcom/autonavi/amapauto/offline/model/StorageInfo;->path:Ljava/lang/String;

    .line 224
    invoke-static {v9}, Ls1;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 227
    move-result-object v9

    .line 228
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    const-string v9, "getAllPaths fromReflect validate ExternalPath = {?}"

    .line 233
    new-array v10, v3, [Ljava/lang/Object;

    .line 235
    iget-object v8, v8, Lcom/autonavi/amapauto/offline/model/StorageInfo;->path:Ljava/lang/String;

    .line 237
    aput-object v8, v10, v4

    .line 239
    invoke-static {v0, v9, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    goto :goto_1

    .line 243
    :cond_5
    invoke-static {p1, p2}, Ls1;->E(ZZ)Ljava/util/ArrayList;

    .line 246
    move-result-object p0

    .line 247
    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 250
    invoke-static {v6, v5}, Ls1;->c(Ljava/util/List;Ljava/util/List;)V

    .line 253
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 256
    move-result p0

    .line 257
    if-lez p0, :cond_6

    .line 259
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 262
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 265
    move-result p0

    .line 266
    if-lez p0, :cond_7

    .line 268
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 271
    :cond_7
    :goto_2
    invoke-static {v1}, Ls1;->a(Ljava/util/List;)V

    .line 274
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 277
    move-result p0

    .line 278
    if-lez p0, :cond_c

    .line 280
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 283
    move-result-object p0

    .line 284
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 287
    move-result p1

    .line 288
    if-eqz p1, :cond_c

    .line 290
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 293
    move-result-object p1

    .line 294
    check-cast p1, Ljava/lang/String;

    .line 296
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 299
    move-result p2

    .line 300
    if-eqz p2, :cond_8

    .line 302
    goto :goto_3

    .line 303
    :cond_8
    invoke-static {p1}, Ls1;->t(Ljava/lang/String;)J

    .line 306
    move-result-wide v5

    .line 307
    const-string p2, "getAllPahts check size path = {?}\uff0ctotalDiskSpace = {?}"

    .line 309
    new-array v1, v7, [Ljava/lang/Object;

    .line 311
    aput-object p1, v1, v4

    .line 313
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 316
    move-result-object v8

    .line 317
    aput-object v8, v1, v3

    .line 319
    invoke-static {v0, p2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    const-wide/16 v8, 0x0

    .line 324
    const-string p2, "Auto_Exception_Info_{?}"

    .line 326
    cmp-long v1, v5, v8

    .line 328
    if-gtz v1, :cond_9

    .line 330
    :try_start_1
    new-array p1, v3, [Ljava/lang/Object;

    .line 332
    const v1, 0xbfb564c

    .line 335
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 338
    move-result-object v1

    .line 339
    aput-object v1, p1, v4

    .line 341
    invoke-static {v0, p2, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    goto :goto_3

    .line 345
    :cond_9
    invoke-static {p1}, Ls1;->y(Ljava/lang/String;)Z

    .line 348
    move-result v1

    .line 349
    invoke-static {p1}, Ls1;->x(Ljava/lang/String;)Z

    .line 352
    move-result v5

    .line 353
    const-string v6, "getAllPahts path = {?},\u8def\u5f84\u8bfb\u5199\u6743\u9650 isCanWrite = {?}\uff0cisCanRead = {?}"

    .line 355
    const/4 v8, 0x3

    .line 356
    new-array v8, v8, [Ljava/lang/Object;

    .line 358
    aput-object p1, v8, v4

    .line 360
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 363
    move-result-object v9

    .line 364
    aput-object v9, v8, v3

    .line 366
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 369
    move-result-object v9

    .line 370
    aput-object v9, v8, v7

    .line 372
    invoke-static {v0, v6, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    if-nez v1, :cond_b

    .line 377
    if-eqz v5, :cond_a

    .line 379
    goto :goto_4

    .line 380
    :cond_a
    new-array p1, v3, [Ljava/lang/Object;

    .line 382
    const v1, 0xbfb564b

    .line 385
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 388
    move-result-object v1

    .line 389
    aput-object v1, p1, v4

    .line 391
    invoke-static {v0, p2, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    goto :goto_3

    .line 395
    :cond_b
    :goto_4
    new-instance p2, Lkl;

    .line 397
    invoke-direct {p2}, Lkl;-><init>()V

    .line 400
    invoke-virtual {p2, p1}, Lkl;->d(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p2, v1}, Lkl;->c(Z)V

    .line 406
    invoke-virtual {p2, v5}, Lkl;->b(Z)V

    .line 409
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    goto/16 :goto_3

    .line 414
    :catchall_0
    move-exception p0

    .line 415
    goto :goto_5

    .line 416
    :catch_0
    move-exception p0

    .line 417
    :try_start_2
    const-string p1, "getAllPaths Exception"

    .line 419
    new-array p2, v3, [Ljava/lang/Object;

    .line 421
    aput-object p0, p2, v4

    .line 423
    invoke-static {v0, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 429
    :cond_c
    sget-object p0, Ls1;->j:Ljava/util/concurrent/locks/Lock;

    .line 431
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 434
    return-object v2

    .line 435
    :goto_5
    sget-object p1, Ls1;->j:Ljava/util/concurrent/locks/Lock;

    .line 437
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 440
    throw p0
.end method

.method public static k()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "test.db"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    const-string v2, "databases"

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    :goto_0
    const/4 v1, 0x1

    .line 41
    new-array v1, v1, [Ljava/lang/Object;

    .line 43
    const/4 v2, 0x0

    .line 44
    aput-object v0, v1, v2

    .line 46
    const-string v2, "AdapterStorageUtil"

    .line 48
    const-string v3, "getDataDataPath: {?},"

    .line 50
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    return-object v0
.end method

.method public static l()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    new-instance v1, Ljava/io/File;

    .line 13
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J

    .line 19
    move-result-wide v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-wide/16 v0, 0x0

    .line 23
    :goto_0
    return-wide v0
.end method

.method public static m(Ljava/lang/String;)Lcom/autonavi/amapauto/offline/model/StorageInfo;
    .locals 15

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/offline/model/StorageInfo;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/offline/model/StorageInfo;-><init>()V

    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v2, v1, [Ljava/lang/Object;

    .line 9
    const/4 v3, 0x0

    .line 10
    aput-object p0, v2, v3

    .line 12
    const-string v4, "AdapterStorageUtil"

    .line 14
    const-string v5, "getDiskInfo path:{?}"

    .line 16
    invoke-static {v4, v5, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    .line 21
    invoke-direct {v2, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 24
    const-string v5, "StatFs calSizeInfo SDK_INT >= JELLY_BEAN_MR2"

    .line 26
    new-array v6, v3, [Ljava/lang/Object;

    .line 28
    invoke-static {v4, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 34
    move-result-wide v5

    .line 35
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCountLong()J

    .line 38
    move-result-wide v7

    .line 39
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    .line 42
    move-result-wide v9

    .line 43
    mul-long v11, v7, v5

    .line 45
    const-wide/16 v13, 0x400

    .line 47
    div-long/2addr v11, v13

    .line 48
    iput-wide v11, v0, Lcom/autonavi/amapauto/offline/model/StorageInfo;->totalSize:J

    .line 50
    mul-long v11, v9, v5

    .line 52
    div-long/2addr v11, v13

    .line 53
    iput-wide v11, v0, Lcom/autonavi/amapauto/offline/model/StorageInfo;->availableSize:J

    .line 55
    sub-long/2addr v7, v9

    .line 56
    mul-long v7, v7, v5

    .line 58
    div-long/2addr v7, v13

    .line 59
    iput-wide v7, v0, Lcom/autonavi/amapauto/offline/model/StorageInfo;->usedSize:J

    .line 61
    const-string v2, "StatFs sdCard.availableSize={?},usedSize=={?}"

    .line 63
    const/4 v5, 0x2

    .line 64
    new-array v6, v5, [Ljava/lang/Object;

    .line 66
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 69
    move-result-object v7

    .line 70
    aput-object v7, v6, v3

    .line 72
    iget-wide v7, v0, Lcom/autonavi/amapauto/offline/model/StorageInfo;->usedSize:J

    .line 74
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 77
    move-result-object v7

    .line 78
    aput-object v7, v6, v1

    .line 80
    invoke-static {v4, v2, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    const/16 v2, 0x3eb

    .line 85
    invoke-static {v2}, Lcom/autonavi/amapauto/jni/config/AndroidAdapterConfiger;->nativeGetBooleanValue(I)Z

    .line 88
    move-result v2

    .line 89
    if-nez v2, :cond_0

    .line 91
    new-instance v2, Ljava/io/File;

    .line 93
    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v2}, Ljava/io/File;->getUsableSpace()J

    .line 99
    move-result-wide v6

    .line 100
    div-long/2addr v6, v13

    .line 101
    iput-wide v6, v0, Lcom/autonavi/amapauto/offline/model/StorageInfo;->availableSize:J

    .line 103
    iget-wide v8, v0, Lcom/autonavi/amapauto/offline/model/StorageInfo;->totalSize:J

    .line 105
    sub-long/2addr v8, v6

    .line 106
    iput-wide v8, v0, Lcom/autonavi/amapauto/offline/model/StorageInfo;->usedSize:J

    .line 108
    const-string p0, "no ext4 sdCard.availableSize={?},usedSize=={?}"

    .line 110
    new-array v2, v5, [Ljava/lang/Object;

    .line 112
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 115
    move-result-object v5

    .line 116
    aput-object v5, v2, v3

    .line 118
    iget-wide v5, v0, Lcom/autonavi/amapauto/offline/model/StorageInfo;->usedSize:J

    .line 120
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 123
    move-result-object v5

    .line 124
    aput-object v5, v2, v1

    .line 126
    invoke-static {v4, p0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    goto :goto_0

    .line 130
    :catchall_0
    move-exception p0

    .line 131
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 134
    move-result-object v2

    .line 135
    new-array v1, v1, [Ljava/lang/Object;

    .line 137
    aput-object p0, v1, v3

    .line 139
    invoke-static {v4, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    const-wide/16 v1, -0x1

    .line 144
    iput-wide v1, v0, Lcom/autonavi/amapauto/offline/model/StorageInfo;->totalSize:J

    .line 146
    :cond_0
    :goto_0
    return-object v0
.end method

.method public static n(I)[Lcom/autonavi/amapauto/offline/model/StorageInfo;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v2, v1, [Ljava/lang/Object;

    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v3

    .line 13
    const/4 v4, 0x0

    .line 14
    aput-object v3, v2, v4

    .line 16
    const-string v3, "AdapterStorageUtil"

    .line 18
    const-string v5, "[getDiskInfoList] type={?}"

    .line 20
    invoke-static {v3, v5, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    const/4 v2, 0x2

    .line 24
    if-eqz p0, :cond_3

    .line 26
    if-eq p0, v1, :cond_2

    .line 28
    if-eq p0, v2, :cond_1

    .line 30
    const/4 v5, 0x3

    .line 31
    if-eq p0, v5, :cond_0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-static {}, Ls1;->h()Ljava/util/List;

    .line 37
    move-result-object p0

    .line 38
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-static {}, Ls1;->e()Ljava/util/List;

    .line 45
    move-result-object p0

    .line 46
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-static {}, Ls1;->f()Ljava/util/List;

    .line 53
    move-result-object p0

    .line 54
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    invoke-static {}, Ls1;->e()Ljava/util/List;

    .line 61
    move-result-object p0

    .line 62
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    invoke-static {}, Ls1;->f()Ljava/util/List;

    .line 68
    move-result-object p0

    .line 69
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 72
    invoke-static {}, Ls1;->h()Ljava/util/List;

    .line 75
    move-result-object p0

    .line 76
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 79
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 82
    move-result p0

    .line 83
    new-array v5, v1, [Ljava/lang/Object;

    .line 85
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    move-result-object v6

    .line 89
    aput-object v6, v5, v4

    .line 91
    const-string v6, "[getDiskInfoList] storageList.size()={?}"

    .line 93
    invoke-static {v3, v6, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    if-lez p0, :cond_5

    .line 98
    new-array v5, p0, [Lcom/autonavi/amapauto/offline/model/StorageInfo;

    .line 100
    const/4 v6, 0x0

    .line 101
    :goto_1
    if-ge v6, p0, :cond_4

    .line 103
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 106
    move-result-object v7

    .line 107
    check-cast v7, Ls1$a;

    .line 109
    iget-object v8, v7, Ls1$a;->b:Ljava/lang/String;

    .line 111
    invoke-static {v8}, Ls1;->m(Ljava/lang/String;)Lcom/autonavi/amapauto/offline/model/StorageInfo;

    .line 114
    move-result-object v8

    .line 115
    iget-object v9, v7, Ls1$a;->b:Ljava/lang/String;

    .line 117
    iput-object v9, v8, Lcom/autonavi/amapauto/offline/model/StorageInfo;->path:Ljava/lang/String;

    .line 119
    iget v7, v7, Ls1$a;->a:I

    .line 121
    iput v7, v8, Lcom/autonavi/amapauto/offline/model/StorageInfo;->isExternalCard:I

    .line 123
    aput-object v8, v5, v6

    .line 125
    new-array v8, v2, [Ljava/lang/Object;

    .line 127
    aput-object v9, v8, v4

    .line 129
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    move-result-object v7

    .line 133
    aput-object v7, v8, v1

    .line 135
    const-string v7, "[getDiskInfoList] path={?},storageType={?}"

    .line 137
    invoke-static {v3, v7, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    add-int/lit8 v6, v6, 0x1

    .line 142
    goto :goto_1

    .line 143
    :cond_4
    return-object v5

    .line 144
    :cond_5
    new-array p0, v1, [Ljava/lang/Object;

    .line 146
    const v0, 0xbfb5649

    .line 149
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    move-result-object v0

    .line 153
    aput-object v0, p0, v4

    .line 155
    const-string v0, "Auto_Exception_Info_{?}"

    .line 157
    invoke-static {v3, v0, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    const/4 p0, 0x0

    .line 161
    return-object p0
.end method

.method public static o()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    const v1, 0x9c44

    .line 8
    invoke-virtual {v0, v1}, Lse;->getStringValue(I)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    const-string v3, "AdapterStorageUtil"

    .line 19
    if-eqz v1, :cond_0

    .line 21
    const-string v0, "getInnerPath GET_SDCARD_PATH is null"

    .line 23
    new-array v1, v2, [Ljava/lang/Object;

    .line 25
    invoke-static {v3, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    invoke-static {}, Lr50;->j()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    :cond_0
    const/4 v1, 0x1

    .line 33
    new-array v1, v1, [Ljava/lang/Object;

    .line 35
    aput-object v0, v1, v2

    .line 37
    const-string v2, "getInnerPath ES\u83b7\u53d6\u7684\u5185\u5361\u8def\u5f84\u4e3a {?}"

    .line 39
    invoke-static {v3, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    return-object v0
.end method

.method public static p()Ls1$a;
    .locals 3

    .line 1
    new-instance v0, Ls1$a;

    .line 3
    invoke-static {}, Ls1;->o()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v0, v1, v2}, Ls1$a;-><init>(Ljava/lang/String;I)V

    .line 11
    return-object v0
.end method

.method public static q()Ljava/util/List;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0, v0}, Ls1;->E(ZZ)Ljava/util/ArrayList;

    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public static r()Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, "getNativeLibPath nativeLibPath={?}"

    .line 3
    invoke-static {}, Lrv;->H()Lrv;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    const-string v2, ""

    .line 13
    const-string v3, "AdapterStorageUtil"

    .line 15
    const/4 v4, 0x0

    .line 16
    if-nez v1, :cond_0

    .line 18
    const-string v0, "getNativeLibPath lib path context is null"

    .line 20
    new-array v1, v4, [Ljava/lang/Object;

    .line 22
    invoke-static {v3, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    return-object v2

    .line 26
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 29
    move-result-object v5

    .line 30
    const/4 v6, 0x1

    .line 31
    :try_start_0
    const-string v7, "version"

    .line 33
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 36
    move-result-object v8

    .line 37
    invoke-virtual {v5, v8, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 40
    move-result-object v5

    .line 41
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 43
    invoke-virtual {v1, v7, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    new-instance v7, Ljava/io/File;

    .line 53
    invoke-direct {v7, v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_1

    .line 62
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_1

    .line 68
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    new-array v5, v6, [Ljava/lang/Object;

    .line 74
    aput-object v1, v5, v4

    .line 76
    invoke-static {v3, v0, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    return-object v1

    .line 80
    :catch_0
    const-string v1, "getTamperFix path null"

    .line 82
    new-array v5, v4, [Ljava/lang/Object;

    .line 84
    invoke-static {v3, v1, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    :cond_1
    invoke-static {}, Lrv;->H()Lrv;

    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 98
    move-result-object v1

    .line 99
    if-eqz v1, :cond_2

    .line 101
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 103
    new-array v2, v6, [Ljava/lang/Object;

    .line 105
    aput-object v1, v2, v4

    .line 107
    invoke-static {v3, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    return-object v1

    .line 111
    :cond_2
    const-string v0, "getNativeLibPath lib path is null"

    .line 113
    new-array v1, v4, [Ljava/lang/Object;

    .line 115
    invoke-static {v3, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    return-object v2
.end method

.method public static s()Ll70;
    .locals 4

    .line 1
    sget-object v0, Ls1;->i:Ljava/util/ArrayList;

    .line 3
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    sget-object v0, Ls1;->i:Ljava/util/ArrayList;

    .line 10
    invoke-static {}, Ls1;->D()Ljava/util/ArrayList;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 17
    sget-object v0, Ls1;->i:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 22
    move-result v0

    .line 23
    if-lez v0, :cond_1

    .line 25
    sget-object v0, Ls1;->i:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v0

    .line 31
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ll70;

    .line 43
    invoke-virtual {v1}, Ll70;->b()Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    const-string v3, "/proc"

    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_0

    .line 55
    return-object v1

    .line 56
    :cond_1
    const/4 v0, 0x0

    .line 57
    return-object v0
.end method

.method public static t(Ljava/lang/String;)J
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    .line 3
    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    .line 9
    move-result-wide v1

    .line 10
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 13
    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    mul-long v3, v3, v1

    .line 16
    return-wide v3

    .line 17
    :catch_0
    move-exception v0

    .line 18
    const/4 v1, 0x1

    .line 19
    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    const/4 v2, 0x0

    .line 22
    aput-object p0, v1, v2

    .line 24
    const-string p0, "AdapterStorageUtil"

    .line 26
    const-string v2, "getTotalDiskSpace fail path={?}"

    .line 28
    invoke-static {p0, v2, v0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 31
    const-wide/16 v0, -0x1

    .line 33
    return-wide v0
.end method

.method public static u(Ljava/io/File;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_3

    .line 4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_3

    .line 16
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_3

    .line 22
    array-length v1, p0

    .line 23
    if-lez v1, :cond_3

    .line 25
    array-length v1, p0

    .line 26
    const/4 v2, 0x0

    .line 27
    :goto_0
    if-ge v2, v1, :cond_3

    .line 29
    aget-object v3, p0, v2

    .line 31
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 34
    move-result-object v4

    .line 35
    const-string v5, "."

    .line 37
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v4

    .line 41
    if-nez v4, :cond_2

    .line 43
    const-string v4, ".."

    .line 45
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_0

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    .line 59
    move-result v4

    .line 60
    const/4 v5, 0x1

    .line 61
    if-eqz v4, :cond_1

    .line 63
    return v5

    .line 64
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_2

    .line 70
    invoke-static {v3}, Ls1;->u(Ljava/io/File;)Z

    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_2

    .line 76
    return v5

    .line 77
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 79
    goto :goto_0

    .line 80
    :cond_3
    return v0
.end method

.method public static v(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/autonavi/amapauto/utils/FileUtils;->replaceIllegalChar(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/io/File;

    .line 7
    sget-object v1, Ls1;->b:Ljava/lang/String;

    .line 9
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {v0}, Ls1;->u(Ljava/io/File;)Z

    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x2

    .line 17
    new-array v1, v1, [Ljava/lang/Object;

    .line 19
    const/4 v2, 0x0

    .line 20
    aput-object p0, v1, v2

    .line 22
    const/4 p0, 0x1

    .line 23
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 26
    move-result-object v2

    .line 27
    aput-object v2, v1, p0

    .line 29
    const-string p0, "AdapterStorageUtil"

    .line 31
    const-string v2, " hasData \u68c0\u6d4b\u662f\u5426\u6709\u5730\u56fe\u6570\u636e path={?},hasData={?}"

    .line 33
    invoke-static {p0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    return v0
.end method

.method public static w(Ljava/lang/String;Ls1$b;)Z
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/autonavi/amapauto/utils/FileUtils;->replaceIllegalChar(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Ls1$b;->a:Ls1$b;

    .line 7
    const/4 v1, 0x1

    .line 8
    const-string v2, "AdapterStorageUtil"

    .line 10
    const/4 v3, 0x0

    .line 11
    if-ne v0, p1, :cond_1

    .line 13
    new-array p1, v1, [Ljava/lang/Object;

    .line 15
    aput-object p0, p1, v3

    .line 17
    const-string v0, " \u68c0\u6d4b\u662f\u5426\u6709\u5730\u56fe\u6570\u636e {?}"

    .line 19
    invoke-static {v2, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    invoke-static {p0}, Ls1;->y(Ljava/lang/String;)Z

    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_0

    .line 28
    new-array p1, v1, [Ljava/lang/Object;

    .line 30
    aput-object p0, p1, v3

    .line 32
    const-string p0, " {?} \u4e0d\u53ef\u8bfb\u5199"

    .line 34
    invoke-static {v2, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    return v3

    .line 38
    :cond_0
    invoke-static {p0}, Ls1;->v(Ljava/lang/String;)Z

    .line 41
    move-result p0

    .line 42
    return p0

    .line 43
    :cond_1
    sget-object v0, Ls1$b;->d:Ls1$b;

    .line 45
    if-ne v0, p1, :cond_5

    .line 47
    new-array p1, v1, [Ljava/lang/Object;

    .line 49
    aput-object p0, p1, v3

    .line 51
    const-string v0, " \u68c0\u6d4b\u662f\u5426\u6709\u5347\u7ea7\u6570\u636e {?}"

    .line 53
    invoke-static {v2, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-static {p0}, Lcom/autonavi/amapauto/utils/FileUtils;->replaceIllegalChar(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 60
    new-instance p1, Ljava/io/File;

    .line 62
    sget-object v0, Ls1;->f:Ljava/lang/String;

    .line 64
    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_4

    .line 73
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_4

    .line 79
    const-string p1, ""

    .line 81
    invoke-static {p1, p0}, Ls1;->A(Ljava/lang/String;Ljava/lang/String;)Z

    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_3

    .line 87
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 90
    move-result p0

    .line 91
    if-eqz p0, :cond_2

    .line 93
    goto :goto_0

    .line 94
    :cond_2
    return v1

    .line 95
    :cond_3
    :goto_0
    return v3

    .line 96
    :cond_4
    const-string p0, " detail_list\u4e0d\u5b58\u5728"

    .line 98
    new-array p1, v3, [Ljava/lang/Object;

    .line 100
    invoke-static {v2, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    goto :goto_1

    .line 104
    :cond_5
    sget-object v0, Ls1$b;->e:Ls1$b;

    .line 106
    if-ne v0, p1, :cond_7

    .line 108
    new-array p1, v1, [Ljava/lang/Object;

    .line 110
    aput-object p0, p1, v3

    .line 112
    const-string v0, " \u68c0\u6d4b\u662f\u5426\u6709\u65e5\u5fd7\u6570\u636e {?}"

    .line 114
    invoke-static {v2, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    invoke-static {p0}, Lcom/autonavi/amapauto/utils/FileUtils;->replaceIllegalChar(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    move-result-object p0

    .line 121
    new-instance p1, Ljava/io/File;

    .line 123
    sget-object v0, Ls1;->g:Ljava/lang/String;

    .line 125
    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_6

    .line 134
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_6

    .line 140
    invoke-static {p0}, Ls1;->y(Ljava/lang/String;)Z

    .line 143
    move-result p0

    .line 144
    if-eqz p0, :cond_6

    .line 146
    return v1

    .line 147
    :cond_6
    const-string p0, " amapautolog\u4e0d\u5b58\u5728"

    .line 149
    new-array p1, v3, [Ljava/lang/Object;

    .line 151
    invoke-static {v2, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    :cond_7
    :goto_1
    return v3
.end method

.method public static x(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p0, v1, v2

    .line 7
    const-string v3, "AdapterStorageUtil"

    .line 9
    const-string v4, " \u68c0\u67e5\u8bfb\u72b6\u6001 {?}"

    .line 11
    invoke-static {v3, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 20
    return v2

    .line 21
    :cond_0
    invoke-static {p0}, Lcom/autonavi/amapauto/utils/FileUtils;->replaceIllegalChar(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    new-instance v1, Ljava/io/File;

    .line 27
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 33
    move-result v4

    .line 34
    if-nez v4, :cond_1

    .line 36
    new-array v0, v0, [Ljava/lang/Object;

    .line 38
    aput-object p0, v0, v2

    .line 40
    const-string p0, "al_path_unreadable path={?} \u68c0\u67e5\u8bfb\u72b6\u6001\uff0c\u6587\u4ef6\u6216\u6587\u4ef6\u5939\u4e0d\u5b58\u5728"

    .line 42
    invoke-static {v3, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    return v2

    .line 46
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_2

    .line 52
    new-array v0, v0, [Ljava/lang/Object;

    .line 54
    aput-object p0, v0, v2

    .line 56
    const-string p0, "al_path_unreadable path={?} \u68c0\u67e5\u8bfb\u72b6\u6001\uff0c\u4e0d\u662f\u76ee\u5f55"

    .line 58
    invoke-static {v3, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    return v2

    .line 62
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 65
    move-result-object p0

    .line 66
    if-eqz p0, :cond_3

    .line 68
    array-length p0, p0

    .line 69
    if-lez p0, :cond_3

    .line 71
    return v0

    .line 72
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    .line 75
    move-result p0

    .line 76
    return p0
.end method

.method public static y(Ljava/lang/String;)Z
    .locals 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v3

    .line 10
    const/4 v4, 0x0

    .line 11
    aput-object v3, v2, v4

    .line 13
    const-string v3, "AdapterStorageUtil"

    .line 15
    const-string v5, "\u5f53\u524d\u8bbe\u5907\u7248\u672c\u53f7 -- {?}"

    .line 17
    invoke-static {v3, v5, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    new-array v2, v1, [Ljava/lang/Object;

    .line 22
    aput-object p0, v2, v4

    .line 24
    const-string v5, " \u68c0\u67e5\u5199\u72b6\u6001 {?}"

    .line 26
    invoke-static {v3, v5, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 35
    return v4

    .line 36
    :cond_0
    invoke-static {p0}, Lcom/autonavi/amapauto/utils/FileUtils;->replaceIllegalChar(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 40
    new-instance v2, Ljava/io/File;

    .line 42
    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 48
    move-result v5

    .line 49
    if-nez v5, :cond_1

    .line 51
    new-array v0, v1, [Ljava/lang/Object;

    .line 53
    aput-object p0, v0, v4

    .line 55
    const-string p0, "al_path_unwriteable path={?} \u68c0\u67e5\u5199\u72b6\u6001\uff0c\u6587\u4ef6\u6216\u6587\u4ef6\u5939\u4e0d\u5b58\u5728"

    .line 57
    invoke-static {v3, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    return v4

    .line 61
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_2

    .line 67
    new-array v0, v1, [Ljava/lang/Object;

    .line 69
    aput-object p0, v0, v4

    .line 71
    const-string p0, "al_path_unwriteable path={?} \u68c0\u67e5\u5199\u72b6\u6001\uff0c\u4e0d\u662f\u76ee\u5f55"

    .line 73
    invoke-static {v3, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    return v4

    .line 77
    :cond_2
    const/16 v2, 0x17

    .line 79
    if-lt v0, v2, :cond_3

    .line 81
    const/16 v2, 0x1e

    .line 83
    if-ge v0, v2, :cond_3

    .line 85
    const/4 v0, 0x1

    .line 86
    goto :goto_0

    .line 87
    :cond_3
    const/4 v0, 0x0

    .line 88
    :goto_0
    if-eqz v0, :cond_4

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    .line 92
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    const-string v5, "AutoPathTempDir"

    .line 97
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 103
    move-result-wide v5

    .line 104
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v2

    .line 111
    invoke-static {p0}, Lcom/autonavi/amapauto/utils/FileUtils;->replaceIllegalChar(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    move-result-object p0

    .line 115
    new-instance v5, Ljava/io/File;

    .line 117
    invoke-direct {v5, p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    goto :goto_1

    .line 121
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 123
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    const-string v5, "AutoPathTempFile"

    .line 128
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 134
    move-result-wide v5

    .line 135
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 138
    const-string v5, ".txt"

    .line 140
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object v2

    .line 147
    invoke-static {p0}, Lcom/autonavi/amapauto/utils/FileUtils;->replaceIllegalChar(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    move-result-object p0

    .line 151
    new-instance v5, Ljava/io/File;

    .line 153
    invoke-direct {v5, p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :goto_1
    const/4 v2, 0x2

    .line 157
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 160
    move-result v6

    .line 161
    if-eqz v6, :cond_5

    .line 163
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 166
    move-result p0

    .line 167
    return p0

    .line 168
    :cond_5
    if-eqz v0, :cond_6

    .line 170
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 173
    move-result v0

    .line 174
    const-string v6, " \u68c0\u67e5\u5199\u72b6\u6001\uff0c\u521b\u5efa\u6587\u4ef6\u5939\u662f\u5426\u6210\u529f={?}"

    .line 176
    new-array v7, v1, [Ljava/lang/Object;

    .line 178
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 181
    move-result-object v8

    .line 182
    aput-object v8, v7, v4

    .line 184
    invoke-static {v3, v6, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    goto :goto_2

    .line 188
    :cond_6
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 191
    move-result v0

    .line 192
    const-string v6, " \u68c0\u67e5\u5199\u72b6\u6001\uff0c\u521b\u5efa\u6587\u4ef6\u662f\u5426\u6210\u529f={?}"

    .line 194
    new-array v7, v1, [Ljava/lang/Object;

    .line 196
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 199
    move-result-object v8

    .line 200
    aput-object v8, v7, v4

    .line 202
    invoke-static {v3, v6, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    :goto_2
    if-eqz v0, :cond_7

    .line 207
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 210
    move-result v0

    .line 211
    const-string v5, " \u68c0\u67e5\u5199\u72b6\u6001\uff0cdeleteSucc={?}"

    .line 213
    new-array v6, v1, [Ljava/lang/Object;

    .line 215
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 218
    move-result-object v0

    .line 219
    aput-object v0, v6, v4

    .line 221
    invoke-static {v3, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    return v1

    .line 225
    :cond_7
    const-string v0, "al_path_unwriteable path={?} \u68c0\u67e5\u5199\u72b6\u6001\uff0c\u4e0d\u53ef\u5199"

    .line 227
    new-array v5, v1, [Ljava/lang/Object;

    .line 229
    aput-object p0, v5, v4

    .line 231
    invoke-static {v3, v0, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    goto :goto_3

    .line 235
    :catch_0
    move-exception v0

    .line 236
    new-array v2, v2, [Ljava/lang/Object;

    .line 238
    aput-object p0, v2, v4

    .line 240
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 243
    move-result-object p0

    .line 244
    aput-object p0, v2, v1

    .line 246
    const-string p0, "al_path_unwriteable path={?} \u53c2\u6570\u9519\u8bef\uff0c\u68c0\u67e5\u5199\u72b6\u6001\uff0c\u4e0d\u53ef\u5199  {?}"

    .line 248
    invoke-static {v3, p0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    goto :goto_3

    .line 252
    :catch_1
    move-exception v0

    .line 253
    new-array v2, v2, [Ljava/lang/Object;

    .line 255
    aput-object p0, v2, v4

    .line 257
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 260
    move-result-object p0

    .line 261
    aput-object p0, v2, v1

    .line 263
    const-string p0, "al_path_unwriteable path={?} \u68c0\u67e5\u5199\u72b6\u6001\uff0c\u4e0d\u53ef\u5199 {?}"

    .line 265
    invoke-static {v3, p0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    :goto_3
    return v4
.end method

.method public static z(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {}, Ls1;->o()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_1

    .line 15
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_1

    .line 21
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_1

    .line 27
    invoke-static {p0, v1}, Ls1;->A(Ljava/lang/String;Ljava/lang/String;)Z

    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_2

    .line 33
    :cond_1
    const/4 v0, 0x1

    .line 34
    :cond_2
    return v0
.end method
