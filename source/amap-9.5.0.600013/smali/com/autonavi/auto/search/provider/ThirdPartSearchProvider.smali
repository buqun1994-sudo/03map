.class public Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;
    }
.end annotation


# static fields
.field public static final e:Landroid/content/UriMatcher;

.field public static final f:Landroid/net/Uri;


# instance fields
.field public a:Ljava/util/List;

.field public b:Ljava/util/List;

.field public c:Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

.field public d:Lf80$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/UriMatcher;

    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 7
    sput-object v0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->e:Landroid/content/UriMatcher;

    .line 9
    const-string v1, "search_poi"

    .line 11
    const/4 v2, 0x1

    .line 12
    const-string v3, "com.autonavi.amapauto.provider.search"

    .line 14
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    const-string v1, "home_company_poi"

    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 23
    const-string v1, "get_fav_poi"

    .line 25
    const/4 v2, 0x4

    .line 26
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 29
    const-string v1, "param"

    .line 31
    const/4 v2, 0x5

    .line 32
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 35
    const-string v0, "content://com.autonavi.amapauto.provider.search/param"

    .line 37
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->f:Landroid/net/Uri;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 4
    sget-object v0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;->a:Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

    .line 6
    iput-object v0, p0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->c:Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

    .line 8
    new-instance v0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$a;

    .line 10
    invoke-direct {v0, p0}, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$a;-><init>(Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;)V

    .line 13
    iput-object v0, p0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->d:Lf80$a;

    .line 15
    return-void
.end method

