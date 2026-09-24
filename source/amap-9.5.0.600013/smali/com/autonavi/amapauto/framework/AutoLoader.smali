.class public Lcom/autonavi/amapauto/framework/AutoLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/amapauto/framework/AutoLoader$a;
    }
.end annotation


# static fields
.field public static j:I = 0x9

.field public static k:Lcom/autonavi/amapauto/framework/AutoLoader;

.field public static l:Z

.field public static m:Z

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field public static p:Ljava/lang/String;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:Z

.field public h:I

.field public i:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/framework/AutoLoader;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/framework/AutoLoader;->k:Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 8
    const/4 v0, 0x1

    .line 9
    sput-boolean v0, Lcom/autonavi/amapauto/framework/AutoLoader;->l:Z

    .line 11
    const/4 v1, 0x0

    .line 12
    sput-boolean v1, Lcom/autonavi/amapauto/framework/AutoLoader;->m:Z

    .line 14
    const/4 v2, 0x0

    .line 15
    sput-object v2, Lcom/autonavi/amapauto/framework/AutoLoader;->n:Ljava/lang/String;

    .line 17
    sput-object v2, Lcom/autonavi/amapauto/framework/AutoLoader;->o:Ljava/lang/String;

    .line 19
    sput-object v2, Lcom/autonavi/amapauto/framework/AutoLoader;->p:Ljava/lang/String;

    .line 21
    invoke-static {}, Ltc0;->m()Ltc0;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Ltc0;->o()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    sput-object v2, Lcom/autonavi/amapauto/framework/AutoLoader;->n:Ljava/lang/String;

    .line 31
    invoke-static {}, Ltc0;->m()Ltc0;

    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Ltc0;->l()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    sput-object v2, Lcom/autonavi/amapauto/framework/AutoLoader;->o:Ljava/lang/String;

    .line 41
    invoke-static {}, Ltc0;->m()Ltc0;

    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Ltc0;->j()Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 49
    sput-object v2, Lcom/autonavi/amapauto/framework/AutoLoader;->p:Ljava/lang/String;

    .line 51
    invoke-static {}, Ltc0;->m()Ltc0;

    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Ltc0;->q()Z

    .line 58
    move-result v2

    .line 59
    sput-boolean v2, Lcom/autonavi/amapauto/framework/AutoLoader;->m:Z

    .line 61
    new-array v3, v0, [Ljava/lang/Object;

    .line 63
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 66
    move-result-object v2

    .line 67
    aput-object v2, v3, v1

    .line 69
    const-string v2, "AutoLoader"

    .line 71
    const-string v4, "needUpdate:{?},return"

    .line 73
    invoke-static {v2, v4, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    sget-object v3, Lcom/autonavi/amapauto/framework/AutoLoader;->n:Ljava/lang/String;

    .line 78
    if-eqz v3, :cond_0

    .line 80
    new-array v4, v0, [Ljava/lang/Object;

    .line 82
    aput-object v3, v4, v1

    .line 84
    const-string v3, "updateLibPath:{?}"

    .line 86
    invoke-static {v2, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    :cond_0
    sget-object v3, Lcom/autonavi/amapauto/framework/AutoLoader;->o:Ljava/lang/String;

    .line 91
    if-eqz v3, :cond_1

    .line 93
    new-array v4, v0, [Ljava/lang/Object;

    .line 95
    aput-object v3, v4, v1

    .line 97
    const-string v3, "updateConfPath:{?}"

    .line 99
    invoke-static {v2, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    invoke-static {}, Lrv;->H()Lrv;

    .line 105
    move-result-object v3

    .line 106
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->y()Ljava/lang/String;

    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v3, v4}, Lrv;->p0(Ljava/lang/String;)V

    .line 113
    :cond_1
    sget-object v3, Lcom/autonavi/amapauto/framework/AutoLoader;->p:Ljava/lang/String;

    .line 115
    if-eqz v3, :cond_2

    .line 117
    new-array v0, v0, [Ljava/lang/Object;

    .line 119
    aput-object v3, v0, v1

    .line 121
    const-string v1, "updateGFrameStylePath:{?}"

    .line 123
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/autonavi/amapauto/framework/AutoLoader;->c:J

    .line 8
    iput-wide v0, p0, Lcom/autonavi/amapauto/framework/AutoLoader;->d:J

    .line 10
    iput-wide v0, p0, Lcom/autonavi/amapauto/framework/AutoLoader;->e:J

    .line 12
    iput-wide v0, p0, Lcom/autonavi/amapauto/framework/AutoLoader;->f:J

    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/autonavi/amapauto/framework/AutoLoader;->g:Z

    .line 17
    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/autonavi/amapauto/framework/AutoLoader;->h:I

    .line 20
    iput-boolean v0, p0, Lcom/autonavi/amapauto/framework/AutoLoader;->i:Z

    .line 22
    return-void
.end method

.method public static A()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/framework/AutoLoader;->n:Ljava/lang/String;

    .line 3
    const-string v1, ""

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-object v1

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 14
    return-object v1

    .line 15
    :cond_1
    sget-object v0, Lcom/autonavi/amapauto/framework/AutoLoader;->n:Ljava/lang/String;

    .line 17
    return-object v0
.end method

.method private native DoReadProjConfig(Ljava/lang/String;)I
.end method

.method private native InitEnv(Landroid/content/res/AssetManager;Z[Ljava/lang/String;)I
.end method

.method private native NativeGetProjConfig(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native NativeSetApplicationStatusInfo(JJ)V
.end method

.method private native NativeSetProjConfig(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native NativeSetStartUpInfo(JJJJI)V
.end method

.method public static a()Lcom/autonavi/amapauto/framework/AutoLoader;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/framework/AutoLoader;->k:Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 3
    return-object v0
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/Runnable;
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/framework/AutoLoader$a;

    .line 3
    invoke-direct {v0, p0}, Lcom/autonavi/amapauto/framework/AutoLoader$a;-><init>(Landroid/content/Context;)V

    .line 6
    return-object v0
.end method

.method public static l()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    return-object v0
.end method

.method public static m()V
    .locals 4

    .line 1
    const-string v0, "System.loadLibrary begin"

    .line 3
    invoke-static {v0}, Lcom/autonavi/amapauto/Hook;->a(Ljava/lang/String;)V

    .line 6
    sget-boolean v0, Lcom/autonavi/amapauto/framework/AutoLoader;->m:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    sget-object v0, Lcom/autonavi/amapauto/framework/AutoLoader;->n:Ljava/lang/String;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    invoke-static {}, Ldx;->c()Ldx;

    .line 17
    move-result-object v0

    .line 18
    sget-object v1, Lcom/autonavi/amapauto/framework/AutoLoader;->n:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v1}, Ldx;->j(Ljava/lang/String;)V

    .line 23
    :cond_0
    const-string v0, "base_utils"

    .line 25
    invoke-static {v0}, Lcom/autonavi/amapauto/framework/AutoLoader;->r(Ljava/lang/String;)V

    .line 28
    const-string v0, "GPlatformInterface"

    .line 30
    invoke-static {v0}, Lcom/autonavi/amapauto/framework/AutoLoader;->r(Ljava/lang/String;)V

    .line 33
    const-string v0, "openssl"

    .line 35
    invoke-static {v0}, Lcom/autonavi/amapauto/framework/AutoLoader;->r(Ljava/lang/String;)V

    .line 38
    const-string v0, "iksemel"

    .line 40
    invoke-static {v0}, Lcom/autonavi/amapauto/framework/AutoLoader;->r(Ljava/lang/String;)V

    .line 43
    const-string v0, "OSL_MNN"

    .line 45
    invoke-static {v0}, Lcom/autonavi/amapauto/framework/AutoLoader;->r(Ljava/lang/String;)V

    .line 48
    const-string v0, "GUltraLog"

    .line 50
    invoke-static {v0}, Lcom/autonavi/amapauto/framework/AutoLoader;->r(Ljava/lang/String;)V

    .line 53
    const-string v0, "AmapFreeType"

    .line 55
    invoke-static {v0}, Lcom/autonavi/amapauto/framework/AutoLoader;->r(Ljava/lang/String;)V

    .line 58
    const-string v0, "GComm3rd"

    .line 60
    invoke-static {v0}, Lcom/autonavi/amapauto/framework/AutoLoader;->r(Ljava/lang/String;)V

    .line 63
    const-string v0, "turbo"

    .line 65
    invoke-static {v0}, Lcom/autonavi/amapauto/framework/AutoLoader;->r(Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x0

    .line 69
    new-array v0, v0, [Ljava/lang/Object;

    .line 71
    const-string v1, "AutoLoader"

    .line 73
    const-string v2, "BuildConfig.ENABLE_BLUEBIRD = false"

    .line 75
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    invoke-static {}, Lcom/autonavi/amapauto/framework/CrashBridge;->a()V

    .line 81
    invoke-static {}, Lyw;->v()Lyw;

    .line 84
    move-result-object v0

    .line 85
    invoke-static {}, Lcom/autonavi/amapauto/framework/TurboConfig;->c()Lcom/autonavi/amapauto/framework/TurboConfig;

    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v2}, Lcom/autonavi/amapauto/framework/TurboConfig;->l()V

    .line 92
    invoke-static {}, Li7;->a()Li7;

    .line 95
    move-result-object v2

    .line 96
    invoke-static {}, Lrv;->H()Lrv;

    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v3}, Lrv;->z()Landroid/content/Context;

    .line 103
    move-result-object v3

    .line 104
    invoke-static {v3}, Lcom/autonavi/amapauto/framework/AutoLoader;->j(Landroid/content/Context;)Ljava/lang/Runnable;

    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {v2, v3}, Li7;->c(Ljava/lang/Runnable;)V

    .line 111
    invoke-virtual {v0}, Lyw;->w()V

    .line 114
    const-string v2, "GAdaptor"

    .line 116
    invoke-virtual {v0, v2}, Lyw;->x(Ljava/lang/String;)V

    .line 119
    const-string v0, "apssdk"

    .line 121
    invoke-static {v0}, Lcom/autonavi/amapauto/framework/AutoLoader;->r(Ljava/lang/String;)V

    .line 124
    const-string v0, "initEarlyLibrary load finish"

    .line 126
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v0, "System.loadLibrary end"

    .line 131
    invoke-static {v0}, Lcom/autonavi/amapauto/Hook;->a(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public static n()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/autonavi/amapauto/framework/AutoLoader;->l:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    sput-boolean v0, Lcom/autonavi/amapauto/framework/AutoLoader;->l:Z

    .line 9
    const-string v0, "initLateLibrary begin"

    .line 11
    invoke-static {v0}, Lcom/autonavi/amapauto/Hook;->a(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lyw;->v()Lyw;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lyw;->F()V

    .line 21
    const-string v0, "initLateLibrary end"

    .line 23
    invoke-static {v0}, Lcom/autonavi/amapauto/Hook;->a(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method private native native_dumpInfo()V
.end method

.method private native native_exit_notify()V
.end method

.method private native native_setAttribute(II)V
.end method

.method private native native_setInfo(ILjava/lang/String;)V
.end method

.method private native native_trace(Ljava/lang/String;Z)V
.end method

.method public static q()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/autonavi/amapauto/framework/AutoLoader;->m:Z

    .line 3
    return v0
.end method

.method public static r(Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 7
    const-string v1, "AutoLoader"

    .line 9
    const-string v2, "loadLibrary  soName:{?}"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-static {p0}, Lt7;->i(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static y()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/framework/AutoLoader;->o:Ljava/lang/String;

    .line 3
    const-string v1, ""

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-object v1

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 14
    return-object v1

    .line 15
    :cond_1
    sget-object v0, Lcom/autonavi/amapauto/framework/AutoLoader;->o:Ljava/lang/String;

    .line 17
    return-object v0
.end method

.method public static z()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/framework/AutoLoader;->p:Ljava/lang/String;

    .line 3
    const-string v1, ""

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-object v1

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 14
    return-object v1

    .line 15
    :cond_1
    sget-object v0, Lcom/autonavi/amapauto/framework/AutoLoader;->p:Ljava/lang/String;

    .line 17
    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/framework/AutoLoader;->NativeGetProjConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public c()V
    .locals 2

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
    const-string v1, "proj_test/ProjConfig.json"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Ljava/io/File;

    .line 24
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    invoke-static {}, Ltc0;->m()Ltc0;

    .line 37
    move-result-object v0

    .line 38
    iget-boolean v0, v0, Ltc0;->h:Z

    .line 40
    if-eqz v0, :cond_2

    .line 42
    invoke-static {}, Ltc0;->m()Ltc0;

    .line 45
    move-result-object v0

    .line 46
    iget-object v0, v0, Ltc0;->f:Ljava/lang/String;

    .line 48
    if-eqz v0, :cond_2

    .line 50
    invoke-static {}, Ltc0;->m()Ltc0;

    .line 53
    move-result-object v0

    .line 54
    iget-object v0, v0, Ltc0;->f:Ljava/lang/String;

    .line 56
    const-string v1, "/"

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_1

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    invoke-static {}, Ltc0;->m()Ltc0;

    .line 72
    move-result-object v1

    .line 73
    iget-object v1, v1, Ltc0;->f:Ljava/lang/String;

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, "ProjConfig.json"

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    goto :goto_0

    .line 88
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    invoke-static {}, Ltc0;->m()Ltc0;

    .line 96
    move-result-object v1

    .line 97
    iget-object v1, v1, Ltc0;->f:Ljava/lang/String;

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, "/ProjConfig.json"

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 111
    :goto_0
    new-instance v1, Ljava/io/File;

    .line 113
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_2

    .line 122
    goto :goto_1

    .line 123
    :cond_2
    const/4 v0, 0x0

    .line 124
    :goto_1
    invoke-direct {p0, v0}, Lcom/autonavi/amapauto/framework/AutoLoader;->DoReadProjConfig(Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method public d(J)V
    .locals 10

    .line 1
    const-wide/16 v3, 0x0

    .line 3
    const-wide/16 v5, 0x0

    .line 5
    const-wide/16 v7, 0x0

    .line 7
    const/4 v9, 0x6

    .line 8
    move-object v0, p0

    .line 9
    move-wide v1, p1

    .line 10
    invoke-direct/range {v0 .. v9}, Lcom/autonavi/amapauto/framework/AutoLoader;->NativeSetStartUpInfo(JJJJI)V

    .line 13
    return-void
.end method

.method public e(J)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/autonavi/amapauto/framework/AutoLoader;->NativeSetApplicationStatusInfo(JJ)V

    .line 8
    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/autonavi/amapauto/framework/AutoLoader;->NativeSetProjConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public g()V
    .locals 10

    .line 1
    iget-wide v1, p0, Lcom/autonavi/amapauto/framework/AutoLoader;->c:J

    .line 3
    iget-wide v3, p0, Lcom/autonavi/amapauto/framework/AutoLoader;->d:J

    .line 5
    iget-wide v5, p0, Lcom/autonavi/amapauto/framework/AutoLoader;->e:J

    .line 7
    iget-wide v7, p0, Lcom/autonavi/amapauto/framework/AutoLoader;->f:J

    .line 9
    iget v9, p0, Lcom/autonavi/amapauto/framework/AutoLoader;->h:I

    .line 11
    move-object v0, p0

    .line 12
    invoke-direct/range {v0 .. v9}, Lcom/autonavi/amapauto/framework/AutoLoader;->NativeSetStartUpInfo(JJJJI)V

    .line 15
    return-void
.end method

.method public h()V
    .locals 15

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/framework/AutoLoader;->o()V

    .line 4
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->q()Z

    .line 7
    move-result v0

    .line 8
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->A()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->y()Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->z()Ljava/lang/String;

    .line 19
    move-result-object v3

    .line 20
    invoke-static {}, Lze0;->h()Lze0;

    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v4}, Lze0;->m()Ljava/lang/String;

    .line 27
    move-result-object v4

    .line 28
    new-instance v5, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    invoke-static {}, Lrv;->H()Lrv;

    .line 36
    move-result-object v6

    .line 37
    iget-object v7, p0, Lcom/autonavi/amapauto/framework/AutoLoader;->a:Landroid/content/Context;

    .line 39
    invoke-virtual {v6, v7}, Lrv;->D(Landroid/content/Context;)Landroid/content/Context;

    .line 42
    move-result-object v6

    .line 43
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 46
    move-result-object v6

    .line 47
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 49
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v6, "/files"

    .line 54
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v8

    .line 61
    invoke-static {}, Lze0;->h()Lze0;

    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v5}, Lze0;->l()Ljava/lang/String;

    .line 68
    move-result-object v5

    .line 69
    const/4 v6, 0x1

    .line 70
    new-array v7, v6, [Ljava/lang/Object;

    .line 72
    const/4 v9, 0x0

    .line 73
    aput-object v1, v7, v9

    .line 75
    const-string v10, "AutoLoader"

    .line 77
    const-string v11, "updateLibPath:{?}"

    .line 79
    invoke-static {v10, v11, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    new-array v7, v6, [Ljava/lang/Object;

    .line 84
    aput-object v2, v7, v9

    .line 86
    const-string v11, "updateConfPath:{?}"

    .line 88
    invoke-static {v10, v11, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    new-array v7, v6, [Ljava/lang/Object;

    .line 93
    aput-object v3, v7, v9

    .line 95
    const-string v11, "gframeStylePath:{?}"

    .line 97
    invoke-static {v10, v11, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    new-array v7, v6, [Ljava/lang/Object;

    .line 102
    aput-object v4, v7, v9

    .line 104
    const-string v11, "sdcardPath:{?}"

    .line 106
    invoke-static {v10, v11, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    new-array v7, v6, [Ljava/lang/Object;

    .line 111
    aput-object v8, v7, v9

    .line 113
    const-string v11, "filePath:{?}"

    .line 115
    invoke-static {v10, v11, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    new-array v6, v6, [Ljava/lang/Object;

    .line 120
    iget-object v7, p0, Lcom/autonavi/amapauto/framework/AutoLoader;->b:Ljava/lang/String;

    .line 122
    aput-object v7, v6, v9

    .line 124
    const-string v7, "mLibPath:{?}"

    .line 126
    invoke-static {v10, v7, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    const-string v6, "amapauto9"

    .line 131
    const-string v7, ""

    .line 133
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 136
    move-result-object v4

    .line 137
    invoke-static {}, Lqf0;->c()Ljava/lang/String;

    .line 140
    move-result-object v9

    .line 141
    invoke-static {}, Lqf0;->b()Ljava/lang/String;

    .line 144
    move-result-object v10

    .line 145
    iget-object v11, p0, Lcom/autonavi/amapauto/framework/AutoLoader;->b:Ljava/lang/String;

    .line 147
    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    .line 149
    invoke-static {}, Lt7;->d()Ljava/lang/String;

    .line 152
    move-result-object v13

    .line 153
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 156
    move-result-object v14

    .line 157
    move-object v5, v9

    .line 158
    move-object v6, v10

    .line 159
    move-object v7, v11

    .line 160
    move-object v9, v12

    .line 161
    move-object v10, v13

    .line 162
    move-object v11, v14

    .line 163
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    .line 166
    move-result-object v1

    .line 167
    iget-object v2, p0, Lcom/autonavi/amapauto/framework/AutoLoader;->a:Landroid/content/Context;

    .line 169
    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 172
    move-result-object v2

    .line 173
    invoke-direct {p0, v2, v0, v1}, Lcom/autonavi/amapauto/framework/AutoLoader;->InitEnv(Landroid/content/res/AssetManager;Z[Ljava/lang/String;)I

    .line 176
    return-void
.end method

.method public i()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/framework/AutoLoader;->native_dumpInfo()V

    .line 4
    invoke-static {}, Lb7;->a()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {}, Lze0;->h()Lze0;

    .line 18
    move-result-object v1

    .line 19
    const-string v2, "AutoInfo.dmp"

    .line 21
    invoke-virtual {v1, v2}, Lze0;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x0

    .line 26
    :try_start_0
    new-instance v3, Ljava/io/File;

    .line 28
    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    new-instance v1, Ljava/io/FileOutputStream;

    .line 33
    const/4 v4, 0x1

    .line 34
    invoke-direct {v1, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 37
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 47
    goto :goto_2

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    move-object v2, v1

    .line 50
    goto :goto_3

    .line 51
    :catch_0
    move-exception v0

    .line 52
    move-object v2, v1

    .line 53
    goto :goto_0

    .line 54
    :catch_1
    move-exception v0

    .line 55
    move-object v2, v1

    .line 56
    goto :goto_1

    .line 57
    :catchall_1
    move-exception v0

    .line 58
    goto :goto_3

    .line 59
    :catch_2
    move-exception v0

    .line 60
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 63
    if-eqz v2, :cond_1

    .line 65
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 68
    goto :goto_2

    .line 69
    :catch_3
    move-exception v0

    .line 70
    :goto_1
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 73
    if-eqz v2, :cond_1

    .line 75
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 78
    goto :goto_2

    .line 79
    :catch_4
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    :cond_1
    :goto_2
    return-void

    .line 84
    :goto_3
    if-eqz v2, :cond_2

    .line 86
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 89
    goto :goto_4

    .line 90
    :catch_5
    move-exception v1

    .line 91
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    :cond_2
    :goto_4
    throw v0
.end method

.method public k()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->l()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const-string v2, "\nserialNo:"

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v0, ""

    .line 31
    :goto_0
    invoke-virtual {p0}, Lcom/autonavi/amapauto/framework/AutoLoader;->i()V

    .line 34
    invoke-static {}, Lze0;->h()Lze0;

    .line 37
    move-result-object v1

    .line 38
    const-string v2, "AutoInfo.dmp"

    .line 40
    invoke-virtual {v1, v2}, Lze0;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1}, Lcom/autonavi/amapauto/utils/FileUtils;->readFile(Ljava/lang/String;)[B

    .line 47
    move-result-object v1

    .line 48
    if-eqz v1, :cond_1

    .line 50
    array-length v2, v1

    .line 51
    if-lez v2, :cond_1

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v0, "\n"

    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v0, "utf-8"

    .line 68
    invoke-static {v1, v0}, Lxk;->b([BLjava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    :cond_1
    return-object v0
.end method

.method public native native_diagnose(I)Ljava/lang/String;
.end method

.method public native native_initAlc()V
.end method

.method public native native_reportInfo(IILjava/lang/String;)V
.end method

.method public native native_sendBusCommand(ILjava/lang/String;)V
.end method

.method public o()V
    .locals 2

    .line 1
    invoke-static {}, Lr50;->k()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/io/File;

    .line 7
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 16
    iput-object v0, p0, Lcom/autonavi/amapauto/framework/AutoLoader;->b:Ljava/lang/String;

    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    const-string v1, "/data/data/"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-static {}, Lrv;->H()Lrv;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, "/lib/"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    new-instance v1, Ljava/io/File;

    .line 55
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_1

    .line 64
    iput-object v0, p0, Lcom/autonavi/amapauto/framework/AutoLoader;->b:Ljava/lang/String;

    .line 66
    :cond_1
    invoke-static {}, Lqf0;->a()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    new-instance v1, Ljava/io/File;

    .line 72
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_2

    .line 81
    iput-object v0, p0, Lcom/autonavi/amapauto/framework/AutoLoader;->b:Ljava/lang/String;

    .line 83
    :cond_2
    return-void
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/framework/AutoLoader;->i:Z

    .line 3
    return v0
.end method

.method public s()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/framework/AutoLoader;->native_exit_notify()V

    .line 4
    return-void
.end method

.method public t(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/autonavi/amapauto/framework/AutoLoader;->native_trace(Ljava/lang/String;Z)V

    .line 4
    return-void
.end method

.method public u(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/autonavi/amapauto/framework/AutoLoader;->native_sendBusCommand(ILjava/lang/String;)V

    .line 4
    return-void
.end method

.method public v(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/autonavi/amapauto/framework/AutoLoader;->native_setAttribute(II)V

    .line 4
    return-void
.end method

.method public w(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/framework/AutoLoader;->a:Landroid/content/Context;

    .line 3
    return-void
.end method

.method public x(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/framework/AutoLoader;->i:Z

    .line 3
    return-void
.end method
