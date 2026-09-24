.class public abstract Lcom/autonavi/common/tool/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = ""

.field public static b:Z

.field public static c:Lbr;

.field public static d:Landroid/app/Application;

.field public static e:Z

.field public static volatile f:Z

.field public static g:Z

.field public static h:I

.field public static i:J

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field public static p:Ljava/lang/String;

.field public static q:Ljava/lang/String;

.field public static r:Ljava/lang/String;

.field public static s:Ljava/lang/String;

.field public static t:Ljava/lang/String;

.field public static u:Z

.field public static v:I

.field public static w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static A()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/autonavi/common/tool/b;->c:Lbr;

    .line 3
    invoke-interface {v0}, Lbr;->M()Ljava/lang/String;

    .line 6
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    goto :goto_0

    .line 8
    :catchall_0
    const-string v0, ""

    .line 10
    :goto_0
    return-object v0
.end method

.method public static B()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/autonavi/common/tool/b;->c:Lbr;

    .line 3
    invoke-interface {v0}, Lbr;->I()Ljava/lang/String;

    .line 6
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    goto :goto_0

    .line 8
    :catchall_0
    const-string v0, ""

    .line 10
    :goto_0
    return-object v0
.end method

.method public static C()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/autonavi/common/tool/b;->c:Lbr;

    .line 3
    invoke-interface {v0}, Lbr;->j()Ljava/lang/String;

    .line 6
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    goto :goto_0

    .line 8
    :catchall_0
    const-string v0, ""

    .line 10
    :goto_0
    return-object v0
.end method

.method public static D()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lbh;->s()Lbh;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lbh;->x()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static E()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/autonavi/common/tool/b;->c:Lbr;

    .line 3
    invoke-interface {v0}, Lbr;->N()Ljava/lang/String;

    .line 6
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    goto :goto_0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    const-string v0, ""

    .line 14
    :goto_0
    return-object v0
.end method

.method public static F()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/common/tool/b;->o:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    sget-object v0, Lcom/autonavi/common/tool/b;->o:Ljava/lang/String;

    .line 11
    return-object v0

    .line 12
    :cond_0
    :try_start_0
    sget-object v0, Lcom/autonavi/common/tool/b;->c:Lbr;

    .line 14
    invoke-interface {v0}, Lbr;->F()Ljava/lang/String;

    .line 17
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    const-string v0, ""

    .line 21
    :goto_0
    return-object v0
.end method

