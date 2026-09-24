.class public Ltc0;
.super Lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltc0$a;
    }
.end annotation


# instance fields
.field public final A:Ljava/lang/String;

.field public final B:Ljava/lang/String;

.field public final C:Ljava/lang/String;

.field public final D:Ljava/lang/String;

.field public final E:Ljava/lang/String;

.field public final F:Ljava/lang/String;

.field public final G:Ljava/lang/String;

.field public final H:Ljava/lang/String;

.field public I:Z

.field public final J:Ljava/lang/String;

.field public K:Ljava/lang/String;

.field public L:Ljava/lang/String;

.field public M:Z

.field public N:Z

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:Z

.field public S:Z

.field public T:Landroid/content/Context;

.field public U:Ljava/io/File;

.field public V:Lcj;

.field public W:Ljava/util/LinkedHashMap;

.field public X:Ljava/lang/String;

.field public Y:Ljava/lang/String;

.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:Ljava/lang/Object;

.field public j:Z

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;

.field public final r:Ljava/lang/String;

.field public final s:Ljava/lang/String;

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/String;

.field public final v:Ljava/lang/String;

.field public final w:Ljava/lang/String;

.field public final x:Ljava/lang/String;

.field public final y:Ljava/lang/String;

.field public final z:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lt;-><init>()V

    .line 4
    const-string v0, "UpdateMng"

    .line 6
    iput-object v0, p0, Ltc0;->a:Ljava/lang/String;

    .line 8
    const-string v1, "AutoUpdate/run/"

    .line 10
    iput-object v1, p0, Ltc0;->b:Ljava/lang/String;

    .line 12
    const/4 v2, 0x0

    .line 13
    iput-boolean v2, p0, Ltc0;->c:Z

    .line 15
    const/4 v3, 0x0

    .line 16
    iput-object v3, p0, Ltc0;->d:Ljava/lang/String;

    .line 18
    iput-object v3, p0, Ltc0;->e:Ljava/lang/String;

    .line 20
    iput-object v3, p0, Ltc0;->f:Ljava/lang/String;

    .line 22
    iput-object v3, p0, Ltc0;->g:Ljava/lang/String;

    .line 24
    iput-boolean v2, p0, Ltc0;->h:Z

    .line 26
    iput-object v3, p0, Ltc0;->i:Ljava/lang/Object;

    .line 28
    iput-boolean v2, p0, Ltc0;->j:Z

    .line 30
    const-string v4, "libcmb_GVersion.so"

    .line 32
    iput-object v4, p0, Ltc0;->k:Ljava/lang/String;

    .line 34
    const-string v4, "SelfUpdate"

    .line 36
    iput-object v4, p0, Ltc0;->l:Ljava/lang/String;

    .line 38
    const-string v4, "GPlatformInterface"

    .line 40
    iput-object v4, p0, Ltc0;->m:Ljava/lang/String;

    .line 42
    const-string v4, "GComm3rd"

    .line 44
    iput-object v4, p0, Ltc0;->n:Ljava/lang/String;

    .line 46
    const-string v4, "GNet"

    .line 48
    iput-object v4, p0, Ltc0;->o:Ljava/lang/String;

    .line 50
    const-string v4, "base_utils"

    .line 52
    iput-object v4, p0, Ltc0;->p:Ljava/lang/String;

    .line 54
    const-string v4, "OSL_MNN"

    .line 56
    iput-object v4, p0, Ltc0;->q:Ljava/lang/String;

    .line 58
    const-string v4, "openssl"

    .line 60
    iput-object v4, p0, Ltc0;->r:Ljava/lang/String;

    .line 62
    const-string v4, "GSQuirrel"

    .line 64
    iput-object v4, p0, Ltc0;->s:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Ltc0;->t:Ljava/lang/String;

    .line 68
    const-string v0, "amapauto9"

    .line 70
    iput-object v0, p0, Ltc0;->u:Ljava/lang/String;

    .line 72
    const-string v4, "Log"

    .line 74
    iput-object v4, p0, Ltc0;->v:Ljava/lang/String;

    .line 76
    const-string v5, "UserData"

    .line 78
    iput-object v5, p0, Ltc0;->w:Ljava/lang/String;

    .line 80
    const-string v5, "gframe"

    .line 82
    iput-object v5, p0, Ltc0;->x:Ljava/lang/String;

    .line 84
    const-string v5, "res"

    .line 86
    iput-object v5, p0, Ltc0;->y:Ljava/lang/String;

    .line 88
    const-string v5, "lib"

    .line 90
    iput-object v5, p0, Ltc0;->z:Ljava/lang/String;

    .line 92
    const-string v5, "dex"

    .line 94
    iput-object v5, p0, Ltc0;->A:Ljava/lang/String;

    .line 96
    const-string v5, "BLA-AL00"

    .line 98
    iput-object v5, p0, Ltc0;->B:Ljava/lang/String;

    .line 100
    const-string v5, "8.0.0"

    .line 102
    iput-object v5, p0, Ltc0;->C:Ljava/lang/String;

    .line 104
    const-string v5, "/system/lib/"

    .line 106
    iput-object v5, p0, Ltc0;->D:Ljava/lang/String;

    .line 108
    const-string v5, "/system/lib64/"

    .line 110
    iput-object v5, p0, Ltc0;->E:Ljava/lang/String;

    .line 112
    const-string v5, "SelfUpdateFlag.txt"

    .line 114
    iput-object v5, p0, Ltc0;->F:Ljava/lang/String;

    .line 116
    const-string v5, "proc_mode"

    .line 118
    iput-object v5, p0, Ltc0;->G:Ljava/lang/String;

    .line 120
    const-string v5, "ConfigPath.txt"

    .line 122
    iput-object v5, p0, Ltc0;->H:Ljava/lang/String;

    .line 124
    iput-boolean v2, p0, Ltc0;->I:Z

    .line 126
    const-string v5, "upLog"

    .line 128
    iput-object v5, p0, Ltc0;->J:Ljava/lang/String;

    .line 130
    iput-object v3, p0, Ltc0;->K:Ljava/lang/String;

    .line 132
    iput-object v3, p0, Ltc0;->L:Ljava/lang/String;

    .line 134
    const/4 v6, 0x1

    .line 135
    iput-boolean v6, p0, Ltc0;->M:Z

    .line 137
    iput-boolean v2, p0, Ltc0;->N:Z

    .line 139
    iput-boolean v2, p0, Ltc0;->O:Z

    .line 141
    iput-boolean v2, p0, Ltc0;->P:Z

    .line 143
    iput-boolean v2, p0, Ltc0;->Q:Z

    .line 145
    iput-boolean v2, p0, Ltc0;->R:Z

    .line 147
    iput-boolean v6, p0, Ltc0;->S:Z

    .line 149
    iput-object v3, p0, Ltc0;->T:Landroid/content/Context;

    .line 151
    iput-object v3, p0, Ltc0;->U:Ljava/io/File;

    .line 153
    new-instance v2, Lcj;

    .line 155
    invoke-direct {v2}, Lcj;-><init>()V

    .line 158
    iput-object v2, p0, Ltc0;->V:Lcj;

    .line 160
    iput-object v3, p0, Ltc0;->W:Ljava/util/LinkedHashMap;

    .line 162
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 169
    move-result-object v2

    .line 170
    iput-object v2, p0, Ltc0;->Y:Ljava/lang/String;

    .line 172
    if-eqz v2, :cond_0

    .line 174
    new-instance v2, Ljava/io/File;

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    .line 178
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    iget-object v7, p0, Ltc0;->Y:Ljava/lang/String;

    .line 183
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    .line 188
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    move-result-object v0

    .line 204
    invoke-direct {v2, v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 210
    move-result v0

    .line 211
    if-eqz v0, :cond_0

    .line 213
    iput-boolean v6, p0, Ltc0;->I:Z

    .line 215
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 217
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 220
    iput-object v0, p0, Ltc0;->W:Ljava/util/LinkedHashMap;

    .line 222
    iput-object v1, p0, Ltc0;->X:Ljava/lang/String;

    .line 224
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 227
    move-result-object v0

    .line 228
    if-eqz v0, :cond_1

    .line 230
    instance-of v1, v0, Lch;

    .line 232
    if-nez v1, :cond_1

    .line 234
    new-instance v1, Lch;

    .line 236
    invoke-direct {v1, v0}, Lch;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 239
    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 242
    :cond_1
    return-void
.end method

.method public static J(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public static m()Ltc0;
    .locals 1

    .line 1
    invoke-static {}, Ltc0$a;->a()Ltc0;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ltc0;->I:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    if-eqz p1, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    const-string v1, "SelfUpdate"

    .line 12
    invoke-static {v1, p1, v0}, Lzy;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    :cond_0
    return-void
.end method

.method public final B()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ltc0;->j:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "SelfUpdate"

    .line 7
    const-string v1, "startService Fail"

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-static {}, Lcom/autonavi/amapauto/bootstrap/AndroidUpdate;->NotifyServiceFail()Z

    .line 15
    :cond_0
    return-void
.end method

.method public final C(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, ""

    .line 7
    if-eqz v0, :cond_0

    .line 9
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    const/16 v2, 0x4000

    .line 15
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 18
    move-result-object p1

    .line 19
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    const-string v0, "versioncode="

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Ltc0;->A(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/autonavi/amapauto/bootstrap/AndroidUpdate;->SetVerCode(Ljava/lang/String;)Z

    .line 49
    return-object v1
.end method

.method public D(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "setContext"

    .line 3
    invoke-virtual {p0, v0}, Ltc0;->A(Ljava/lang/String;)V

    .line 6
    if-eqz p1, :cond_1

    .line 8
    iput-object p1, p0, Ltc0;->T:Landroid/content/Context;

    .line 10
    iget-object v0, p0, Ltc0;->L:Ljava/lang/String;

    .line 12
    const-string v1, ""

    .line 14
    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 22
    :cond_0
    :try_start_0
    invoke-static {}, Lsg;->b()Lsg;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Lsg;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 29
    move-result-object p1

    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Ltc0;->L:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p1

    .line 43
    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Ltc0;->L:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    const-string v1, "context.getDir fail:"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p0, p1}, Ltc0;->A(Ljava/lang/String;)V

    .line 70
    :cond_1
    :goto_0
    return-void
.end method

.method public E(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "setExternalFilesDir : "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "SelfUpdate"

    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string p1, "CppUpdate/"

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Ltc0;->d:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public F()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ltc0;->R:Z

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lzy;->m(Z)V

    .line 8
    return-void
.end method

.method public G(Landroid/content/Context;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 4
    const-class v2, Lcom/autonavi/amapauto/bootstrap/UpdateSevices;

    .line 6
    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    const/16 v3, 0x1a

    .line 13
    if-lt v2, v3, :cond_0

    .line 15
    const-string v2, "startAutoBackgroundService startForegroundService"

    .line 17
    invoke-virtual {p0, v2}, Ltc0;->A(Ljava/lang/String;)V

    .line 20
    invoke-static {p1, v1}, Lf00;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v2, "startAutoBackgroundService startService"

    .line 26
    invoke-virtual {p0, v2}, Ltc0;->A(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p1

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    const-string v2, "start service fail:"

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    const-string v1, "SelfUpdate"

    .line 57
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iput-boolean v0, p0, Ltc0;->j:Z

    .line 62
    const/4 v0, 0x0

    .line 63
    :goto_0
    return v0
.end method

.method public H(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 5

    .line 1
    iput-object p1, p0, Ltc0;->T:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Ltc0;->I()V

    .line 6
    iget-object v0, p0, Ltc0;->L:Ljava/lang/String;

    .line 8
    const-string v1, "SelfUpdate"

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_4

    .line 13
    new-instance v0, Ljava/io/File;

    .line 15
    iget-object v3, p0, Ltc0;->L:Ljava/lang/String;

    .line 17
    const-string v4, "SelfUpdateFlag.txt"

    .line 19
    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_3

    .line 28
    const-string v0, "startUpdate"

    .line 30
    invoke-virtual {p0, v0}, Ltc0;->A(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Ltc0;->L:Ljava/lang/String;

    .line 35
    if-nez v0, :cond_0

    .line 37
    invoke-static {}, Lsg;->b()Lsg;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0, p1}, Lsg;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 44
    move-result-object v0

    .line 45
    const-string v1, "libs"

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Ltc0;->L:Ljava/lang/String;

    .line 57
    :cond_0
    iget-object v0, p0, Ltc0;->L:Ljava/lang/String;

    .line 59
    if-eqz v0, :cond_2

    .line 61
    new-instance v0, Ljava/io/File;

    .line 63
    iget-object v1, p0, Ltc0;->L:Ljava/lang/String;

    .line 65
    const-string v3, "proc_mode"

    .line 67
    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_2

    .line 76
    invoke-virtual {p0, p1}, Ltc0;->G(Landroid/content/Context;)Z

    .line 79
    move-result v1

    .line 80
    if-nez v1, :cond_1

    .line 82
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    iput-boolean v2, p0, Ltc0;->S:Z

    .line 88
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Ltc0;->d(Landroid/content/Context;Landroid/os/Bundle;)Z

    .line 91
    invoke-virtual {p0}, Ltc0;->B()V

    .line 94
    const/4 p1, 0x1

    .line 95
    const/4 v2, 0x1

    .line 96
    goto :goto_1

    .line 97
    :cond_3
    const-string p1, "startUpdate : SelfUpdateFlag.txt is not exit in data Path"

    .line 99
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    goto :goto_1

    .line 103
    :cond_4
    const-string p1, "startUpdate data path is NULL"

    .line 105
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :goto_1
    return v2
.end method

.method public final I()V
    .locals 3

    .line 1
    iget-object v0, p0, Ltc0;->T:Landroid/content/Context;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Ltc0;->L:Ljava/lang/String;

    .line 7
    if-nez v0, :cond_0

    .line 9
    invoke-static {}, Lsg;->b()Lsg;

    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Ltc0;->T:Landroid/content/Context;

    .line 15
    invoke-virtual {v0, v1}, Lsg;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 18
    move-result-object v0

    .line 19
    const-string v1, "libs"

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Ltc0;->L:Ljava/lang/String;

    .line 32
    :cond_0
    return-void
.end method

.method public a()V
    .locals 2

    .line 1
    const-string v0, "SelfUpdate"

    .line 3
    const-string v1, "NotifyFirstForeground"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lcom/autonavi/amapauto/bootstrap/AndroidUpdate;->NotifyFirstForeground()Z

    .line 11
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Ltc0;->T:Landroid/content/Context;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-static {p1, v0}, Lo3;->c(Ljava/lang/String;Landroid/content/Context;)I

    .line 10
    :cond_0
    return-void
.end method

.method public c(Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Ltc0;->O:Z

    .line 3
    const/4 p1, 0x1

    .line 4
    return p1
.end method

.method public d(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lzy;->l(Z)V

    .line 5
    invoke-static {p1}, Lzy;->i(Landroid/content/Context;)V

    .line 8
    iget-object v1, p0, Ltc0;->V:Lcj;

    .line 10
    invoke-virtual {v1, p1, p2}, Lcj;->b(Landroid/content/Context;Landroid/os/Bundle;)Z

    .line 13
    iget-boolean p2, p0, Ltc0;->c:Z

    .line 15
    if-nez p2, :cond_0

    .line 17
    invoke-virtual {p0, p1}, Ltc0;->t(Landroid/content/Context;)V

    .line 20
    :cond_0
    iget-boolean p2, p0, Ltc0;->c:Z

    .line 22
    const/4 v1, 0x0

    .line 23
    if-nez p2, :cond_1

    .line 25
    const-string p1, "update: not init"

    .line 27
    invoke-virtual {p0, p1}, Ltc0;->A(Ljava/lang/String;)V

    .line 30
    return v1

    .line 31
    :cond_1
    const/4 p2, 0x0

    .line 32
    if-eqz p1, :cond_2

    .line 34
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 37
    move-result-object v2

    .line 38
    iput-object v2, p0, Ltc0;->i:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v2

    .line 42
    iput-object p2, p0, Ltc0;->i:Ljava/lang/Object;

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    const-string v4, "GetAsserts fail:"

    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {p0, v2}, Ltc0;->A(Ljava/lang/String;)V

    .line 68
    :cond_2
    :goto_0
    iget-object v2, p0, Ltc0;->L:Ljava/lang/String;

    .line 70
    const-string v3, ""

    .line 72
    if-eqz v2, :cond_3

    .line 74
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_4

    .line 80
    :cond_3
    :try_start_1
    invoke-static {}, Lsg;->b()Lsg;

    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v2, p1}, Lsg;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 95
    move-result-object v2

    .line 96
    iput-object v2, p0, Ltc0;->L:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    goto :goto_1

    .line 99
    :catch_1
    move-exception v2

    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    .line 102
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    const-string v5, "getPrivatePath fail:"

    .line 107
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v5, p0, Ltc0;->L:Ljava/lang/String;

    .line 112
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v5, "exception:"

    .line 117
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {p0, v2}, Ltc0;->A(Ljava/lang/String;)V

    .line 134
    :cond_4
    :goto_1
    iget-object v2, p0, Ltc0;->K:Ljava/lang/String;

    .line 136
    if-nez v2, :cond_5

    .line 138
    invoke-virtual {p0}, Ltc0;->p()Z

    .line 141
    :cond_5
    iget-object v2, p0, Ltc0;->K:Ljava/lang/String;

    .line 143
    const-string v4, "SelfUpdate"

    .line 145
    if-eqz v2, :cond_7

    .line 147
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    move-result v2

    .line 151
    if-nez v2, :cond_7

    .line 153
    iget-object v2, p0, Ltc0;->K:Ljava/lang/String;

    .line 155
    iget-object v5, p0, Ltc0;->Y:Ljava/lang/String;

    .line 157
    if-eq v2, v5, :cond_7

    .line 159
    new-instance v2, Ljava/io/File;

    .line 161
    iget-object v5, p0, Ltc0;->K:Ljava/lang/String;

    .line 163
    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 169
    move-result v2

    .line 170
    if-eqz v2, :cond_6

    .line 172
    iget-object v2, p0, Ltc0;->K:Ljava/lang/String;

    .line 174
    iput-object v2, p0, Ltc0;->Y:Ljava/lang/String;

    .line 176
    goto :goto_2

    .line 177
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 179
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    const-string v5, "updatePath is not exist,path:"

    .line 184
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget-object v5, p0, Ltc0;->K:Ljava/lang/String;

    .line 189
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    move-result-object v2

    .line 196
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_7
    :goto_2
    const-string v2, "SelfUpdate config"

    .line 201
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 207
    move-result-object v2

    .line 208
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 210
    if-eqz v2, :cond_a

    .line 212
    new-instance v4, Ljava/io/File;

    .line 214
    const-string v5, "libUpdateMng.so"

    .line 216
    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 222
    move-result v4

    .line 223
    if-nez v4, :cond_9

    .line 225
    new-instance v4, Ljava/lang/StringBuilder;

    .line 227
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    const-string v5, "system path not in path "

    .line 232
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    move-result-object v2

    .line 242
    invoke-virtual {p0, v2}, Ltc0;->A(Ljava/lang/String;)V

    .line 245
    invoke-static {}, Lb60;->a()Z

    .line 248
    move-result v2

    .line 249
    if-eqz v2, :cond_8

    .line 251
    const-string v2, "/system/lib64/"

    .line 253
    goto :goto_3

    .line 254
    :cond_8
    const-string v2, "/system/lib/"

    .line 256
    :cond_9
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 258
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    const-string v5, "final system path : "

    .line 263
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    move-result-object v4

    .line 273
    invoke-virtual {p0, v4}, Ltc0;->A(Ljava/lang/String;)V

    .line 276
    :cond_a
    iget-boolean v4, p0, Ltc0;->R:Z

    .line 278
    if-eqz v4, :cond_b

    .line 280
    invoke-static {}, Lcom/autonavi/amapauto/bootstrap/AndroidUpdate;->SetProcRole()Z

    .line 283
    :cond_b
    iget-boolean v4, p0, Ltc0;->S:Z

    .line 285
    if-eqz v4, :cond_c

    .line 287
    invoke-static {}, Lcom/autonavi/amapauto/bootstrap/AndroidUpdate;->EnableUpdateProc()Z

    .line 290
    :cond_c
    iget-object v4, p0, Ltc0;->L:Ljava/lang/String;

    .line 292
    iget-object v5, p0, Ltc0;->Y:Ljava/lang/String;

    .line 294
    invoke-static {v4, v5, v5, v2}, Lcom/autonavi/amapauto/bootstrap/AndroidUpdate;->SetPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 297
    invoke-virtual {p0, p1}, Ltc0;->C(Landroid/content/Context;)Ljava/lang/String;

    .line 300
    iget-object p1, p0, Ltc0;->d:Ljava/lang/String;

    .line 302
    invoke-static {p1}, Lcom/autonavi/amapauto/bootstrap/AndroidUpdate;->Exec(Ljava/lang/String;)Z

    .line 305
    iget-object p1, p0, Ltc0;->V:Lcj;

    .line 307
    invoke-virtual {p1, p2}, Lcj;->a(Lva;)I

    .line 310
    move-result p1

    .line 311
    const-string p2, " dex Update Rlt="

    .line 313
    const-string v2, "dex update rlt="

    .line 315
    if-ne v0, p1, :cond_d

    .line 317
    invoke-virtual {p0}, Ltc0;->w()Z

    .line 320
    move-result v1

    .line 321
    if-eqz v1, :cond_d

    .line 323
    new-instance v4, Ljava/lang/StringBuilder;

    .line 325
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    move-result-object p1

    .line 344
    invoke-virtual {p0, p1}, Ltc0;->A(Ljava/lang/String;)V

    .line 347
    goto :goto_4

    .line 348
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    .line 350
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    move-result-object p1

    .line 369
    invoke-virtual {p0, p1}, Ltc0;->A(Ljava/lang/String;)V

    .line 372
    :goto_4
    sget-object p1, Lcom/autonavi/amapauto/bootstrap/AndroidUpdate;->RltInfo:Lcom/autonavi/amapauto/bootstrap/UpdatePath;

    .line 374
    if-eqz p1, :cond_11

    .line 376
    iget-boolean p2, p1, Lcom/autonavi/amapauto/bootstrap/UpdatePath;->bRlt:Z

    .line 378
    if-eqz p2, :cond_11

    .line 380
    iput-boolean v0, p0, Ltc0;->h:Z

    .line 382
    iget-object p1, p1, Lcom/autonavi/amapauto/bootstrap/UpdatePath;->strConfPath:Ljava/lang/String;

    .line 384
    if-eqz p1, :cond_e

    .line 386
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 389
    move-result p1

    .line 390
    if-nez p1, :cond_e

    .line 392
    invoke-static {}, Lqb0;->d()Lqb0;

    .line 395
    move-result-object p1

    .line 396
    invoke-virtual {p1}, Llc;->c()Ljava/lang/String;

    .line 399
    move-result-object p1

    .line 400
    if-eqz p1, :cond_e

    .line 402
    new-instance p1, Ljava/lang/StringBuilder;

    .line 404
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    iget-object p2, p0, Ltc0;->L:Ljava/lang/String;

    .line 409
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 414
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    iget-object v1, p0, Ltc0;->X:Ljava/lang/String;

    .line 419
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    const-string v1, "res"

    .line 424
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    move-result-object p1

    .line 434
    iput-object p1, p0, Ltc0;->f:Ljava/lang/String;

    .line 436
    new-instance p1, Ljava/lang/StringBuilder;

    .line 438
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 441
    const-string p2, "update confPath:"

    .line 443
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    iget-object p2, p0, Ltc0;->f:Ljava/lang/String;

    .line 448
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 454
    move-result-object p1

    .line 455
    invoke-virtual {p0, p1}, Ltc0;->A(Ljava/lang/String;)V

    .line 458
    :cond_e
    sget-object p1, Lcom/autonavi/amapauto/bootstrap/AndroidUpdate;->RltInfo:Lcom/autonavi/amapauto/bootstrap/UpdatePath;

    .line 460
    iget-object p1, p1, Lcom/autonavi/amapauto/bootstrap/UpdatePath;->strLibPath:Ljava/lang/String;

    .line 462
    if-eqz p1, :cond_f

    .line 464
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 467
    move-result p1

    .line 468
    if-nez p1, :cond_f

    .line 470
    invoke-static {}, Lqb0;->d()Lqb0;

    .line 473
    move-result-object p1

    .line 474
    invoke-virtual {p1}, Llc;->b()Ljava/lang/String;

    .line 477
    move-result-object p1

    .line 478
    if-eqz p1, :cond_f

    .line 480
    new-instance p1, Ljava/lang/StringBuilder;

    .line 482
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 485
    iget-object p2, p0, Ltc0;->L:Ljava/lang/String;

    .line 487
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 492
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    iget-object v1, p0, Ltc0;->X:Ljava/lang/String;

    .line 497
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    const-string v1, "lib"

    .line 502
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 511
    move-result-object p1

    .line 512
    iput-object p1, p0, Ltc0;->e:Ljava/lang/String;

    .line 514
    new-instance p1, Ljava/lang/StringBuilder;

    .line 516
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 519
    const-string p2, "update LibPath:"

    .line 521
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    iget-object p2, p0, Ltc0;->e:Ljava/lang/String;

    .line 526
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 532
    move-result-object p1

    .line 533
    invoke-virtual {p0, p1}, Ltc0;->A(Ljava/lang/String;)V

    .line 536
    :cond_f
    sget-object p1, Lcom/autonavi/amapauto/bootstrap/AndroidUpdate;->RltInfo:Lcom/autonavi/amapauto/bootstrap/UpdatePath;

    .line 538
    iget-object p1, p1, Lcom/autonavi/amapauto/bootstrap/UpdatePath;->strGFramePath:Ljava/lang/String;

    .line 540
    if-eqz p1, :cond_10

    .line 542
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 545
    move-result p1

    .line 546
    if-nez p1, :cond_10

    .line 548
    invoke-static {}, Lqb0;->d()Lqb0;

    .line 551
    move-result-object p1

    .line 552
    invoke-virtual {p1}, Llc;->a()Ljava/lang/String;

    .line 555
    move-result-object p1

    .line 556
    if-eqz p1, :cond_10

    .line 558
    new-instance p1, Ljava/lang/StringBuilder;

    .line 560
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 563
    iget-object p2, p0, Ltc0;->L:Ljava/lang/String;

    .line 565
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 570
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    iget-object v1, p0, Ltc0;->X:Ljava/lang/String;

    .line 575
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    const-string v1, "gframe"

    .line 580
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 589
    move-result-object p1

    .line 590
    iput-object p1, p0, Ltc0;->g:Ljava/lang/String;

    .line 592
    new-instance p1, Ljava/lang/StringBuilder;

    .line 594
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 597
    const-string p2, "update strGFramePath:"

    .line 599
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    iget-object p2, p0, Ltc0;->g:Ljava/lang/String;

    .line 604
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 610
    move-result-object p1

    .line 611
    invoke-virtual {p0, p1}, Ltc0;->A(Ljava/lang/String;)V

    .line 614
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    .line 616
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 619
    const-string p2, "need update="

    .line 621
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    iget-boolean p2, p0, Ltc0;->h:Z

    .line 626
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 632
    move-result-object p1

    .line 633
    invoke-virtual {p0, p1}, Ltc0;->A(Ljava/lang/String;)V

    .line 636
    :cond_11
    return v0
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ltc0;->i:Ljava/lang/Object;

    .line 3
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "getBasePath fail:"

    .line 3
    iget-object v1, p0, Ltc0;->T:Landroid/content/Context;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    :try_start_0
    invoke-static {v1}, Lo50;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 10
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_1

    .line 12
    :catch_0
    move-exception v1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p0, v0}, Ltc0;->A(Ljava/lang/String;)V

    .line 35
    goto :goto_0

    .line 36
    :catch_1
    move-exception v1

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p0, v0}, Ltc0;->A(Ljava/lang/String;)V

    .line 59
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 60
    :goto_1
    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Ltc0;->T:Landroid/content/Context;

    .line 3
    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Ltc0;->P:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Ltc0;->I()V

    .line 8
    iget-object v0, p0, Ltc0;->g:Ljava/lang/String;

    .line 10
    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Ltc0;->L:Ljava/lang/String;

    .line 14
    if-eqz v0, :cond_0

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    iget-object v1, p0, Ltc0;->L:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v2, p0, Ltc0;->X:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v2, "gframe"

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    new-instance v1, Ljava/io/File;

    .line 50
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_0

    .line 59
    iput-object v0, p0, Ltc0;->g:Ljava/lang/String;

    .line 61
    :cond_0
    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Ltc0;->P:Z

    .line 64
    :cond_1
    sget-object v0, Lei0;->a:Ljava/lang/String;

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    const-string v2, "getGframePath return :"

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v2, p0, Ltc0;->g:Ljava/lang/String;

    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Ltc0;->g:Ljava/lang/String;

    .line 90
    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ltc0;->x()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Lei0;->a:Ljava/lang/String;

    .line 9
    const-string v1, "getGframePathWithVerCheck :isErrorMatchScense return empty string"

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    const-string v0, ""

    .line 16
    return-object v0

    .line 17
    :cond_0
    sget-object v0, Lei0;->a:Ljava/lang/String;

    .line 19
    const-string v1, "getGframePathWithVerCheck return getGframePath"

    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {p0}, Ltc0;->i()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Ltc0;->Q:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Ltc0;->I()V

    .line 8
    iget-object v0, p0, Ltc0;->f:Ljava/lang/String;

    .line 10
    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Ltc0;->L:Ljava/lang/String;

    .line 14
    if-eqz v0, :cond_0

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    iget-object v1, p0, Ltc0;->L:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v2, p0, Ltc0;->X:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v2, "res"

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    new-instance v1, Ljava/io/File;

    .line 50
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_0

    .line 59
    iput-object v0, p0, Ltc0;->f:Ljava/lang/String;

    .line 61
    :cond_0
    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Ltc0;->Q:Z

    .line 64
    :cond_1
    sget-object v0, Lei0;->a:Ljava/lang/String;

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    const-string v2, "getHmiPath return :"

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v2, p0, Ltc0;->f:Ljava/lang/String;

    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Ltc0;->f:Ljava/lang/String;

    .line 90
    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ltc0;->x()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Lei0;->a:Ljava/lang/String;

    .line 9
    const-string v1, "getHmiPathWithVerCheck :isErrorMatchScense return empty string"

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    const-string v0, ""

    .line 16
    return-object v0

    .line 17
    :cond_0
    sget-object v0, Lei0;->a:Ljava/lang/String;

    .line 19
    const-string v1, "getHmiPathWithVerCheck return getGframePath"

    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {p0}, Ltc0;->k()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 4

    .line 1
    iget-boolean v0, p0, Ltc0;->N:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Ltc0;->I()V

    .line 8
    iget-object v0, p0, Ltc0;->e:Ljava/lang/String;

    .line 10
    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Ltc0;->L:Ljava/lang/String;

    .line 14
    if-eqz v0, :cond_0

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    iget-object v1, p0, Ltc0;->L:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v2, p0, Ltc0;->X:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v2, "lib"

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    sget-object v1, Lei0;->a:Ljava/lang/String;

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    const-string v3, "getLibPath libpath :"

    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v2

    .line 67
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v1, Ljava/io/File;

    .line 72
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_0

    .line 81
    iput-object v0, p0, Ltc0;->e:Ljava/lang/String;

    .line 83
    :cond_0
    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Ltc0;->N:Z

    .line 86
    :cond_1
    sget-object v0, Lei0;->a:Ljava/lang/String;

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    const-string v2, "getLibPath return :"

    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v2, p0, Ltc0;->e:Ljava/lang/String;

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v1

    .line 107
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Ltc0;->e:Ljava/lang/String;

    .line 112
    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ltc0;->x()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Lei0;->a:Ljava/lang/String;

    .line 9
    const-string v1, "getLibPathWithVerCheck: isErrorMatchScense: return empty string"

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    const-string v0, ""

    .line 16
    return-object v0

    .line 17
    :cond_0
    sget-object v0, Lei0;->a:Ljava/lang/String;

    .line 19
    const-string v1, "getLibPathWithVerCheck: return getLibPath"

    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {p0}, Ltc0;->n()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public final p()Z
    .locals 3

    .line 1
    iget-object v0, p0, Ltc0;->L:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Ltc0;->U:Ljava/io/File;

    .line 7
    if-nez v0, :cond_0

    .line 9
    invoke-virtual {p0}, Ltc0;->u()V

    .line 12
    :cond_0
    iget-object v0, p0, Ltc0;->U:Ljava/io/File;

    .line 14
    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 22
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    .line 24
    new-instance v1, Ljava/io/FileReader;

    .line 26
    iget-object v2, p0, Ltc0;->U:Ljava/io/File;

    .line 28
    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 31
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 34
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_1

    .line 40
    iput-object v1, p0, Ltc0;->K:Ljava/lang/String;

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    const/4 v0, 0x1

    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    const-string v2, "error: read from file:"

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v2, p0, Ltc0;->U:Ljava/io/File;

    .line 61
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v2, " errMsg:"

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    const-string v1, "SelfUpdate"

    .line 86
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_2
    const/4 v0, 0x0

    .line 90
    :goto_1
    return v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ltc0;->h:Z

    .line 3
    if-nez v0, :cond_4

    .line 5
    invoke-virtual {p0}, Ltc0;->I()V

    .line 8
    iget-boolean v0, p0, Ltc0;->N:Z

    .line 10
    if-nez v0, :cond_0

    .line 12
    invoke-virtual {p0}, Ltc0;->o()Ljava/lang/String;

    .line 15
    :cond_0
    iget-boolean v0, p0, Ltc0;->Q:Z

    .line 17
    if-nez v0, :cond_1

    .line 19
    invoke-virtual {p0}, Ltc0;->l()Ljava/lang/String;

    .line 22
    :cond_1
    iget-boolean v0, p0, Ltc0;->P:Z

    .line 24
    if-nez v0, :cond_2

    .line 26
    invoke-virtual {p0}, Ltc0;->j()Ljava/lang/String;

    .line 29
    :cond_2
    iget-object v0, p0, Ltc0;->e:Ljava/lang/String;

    .line 31
    if-nez v0, :cond_3

    .line 33
    iget-object v0, p0, Ltc0;->g:Ljava/lang/String;

    .line 35
    if-nez v0, :cond_3

    .line 37
    iget-object v0, p0, Ltc0;->f:Ljava/lang/String;

    .line 39
    if-eqz v0, :cond_4

    .line 41
    :cond_3
    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Ltc0;->h:Z

    .line 44
    :cond_4
    iget-boolean v0, p0, Ltc0;->h:Z

    .line 46
    return v0
.end method

.method public r()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "getConfVer:bNeedUpdate="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-boolean v1, p0, Ltc0;->h:Z

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, " bIsInit="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-boolean v1, p0, Ltc0;->c:Z

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0, v0}, Ltc0;->A(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Ltc0;->L:Ljava/lang/String;

    .line 35
    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Ltc0;->n()Ljava/lang/String;

    .line 40
    :cond_0
    iget-boolean v0, p0, Ltc0;->h:Z

    .line 42
    if-eqz v0, :cond_2

    .line 44
    iget-boolean v0, p0, Ltc0;->c:Z

    .line 46
    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Ltc0;->e:Ljava/lang/String;

    .line 50
    if-eqz v0, :cond_2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    iget-object v1, p0, Ltc0;->e:Ljava/lang/String;

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, "libcmb_GVersion.so"

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    new-instance v1, Ljava/io/File;

    .line 78
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_1

    .line 87
    invoke-static {v0}, Lcom/autonavi/amapauto/bootstrap/AndroidUpdate;->GetVerInfo(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    move-result-object v0

    .line 91
    goto :goto_0

    .line 92
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    const-string v2, "File:"

    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, " not exist"

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p0, v0}, Ltc0;->A(Ljava/lang/String;)V

    .line 117
    :cond_2
    const/4 v0, 0x0

    .line 118
    :goto_0
    if-nez v0, :cond_3

    .line 120
    invoke-virtual {p0}, Ltc0;->g()Ljava/lang/String;

    .line 123
    move-result-object v0

    .line 124
    :cond_3
    return-object v0
.end method

.method public s(Landroid/content/Context;)Z
    .locals 3

    .line 1
    iput-object p1, p0, Ltc0;->T:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Ltc0;->I()V

    .line 6
    iget-object p1, p0, Ltc0;->L:Ljava/lang/String;

    .line 8
    if-eqz p1, :cond_1

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    iget-object v0, p0, Ltc0;->L:Ljava/lang/String;

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget-object v0, p0, Ltc0;->X:Ljava/lang/String;

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    new-instance v0, Ljava/io/File;

    .line 36
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    new-instance p1, Ljava/io/File;

    .line 41
    iget-object v1, p0, Ltc0;->L:Ljava/lang/String;

    .line 43
    const-string v2, "proc_mode"

    .line 45
    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 51
    move-result v0

    .line 52
    const/4 v1, 0x1

    .line 53
    const-string v2, "SelfUpdate"

    .line 55
    if-eqz v0, :cond_0

    .line 57
    const-string p1, "hasUpdate"

    .line 59
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_1

    .line 69
    const-string p1, "hasCrash"

    .line 71
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    const/4 v1, 0x0

    .line 76
    :goto_0
    return v1
.end method

.method public t(Landroid/content/Context;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p0, Ltc0;->T:Landroid/content/Context;

    .line 5
    if-nez v0, :cond_0

    .line 7
    iput-object p1, p0, Ltc0;->T:Landroid/content/Context;

    .line 9
    :cond_0
    iget-object v0, p0, Ltc0;->L:Ljava/lang/String;

    .line 11
    const-string v1, ""

    .line 13
    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 21
    :cond_1
    :try_start_0
    invoke-static {}, Lsg;->b()Lsg;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p1}, Lsg;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 28
    move-result-object p1

    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Ltc0;->L:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p1

    .line 42
    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Ltc0;->L:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    const-string v1, "context.getDir fail:"

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p0, p1}, Ltc0;->A(Ljava/lang/String;)V

    .line 69
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ltc0;->v()Z

    .line 72
    invoke-virtual {p0}, Ltc0;->z()Z

    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_3

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    .line 80
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    const-string v0, "init\uff0c After loadSo,Befor Init.  defPath: "

    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object v0, p0, Ltc0;->d:Ljava/lang/String;

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object p1

    .line 97
    const-string v0, "SelfUpdate"

    .line 99
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object p1, p0, Ltc0;->d:Ljava/lang/String;

    .line 104
    invoke-static {p1}, Lcom/autonavi/amapauto/bootstrap/AndroidUpdate;->Init(Ljava/lang/String;)Z

    .line 107
    const/4 p1, 0x1

    .line 108
    iput-boolean p1, p0, Ltc0;->c:Z

    .line 110
    :cond_3
    return-void
.end method

.method public final u()V
    .locals 3

    .line 1
    iget-object v0, p0, Ltc0;->U:Ljava/io/File;

    .line 3
    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Ltc0;->L:Ljava/lang/String;

    .line 7
    if-nez v0, :cond_0

    .line 9
    invoke-virtual {p0}, Ltc0;->I()V

    .line 12
    :cond_0
    iget-object v0, p0, Ltc0;->L:Ljava/lang/String;

    .line 14
    if-eqz v0, :cond_1

    .line 16
    new-instance v0, Ljava/io/File;

    .line 18
    iget-object v1, p0, Ltc0;->L:Ljava/lang/String;

    .line 20
    const-string v2, "ConfigPath.txt"

    .line 22
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iput-object v0, p0, Ltc0;->U:Ljava/io/File;

    .line 27
    :cond_1
    return-void
.end method

.method public final v()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Ltc0;->O:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v1

    .line 8
    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Ltc0;->W:Ljava/util/LinkedHashMap;

    .line 12
    const-string v2, "base_utils"

    .line 14
    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Ltc0;->W:Ljava/util/LinkedHashMap;

    .line 19
    const-string v2, "GPlatformInterface"

    .line 21
    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Ltc0;->W:Ljava/util/LinkedHashMap;

    .line 26
    const-string v2, "openssl"

    .line 28
    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Ltc0;->W:Ljava/util/LinkedHashMap;

    .line 33
    const-string v2, "OSL_MNN"

    .line 35
    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Ltc0;->W:Ljava/util/LinkedHashMap;

    .line 40
    const-string v2, "GComm3rd"

    .line 42
    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Ltc0;->W:Ljava/util/LinkedHashMap;

    .line 47
    const-string v2, "GNet"

    .line 49
    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Ltc0;->W:Ljava/util/LinkedHashMap;

    .line 54
    const-string v2, "GSQuirrel"

    .line 56
    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_0
    iget-object v0, p0, Ltc0;->W:Ljava/util/LinkedHashMap;

    .line 61
    const-string v2, "UpdateMng"

    .line 63
    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const/4 v0, 0x1

    .line 67
    return v0
.end method

.method public final w()Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Ltc0;->L:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v2, p0, Ltc0;->X:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "dex"

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Ljava/io/File;

    .line 35
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v0, 0x0

    .line 47
    :goto_0
    return v0
.end method

.method public final x()Z
    .locals 10

    .line 1
    sget-object v0, Lei0;->a:Ljava/lang/String;

    .line 3
    const-string v1, "isErrorMatchScense enter "

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Ltc0;->T:Landroid/content/Context;

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 18
    :try_start_0
    iget-object v3, p0, Ltc0;->T:Landroid/content/Context;

    .line 20
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 27
    move-result-object v0

    .line 28
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 30
    const-string v0, "SelfUpdate"

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    const-string v4, "versioncode="

    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v3

    .line 49
    new-array v4, v1, [Ljava/lang/Object;

    .line 51
    invoke-static {v0, v3, v4}, Laz;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    :cond_0
    :goto_0
    sget-object v0, Lei0;->a:Ljava/lang/String;

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    const-string v4, "isErrorMatchScense package version code: "

    .line 68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object v3

    .line 78
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Ltc0;->T:Landroid/content/Context;

    .line 83
    invoke-static {v0}, Lkk0;->b(Landroid/content/Context;)Lkk0;

    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lkk0;->c()Ljava/util/ArrayList;

    .line 90
    move-result-object v0

    .line 91
    if-eqz v0, :cond_3

    .line 93
    if-eqz v2, :cond_3

    .line 95
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 98
    move-result v3

    .line 99
    const/4 v4, 0x0

    .line 100
    const/4 v5, 0x0

    .line 101
    :goto_1
    if-lez v3, :cond_4

    .line 103
    add-int/lit8 v6, v3, -0x1

    .line 105
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    move-result-object v6

    .line 109
    check-cast v6, Ljk0;

    .line 111
    sget-object v7, Lei0;->a:Ljava/lang/String;

    .line 113
    new-instance v8, Ljava/lang/StringBuilder;

    .line 115
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    const-string v9, "tempVer: i-"

    .line 120
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    const-string v9, "tmpVer.verInfo-"

    .line 128
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-object v9, v6, Ljk0;->i:Ljava/lang/String;

    .line 133
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v9, "tmpVer.bIsAvail"

    .line 138
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-boolean v9, v6, Ljk0;->k:Z

    .line 143
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object v8

    .line 150
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-boolean v7, v6, Ljk0;->k:Z

    .line 155
    if-eqz v7, :cond_2

    .line 157
    add-int/lit8 v4, v4, 0x1

    .line 159
    iget-object v7, v6, Ljk0;->i:Ljava/lang/String;

    .line 161
    if-eqz v7, :cond_1

    .line 163
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    move-result v7

    .line 167
    if-eqz v7, :cond_1

    .line 169
    sget-object v6, Lei0;->a:Ljava/lang/String;

    .line 171
    const-string v7, "SelfUpdate base verrsion match current Apk version code"

    .line 173
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    goto :goto_2

    .line 177
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 179
    iget-object v7, v6, Ljk0;->i:Ljava/lang/String;

    .line 181
    if-eqz v7, :cond_2

    .line 183
    sget-object v7, Lei0;->a:Ljava/lang/String;

    .line 185
    new-instance v8, Ljava/lang/StringBuilder;

    .line 187
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    const-string v9, "isErrorMatchScense:invalid  version code: "

    .line 192
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-object v6, v6, Ljk0;->i:Ljava/lang/String;

    .line 197
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    move-result-object v6

    .line 204
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, -0x1

    .line 209
    goto :goto_1

    .line 210
    :cond_3
    const/4 v4, 0x0

    .line 211
    const/4 v5, 0x0

    .line 212
    :cond_4
    sget-object v0, Lei0;->a:Ljava/lang/String;

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    .line 216
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    const-string v3, "isErrorMatchScense: availVerCnt:"

    .line 221
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    const-string v3, " errSceneCnt:"

    .line 229
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    move-result-object v2

    .line 239
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    if-lez v4, :cond_5

    .line 244
    if-ne v5, v4, :cond_5

    .line 246
    sget-object v0, Lei0;->a:Ljava/lang/String;

    .line 248
    const-string v1, "any base ver no match current Apk version code"

    .line 250
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v0, 0x1

    .line 254
    return v0

    .line 255
    :cond_5
    return v1
.end method

.method public y()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ltc0;->c:Z

    .line 3
    return v0
.end method

.method public final z()Z
    .locals 4

    .line 1
    iget-object v0, p0, Ltc0;->W:Ljava/util/LinkedHashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v1, :cond_0

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/util/Map$Entry;

    .line 24
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Ljava/lang/String;

    .line 30
    invoke-static {v3}, Lt7;->i(Ljava/lang/String;)V

    .line 33
    iget-object v3, p0, Ltc0;->W:Ljava/util/LinkedHashMap;

    .line 35
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljava/lang/String;

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v3, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    return v2
.end method
