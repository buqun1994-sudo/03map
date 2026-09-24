.class public abstract Lu40;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu40$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 6
    sput-object v0, Lu40;->a:Ljava/util/concurrent/locks/Lock;

    .line 8
    return-void
.end method

.method public static a(Ljava/io/File;)Lu40$a;
    .locals 7

    .line 1
    if-nez p0, :cond_0

    .line 3
    sget-object p0, Lu40$a;->f:Lu40$a;

    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 v0, 0x2

    .line 7
    new-array v1, v0, [Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 12
    move-result v2

    .line 13
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x0

    .line 18
    aput-object v2, v1, v3

    .line 20
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 23
    move-result v2

    .line 24
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    move-result-object v2

    .line 28
    const/4 v4, 0x1

    .line 29
    aput-object v2, v1, v4

    .line 31
    const-string v2, "[offline]OfflineFileUtil"

    .line 33
    const-string v5, "isPathCanUse exists={?}, isDir={?}"

    .line 35
    invoke-static {v2, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_7

    .line 44
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_1

    .line 50
    goto/16 :goto_0

    .line 52
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    const-string v5, "AutoPathTempFile"

    .line 59
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 65
    move-result-wide v5

    .line 66
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    new-instance v5, Ljava/io/File;

    .line 75
    invoke-direct {v5, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    new-array v0, v0, [Ljava/lang/Object;

    .line 80
    aput-object v1, v0, v3

    .line 82
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 85
    move-result v1

    .line 86
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 89
    move-result-object v1

    .line 90
    aput-object v1, v0, v4

    .line 92
    const-string v1, "isPathCanUse testFile={?} exists={?}"

    .line 94
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_2

    .line 103
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_2

    .line 109
    sget-object p0, Lu40$a;->d:Lu40$a;

    .line 111
    return-object p0

    .line 112
    :cond_2
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_3

    .line 118
    const-string p0, "isPathCanUse createNewFile=false"

    .line 120
    new-array v0, v3, [Ljava/lang/Object;

    .line 122
    invoke-static {v2, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    sget-object p0, Lu40$a;->b:Lu40$a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    return-object p0

    .line 128
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 131
    move-result v0

    .line 132
    const-string v1, "isPathCanUse testFile.delete=false"

    .line 134
    if-nez v0, :cond_4

    .line 136
    new-array p0, v3, [Ljava/lang/Object;

    .line 138
    invoke-static {v2, v1, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    sget-object p0, Lu40$a;->d:Lu40$a;

    .line 143
    return-object p0

    .line 144
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 146
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    const-string v4, "AutoPathTempDir"

    .line 151
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 157
    move-result-wide v4

    .line 158
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object v0

    .line 165
    new-instance v4, Ljava/io/File;

    .line 167
    invoke-direct {v4, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 173
    move-result p0

    .line 174
    if-nez p0, :cond_5

    .line 176
    const-string p0, "isPathCanUse testFile.mkdirs=false"

    .line 178
    new-array v0, v3, [Ljava/lang/Object;

    .line 180
    invoke-static {v2, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    sget-object p0, Lu40$a;->c:Lu40$a;

    .line 185
    return-object p0

    .line 186
    :cond_5
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 189
    move-result p0

    .line 190
    if-nez p0, :cond_6

    .line 192
    new-array p0, v3, [Ljava/lang/Object;

    .line 194
    invoke-static {v2, v1, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    sget-object p0, Lu40$a;->e:Lu40$a;

    .line 199
    return-object p0

    .line 200
    :cond_6
    sget-object p0, Lu40$a;->a:Lu40$a;

    .line 202
    return-object p0

    .line 203
    :catch_0
    move-exception p0

    .line 204
    new-array v0, v4, [Ljava/lang/Object;

    .line 206
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 209
    move-result-object p0

    .line 210
    aput-object p0, v0, v3

    .line 212
    const-string p0, "isPathCanUse createNewFile IOException:{?}"

    .line 214
    invoke-static {v2, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    sget-object p0, Lu40$a;->b:Lu40$a;

    .line 219
    return-object p0

    .line 220
    :cond_7
    :goto_0
    sget-object p0, Lu40$a;->f:Lu40$a;

    .line 222
    return-object p0
.end method

.method public static b(Ljava/lang/String;)Lu40$a;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    sget-object p0, Lu40$a;->f:Lu40$a;

    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    new-array v0, v0, [Ljava/lang/Object;

    .line 13
    const/4 v1, 0x0

    .line 14
    aput-object p0, v0, v1

    .line 16
    const-string v1, "[offline]OfflineFileUtil"

    .line 18
    const-string v2, "isPathCanUse path={?}"

    .line 20
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    invoke-static {p0}, Lcom/autonavi/amapauto/utils/FileUtils;->replaceIllegalChar(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    new-instance v0, Ljava/io/File;

    .line 29
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-static {v0}, Lu40;->a(Ljava/io/File;)Lu40$a;

    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method