.method public static G(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/autonavi/common/tool/e;->i(Landroid/content/Context;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static H(Landroid/app/Application;)Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lbh;->s()Lbh;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lbh;->A(Landroid/app/Application;)Ljava/util/List;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static I()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/common/tool/b;->q:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    sget-object v0, Lcom/autonavi/common/tool/b;->q:Ljava/lang/String;

    .line 11
    return-object v0

    .line 12
    :cond_0
    :try_start_0
    sget-object v0, Lcom/autonavi/common/tool/b;->c:Lbr;

    .line 14
    invoke-interface {v0}, Lbr;->B()Ljava/lang/String;

    .line 17
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    const-string v0, ""

    .line 21
    :goto_0
    return-object v0
.end method

.method public static declared-synchronized J(Lbr;)V
    .locals 4

    .line 1
    const-class v0, Lcom/autonavi/common/tool/b;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "initCrashLog begin"

    .line 6
    invoke-static {v1}, Lbz;->d(Ljava/lang/String;)V

    .line 9
    sget-boolean v1, Lcom/autonavi/common/tool/b;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-eqz v1, :cond_0

    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :cond_0
    if-eqz p0, :cond_6

    .line 17
    :try_start_1
    sput-object p0, Lcom/autonavi/common/tool/b;->c:Lbr;

    .line 19
    const/4 v1, 0x0

    .line 20
    sput v1, Lcom/autonavi/common/tool/b;->h:I

    .line 22
    invoke-interface {p0}, Lbr;->a()Landroid/app/Application;

    .line 25
    move-result-object p0

    .line 26
    sput-object p0, Lcom/autonavi/common/tool/b;->d:Landroid/app/Application;

    .line 28
    sget-object p0, Lcom/autonavi/common/tool/b;->c:Lbr;

    .line 30
    invoke-interface {p0}, Lbr;->g()Z

    .line 33
    move-result p0

    .line 34
    sput-boolean p0, Lcom/autonavi/common/tool/b;->e:Z

    .line 36
    const/4 v2, 0x1

    .line 37
    if-eqz p0, :cond_1

    .line 39
    const p0, 0x83ff

    .line 42
    invoke-static {p0}, Lcom/autonavi/common/tool/b;->g0(I)V

    .line 45
    invoke-static {}, Lbh;->V()Z

    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_2

    .line 51
    sput-boolean v1, Lcom/autonavi/common/tool/b;->e:Z

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-static {v2}, Lcom/autonavi/common/tool/b;->g0(I)V

    .line 57
    :cond_2
    :goto_0
    const-string p0, "ErrorHandler.bindDefault"

    .line 59
    invoke-static {p0}, Lbz;->d(Ljava/lang/String;)V

    .line 62
    sget-object p0, Lcom/autonavi/common/tool/b;->c:Lbr;

    .line 64
    invoke-interface {p0}, Lbr;->a()Landroid/app/Application;

    .line 67
    move-result-object p0

    .line 68
    invoke-static {p0}, Lcom/autonavi/common/tool/d;->b(Landroid/app/Application;)V

    .line 71
    const-string p0, "CrashFileManager.init"

    .line 73
    invoke-static {p0}, Lbz;->d(Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lbh;->s()Lbh;

    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p0}, Lbh;->E()V

    .line 83
    const-string p0, ""

    .line 85
    invoke-static {}, Lbh;->s()Lbh;

    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lbh;->u()Ljava/io/File;

    .line 92
    move-result-object v1

    .line 93
    if-eqz v1, :cond_3

    .line 95
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 98
    move-result-object p0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    .line 101
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    const-string v3, "nativeErrorFileName:"

    .line 106
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object v1

    .line 116
    invoke-static {v1}, Lbz;->d(Ljava/lang/String;)V

    .line 119
    :cond_3
    const-string v1, "dumpcrash.install"

    .line 121
    invoke-static {v1}, Lbz;->d(Ljava/lang/String;)V

    .line 124
    sget-object v1, Lcom/autonavi/common/tool/b;->c:Lbr;

    .line 126
    invoke-interface {v1}, Lbr;->O()I

    .line 129
    move-result v1

    .line 130
    sget-boolean v3, Lcom/autonavi/common/tool/b;->e:Z

    .line 132
    invoke-static {p0, v1, v3}, Lcom/autonavi/common/tool/dumpcrash;->install(Ljava/lang/String;IZ)V

    .line 135
    sget-object p0, Lcom/autonavi/common/tool/b;->c:Lbr;

    .line 137
    invoke-interface {p0}, Lbr;->m()Ljava/lang/String;

    .line 140
    move-result-object p0

    .line 141
    const-string v1, "setAppVersion"

    .line 143
    invoke-static {v1}, Lbz;->d(Ljava/lang/String;)V

    .line 146
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_4

    .line 152
    const-string p0, ""

    .line 154
    :cond_4
    invoke-static {p0}, Lcom/autonavi/common/tool/b;->X(Ljava/lang/String;)V

    .line 157
    invoke-static {v2}, Lcom/autonavi/common/tool/b;->e0(Z)V

    .line 160
    sget-object p0, Lcom/autonavi/common/tool/b;->c:Lbr;

    .line 162
    invoke-static {p0}, Lyi0;->d(Lbr;)Lyi0;

    .line 165
    const-string p0, "CommonCollector.init"

    .line 167
    invoke-static {p0}, Lbz;->d(Ljava/lang/String;)V

    .line 170
    sget-object p0, Lcom/autonavi/common/tool/b;->c:Lbr;

    .line 172
    invoke-interface {p0}, Lbr;->a()Landroid/app/Application;

    .line 175
    move-result-object p0

    .line 176
    invoke-static {p0}, Lcom/autonavi/common/tool/a;->c(Landroid/app/Application;)V

    .line 179
    const-string p0, "FDManager.init"

    .line 181
    invoke-static {p0}, Lbz;->d(Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lql;->e()Lql;

    .line 187
    move-result-object p0

    .line 188
    sget-object v1, Lcom/autonavi/common/tool/b;->c:Lbr;

    .line 190
    invoke-interface {v1}, Lbr;->J()Ljava/lang/String;

    .line 193
    move-result-object v1

    .line 194
    invoke-virtual {p0, v1}, Lql;->f(Ljava/lang/String;)V

    .line 197
    sget-object p0, Lcom/autonavi/common/tool/b;->c:Lbr;

    .line 199
    invoke-interface {p0}, Lbr;->a()Landroid/app/Application;

    .line 202
    move-result-object p0

    .line 203
    invoke-static {p0}, Lcom/autonavi/common/tool/e;->n(Landroid/content/Context;)V

    .line 206
    const-string p0, "initCrashModeInfo"

    .line 208
    invoke-static {p0}, Lbz;->d(Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/autonavi/common/tool/b;->K()V

    .line 214
    sput-boolean v2, Lcom/autonavi/common/tool/b;->b:Z

    .line 216
    sget-object p0, Lcom/autonavi/common/tool/b;->c:Lbr;

    .line 218
    invoke-interface {p0}, Lbr;->o()Z

    .line 221
    move-result p0

    .line 222
    if-eqz p0, :cond_5

    .line 224
    invoke-static {}, Lcom/autonavi/common/tool/b;->c()V

    .line 227
    invoke-static {}, Lcom/autonavi/common/tool/b;->d()V

    .line 230
    invoke-static {}, Lbh;->s()Lbh;

    .line 233
    move-result-object p0

    .line 234
    invoke-virtual {p0}, Lbh;->W()V

    .line 237
    :cond_5
    const-string p0, "initCrashLog end"

    .line 239
    invoke-static {p0}, Lbz;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    monitor-exit v0

    .line 243
    return-void

    .line 244
    :cond_6
    :try_start_2
    new-instance p0, Ljava/lang/RuntimeException;

    .line 246
    const-string v1, "CrashLog.initCrashLog controllerParam == null!"

    .line 248
    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 251
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 252
    :catchall_0
    move-exception p0

    .line 253
    monitor-exit v0

    .line 254
    throw p0
.end method

.method public static K()V
    .locals 2

    .line 1
    sget-object v0, Lcom/autonavi/common/tool/b;->c:Lbr;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Lbr;->C()Z

    .line 9
    move-result v0

    .line 10
    sput-boolean v0, Lcom/autonavi/common/tool/b;->u:Z

    .line 12
    sget-object v0, Lcom/autonavi/common/tool/b;->c:Lbr;

    .line 14
    invoke-interface {v0}, Lbr;->q()I

    .line 17
    move-result v0

    .line 18
    sput v0, Lcom/autonavi/common/tool/b;->v:I

    .line 20
    sget-object v0, Lcom/autonavi/common/tool/b;->c:Lbr;

    .line 22
    invoke-interface {v0}, Lbr;->V()I

    .line 25
    move-result v0

    .line 26
    sput v0, Lcom/autonavi/common/tool/b;->w:I

    .line 28
    sget v0, Lcom/autonavi/common/tool/b;->v:I

    .line 30
    const/4 v1, 0x1

    .line 31
    if-ge v0, v1, :cond_1

    .line 33
    sput v1, Lcom/autonavi/common/tool/b;->w:I

    .line 35
    :cond_1
    sget v0, Lcom/autonavi/common/tool/b;->w:I

    .line 37
    if-ge v0, v1, :cond_2

    .line 39
    sput v1, Lcom/autonavi/common/tool/b;->w:I

    .line 41
    :cond_2
    return-void
.end method

.method public static L()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/autonavi/common/tool/b;->e:Z

    .line 3
    return v0
.end method

.method public static M()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/common/tool/b;->c:Lbr;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lbr;->d0()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public static N()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/common/tool/b;->c:Lbr;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lbr;->H()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public static O()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/autonavi/common/tool/dumpcrash;->loadLibrary()V

    .line 4
    return-void
.end method

.method public static P()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/autonavi/common/tool/b;->u:Z

    .line 3
    return v0
.end method

.method public static Q(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {}, Lbh;->s()Lbh;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lbh;->K(Landroid/content/Context;)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static R(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {}, Lbh;->s()Lbh;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lbh;->D(Landroid/content/Context;)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static S()V
    .locals 1

    .line 1
    invoke-static {}, Lbh;->s()Lbh;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lbh;->O()V

    .line 8
    return-void
.end method

.method public static T(Landroid/app/Application;)V
    .locals 1

    .line 1
    invoke-static {}, Lbh;->s()Lbh;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lbh;->P(Landroid/app/Application;)V

    .line 8
    return-void
.end method

.method public static U(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {}, Lbh;->s()Lbh;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lbh;->Q(Landroid/content/Context;)V

    .line 8
    return-void
.end method

.method public static V(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {}, Lbh;->s()Lbh;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lbh;->R(Landroid/content/Context;)V

    .line 8
    return-void
.end method

.method public static W(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/autonavi/common/tool/b;->n:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static X(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/autonavi/common/tool/b;->j:Ljava/lang/String;

    .line 3
    invoke-static {p0}, Lcom/autonavi/common/tool/dumpcrash;->setAppVersion(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public static Y(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/autonavi/common/tool/b;->s:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static Z(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/autonavi/common/tool/b;->p:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/common/tool/e;->e:Ljava/util/List;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public static a0(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/autonavi/common/tool/b;->k:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static b(IIILandroid/app/Application;)V
    .locals 1

    .line 1
    invoke-static {}, Lbh;->s()Lbh;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1, p2, p3}, Lbh;->c(IIILandroid/app/Application;)V

    .line 8
    return-void
.end method

.method public static b0(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/autonavi/common/tool/b;->l:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static c()V
    .locals 1

    .line 1
    invoke-static {}, Lbh;->s()Lbh;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lbh;->m()Z

    .line 8
    move-result v0

    .line 9
    sput-boolean v0, Lcom/autonavi/common/tool/b;->g:Z

    .line 11
    return-void
.end method

.method public static c0(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/autonavi/common/tool/b;->m:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static d()V
    .locals 1

    .line 1
    invoke-static {}, Lbh;->s()Lbh;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lbh;->l()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    sput-boolean v0, Lcom/autonavi/common/tool/b;->g:Z

    .line 13
    :cond_0
    return-void
.end method

.method public static d0(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/autonavi/common/tool/b;->r:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/autonavi/common/tool/sign/Sign;->checkSign(Landroid/content/Context;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static e0(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/autonavi/common/tool/b;->f:Z

    .line 3
    sget-boolean p0, Lcom/autonavi/common/tool/b;->f:Z

    .line 5
    invoke-static {p0}, Lcom/autonavi/common/tool/dumpcrash;->setRepotOtherThread(Z)V

    .line 8
    return-void
.end method

.method public static varargs f(Landroid/content/Context;ZZ[Ljava/io/File;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lxf0;->h(Landroid/content/Context;ZZ[Ljava/io/File;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static f0(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/autonavi/common/tool/b;->t:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static g()I
    .locals 1

    .line 1
    sget v0, Lcom/autonavi/common/tool/b;->v:I

    .line 3
    return v0
.end method

.method public static declared-synchronized g0(I)V
    .locals 1

    .line 1
    const-class v0, Lcom/autonavi/common/tool/b;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0}, Lbz;->e(I)V

    .line 7
    invoke-static {p0}, Lcom/autonavi/common/tool/dumpcrash;->logSwitch(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0

    .line 14
    throw p0
.end method

.method public static h()I
    .locals 1

    .line 1
    sget v0, Lcom/autonavi/common/tool/b;->w:I

    .line 3
    return v0
.end method

.method public static h0(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/autonavi/common/tool/b;->o:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static i(Lcom/autonavi/common/tool/e$c;Landroid/content/Context;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/autonavi/common/tool/e;->f(Lcom/autonavi/common/tool/e$c;Landroid/content/Context;J)V

    .line 4
    return-void
.end method

.method public static i0(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/autonavi/common/tool/b;->q:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/common/tool/b;->n:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    sget-object v0, Lcom/autonavi/common/tool/b;->n:Ljava/lang/String;

    .line 11
    return-object v0

    .line 12
    :cond_0
    :try_start_0
    sget-object v0, Lcom/autonavi/common/tool/b;->c:Lbr;

    .line 14
    invoke-interface {v0}, Lbr;->getAdiu()Ljava/lang/String;

    .line 17
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    const-string v0, ""

    .line 21
    :goto_0
    return-object v0
.end method

.method public static j0(Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "triggerAnrTraces whiteList = "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "CrashLog"

    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-static {}, Lcom/autonavi/common/tool/b;->l()Landroid/app/Application;

    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_0

    .line 29
    return-void

    .line 30
    :cond_0
    if-nez p0, :cond_1

    .line 32
    const-string p0, ""

    .line 34
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v1}, Lbr;->J()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, ".tamper_anr"

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    new-instance v1, Ljava/io/File;

    .line 66
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_2

    .line 75
    new-instance v2, Ljava/io/File;

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v4, "0"

    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v3

    .line 94
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 100
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 103
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 106
    move-result-wide v1

    .line 107
    const/4 v3, 0x0

    .line 108
    invoke-static {p0, v0, v3}, Lcom/autonavi/common/tool/dumpcrash;->getNativeAnrThreadInfo(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 111
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 114
    move-result-wide v3

    .line 115
    sub-long/2addr v3, v1

    .line 116
    sput-wide v3, Lcom/autonavi/common/tool/b;->i:J

    .line 118
    return-void
.end method

.method public static k()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/autonavi/common/tool/b;->i:J

    .line 3
    return-wide v0
.end method

.method public static k0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "triggerAnrTraces whiteList = "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    move-object v1, p0

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v2, ",anrInfo = "

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    move-object/from16 v13, p1

    .line 22
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string v2, ",anrInfoPath = "

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    move-object/from16 v14, p2

    .line 32
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Lbz;->d(Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lbh;->s()Lbh;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lbh;->G()Z

    .line 49
    move-result v0

    .line 50
    const-string v2, "CrashLog"

    .line 52
    if-eqz v0, :cond_0

    .line 54
    const-string v0, "triggerAnrTraces return as writing = true"

    .line 56
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void

    .line 60
    :cond_0
    sget v0, Lcom/autonavi/common/tool/b;->h:I

    .line 62
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 65
    move-result-object v3

    .line 66
    invoke-interface {v3}, Lbr;->u()I

    .line 69
    move-result v3

    .line 70
    if-lt v0, v3, :cond_1

    .line 72
    const-string v0, "triggerAnrTraces reach process limit count"

    .line 74
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void

    .line 78
    :cond_1
    invoke-static {}, Lbh;->s()Lbh;

    .line 81
    move-result-object v0

    .line 82
    sget-object v3, Lbh$d;->d:Lbh$d;

    .line 84
    invoke-virtual {v0, v3}, Lbh;->I(Lbh$d;)Z

    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_2

    .line 90
    const-string v0, "triggerAnrTraces reach today limit count"

    .line 92
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void

    .line 96
    :cond_2
    invoke-static {}, Lbh;->s()Lbh;

    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lbh;->U()V

    .line 103
    sget v0, Lcom/autonavi/common/tool/b;->h:I

    .line 105
    add-int/lit8 v0, v0, 0x1

    .line 107
    sput v0, Lcom/autonavi/common/tool/b;->h:I

    .line 109
    new-instance v4, Ljava/lang/Exception;

    .line 111
    const-string v0, "auto anr"

    .line 113
    invoke-direct {v4, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-static {v4}, Lxf0;->t(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 119
    move-result-object v3

    .line 120
    invoke-static {}, Lbh;->s()Lbh;

    .line 123
    move-result-object v2

    .line 124
    const/4 v5, 0x0

    .line 125
    const/4 v6, 0x0

    .line 126
    const/4 v7, 0x0

    .line 127
    const/4 v8, 0x0

    .line 128
    const/4 v9, 0x0

    .line 129
    const/4 v10, 0x1

    .line 130
    const/4 v11, 0x1

    .line 131
    move-object v12, p0

    .line 132
    move-object/from16 v13, p1

    .line 134
    move-object/from16 v14, p2

    .line 136
    invoke-virtual/range {v2 .. v14}, Lbh;->M(Ljava/lang/String;Ljava/lang/Throwable;ZLbh$e;Ljava/lang/Thread;ZLbh$f;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public static l()Landroid/app/Application;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/common/tool/b;->d:Landroid/app/Application;

    .line 3
    return-object v0
.end method

.method public static l0(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-static {v0}, Lyi0;->d(Lbr;)Lyi0;

    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lyi0;->g()V

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {v0}, Lyi0;->d(Lbr;)Lyi0;

    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Lyi0;->h()V

    .line 19
    :goto_0
    return-void
.end method

.method public static m()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/autonavi/common/tool/b;->c:Lbr;

    .line 3
    invoke-interface {v0}, Lbr;->n()Ljava/lang/String;

    .line 6
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    goto :goto_0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    const-string v0, ""

    .line 14
    :goto_0
    return-object v0
.end method

.method public static n()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/common/tool/b;->c:Lbr;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Lbr;->h0()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public static o()Lbr;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/common/tool/b;->c:Lbr;

    .line 3
    return-object v0
.end method

.method public static p()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/autonavi/common/tool/b;->c:Lbr;

    .line 3
    invoke-interface {v0}, Lbr;->P()Ljava/lang/String;

    .line 6
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    goto :goto_0

    .line 8
    :catchall_0
    const-string v0, ""

    .line 10
    :goto_0
    return-object v0
.end method

.method public static q()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/common/tool/b;->s:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    sget-object v0, Lcom/autonavi/common/tool/b;->s:Ljava/lang/String;

    .line 11
    return-object v0

    .line 12
    :cond_0
    :try_start_0
    sget-object v0, Lcom/autonavi/common/tool/b;->c:Lbr;

    .line 14
    invoke-interface {v0}, Lbr;->Q()Ljava/lang/String;

    .line 17
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    const-string v0, ""

    .line 21
    :goto_0
    return-object v0
.end method

.method public static r()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/common/tool/b;->p:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    sget-object v0, Lcom/autonavi/common/tool/b;->p:Ljava/lang/String;

    .line 11
    return-object v0

    .line 12
    :cond_0
    :try_start_0
    sget-object v0, Lcom/autonavi/common/tool/b;->c:Lbr;

    .line 14
    invoke-interface {v0}, Lbr;->l0()Ljava/lang/String;

    .line 17
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    const-string v0, ""

    .line 21
    :goto_0
    return-object v0
.end method

.method public static s()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/common/tool/b;->k:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    sget-object v0, Lcom/autonavi/common/tool/b;->k:Ljava/lang/String;

    .line 11
    return-object v0

    .line 12
    :cond_0
    :try_start_0
    sget-object v0, Lcom/autonavi/common/tool/b;->c:Lbr;

    .line 14
    invoke-interface {v0}, Lbr;->getDiu()Ljava/lang/String;

    .line 17
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    const-string v0, ""

    .line 21
    :goto_0
    return-object v0
.end method

.method public static t()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/common/tool/b;->l:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    sget-object v0, Lcom/autonavi/common/tool/b;->l:Ljava/lang/String;

    .line 11
    return-object v0

    .line 12
    :cond_0
    :try_start_0
    sget-object v0, Lcom/autonavi/common/tool/b;->c:Lbr;

    .line 14
    invoke-interface {v0}, Lbr;->b0()Ljava/lang/String;

    .line 17
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    const-string v0, ""

    .line 21
    :goto_0
    return-object v0
.end method

.method public static u()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/common/tool/b;->m:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    sget-object v0, Lcom/autonavi/common/tool/b;->m:Ljava/lang/String;

    .line 11
    return-object v0

    .line 12
    :cond_0
    :try_start_0
    sget-object v0, Lcom/autonavi/common/tool/b;->c:Lbr;

    .line 14
    invoke-interface {v0}, Lbr;->e()Ljava/lang/String;

    .line 17
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    const-string v0, ""

    .line 21
    :goto_0
    return-object v0
.end method

.method public static v()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/common/tool/b;->r:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    sget-object v0, Lcom/autonavi/common/tool/b;->r:Ljava/lang/String;

    .line 11
    return-object v0

    .line 12
    :cond_0
    :try_start_0
    sget-object v0, Lcom/autonavi/common/tool/b;->c:Lbr;

    .line 14
    invoke-interface {v0}, Lbr;->A()Ljava/lang/String;

    .line 17
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    const-string v0, ""

    .line 21
    :goto_0
    return-object v0
.end method

.method public static w()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/autonavi/common/tool/b;->c:Lbr;

    .line 3
    invoke-interface {v0}, Lbr;->T()Ljava/lang/String;

    .line 6
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    goto :goto_0

    .line 8
    :catchall_0
    const-string v0, ""

    .line 10
    :goto_0
    return-object v0
.end method

.method public static x()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/autonavi/common/tool/b;->f:Z

    .line 3
    return v0
.end method

.method public static y()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lcom/autonavi/common/tool/b;->c:Lbr;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-interface {v0}, Lbr;->J()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const-string v3, "getLocalCrashDir filePath = "

    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    invoke-static {v2}, Lbz;->a(Ljava/lang/String;)V

    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 37
    return-object v1

    .line 38
    :cond_1
    new-instance v1, Ljava/io/File;

    .line 40
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_2

    .line 49
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_3

    .line 55
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 58
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 65
    :cond_3
    :goto_0
    return-object v0
.end method

.method public static z()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/common/tool/b;->t:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    sget-object v0, Lcom/autonavi/common/tool/b;->t:Ljava/lang/String;

    .line 11
    return-object v0

    .line 12
    :cond_0
    :try_start_0
    sget-object v0, Lcom/autonavi/common/tool/b;->c:Lbr;

    .line 14
    invoke-interface {v0}, Lbr;->i()Ljava/lang/String;

    .line 17
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    const-string v0, ""

    .line 21
    :goto_0
    return-object v0
.end method
