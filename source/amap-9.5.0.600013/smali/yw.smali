.class public Lyw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static r:Lyw;


# instance fields
.field public a:Lcom/autonavi/amapauto/framework/LibraryLoader;

.field public b:Z

.field public c:[Ljava/lang/String;

.field public d:[Ljava/lang/String;

.field public e:[Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/util/ArrayList;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/util/HashSet;

.field public o:Ljava/util/concurrent/CountDownLatch;

.field public p:Landroid/content/Context;

.field public q:Ljava/util/ArrayList;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lyw;->b:Z

    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lyw;->c:[Ljava/lang/String;

    .line 10
    const-string v2, "openssl"

    .line 12
    const-string v3, "GComm3rd"

    .line 14
    const-string v4, "base_utils"

    .line 16
    const-string v5, "GPlatformInterface"

    .line 18
    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    iput-object v2, p0, Lyw;->d:[Ljava/lang/String;

    .line 24
    const-string v2, "GSQuirrel"

    .line 26
    const-string v3, "UpdateMng"

    .line 28
    const-string v4, "GNet"

    .line 30
    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    iput-object v2, p0, Lyw;->e:[Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lyw;->f:Ljava/lang/String;

    .line 38
    iput-boolean v0, p0, Lyw;->g:Z

    .line 40
    iput-object v1, p0, Lyw;->h:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lyw;->i:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lyw;->j:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    .line 48
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    iput-object v0, p0, Lyw;->k:Ljava/util/ArrayList;

    .line 53
    iput-object v1, p0, Lyw;->l:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lyw;->m:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    .line 59
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 62
    iput-object v0, p0, Lyw;->n:Ljava/util/HashSet;

    .line 64
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 66
    const/4 v2, 0x1

    .line 67
    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 70
    iput-object v0, p0, Lyw;->o:Ljava/util/concurrent/CountDownLatch;

    .line 72
    iput-object v1, p0, Lyw;->p:Landroid/content/Context;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    .line 76
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    iput-object v0, p0, Lyw;->q:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 83
    invoke-direct {v0}, Lcom/autonavi/amapauto/framework/LibraryLoader;-><init>()V

    .line 86
    iput-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 88
    invoke-static {}, Ls1;->k()Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    iput-object v0, p0, Lyw;->f:Ljava/lang/String;

    .line 94
    invoke-static {}, Lcom/autonavi/amapauto/framework/TurboDiagnose;->d()Lcom/autonavi/amapauto/framework/TurboDiagnose;

    .line 97
    move-result-object v0

    .line 98
    iget-object v1, p0, Lyw;->f:Ljava/lang/String;

    .line 100
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/framework/TurboDiagnose;->l(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Lcom/autonavi/amapauto/framework/TurboDiagnose;->h()V

    .line 106
    return-void
.end method

.method public static synthetic a(Lyw;)Ljava/util/HashSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lyw;->n:Ljava/util/HashSet;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lyw;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lyw;->E()V

    .line 4
    return-void
.end method

.method public static synthetic c(Lyw;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lyw;->h:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic d(Lyw;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lyw;->p:Landroid/content/Context;

    .line 3
    return-object p0
.end method

.method public static synthetic e(Lyw;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 1
    iget-object p0, p0, Lyw;->o:Ljava/util/concurrent/CountDownLatch;

    .line 3
    return-object p0
.end method

.method public static synthetic f(Lyw;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lyw;->k:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method public static synthetic g(Lyw;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lyw;->s(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic h(Lyw;)Lcom/autonavi/amapauto/framework/LibraryLoader;
    .locals 0

    .line 1
    iget-object p0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 3
    return-object p0
.end method

.method public static synthetic i(Lyw;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lyw;->c:[Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic j(Lyw;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lyw;->z(Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic k(Lyw;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lyw;->A(Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic l(Lyw;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lyw;->u(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic m(Lyw;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lyw;->g:Z

    .line 3
    return p0
.end method

.method public static v()Lyw;
    .locals 1

    .line 1
    sget-object v0, Lyw;->r:Lyw;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lyw;

    .line 7
    invoke-direct {v0}, Lyw;-><init>()V

    .line 10
    sput-object v0, Lyw;->r:Lyw;

    .line 12
    :cond_0
    sget-object v0, Lyw;->r:Lyw;

    .line 14
    return-object v0
.end method


# virtual methods
.method public final A(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lyw;->n:Ljava/util/HashSet;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lyw;->n:Ljava/util/HashSet;

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public final B()V
    .locals 15

    .line 1
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 3
    const-string v1, "base_utils"

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/amapauto/framework/LibraryLoader;->registerLibrary(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 12
    const-string v4, "GPlatformInterface"

    .line 14
    invoke-virtual {v0, v4, v2, v3}, Lcom/autonavi/amapauto/framework/LibraryLoader;->registerLibrary(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 19
    const-string v5, "openssl"

    .line 21
    invoke-virtual {v0, v5, v2, v3}, Lcom/autonavi/amapauto/framework/LibraryLoader;->registerLibrary(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 26
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 29
    move-result-object v6

    .line 30
    const-string v7, "GComm3rd"

    .line 32
    invoke-virtual {v0, v7, v2, v6}, Lcom/autonavi/amapauto/framework/LibraryLoader;->registerLibrary(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 37
    filled-new-array {v1, v7}, [Ljava/lang/String;

    .line 40
    move-result-object v6

    .line 41
    const-string v8, "GAdaptorInterface"

    .line 43
    invoke-virtual {v0, v8, v2, v6}, Lcom/autonavi/amapauto/framework/LibraryLoader;->registerLibrary(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 48
    const-string v6, "Eaglet"

    .line 50
    const/4 v9, 0x1

    .line 51
    invoke-virtual {v0, v6, v9, v3}, Lcom/autonavi/amapauto/framework/LibraryLoader;->registerLibrary(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 56
    filled-new-array {v4, v5, v1}, [Ljava/lang/String;

    .line 59
    move-result-object v4

    .line 60
    const-string v6, "GNet"

    .line 62
    invoke-virtual {v0, v6, v2, v4}, Lcom/autonavi/amapauto/framework/LibraryLoader;->registerLibrary(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 67
    filled-new-array {v7, v6}, [Ljava/lang/String;

    .line 70
    move-result-object v4

    .line 71
    const-string v6, "GSQuirrel"

    .line 73
    invoke-virtual {v0, v6, v2, v4}, Lcom/autonavi/amapauto/framework/LibraryLoader;->registerLibrary(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 78
    const-string v4, "LogSpy"

    .line 80
    const-string v10, "neonui_shared"

    .line 82
    filled-new-array {v1, v7, v4, v10}, [Ljava/lang/String;

    .line 85
    move-result-object v4

    .line 86
    const-string v11, "GAdaptor"

    .line 88
    invoke-virtual {v0, v11, v9, v4}, Lcom/autonavi/amapauto/framework/LibraryLoader;->registerLibrary(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 93
    const-string v4, "UpdateMng"

    .line 95
    filled-new-array {v6}, [Ljava/lang/String;

    .line 98
    move-result-object v12

    .line 99
    invoke-virtual {v0, v4, v9, v12}, Lcom/autonavi/amapauto/framework/LibraryLoader;->registerLibrary(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 104
    filled-new-array {v6}, [Ljava/lang/String;

    .line 107
    move-result-object v4

    .line 108
    const-string v12, "GFrame"

    .line 110
    invoke-virtual {v0, v12, v2, v4}, Lcom/autonavi/amapauto/framework/LibraryLoader;->registerLibrary(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 115
    filled-new-array {v5}, [Ljava/lang/String;

    .line 118
    move-result-object v4

    .line 119
    const-string v5, "mqtt_jni"

    .line 121
    invoke-virtual {v0, v5, v9, v4}, Lcom/autonavi/amapauto/framework/LibraryLoader;->registerLibrary(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 126
    const-string v4, "wireless"

    .line 128
    invoke-virtual {v0, v4, v9, v3}, Lcom/autonavi/amapauto/framework/LibraryLoader;->registerLibrary(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 133
    const-string v13, "GEhpOutputAdapter"

    .line 135
    invoke-virtual {v0, v13, v9, v3}, Lcom/autonavi/amapauto/framework/LibraryLoader;->registerLibrary(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 140
    const-string v13, "GEhp"

    .line 142
    invoke-virtual {v0, v13, v2, v3}, Lcom/autonavi/amapauto/framework/LibraryLoader;->registerLibrary(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 147
    filled-new-array {v1}, [Ljava/lang/String;

    .line 150
    move-result-object v13

    .line 151
    const-string v14, "AutoDice"

    .line 153
    invoke-virtual {v0, v14, v2, v13}, Lcom/autonavi/amapauto/framework/LibraryLoader;->registerLibrary(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 158
    const-string v13, "VAE"

    .line 160
    filled-new-array {v1}, [Ljava/lang/String;

    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {v0, v13, v2, v1}, Lcom/autonavi/amapauto/framework/LibraryLoader;->registerLibrary(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 169
    filled-new-array {v14, v6, v7, v5, v4}, [Ljava/lang/String;

    .line 172
    move-result-object v1

    .line 173
    const-string v4, "Gbl"

    .line 175
    invoke-virtual {v0, v4, v2, v1}, Lcom/autonavi/amapauto/framework/LibraryLoader;->registerLibrary(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 180
    const-string v1, "GEhpOutput"

    .line 182
    filled-new-array {v4}, [Ljava/lang/String;

    .line 185
    move-result-object v5

    .line 186
    invoke-virtual {v0, v1, v9, v5}, Lcom/autonavi/amapauto/framework/LibraryLoader;->registerLibrary(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 191
    const-string v1, "ifly_aime"

    .line 193
    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/amapauto/framework/LibraryLoader;->registerLibrary(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 198
    filled-new-array {v8, v11, v4, v1}, [Ljava/lang/String;

    .line 201
    move-result-object v1

    .line 202
    const-string v4, "hsl"

    .line 204
    invoke-virtual {v0, v4, v2, v1}, Lcom/autonavi/amapauto/framework/LibraryLoader;->registerLibrary(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 209
    filled-new-array {v12, v4}, [Ljava/lang/String;

    .line 212
    move-result-object v1

    .line 213
    const-string v5, "Common"

    .line 215
    invoke-virtual {v0, v5, v2, v1}, Lcom/autonavi/amapauto/framework/LibraryLoader;->registerLibrary(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 220
    const-string v1, "EagletEx"

    .line 222
    filled-new-array {v8, v11, v12}, [Ljava/lang/String;

    .line 225
    move-result-object v6

    .line 226
    invoke-virtual {v0, v1, v2, v6}, Lcom/autonavi/amapauto/framework/LibraryLoader;->registerLibrary(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 231
    const-string v1, "BootLoader"

    .line 233
    filled-new-array {v4}, [Ljava/lang/String;

    .line 236
    move-result-object v6

    .line 237
    invoke-virtual {v0, v1, v2, v6}, Lcom/autonavi/amapauto/framework/LibraryLoader;->registerLibrary(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 242
    const-string v1, "ContentProvider"

    .line 244
    filled-new-array {v12, v4}, [Ljava/lang/String;

    .line 247
    move-result-object v6

    .line 248
    invoke-virtual {v0, v1, v9, v6}, Lcom/autonavi/amapauto/framework/LibraryLoader;->registerLibrary(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 253
    const-string v1, "InstrumentPannelLarge"

    .line 255
    filled-new-array {v5}, [Ljava/lang/String;

    .line 258
    move-result-object v6

    .line 259
    invoke-virtual {v0, v1, v2, v6}, Lcom/autonavi/amapauto/framework/LibraryLoader;->registerLibrary(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 264
    const-string v1, "InstrumentPannelSmall"

    .line 266
    filled-new-array {v5}, [Ljava/lang/String;

    .line 269
    move-result-object v6

    .line 270
    invoke-virtual {v0, v1, v2, v6}, Lcom/autonavi/amapauto/framework/LibraryLoader;->registerLibrary(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 275
    const-string v1, "Widget"

    .line 277
    filled-new-array {v5}, [Ljava/lang/String;

    .line 280
    move-result-object v6

    .line 281
    invoke-virtual {v0, v1, v2, v6}, Lcom/autonavi/amapauto/framework/LibraryLoader;->registerLibrary(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 286
    const-string v1, "InstrumentScreen"

    .line 288
    filled-new-array {v5}, [Ljava/lang/String;

    .line 291
    move-result-object v6

    .line 292
    invoke-virtual {v0, v1, v2, v6}, Lcom/autonavi/amapauto/framework/LibraryLoader;->registerLibrary(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 297
    const-string v1, "CoDriverScreen"

    .line 299
    filled-new-array {v5}, [Ljava/lang/String;

    .line 302
    move-result-object v6

    .line 303
    invoke-virtual {v0, v1, v2, v6}, Lcom/autonavi/amapauto/framework/LibraryLoader;->registerLibrary(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 308
    const-string v1, "GreenMenuScreen"

    .line 310
    filled-new-array {v5}, [Ljava/lang/String;

    .line 313
    move-result-object v6

    .line 314
    invoke-virtual {v0, v1, v2, v6}, Lcom/autonavi/amapauto/framework/LibraryLoader;->registerLibrary(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 319
    const-string v1, "CoDriverSmallScreen"

    .line 321
    filled-new-array {v5}, [Ljava/lang/String;

    .line 324
    move-result-object v6

    .line 325
    invoke-virtual {v0, v1, v2, v6}, Lcom/autonavi/amapauto/framework/LibraryLoader;->registerLibrary(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 330
    const-string v1, "InstrumentLargeCrossScreen"

    .line 332
    filled-new-array {v5}, [Ljava/lang/String;

    .line 335
    move-result-object v6

    .line 336
    invoke-virtual {v0, v1, v2, v6}, Lcom/autonavi/amapauto/framework/LibraryLoader;->registerLibrary(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 341
    const-string v1, "BlueBird"

    .line 343
    filled-new-array {v8}, [Ljava/lang/String;

    .line 346
    move-result-object v6

    .line 347
    invoke-virtual {v0, v1, v2, v6}, Lcom/autonavi/amapauto/framework/LibraryLoader;->registerLibrary(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 352
    invoke-virtual {v0, v10, v2, v3}, Lcom/autonavi/amapauto/framework/LibraryLoader;->registerLibrary(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 357
    const-string v1, "MainScreen"

    .line 359
    filled-new-array {v4, v12}, [Ljava/lang/String;

    .line 362
    move-result-object v3

    .line 363
    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/amapauto/framework/LibraryLoader;->registerLibrary(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 368
    const-string v1, "autonavi"

    .line 370
    filled-new-array {v5}, [Ljava/lang/String;

    .line 373
    move-result-object v3

    .line 374
    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/amapauto/framework/LibraryLoader;->registerLibrary(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method public final C()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const-string v1, "base_utils"

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    const-string v1, "GPlatformInterface"

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    const-string v1, "openssl"

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    const-string v1, "GComm3rd"

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    const-string v1, "GAdaptorInterface"

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    const-string v1, "AutoDice"

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    const-string v1, "Eaglet"

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    const-string v1, "GNet"

    .line 43
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    const-string v1, "GSQuirrel"

    .line 48
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    const-string v1, "neonui_shared"

    .line 53
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    const-string v1, "GAdaptor"

    .line 58
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    const-string v1, "UpdateMng"

    .line 63
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    const-string v1, "GFrame"

    .line 68
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    const-string v1, "mqtt_jni"

    .line 73
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    const-string v1, "wireless"

    .line 78
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    const-string v1, "Gbl"

    .line 83
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    const-string v1, "ifly_aime"

    .line 88
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    const-string v1, "hsl"

    .line 93
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    const/4 v1, 0x0

    .line 97
    new-array v1, v1, [Ljava/lang/String;

    .line 99
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 102
    move-result-object v0

    .line 103
    check-cast v0, [Ljava/lang/String;

    .line 105
    iput-object v0, p0, Lyw;->c:[Ljava/lang/String;

    .line 107
    iget-object v1, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 109
    invoke-virtual {v1, v0}, Lcom/autonavi/amapauto/framework/LibraryLoader;->setOrder([Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public final D()V
    .locals 6

    .line 1
    iget-object v0, p0, Lyw;->d:[Ljava/lang/String;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v3, v1, :cond_0

    .line 8
    aget-object v4, v0, v3

    .line 10
    iget-object v5, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 12
    invoke-virtual {v5, v4}, Lcom/autonavi/amapauto/framework/LibraryLoader;->loadedLibrary(Ljava/lang/String;)V

    .line 15
    iget-object v5, p0, Lyw;->q:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    add-int/lit8 v3, v3, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lyw;->e:[Ljava/lang/String;

    .line 25
    array-length v1, v0

    .line 26
    :goto_1
    if-ge v2, v1, :cond_2

    .line 28
    aget-object v3, v0, v2

    .line 30
    invoke-static {v3}, Lt7;->e(Ljava/lang/String;)Z

    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_1

    .line 36
    iget-object v4, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 38
    invoke-virtual {v4, v3}, Lcom/autonavi/amapauto/framework/LibraryLoader;->loadedLibrary(Ljava/lang/String;)V

    .line 41
    iget-object v4, p0, Lyw;->q:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    iget-object v0, p0, Lyw;->q:Ljava/util/ArrayList;

    .line 51
    const-string v1, "turbo"

    .line 53
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public final E()V
    .locals 12

    .line 1
    const-string v0, "LibraryLoaderHelper"

    .line 3
    const-string v1, ""

    .line 5
    iget-object v2, p0, Lyw;->p:Landroid/content/Context;

    .line 7
    const-string v3, "so_version"

    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    const-string v5, "versionname"

    .line 17
    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v3

    .line 21
    const-string v6, "versioncode"

    .line 23
    const/4 v7, -0x1

    .line 24
    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 27
    move-result v8

    .line 28
    :try_start_0
    iget-object v9, p0, Lyw;->p:Landroid/content/Context;

    .line 30
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 33
    move-result-object v9

    .line 34
    iget-object v10, p0, Lyw;->p:Landroid/content/Context;

    .line 36
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 39
    move-result-object v10

    .line 40
    invoke-virtual {v9, v10, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 43
    move-result-object v9

    .line 44
    iget-object v1, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 46
    iget v9, v9, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception v9

    .line 50
    const-string v10, "verifyAsset getAppVersionName:"

    .line 52
    new-array v11, v4, [Ljava/lang/Object;

    .line 54
    invoke-static {v0, v10, v9, v11}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 57
    const/4 v9, 0x0

    .line 58
    :goto_0
    const/4 v10, 0x4

    .line 59
    new-array v10, v10, [Ljava/lang/Object;

    .line 61
    aput-object v3, v10, v4

    .line 63
    const/4 v4, 0x1

    .line 64
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    move-result-object v11

    .line 68
    aput-object v11, v10, v4

    .line 70
    const/4 v4, 0x2

    .line 71
    aput-object v1, v10, v4

    .line 73
    const/4 v4, 0x3

    .line 74
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    move-result-object v11

    .line 78
    aput-object v11, v10, v4

    .line 80
    const-string v4, "verifyAsset spVersionName={?},spVersionCode={?},versionName={?},versionCode={?}"

    .line 82
    invoke-static {v0, v4, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_0

    .line 91
    if-eq v8, v7, :cond_0

    .line 93
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_0

    .line 99
    if-eq v9, v8, :cond_2

    .line 101
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 103
    iget-object v3, p0, Lyw;->j:Ljava/lang/String;

    .line 105
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 111
    move-result v3

    .line 112
    if-eqz v3, :cond_1

    .line 114
    invoke-static {v0}, Lcom/autonavi/amapauto/utils/FileUtils;->deleteFile(Ljava/io/File;)V

    .line 117
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 120
    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 123
    move-result-object v0

    .line 124
    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 127
    invoke-interface {v0, v6, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 130
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 133
    :cond_2
    return-void
.end method

.method public F()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lyw;->o:Ljava/util/concurrent/CountDownLatch;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    :goto_0
    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lyw;->n:Ljava/util/HashSet;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 8
    invoke-virtual {v0, p1}, Lcom/autonavi/amapauto/framework/LibraryLoader;->blockLibrary(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public final o(Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 15
    :cond_0
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 17
    invoke-virtual {v0, p1, p2}, Lcom/autonavi/amapauto/framework/LibraryLoader;->addLibraryPath(Ljava/lang/String;I)V

    .line 20
    return-void
.end method

.method public final p(Ljava/lang/String;I)V
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 14
    invoke-virtual {v0, p1, p2}, Lcom/autonavi/amapauto/framework/LibraryLoader;->addLibraryPath(Ljava/lang/String;I)V

    .line 17
    :cond_0
    return-void
.end method

.method public final q()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 3
    new-instance v1, Lyw$a;

    .line 5
    invoke-direct {v1, p0}, Lyw$a;-><init>(Lyw;)V

    .line 8
    const-string v2, "LibraryCopy"

    .line 10
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 16
    return-void
.end method

.method public final r()Z
    .locals 13

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
    const-string v1, "libs/"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lyw;->l:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    iget-object v1, p0, Lyw;->f:Ljava/lang/String;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, "/cpplibs/"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lyw;->m:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/io/File;

    .line 47
    iget-object v1, p0, Lyw;->l:Ljava/lang/String;

    .line 49
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 55
    move-result v1

    .line 56
    const/4 v2, 0x0

    .line 57
    if-nez v1, :cond_0

    .line 59
    return v2

    .line 60
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_3

    .line 66
    array-length v1, v0

    .line 67
    const/4 v3, 0x0

    .line 68
    const/4 v4, 0x0

    .line 69
    :goto_0
    if-ge v3, v1, :cond_4

    .line 71
    aget-object v5, v0, v3

    .line 73
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    .line 76
    move-result v6

    .line 77
    if-eqz v6, :cond_2

    .line 79
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 82
    move-result-object v6

    .line 83
    const-string v7, "lib"

    .line 85
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 88
    move-result v7

    .line 89
    if-eqz v7, :cond_2

    .line 91
    const-string v7, ".so"

    .line 93
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 96
    move-result v7

    .line 97
    if-eqz v7, :cond_2

    .line 99
    const-string v7, "libcmb_"

    .line 101
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 104
    move-result v7

    .line 105
    if-nez v7, :cond_2

    .line 107
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 110
    move-result v7

    .line 111
    const/4 v8, 0x3

    .line 112
    sub-int/2addr v7, v8

    .line 113
    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 116
    move-result-object v6

    .line 117
    iget-object v7, p0, Lyw;->q:Ljava/util/ArrayList;

    .line 119
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 122
    move-result v7

    .line 123
    if-eqz v7, :cond_1

    .line 125
    goto :goto_1

    .line 126
    :cond_1
    invoke-virtual {p0, v6}, Lyw;->n(Ljava/lang/String;)V

    .line 129
    new-instance v4, Ljava/lang/StringBuilder;

    .line 131
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    const-string v6, "addDebugLib: "

    .line 136
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 142
    move-result-object v5

    .line 143
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object v6

    .line 150
    const/4 v7, 0x0

    .line 151
    const/4 v8, 0x0

    .line 152
    const/4 v9, 0x0

    .line 153
    const/4 v10, 0x4

    .line 154
    const/4 v11, 0x0

    .line 155
    const/4 v12, 0x0

    .line 156
    invoke-static/range {v6 .. v12}, Lmh0;->a(Ljava/lang/CharSequence;IZZIII)V

    .line 159
    const/4 v4, 0x1

    .line 160
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 162
    goto :goto_0

    .line 163
    :cond_3
    const/4 v4, 0x0

    .line 164
    :cond_4
    if-eqz v4, :cond_5

    .line 166
    iget-object v0, p0, Lyw;->m:Ljava/lang/String;

    .line 168
    const/4 v1, -0x5

    .line 169
    invoke-virtual {p0, v0, v1}, Lyw;->o(Ljava/lang/String;I)V

    .line 172
    :cond_5
    or-int v0, v2, v4

    .line 174
    return v0
.end method

.method public final s(Ljava/lang/String;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lyw;->p:Landroid/content/Context;

    .line 3
    const-string v1, "so_version"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    const-string v3, "lib"

    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string p1, ".so"

    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    const-string v3, "LateLibrary/"

    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    iget-object v4, p0, Lyw;->j:Ljava/lang/String;

    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v3

    .line 66
    new-instance v4, Ljava/io/File;

    .line 68
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 74
    move-result v5

    .line 75
    const-string v6, "copyAsset:"

    .line 77
    if-nez v5, :cond_0

    .line 79
    invoke-virtual {p0, p1, v1, v3}, Lyw;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {p0, p1, v1, v3}, Lyw;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    .line 93
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p1

    .line 106
    new-instance v0, Ljava/lang/Exception;

    .line 108
    const-string v1, "custom so copy fail again"

    .line 110
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0, p1, v0}, Lyw;->y(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 116
    goto :goto_0

    .line 117
    :cond_0
    const-wide/16 v7, 0x0

    .line 119
    invoke-interface {v0, p1, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 122
    move-result-wide v9

    .line 123
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 126
    move-result-wide v4

    .line 127
    const/4 v0, 0x2

    .line 128
    new-array v0, v0, [Ljava/lang/Object;

    .line 130
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 133
    move-result-object v11

    .line 134
    aput-object v11, v0, v2

    .line 136
    const/4 v2, 0x1

    .line 137
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 140
    move-result-object v11

    .line 141
    aput-object v11, v0, v2

    .line 143
    const-string v2, "LibraryLoaderHelper"

    .line 145
    const-string v11, "copyAsset spSoSize={?},length={?}"

    .line 147
    invoke-static {v2, v11, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    cmp-long v0, v4, v7

    .line 152
    if-lez v0, :cond_1

    .line 154
    cmp-long v0, v9, v7

    .line 156
    if-lez v0, :cond_1

    .line 158
    cmp-long v0, v9, v4

    .line 160
    if-eqz v0, :cond_2

    .line 162
    :cond_1
    invoke-virtual {p0, p1, v1, v3}, Lyw;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    .line 170
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object p1

    .line 183
    new-instance v0, Ljava/lang/Exception;

    .line 185
    const-string v1, "custom so copy fail"

    .line 187
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0, p1, v0}, Lyw;->y(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 193
    :cond_2
    :goto_0
    return-void
.end method

.method public final t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lyw;->p:Landroid/content/Context;

    .line 3
    invoke-static {v0, p2, p3}, Ltd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ltd$a;

    .line 6
    move-result-object p2

    .line 7
    new-instance v0, Ljava/io/File;

    .line 9
    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    const/4 p3, 0x2

    .line 13
    new-array p3, p3, [Ljava/lang/Object;

    .line 15
    iget-wide v1, p2, Ltd$a;->b:J

    .line 17
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    aput-object v1, p3, v2

    .line 24
    iget-wide v3, p2, Ltd$a;->a:J

    .line 26
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    move-result-object v1

    .line 30
    const/4 v3, 0x1

    .line 31
    aput-object v1, p3, v3

    .line 33
    const-string v1, "LibraryLoaderHelper"

    .line 35
    const-string v4, "copySo fileInfo.crc32Val={?},fileInfo.size={?}"

    .line 37
    invoke-static {v1, v4, p3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iget-wide v4, p2, Ltd$a;->b:J

    .line 42
    const-wide/16 v6, 0x0

    .line 44
    cmp-long p3, v4, v6

    .line 46
    if-eqz p3, :cond_1

    .line 48
    iget-wide v8, p2, Ltd$a;->a:J

    .line 50
    cmp-long p3, v8, v6

    .line 52
    if-eqz p3, :cond_1

    .line 54
    invoke-static {v0}, Ltd;->b(Ljava/io/File;)J

    .line 57
    move-result-wide v0

    .line 58
    cmp-long p3, v4, v0

    .line 60
    if-eqz p3, :cond_0

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget-object p3, p0, Lyw;->p:Landroid/content/Context;

    .line 65
    const-string v0, "so_version"

    .line 67
    invoke-virtual {p3, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 70
    move-result-object p3

    .line 71
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 74
    move-result-object p3

    .line 75
    iget-wide v0, p2, Ltd$a;->a:J

    .line 77
    invoke-interface {p3, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 80
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 83
    return v2

    .line 84
    :cond_1
    :goto_0
    return v3
.end method

.method public final u(Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    iget-object v2, p0, Lyw;->l:Ljava/lang/String;

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v2, "lib"

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v3, ".so"

    .line 23
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    new-instance v1, Ljava/io/File;

    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    iget-object v5, p0, Lyw;->m:Ljava/lang/String;

    .line 42
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_0

    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    .line 69
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    const-string v2, "copy "

    .line 74
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v2, " "

    .line 86
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 100
    const-string v2, "LibraryLoaderHelper"

    .line 102
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 108
    :cond_0
    return-void
.end method

.method public declared-synchronized w()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lyw;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    :try_start_1
    iput-boolean v0, p0, Lyw;->b:Z

    .line 11
    invoke-virtual {p0}, Lyw;->B()V

    .line 14
    invoke-virtual {p0}, Lyw;->C()V

    .line 17
    invoke-static {}, Ltc0;->m()Ltc0;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ltc0;->q()Z

    .line 24
    move-result v1

    .line 25
    iput-boolean v1, p0, Lyw;->g:Z

    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz v1, :cond_2

    .line 30
    invoke-static {}, Ltc0;->m()Ltc0;

    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Ltc0;->o()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    iput-object v1, p0, Lyw;->h:Ljava/lang/String;

    .line 40
    if-nez v1, :cond_1

    .line 42
    iput-boolean v2, p0, Lyw;->g:Z

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v3, -0x4

    .line 46
    invoke-virtual {p0, v1, v3}, Lyw;->p(Ljava/lang/String;I)V

    .line 49
    :cond_2
    :goto_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 56
    move-result-object v1

    .line 57
    invoke-static {v1}, Lcom/autonavi/common/tool/b;->G(Landroid/content/Context;)Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    iput-object v1, p0, Lyw;->i:Ljava/lang/String;

    .line 63
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_3

    .line 69
    iget-object v1, p0, Lyw;->i:Ljava/lang/String;

    .line 71
    const/4 v3, -0x3

    .line 72
    invoke-virtual {p0, v1, v3}, Lyw;->p(Ljava/lang/String;I)V

    .line 75
    :cond_3
    invoke-virtual {p0}, Lyw;->D()V

    .line 78
    invoke-static {}, Lrv;->H()Lrv;

    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 85
    move-result-object v1

    .line 86
    iput-object v1, p0, Lyw;->p:Landroid/content/Context;

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    iget-object v3, p0, Lyw;->p:Landroid/content/Context;

    .line 95
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 98
    move-result-object v3

    .line 99
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 101
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 106
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object v1

    .line 113
    const/4 v3, -0x1

    .line 114
    invoke-virtual {p0, v1, v3}, Lyw;->p(Ljava/lang/String;I)V

    .line 117
    iget-object v1, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 119
    const-string v3, ""

    .line 121
    invoke-virtual {v1, v3, v2}, Lcom/autonavi/amapauto/framework/LibraryLoader;->addLibraryPath(Ljava/lang/String;I)V

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    .line 126
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    iget-object v2, p0, Lyw;->f:Ljava/lang/String;

    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v2, "/lib/"

    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {p0, v1, v0}, Lyw;->p(Ljava/lang/String;I)V

    .line 146
    invoke-static {}, Lqf0;->d()Z

    .line 149
    move-result v0

    .line 150
    const/4 v1, 0x2

    .line 151
    if-eqz v0, :cond_4

    .line 153
    const-string v0, "/system/lib64"

    .line 155
    invoke-virtual {p0, v0, v1}, Lyw;->p(Ljava/lang/String;I)V

    .line 158
    goto :goto_1

    .line 159
    :cond_4
    const-string v0, "/system/lib"

    .line 161
    invoke-virtual {p0, v0, v1}, Lyw;->p(Ljava/lang/String;I)V

    .line 164
    :goto_1
    invoke-virtual {p0}, Lyw;->r()Z

    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_5

    .line 170
    invoke-virtual {p0}, Lyw;->q()V

    .line 173
    :cond_5
    new-instance v0, Ljava/lang/Thread;

    .line 175
    new-instance v1, Lyw$b;

    .line 177
    invoke-direct {v1, p0}, Lyw$b;-><init>(Lyw;)V

    .line 180
    const-string v2, "LibraryLoader"

    .line 182
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    monitor-exit p0

    .line 189
    return-void

    .line 190
    :catchall_0
    move-exception v0

    .line 191
    monitor-exit p0

    .line 192
    throw v0
.end method

.method public x(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lyw;->a:Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 3
    invoke-virtual {v0, p1}, Lcom/autonavi/amapauto/framework/LibraryLoader;->loadLibrary(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq v0, v1, :cond_0

    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    .line 13
    invoke-direct {v0, p1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 16
    throw v0
.end method

.method public final y(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "LibraryLoaderHelper"

    .line 6
    invoke-static {v1, p1, p2, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 9
    invoke-static {v1, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    return-void
.end method

.method public final z(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lyw;->k:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/String;

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 25
    iget-object p1, p0, Lyw;->k:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 30
    const/4 p1, 0x1

    .line 31
    return p1

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    return p1
.end method
