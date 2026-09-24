.class public Lda;
.super Lfi;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lfi;-><init>()V

    .line 4
    const/16 v0, 0x96

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, v1, v0, v1}, Lac;->d(IIII)V

    .line 10
    return-void
.end method

.method public static e()Ljava/lang/String;
    .locals 11

    .line 1
    const-string v0, ""

    .line 3
    const-string v1, "([^\\s]+)\\s+"

    .line 5
    const-string v2, "\\w+\\s+"

    .line 7
    const-string v3, " "

    .line 9
    const-string v4, "TAG_ADAPTER"

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x1

    .line 13
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    .line 15
    new-instance v8, Ljava/io/FileReader;

    .line 17
    const-string v9, "/proc/version"

    .line 19
    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 22
    const/16 v9, 0x100

    .line 24
    invoke-direct {v7, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 30
    move-result-object v8

    .line 31
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 34
    move-result-object v9

    .line 35
    new-instance v10, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 56
    new-instance v7, Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v2, "\\(([^\\s@]+(?:@[^\\s.]+)?)\\)\\s+"

    .line 72
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v2, "\\((?:[^(]*\\([^)]*\\))*[^)]*\\)\\s+"

    .line 77
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, "(?:SMP\\s+)?"

    .line 85
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, "(?:PREEMPT\\s+)?"

    .line 90
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v1, "(\\w+\\s+\\w+\\s+\\w+\\s+[^\\s]+\\s+\\w+\\s+\\w+\\s+)"

    .line 95
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, "(\\w+\\s+\\w+\\s+[^\\s]+\\s[^\\)]+\\))\\s+"

    .line 100
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, "(.+)"

    .line 105
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object v1

    .line 112
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v1, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 123
    move-result v2

    .line 124
    if-nez v2, :cond_0

    .line 126
    const-string v0, "Regex did not match on /proc/version: {?}"

    .line 128
    new-array v1, v6, [Ljava/lang/Object;

    .line 130
    aput-object v8, v1, v5

    .line 132
    invoke-static {v4, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    .line 139
    move-result v2

    .line 140
    const/4 v7, 0x4

    .line 141
    if-ge v2, v7, :cond_1

    .line 143
    const-string v0, "Regex match on /proc/version only returned {?} {?}"

    .line 145
    const/4 v2, 0x2

    .line 146
    new-array v2, v2, [Ljava/lang/Object;

    .line 148
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    .line 151
    move-result v1

    .line 152
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    move-result-object v1

    .line 156
    aput-object v1, v2, v5

    .line 158
    const-string v1, " groups"

    .line 160
    aput-object v1, v2, v6

    .line 162
    invoke-static {v4, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    goto :goto_0

    .line 166
    :cond_1
    const-string v2, "get version {?} "

    .line 168
    new-array v7, v6, [Ljava/lang/Object;

    .line 170
    const/4 v8, 0x5

    .line 171
    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 174
    move-result-object v9

    .line 175
    aput-object v9, v7, v5

    .line 177
    invoke-static {v4, v2, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 187
    move-result-object v1

    .line 188
    const/4 v2, 0x3

    .line 189
    aget-object v1, v1, v2

    .line 191
    const-string v2, "("

    .line 193
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 196
    move-result-object v1

    .line 197
    const-string v2, ")"

    .line 199
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 202
    move-result-object v0

    .line 203
    return-object v0

    .line 204
    :catchall_0
    move-exception v0

    .line 205
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 208
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    new-array v1, v6, [Ljava/lang/Object;

    .line 212
    aput-object v0, v1, v5

    .line 214
    const-string v0, "IO Exception when getting kernel version for Device Info screen {?}"

    .line 216
    invoke-static {v4, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    :goto_0
    const/4 v0, 0x0

    .line 220
    return-object v0
.end method


# virtual methods
.method public createRealChannelImpl()Leq;
    .locals 2

    .line 1
    const-string v0, "FeigeA950"

    .line 3
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Lj9;

    .line 13
    invoke-direct {v0}, Lj9;-><init>()V

    .line 16
    invoke-virtual {v0}, Lj9;->g()Lfi;

    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/16 v0, 0x3b07

    .line 23
    invoke-virtual {p0, v0}, Lda;->getStringValue(I)Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0, p0}, Lre;->a(Ljava/lang/String;Leq;)Leq;

    .line 30
    move-result-object v0

    .line 31
    :goto_0
    return-object v0
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "HlydV96"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 9
    const-string v0, "HlydV98"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 17
    const-string v0, "HlydV98P"

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 25
    const-string v0, "HlydV98I"

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 33
    const-string v0, "GsX98"

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 41
    const-string v0, "A800"

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 49
    const-string v0, "FeigeA920"

    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_1

    .line 57
    const-string v0, "Plus-4G"

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_0

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const/4 p1, 0x0

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 69
    :goto_1
    return p1
.end method

.method public getBooleanValue(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x2712

    .line 3
    if-eq p1, v0, :cond_0

    .line 5
    invoke-super {p0, p1}, Lac;->getBooleanValue(I)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const-string p1, "persist.sys.screen_full"

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p1, v0}, Lvf0;->b(Ljava/lang/String;Z)Z

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public getSatelliteType(I)I
    .locals 1

    .line 1
    const/16 v0, 0x64

    .line 3
    if-le p1, v0, :cond_0

    .line 5
    sget p1, Luy;->b:I

    .line 7
    return p1

    .line 8
    :cond_0
    sget p1, Luy;->a:I

    .line 10
    return p1
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 5

    .line 1
    const/16 v0, 0x3b07

    .line 3
    if-eq p1, v0, :cond_0

    .line 5
    goto/16 :goto_2

    .line 7
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 9
    invoke-static {}, Lda;->e()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-static {}, Lrv;->H()Lrv;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lrv;->y()Landroid/app/Application;

    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 24
    move-result-object v2

    .line 25
    const-string v3, "xiaojing.properties"

    .line 27
    invoke-virtual {p0, v3, v2}, Lac;->initProperties(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Properties;

    .line 30
    move-result-object v2

    .line 31
    const-string v3, "FeigeA950"

    .line 33
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_1

    .line 39
    const-string v0, "C08010017006"

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {p0, v0}, Lda;->f(Ljava/lang/String;)Z

    .line 45
    move-result v3

    .line 46
    const-string v4, ""

    .line 48
    if-eqz v3, :cond_4

    .line 50
    if-eqz v2, :cond_4

    .line 52
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_2

    .line 58
    invoke-virtual {v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    move-object v1, v4

    .line 64
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_3

    .line 70
    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    move-object v0, v1

    .line 76
    goto :goto_1

    .line 77
    :cond_4
    if-eqz v2, :cond_5

    .line 79
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_5

    .line 85
    invoke-virtual {v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_6

    .line 95
    const/16 v0, 0x5f

    .line 97
    const/4 v3, 0x0

    .line 98
    invoke-virtual {p0, v1, v0, v3, v2}, Lac;->getDeviceCustomer(Ljava/lang/String;CILjava/util/Properties;)Ljava/lang/String;

    .line 101
    move-result-object v0

    .line 102
    goto :goto_1

    .line 103
    :cond_5
    move-object v0, v4

    .line 104
    :cond_6
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 107
    move-result v1

    .line 108
    if-nez v1, :cond_7

    .line 110
    return-object v0

    .line 111
    :cond_7
    :goto_2
    invoke-super {p0, p1}, Lac;->getStringValue(I)Ljava/lang/String;

    .line 114
    move-result-object p1

    .line 115
    return-object p1
.end method
