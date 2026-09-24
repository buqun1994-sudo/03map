.class public Li80;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:Ljava/lang/Object;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Landroid/net/Uri;

.field public static final h:Ljava/lang/String;

.field public static final i:Landroid/net/Uri;

.field public static final j:Ljava/lang/String;

.field public static final k:Landroid/net/Uri;

.field public static final l:Ljava/lang/String;

.field public static final m:Landroid/net/Uri;

.field public static final n:[Ljava/lang/String;

.field public static volatile o:Li80;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/Comparator;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Li80;->d:Ljava/lang/Object;

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    invoke-static {}, Lrv;->H()Lrv;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lrv;->y()Landroid/app/Application;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    const-string v1, ".provider.search"

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Li80;->e:Ljava/lang/String;

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    const-string v2, "content://"

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v3, "/"

    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v4, "search_poi"

    .line 59
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    sput-object v1, Li80;->f:Ljava/lang/String;

    .line 68
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 71
    move-result-object v1

    .line 72
    sput-object v1, Li80;->g:Landroid/net/Uri;

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 76
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v4, "city_name_poi"

    .line 90
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v1

    .line 97
    sput-object v1, Li80;->h:Ljava/lang/String;

    .line 99
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 102
    move-result-object v1

    .line 103
    sput-object v1, Li80;->i:Landroid/net/Uri;

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    .line 107
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v4, "home_company_poi"

    .line 121
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object v1

    .line 128
    sput-object v1, Li80;->j:Ljava/lang/String;

    .line 130
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 133
    move-result-object v1

    .line 134
    sput-object v1, Li80;->k:Landroid/net/Uri;

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    .line 138
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v0, "set_home_company_poi"

    .line 152
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    move-result-object v0

    .line 159
    sput-object v0, Li80;->l:Ljava/lang/String;

    .line 161
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 164
    move-result-object v0

    .line 165
    sput-object v0, Li80;->m:Landroid/net/Uri;

    .line 167
    const-string v1, "poiid"

    .line 169
    const-string v2, "name"

    .line 171
    const-string v3, "address"

    .line 173
    const-string v4, "latitude"

    .line 175
    const-string v5, "longitude"

    .line 177
    const-string v6, "distance"

    .line 179
    const-string v7, "tel"

    .line 181
    const-string v8, "poitype"

    .line 183
    const-string v9, "navilongitude"

    .line 185
    const-string v10, "navilatitude"

    .line 187
    const-string v11, "category"

    .line 189
    const-string v12, "city_suggestion_name"

    .line 191
    const-string v13, "city_suggestion_num"

    .line 193
    const-string v14, "poideepinfo"

    .line 195
    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    .line 198
    move-result-object v0

    .line 199
    sput-object v0, Li80;->n:[Ljava/lang/String;

    .line 201
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Li80;->b:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public static c()Li80;
    .locals 2

    .line 1
    sget-object v0, Li80;->o:Li80;

    .line 3
    if-nez v0, :cond_1

    .line 5
    sget-object v0, Li80;->d:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Li80;->o:Li80;

    .line 10
    if-nez v1, :cond_0

    .line 12
    new-instance v1, Li80;

    .line 14
    invoke-direct {v1}, Li80;-><init>()V

    .line 17
    sput-object v1, Li80;->o:Li80;

    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Li80;->o:Li80;

    .line 26
    return-object v0
.end method


# virtual methods
.method public a(Lcom/autonavi/iflytek/bean/ProviderPoi;)Ljava/util/ArrayList;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const-string v2, "NaviVoice"

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 11
    iget-object v2, v0, Lcom/autonavi/iflytek/bean/ProviderPoi;->a:Ljava/lang/String;

    .line 13
    const/4 v4, 0x1

    .line 14
    aput-object v2, v1, v4

    .line 16
    const-string v2, "TAG_ADAPTER"

    .line 18
    const-string v4, "{?} getSearchPoi parameters {?}"

    .line 20
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-object v1, v0, Lcom/autonavi/iflytek/bean/ProviderPoi;->i:Ljava/lang/String;

    .line 25
    iget-object v4, v0, Lcom/autonavi/iflytek/bean/ProviderPoi;->j:Ljava/lang/String;

    .line 27
    iget-object v5, v0, Lcom/autonavi/iflytek/bean/ProviderPoi;->a:Ljava/lang/String;

    .line 29
    iget-object v6, v0, Lcom/autonavi/iflytek/bean/ProviderPoi;->d:Ljava/lang/String;

    .line 31
    iget-object v10, v0, Lcom/autonavi/iflytek/bean/ProviderPoi;->e:Ljava/lang/String;

    .line 33
    iget-object v8, v0, Lcom/autonavi/iflytek/bean/ProviderPoi;->f:Ljava/lang/String;

    .line 35
    iget-object v9, v0, Lcom/autonavi/iflytek/bean/ProviderPoi;->g:Ljava/lang/String;

    .line 37
    iget-object v7, v0, Lcom/autonavi/iflytek/bean/ProviderPoi;->h:Ljava/lang/String;

    .line 39
    iget-object v11, v0, Lcom/autonavi/iflytek/bean/ProviderPoi;->k:Ljava/lang/String;

    .line 41
    iget-object v12, v0, Lcom/autonavi/iflytek/bean/ProviderPoi;->b:Ljava/lang/String;

    .line 43
    const-string v13, "null"

    .line 45
    if-eqz v12, :cond_0

    .line 47
    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 50
    move-result v12

    .line 51
    if-nez v12, :cond_0

    .line 53
    iget-object v12, v0, Lcom/autonavi/iflytek/bean/ProviderPoi;->b:Ljava/lang/String;

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    move-object v12, v1

    .line 57
    :goto_0
    iget-object v14, v0, Lcom/autonavi/iflytek/bean/ProviderPoi;->c:Ljava/lang/String;

    .line 59
    if-eqz v14, :cond_1

    .line 61
    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 64
    move-result v13

    .line 65
    if-nez v13, :cond_1

    .line 67
    iget-object v13, v0, Lcom/autonavi/iflytek/bean/ProviderPoi;->c:Ljava/lang/String;

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    move-object v13, v4

    .line 71
    :goto_1
    const-string v14, "0"

    .line 73
    invoke-virtual {v14, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 76
    move-result v15

    .line 77
    if-nez v15, :cond_2

    .line 79
    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 82
    move-result v14

    .line 83
    if-eqz v14, :cond_3

    .line 85
    :cond_2
    move-object v1, v12

    .line 86
    move-object v4, v13

    .line 87
    :cond_3
    iget-object v0, v0, Lcom/autonavi/iflytek/bean/ProviderPoi;->a:Ljava/lang/String;

    .line 89
    move-object/from16 v15, p0

    .line 91
    iput-object v0, v15, Li80;->b:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    const-string v14, "keyword="

    .line 100
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v14, ",myLoclat="

    .line 108
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v12, ",myLoclon="

    .line 116
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v12, ",dev="

    .line 124
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v6, ",searchType="

    .line 132
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v6, ",city="

    .line 140
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string v6, ",maxCount="

    .line 148
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v6, ",range="

    .line 156
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v6, ",centerLat="

    .line 164
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v6, ",centerLon="

    .line 172
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const-string v6, ",sortOrder="

    .line 180
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    move-result-object v0

    .line 190
    new-array v3, v3, [Ljava/lang/Object;

    .line 192
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    const/4 v11, 0x0

    .line 196
    const/4 v12, 0x0

    .line 197
    const/4 v13, 0x0

    .line 198
    const/4 v14, 0x0

    .line 199
    const/4 v0, 0x0

    .line 200
    const/16 v16, 0x0

    .line 202
    move-object v6, v1

    .line 203
    move-object v7, v4

    .line 204
    move-object v15, v0

    .line 205
    invoke-static/range {v5 .. v16}, Lrj0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 208
    move-result-object v0

    .line 209
    return-object v0
.end method

.method public final b()Ljava/util/Comparator;
    .locals 1

    .line 1
    iget-object v0, p0, Li80;->c:Ljava/util/Comparator;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Li80$a;

    .line 7
    invoke-direct {v0, p0}, Li80$a;-><init>(Li80;)V

    .line 10
    iput-object v0, p0, Li80;->c:Ljava/util/Comparator;

    .line 12
    :cond_0
    iget-object v0, p0, Li80;->c:Ljava/util/Comparator;

    .line 14
    return-object v0
.end method

.method public d(Lcom/autonavi/iflytek/bean/ProviderPoi;)Ljava/util/ArrayList;
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const-string v2, "NaviVoice"

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 11
    iget-object v2, v0, Lcom/autonavi/iflytek/bean/ProviderPoi;->a:Ljava/lang/String;

    .line 13
    const/4 v4, 0x1

    .line 14
    aput-object v2, v1, v4

    .line 16
    const-string v2, "TAG_ADAPTER"

    .line 18
    const-string v4, "{?} getSearchPoi parameters {?}"

    .line 20
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-object v1, v0, Lcom/autonavi/iflytek/bean/ProviderPoi;->i:Ljava/lang/String;

    .line 25
    iget-object v4, v0, Lcom/autonavi/iflytek/bean/ProviderPoi;->j:Ljava/lang/String;

    .line 27
    iget-object v5, v0, Lcom/autonavi/iflytek/bean/ProviderPoi;->a:Ljava/lang/String;

    .line 29
    iget-object v6, v0, Lcom/autonavi/iflytek/bean/ProviderPoi;->d:Ljava/lang/String;

    .line 31
    iget-object v15, v0, Lcom/autonavi/iflytek/bean/ProviderPoi;->e:Ljava/lang/String;

    .line 33
    iget-object v7, v0, Lcom/autonavi/iflytek/bean/ProviderPoi;->f:Ljava/lang/String;

    .line 35
    iget-object v11, v0, Lcom/autonavi/iflytek/bean/ProviderPoi;->g:Ljava/lang/String;

    .line 37
    iget-object v8, v0, Lcom/autonavi/iflytek/bean/ProviderPoi;->h:Ljava/lang/String;

    .line 39
    iget-object v9, v0, Lcom/autonavi/iflytek/bean/ProviderPoi;->k:Ljava/lang/String;

    .line 41
    const/4 v10, 0x0

    .line 42
    const-string v12, ""

    .line 44
    if-eqz v7, :cond_0

    .line 46
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v13

    .line 50
    if-eqz v13, :cond_0

    .line 52
    move-object v13, v10

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move-object v13, v7

    .line 55
    :goto_0
    if-eqz v5, :cond_1

    .line 57
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v7

    .line 61
    if-eqz v7, :cond_1

    .line 63
    move-object v7, v10

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    move-object v7, v5

    .line 66
    :goto_1
    if-eqz v8, :cond_2

    .line 68
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_2

    .line 74
    move-object v8, v10

    .line 75
    :cond_2
    iget-object v5, v0, Lcom/autonavi/iflytek/bean/ProviderPoi;->b:Ljava/lang/String;

    .line 77
    const-string v10, "null"

    .line 79
    if-eqz v5, :cond_3

    .line 81
    invoke-virtual {v10, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 84
    move-result v5

    .line 85
    if-nez v5, :cond_3

    .line 87
    iget-object v5, v0, Lcom/autonavi/iflytek/bean/ProviderPoi;->b:Ljava/lang/String;

    .line 89
    goto :goto_2

    .line 90
    :cond_3
    move-object v5, v1

    .line 91
    :goto_2
    iget-object v12, v0, Lcom/autonavi/iflytek/bean/ProviderPoi;->c:Ljava/lang/String;

    .line 93
    if-eqz v12, :cond_4

    .line 95
    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 98
    move-result v10

    .line 99
    if-nez v10, :cond_4

    .line 101
    iget-object v10, v0, Lcom/autonavi/iflytek/bean/ProviderPoi;->c:Ljava/lang/String;

    .line 103
    goto :goto_3

    .line 104
    :cond_4
    move-object v10, v4

    .line 105
    :goto_3
    const-string v12, "0"

    .line 107
    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 110
    move-result v14

    .line 111
    const-string v3, "1"

    .line 113
    if-nez v14, :cond_5

    .line 115
    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 118
    move-result v12

    .line 119
    if-eqz v12, :cond_6

    .line 121
    :cond_5
    move-object v6, v3

    .line 122
    move-object v1, v5

    .line 123
    move-object v4, v10

    .line 124
    :cond_6
    iget-object v0, v0, Lcom/autonavi/iflytek/bean/ProviderPoi;->a:Ljava/lang/String;

    .line 126
    move-object/from16 v14, p0

    .line 128
    iput-object v0, v14, Li80;->b:Ljava/lang/String;

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    .line 132
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    const-string v12, "keyword="

    .line 137
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string v12, ",myLoclat="

    .line 145
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v5, ",myLoclon="

    .line 153
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string v5, ",dev="

    .line 161
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v5, ",searchType="

    .line 169
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string v5, ",city="

    .line 177
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v5, ",maxCount="

    .line 185
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string v5, ",range="

    .line 193
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string v5, ",centerLat="

    .line 201
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const-string v5, ",centerLon="

    .line 209
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string v5, ",sortOrder="

    .line 217
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v5, ",SEARCH_POI_ONBOARD_URI="

    .line 225
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    sget-object v5, Li80;->g:Landroid/net/Uri;

    .line 230
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    move-result-object v0

    .line 237
    const/4 v5, 0x0

    .line 238
    new-array v5, v5, [Ljava/lang/Object;

    .line 240
    invoke-static {v2, v0, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 246
    move-result v0

    .line 247
    if-eqz v0, :cond_7

    .line 249
    const-string v0, "5002"

    .line 251
    goto :goto_4

    .line 252
    :cond_7
    const-string v0, "5001"

    .line 254
    :goto_4
    const/4 v2, 0x0

    .line 255
    const/4 v5, 0x0

    .line 256
    const/16 v16, 0x0

    .line 258
    const/16 v17, 0x0

    .line 260
    const/16 v18, 0x0

    .line 262
    move-object v8, v1

    .line 263
    move-object v9, v4

    .line 264
    move-object v10, v13

    .line 265
    move-object v12, v15

    .line 266
    move-object v13, v0

    .line 267
    move-object v14, v2

    .line 268
    move-object v0, v15

    .line 269
    move-object v15, v5

    .line 270
    invoke-static/range {v7 .. v18}, Lrj0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 273
    move-result-object v1

    .line 274
    if-eqz v1, :cond_8

    .line 276
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 279
    move-result v2

    .line 280
    if-lez v2, :cond_8

    .line 282
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 285
    move-result v0

    .line 286
    if-eqz v0, :cond_8

    .line 288
    invoke-virtual/range {p0 .. p0}, Li80;->b()Ljava/util/Comparator;

    .line 291
    move-result-object v0

    .line 292
    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 295
    :cond_8
    return-object v1
.end method

.method public e(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li80;->a:Landroid/content/Context;

    .line 3
    return-void
.end method