.method public static synthetic a(Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->a:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->a:Ljava/util/List;

    .line 3
    return-object p1
.end method

.method public static synthetic c(Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;)Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->c:Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

    .line 3
    return-object p1
.end method


# virtual methods
.method public final d([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .line 1
    new-instance v0, Landroid/database/MatrixCursor;

    .line 3
    invoke-direct {v0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->a:Ljava/util/List;

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_3

    .line 11
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 14
    move-result v1

    .line 15
    if-lez v1, :cond_3

    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    iget-object v3, p0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->a:Ljava/util/List;

    .line 20
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 23
    move-result v3

    .line 24
    if-ge v1, v3, :cond_3

    .line 26
    iget-object v3, p0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->a:Ljava/util/List;

    .line 28
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

    .line 34
    array-length v4, p1

    .line 35
    new-array v5, v4, [Ljava/lang/Object;

    .line 37
    const/4 v6, 0x0

    .line 38
    :goto_1
    if-ge v6, v4, :cond_2

    .line 40
    sget-object v7, Lbh0$a;->a:Lbh0$a;

    .line 42
    iget v8, v3, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->homecopType:I

    .line 44
    const/4 v9, 0x1

    .line 45
    if-ne v8, v9, :cond_0

    .line 47
    sget-object v7, Lbh0$a;->b:Lbh0$a;

    .line 49
    goto :goto_2

    .line 50
    :cond_0
    const/4 v9, 0x2

    .line 51
    if-ne v8, v9, :cond_1

    .line 53
    sget-object v7, Lbh0$a;->c:Lbh0$a;

    .line 55
    :cond_1
    :goto_2
    aget-object v8, p1, v6

    .line 57
    const/4 v9, 0x0

    .line 58
    invoke-virtual {p0, v3, v8, v7, v9}, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->g(Lcom/autonavi/amapauto/jni/protocol/data/PoiData;Ljava/lang/String;Lbh0$a;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    move-result-object v7

    .line 62
    aput-object v7, v5, v6

    .line 64
    add-int/lit8 v6, v6, 0x1

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 70
    add-int/lit8 v1, v1, 0x1

    .line 72
    goto :goto_0

    .line 73
    :cond_3
    iget-object v1, p0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->b:Ljava/util/List;

    .line 75
    if-eqz v1, :cond_5

    .line 77
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 80
    move-result v1

    .line 81
    if-lez v1, :cond_5

    .line 83
    iget-object v1, p0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->b:Ljava/util/List;

    .line 85
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 88
    move-result v1

    .line 89
    :goto_3
    if-ge v2, v1, :cond_5

    .line 91
    iget-object v3, p0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->b:Ljava/util/List;

    .line 93
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Lcom/autonavi/amapauto/jni/protocol/data/CitysuggestionData;

    .line 99
    array-length v4, p1

    .line 100
    new-array v5, v4, [Ljava/lang/Object;

    .line 102
    const/16 v6, 0xb

    .line 104
    :goto_4
    if-ge v6, v4, :cond_4

    .line 106
    aget-object v7, p1, v6

    .line 108
    sget-object v8, Lbh0$a;->a:Lbh0$a;

    .line 110
    invoke-virtual {p0, v3, v7, v8}, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->f(Lcom/autonavi/amapauto/jni/protocol/data/CitysuggestionData;Ljava/lang/String;Lbh0$a;)Ljava/lang/Object;

    .line 113
    move-result-object v7

    .line 114
    aput-object v7, v5, v6

    .line 116
    add-int/lit8 v6, v6, 0x1

    .line 118
    goto :goto_4

    .line 119
    :cond_4
    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 122
    add-int/lit8 v2, v2, 0x1

    .line 124
    goto :goto_3

    .line 125
    :cond_5
    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final e(I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .line 1
    invoke-static {}, La7;->c()La7;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, La7;->d()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    invoke-static {}, La7;->c()La7;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {}, Lrv;->H()Lrv;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lrv;->y()Landroid/app/Application;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, La7;->h(Landroid/content/Context;)V

    .line 26
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 29
    move-result-wide v0

    .line 30
    :cond_1
    invoke-static {}, La7;->c()La7;

    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, La7;->d()Z

    .line 37
    move-result v2

    .line 38
    const-wide/16 v3, 0x64

    .line 40
    const/4 v5, 0x0

    .line 41
    if-nez v2, :cond_2

    .line 43
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    nop

    .line 48
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 51
    move-result-wide v2

    .line 52
    sub-long/2addr v2, v0

    .line 53
    const-wide/16 v6, 0x1388

    .line 55
    cmp-long v4, v2, v6

    .line 57
    if-ltz v4, :cond_1

    .line 59
    return-object v5

    .line 60
    :cond_2
    const/4 v0, 0x2

    .line 61
    const/4 v1, 0x0

    .line 62
    const/4 v2, 0x1

    .line 63
    if-ne v2, p1, :cond_5

    .line 65
    invoke-virtual {p0, p3, p4}, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->h([Ljava/lang/String;Ljava/lang/String;)Z

    .line 68
    move-result p1

    .line 69
    if-nez p1, :cond_3

    .line 71
    return-object v5

    .line 72
    :cond_3
    invoke-virtual {p0}, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->j()V

    .line 75
    new-instance p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;

    .line 77
    invoke-direct {p1}, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;-><init>()V

    .line 80
    invoke-static {p3}, Lbh0;->c([Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object v6

    .line 84
    iput-object v6, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->keyword:Ljava/lang/String;

    .line 86
    invoke-static {p3, v2}, Lbh0;->e([Ljava/lang/String;I)D

    .line 89
    move-result-wide v6

    .line 90
    iput-wide v6, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->centerLat:D

    .line 92
    invoke-static {p3, v0}, Lbh0;->e([Ljava/lang/String;I)D

    .line 95
    move-result-wide v6

    .line 96
    iput-wide v6, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->centerLon:D

    .line 98
    invoke-static {p3}, Lbh0;->d([Ljava/lang/String;)I

    .line 101
    move-result v0

    .line 102
    iput v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->maxCount:I

    .line 104
    invoke-static {p3}, Lbh0;->i([Ljava/lang/String;)I

    .line 107
    move-result v0

    .line 108
    iput v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->searchType:I

    .line 110
    const/16 v0, 0x13ee

    .line 112
    iput v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->requestId:I

    .line 114
    invoke-static {p3}, Lbh0;->g([Ljava/lang/String;)I

    .line 117
    move-result v0

    .line 118
    iput v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->needClassify:I

    .line 120
    invoke-static {p3}, Lbh0;->h([Ljava/lang/String;)I

    .line 123
    move-result v0

    .line 124
    iput v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->needSort:I

    .line 126
    invoke-static {p3}, Lbh0;->f([Ljava/lang/String;)I

    .line 129
    move-result v0

    .line 130
    iput v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->needChildPoi:I

    .line 132
    invoke-static {p3}, Lbh0;->b([Ljava/lang/String;)Ljava/lang/String;

    .line 135
    move-result-object v0

    .line 136
    iput-object v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->classify:Ljava/lang/String;

    .line 138
    invoke-static {p3}, Lbh0;->j([Ljava/lang/String;)Ljava/lang/String;

    .line 141
    move-result-object v0

    .line 142
    iput-object v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->sort:Ljava/lang/String;

    .line 144
    invoke-static {p3}, Lbh0;->a([Ljava/lang/String;)Ljava/lang/String;

    .line 147
    move-result-object p3

    .line 148
    iput-object p3, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->city:Ljava/lang/String;

    .line 150
    iput v2, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->requestType:I

    .line 152
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 155
    move-result-object p3

    .line 156
    invoke-virtual {p3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 159
    move-result p3

    .line 160
    if-eqz p3, :cond_4

    .line 162
    iput v2, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->sortOrder:I

    .line 164
    goto :goto_1

    .line 165
    :cond_4
    iput v1, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->sortOrder:I

    .line 167
    :goto_1
    invoke-static {}, Lf80;->c()Lf80;

    .line 170
    move-result-object p3

    .line 171
    iget-object p4, p0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->d:Lf80$a;

    .line 173
    invoke-virtual {p3, p1, p4}, Lf80;->d(Lcom/autonavi/amapauto/jni/protocol/data/SearchData;Lf80$a;)V

    .line 176
    goto :goto_2

    .line 177
    :cond_5
    if-ne v0, p1, :cond_6

    .line 179
    invoke-virtual {p0}, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->j()V

    .line 182
    invoke-static {}, Lf80;->c()Lf80;

    .line 185
    move-result-object p1

    .line 186
    iget-object p3, p0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->d:Lf80$a;

    .line 188
    const/4 p4, 0x3

    .line 189
    invoke-virtual {p1, p3, p4}, Lf80;->b(Lf80$a;I)V

    .line 192
    goto :goto_2

    .line 193
    :cond_6
    const/4 p3, 0x4

    .line 194
    if-ne p3, p1, :cond_7

    .line 196
    invoke-virtual {p0}, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->j()V

    .line 199
    invoke-static {}, Lf80;->c()Lf80;

    .line 202
    move-result-object p1

    .line 203
    iget-object p3, p0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->d:Lf80$a;

    .line 205
    invoke-virtual {p1, p3, v1}, Lf80;->b(Lf80$a;I)V

    .line 208
    :cond_7
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 211
    move-result-wide p3

    .line 212
    :cond_8
    iget-object p1, p0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->c:Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

    .line 214
    sget-object v0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;->b:Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

    .line 216
    if-ne p1, v0, :cond_a

    .line 218
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    goto :goto_3

    .line 222
    :catch_1
    move-exception p1

    .line 223
    const-string v0, "Exception={?}"

    .line 225
    new-array v2, v1, [Ljava/lang/Object;

    .line 227
    const-string v6, "ThirdPartSearchProvider"

    .line 229
    invoke-static {v6, v0, p1, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 232
    :goto_3
    iget-object p1, p0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->c:Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

    .line 234
    sget-object v0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;->b:Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

    .line 236
    if-eq p1, v0, :cond_9

    .line 238
    goto :goto_4

    .line 239
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 242
    move-result-wide v6

    .line 243
    sub-long/2addr v6, p3

    .line 244
    const-wide/16 v8, 0x7530

    .line 246
    cmp-long p1, v6, v8

    .line 248
    if-ltz p1, :cond_8

    .line 250
    sget-object p1, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;->a:Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

    .line 252
    iput-object p1, p0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->c:Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

    .line 254
    return-object v5

    .line 255
    :cond_a
    :goto_4
    iget-object p1, p0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->a:Ljava/util/List;

    .line 257
    if-nez p1, :cond_b

    .line 259
    return-object v5

    .line 260
    :cond_b
    invoke-virtual {p0, p2}, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->d([Ljava/lang/String;)Landroid/database/Cursor;

    .line 263
    move-result-object p1

    .line 264
    return-object p1
.end method

.method public final f(Lcom/autonavi/amapauto/jni/protocol/data/CitysuggestionData;Ljava/lang/String;Lbh0$a;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 p3, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 4
    return-object p3

    .line 5
    :cond_0
    const-string v0, "city_suggestion_name"

    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    iget-object p1, p1, Lcom/autonavi/amapauto/jni/protocol/data/CitysuggestionData;->cityname:Ljava/lang/String;

    .line 15
    return-object p1

    .line 16
    :cond_1
    const-string v0, "city_suggestion_num"

    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_2

    .line 24
    iget p1, p1, Lcom/autonavi/amapauto/jni/protocol/data/CitysuggestionData;->citynum:I

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :cond_2
    return-object p3
.end method

.method public final g(Lcom/autonavi/amapauto/jni/protocol/data/PoiData;Ljava/lang/String;Lbh0$a;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 4
    return-object v0

    .line 5
    :cond_0
    const-string v1, "poiid"

    .line 7
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 13
    iget-object p1, p1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->poiid:Ljava/lang/String;

    .line 15
    return-object p1

    .line 16
    :cond_1
    const-string v1, "name"

    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_3

    .line 24
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    move-result p2

    .line 28
    if-nez p2, :cond_2

    .line 30
    return-object p4

    .line 31
    :cond_2
    iget-object p1, p1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->name:Ljava/lang/String;

    .line 33
    return-object p1

    .line 34
    :cond_3
    const-string p4, "address"

    .line 36
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result p4

    .line 40
    if-eqz p4, :cond_4

    .line 42
    iget-object p1, p1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->address:Ljava/lang/String;

    .line 44
    return-object p1

    .line 45
    :cond_4
    const-string p4, "latitude"

    .line 47
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result p4

    .line 51
    if-eqz p4, :cond_5

    .line 53
    iget-wide p1, p1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->latitude:D

    .line 55
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 58
    move-result-object p1

    .line 59
    return-object p1

    .line 60
    :cond_5
    const-string p4, "longitude"

    .line 62
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result p4

    .line 66
    if-eqz p4, :cond_6

    .line 68
    iget-wide p1, p1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->longitude:D

    .line 70
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 73
    move-result-object p1

    .line 74
    return-object p1

    .line 75
    :cond_6
    const-string p4, "distance"

    .line 77
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    move-result p4

    .line 81
    if-eqz p4, :cond_7

    .line 83
    iget p1, p1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->distance:I

    .line 85
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    move-result-object p1

    .line 89
    return-object p1

    .line 90
    :cond_7
    const-string p4, "tel"

    .line 92
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    move-result p4

    .line 96
    if-eqz p4, :cond_8

    .line 98
    iget-object p1, p1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->tel:Ljava/lang/String;

    .line 100
    return-object p1

    .line 101
    :cond_8
    const-string p4, "category"

    .line 103
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    move-result p4

    .line 107
    if-eqz p4, :cond_9

    .line 109
    iget p1, p1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->poitype:I

    .line 111
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    move-result-object p1

    .line 115
    return-object p1

    .line 116
    :cond_9
    const-string p4, "poitype"

    .line 118
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    move-result p4

    .line 122
    if-eqz p4, :cond_a

    .line 124
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 127
    move-result p1

    .line 128
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    move-result-object p1

    .line 132
    return-object p1

    .line 133
    :cond_a
    const-string p3, "navilongitude"

    .line 135
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    move-result p3

    .line 139
    const/4 p4, 0x0

    .line 140
    const-wide/16 v1, 0x0

    .line 142
    if-eqz p3, :cond_c

    .line 144
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->getEnteryList()Ljava/util/List;

    .line 147
    move-result-object p1

    .line 148
    if-eqz p1, :cond_b

    .line 150
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 153
    move-result p2

    .line 154
    if-lez p2, :cond_b

    .line 156
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 159
    move-result-object p1

    .line 160
    check-cast p1, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;

    .line 162
    iget-wide v1, p1, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;->longitude:D

    .line 164
    :cond_b
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 167
    move-result-object p1

    .line 168
    return-object p1

    .line 169
    :cond_c
    const-string p3, "navilatitude"

    .line 171
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    move-result p3

    .line 175
    if-eqz p3, :cond_e

    .line 177
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->getEnteryList()Ljava/util/List;

    .line 180
    move-result-object p1

    .line 181
    if-eqz p1, :cond_d

    .line 183
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 186
    move-result p2

    .line 187
    if-lez p2, :cond_d

    .line 189
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 192
    move-result-object p1

    .line 193
    check-cast p1, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;

    .line 195
    iget-wide v1, p1, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;->latitude:D

    .line 197
    :cond_d
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 200
    move-result-object p1

    .line 201
    return-object p1

    .line 202
    :cond_e
    const-string p3, "poideepinfo"

    .line 204
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    move-result p2

    .line 208
    if-eqz p2, :cond_11

    .line 210
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->getPoideepinfo()Lcom/autonavi/amapauto/jni/protocol/data/DeepInfoData;

    .line 213
    move-result-object p2

    .line 214
    if-nez p2, :cond_f

    .line 216
    return-object v0

    .line 217
    :cond_f
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->getPoideepinfo()Lcom/autonavi/amapauto/jni/protocol/data/DeepInfoData;

    .line 220
    move-result-object p1

    .line 221
    invoke-static {p1}, Lmc0;->d(Lcom/autonavi/amapauto/jni/protocol/data/DeepInfoData;)Lorg/json/JSONObject;

    .line 224
    move-result-object p1

    .line 225
    if-nez p1, :cond_10

    .line 227
    goto :goto_0

    .line 228
    :cond_10
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 231
    move-result-object v0

    .line 232
    :cond_11
    :goto_0
    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final h([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    const-string p2, "ThirdPartSearchProvider"

    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_2

    .line 6
    array-length v1, p1

    .line 7
    if-gtz v1, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p1}, Lbh0;->c([Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    if-nez p1, :cond_1

    .line 16
    const-string p1, "\u8bf7\u6c42keywords\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    .line 18
    new-array v1, v0, [Ljava/lang/Object;

    .line 20
    invoke-static {p2, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    return v0

    .line 24
    :cond_1
    const/4 p1, 0x1

    .line 25
    return p1

    .line 26
    :cond_2
    :goto_0
    const-string p1, "\u8bf7\u6c42selectionArgs\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    .line 28
    new-array v1, v0, [Ljava/lang/Object;

    .line 30
    invoke-static {p2, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    return v0
.end method

.method public final i(Landroid/content/Context;)Ljava/util/Map;
    .locals 6

    .line 1
    invoke-static {}, Lzm;->d()Lzm;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "isNeedFrontMemory"

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, v1, v2}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_2

    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    const/16 v1, 0x17

    .line 18
    if-lt v0, v1, :cond_2

    .line 20
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 22
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 25
    const-string v1, "\u5b58\u50a8"

    .line 27
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 29
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 34
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 37
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object v0

    .line 45
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_1

    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Ljava/util/Map$Entry;

    .line 57
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Ljava/lang/String;

    .line 63
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Ljava/lang/String;

    .line 69
    invoke-static {p1, v2}, Lvg0;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 72
    move-result v4

    .line 73
    const/4 v5, -0x1

    .line 74
    if-ne v4, v5, :cond_0

    .line 76
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    return-object v1

    .line 81
    :cond_2
    const/4 p1, 0x0

    .line 82
    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4

    .line 1
    sget-object v0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->e:Landroid/content/UriMatcher;

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x5

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eq p1, v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    if-nez p2, :cond_1

    .line 14
    return-object v1

    .line 15
    :cond_1
    const-string p1, "NetworkParam getIsn insert"

    .line 17
    const/4 v0, 0x0

    .line 18
    new-array v2, v0, [Ljava/lang/Object;

    .line 20
    const-string v3, "Joker"

    .line 22
    invoke-static {v3, p1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-static {}, Lrv;->H()Lrv;

    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p1, v2}, Lrv;->D(Landroid/content/Context;)Landroid/content/Context;

    .line 36
    move-result-object p1

    .line 37
    const-string v2, "SharedPreferences"

    .line 39
    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 42
    move-result-object p1

    .line 43
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 46
    move-result-object p1

    .line 47
    const-string v0, "isn1"

    .line 49
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v2

    .line 53
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 56
    const-string v0, "isn"

    .line 58
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object p2

    .line 62
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 68
    :goto_0
    return-object v1
.end method

.method public final j()V
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;->b:Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

    .line 3
    iput-object v0, p0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->c:Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

    .line 5
    return-void
.end method

.method public onCreate()Z
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "onCreate pid "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    new-array v2, v1, [Ljava/lang/Object;

    .line 25
    const-string v3, "ThirdPartSearchProvider"

    .line 27
    invoke-static {v3, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    return v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 1
    const/4 p3, 0x0

    .line 2
    new-array v0, p3, [Ljava/lang/Object;

    .line 4
    const-string v1, "ThirdPartSearchProvider"

    .line 6
    const-string v2, "query"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p2, :cond_4

    .line 14
    array-length v2, p2

    .line 15
    if-eqz v2, :cond_4

    .line 17
    if-nez p1, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-object v2, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->e:Landroid/content/UriMatcher;

    .line 22
    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x5

    .line 27
    const/4 v5, 0x1

    .line 28
    if-ne v3, v4, :cond_1

    .line 30
    invoke-static {}, Lrv;->H()Lrv;

    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p1, p2}, Lrv;->D(Landroid/content/Context;)Landroid/content/Context;

    .line 41
    move-result-object p1

    .line 42
    const-string p2, "SharedPreferences"

    .line 44
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 47
    move-result-object p1

    .line 48
    const-string p2, "isn1"

    .line 50
    const-string p4, ""

    .line 52
    invoke-interface {p1, p2, p4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object p2

    .line 56
    const-string p5, "isn"

    .line 58
    invoke-interface {p1, p5, p4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    new-instance p4, Landroid/database/MatrixCursor;

    .line 64
    sget-object p5, Lah0;->a:[Ljava/lang/String;

    .line 66
    invoke-direct {p4, p5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 69
    const/4 p5, 0x2

    .line 70
    new-array p5, p5, [Ljava/lang/Object;

    .line 72
    aput-object p2, p5, p3

    .line 74
    aput-object p1, p5, v5

    .line 76
    invoke-virtual {p4, p5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 79
    return-object p4

    .line 80
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {p0, v3}, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->i(Landroid/content/Context;)Ljava/util/Map;

    .line 87
    move-result-object v3

    .line 88
    if-eqz v3, :cond_2

    .line 90
    invoke-interface {v3}, Ljava/util/Map;->size()I

    .line 93
    move-result v3

    .line 94
    if-lez v3, :cond_2

    .line 96
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 98
    const/16 v4, 0x17

    .line 100
    if-lt v3, v4, :cond_2

    .line 102
    return-object v0

    .line 103
    :cond_2
    iget-object v3, p0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->c:Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

    .line 105
    sget-object v4, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;->b:Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

    .line 107
    if-ne v3, v4, :cond_3

    .line 109
    return-object v0

    .line 110
    :cond_3
    iput-object v0, p0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->a:Ljava/util/List;

    .line 112
    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 115
    move-result v0

    .line 116
    new-array v2, v5, [Ljava/lang/Object;

    .line 118
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 121
    move-result-object p1

    .line 122
    aput-object p1, v2, p3

    .line 124
    const-string p1, "start init uri={?}"

    .line 126
    invoke-static {v1, p1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    invoke-virtual {p0, v0, p2, p4, p5}, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->e(I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 132
    move-result-object p1

    .line 133
    return-object p1

    .line 134
    :cond_4
    :goto_0
    const-string p1, "projection == null || projection.length == 0 || uri == null"

    .line 136
    new-array p2, p3, [Ljava/lang/Object;

    .line 138
    invoke-static {v1, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
