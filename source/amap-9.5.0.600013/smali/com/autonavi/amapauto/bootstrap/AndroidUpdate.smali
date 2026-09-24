.class public Lcom/autonavi/amapauto/bootstrap/AndroidUpdate;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static RltInfo:Lcom/autonavi/amapauto/bootstrap/UpdatePath;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native EnableUpdateProc()Z
.end method

.method public static native Exec(Ljava/lang/String;)Z
.end method

.method public static GetAssertMng()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Ltc0;->m()Ltc0;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ltc0;->e()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static GetRlt(Lcom/autonavi/amapauto/bootstrap/UpdatePath;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/bootstrap/AndroidUpdate;->RltInfo:Lcom/autonavi/amapauto/bootstrap/UpdatePath;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/autonavi/amapauto/bootstrap/UpdatePath;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/bootstrap/UpdatePath;-><init>()V

    .line 10
    sput-object v0, Lcom/autonavi/amapauto/bootstrap/AndroidUpdate;->RltInfo:Lcom/autonavi/amapauto/bootstrap/UpdatePath;

    .line 12
    :cond_0
    sget-object v0, Lcom/autonavi/amapauto/bootstrap/AndroidUpdate;->RltInfo:Lcom/autonavi/amapauto/bootstrap/UpdatePath;

    .line 14
    iget-boolean v1, p0, Lcom/autonavi/amapauto/bootstrap/UpdatePath;->bRlt:Z

    .line 16
    iput-boolean v1, v0, Lcom/autonavi/amapauto/bootstrap/UpdatePath;->bRlt:Z

    .line 18
    iget-object v1, p0, Lcom/autonavi/amapauto/bootstrap/UpdatePath;->strConfPath:Ljava/lang/String;

    .line 20
    iput-object v1, v0, Lcom/autonavi/amapauto/bootstrap/UpdatePath;->strConfPath:Ljava/lang/String;

    .line 22
    iget-object v1, p0, Lcom/autonavi/amapauto/bootstrap/UpdatePath;->strGFramePath:Ljava/lang/String;

    .line 24
    iput-object v1, v0, Lcom/autonavi/amapauto/bootstrap/UpdatePath;->strGFramePath:Ljava/lang/String;

    .line 26
    iget-object v1, p0, Lcom/autonavi/amapauto/bootstrap/UpdatePath;->strDexPath:Ljava/lang/String;

    .line 28
    iput-object v1, v0, Lcom/autonavi/amapauto/bootstrap/UpdatePath;->strDexPath:Ljava/lang/String;

    .line 30
    iget-object p0, p0, Lcom/autonavi/amapauto/bootstrap/UpdatePath;->strLibPath:Ljava/lang/String;

    .line 32
    iput-object p0, v0, Lcom/autonavi/amapauto/bootstrap/UpdatePath;->strLibPath:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static GetStorageInfo()Lcom/autonavi/amapauto/bootstrap/UpdatePath;
    .locals 3

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/bootstrap/UpdatePath;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/bootstrap/UpdatePath;-><init>()V

    .line 6
    invoke-static {}, Lcom/autonavi/amapauto/bootstrap/AndroidUpdate;->getDataFreeSpace()J

    .line 9
    move-result-wide v1

    .line 10
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    move-result-object v1

    .line 14
    iput-object v1, v0, Lcom/autonavi/amapauto/bootstrap/UpdatePath;->dataFreeSize:Ljava/lang/Long;

    .line 16
    invoke-static {}, Lcom/autonavi/amapauto/bootstrap/AndroidUpdate;->getSDCardLeftInfo()J

    .line 19
    move-result-wide v1

    .line 20
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 23
    move-result-object v1

    .line 24
    iput-object v1, v0, Lcom/autonavi/amapauto/bootstrap/UpdatePath;->sdCardFreeSize:Ljava/lang/Long;

    .line 26
    return-object v0
.end method

.method public static native GetUpdateRlt()Z
.end method

.method public static native GetVerInfo(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native Init(Ljava/lang/String;)Z
.end method

.method public static native NotifyCrash()Z
.end method

.method public static native NotifyDestroy()Z
.end method

.method public static native NotifyDexUpRlt(I)Z
.end method

.method public static native NotifyFirstForeground()Z
.end method

.method public static native NotifyRecovery()Z
.end method

.method public static native NotifyServiceFail()Z
.end method

.method public static native RollBackToApkVer()Z
.end method

.method public static native SetPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native SetProcRole()Z
.end method

.method public static native SetVerCode(Ljava/lang/String;)Z
.end method

.method public static apkInstall(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Ltc0;->m()Ltc0;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Ltc0;->b(Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public static crashNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lnk0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static getBaseDex()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ltc0;->m()Ltc0;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ltc0;->f()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static getDataFreeSpace()J
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
    invoke-static {v0}, Lcom/autonavi/amapauto/bootstrap/AndroidUpdate;->getFreeSize(Ljava/lang/String;)J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method private static getFreeSize(Ljava/lang/String;)J
    .locals 4

    .line 1
    if-eqz p0, :cond_0

    .line 3
    new-instance v0, Ljava/io/File;

    .line 5
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    .line 11
    move-result-wide v0

    .line 12
    const-wide/16 v2, 0x400

    .line 14
    div-long/2addr v0, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-wide/16 v0, 0x0

    .line 18
    :goto_0
    return-wide v0
.end method

.method public static getSDCardLeftInfo()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/autonavi/amapauto/bootstrap/AndroidUpdate;->getFreeSize(Ljava/lang/String;)J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public static statusNotify(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ltc0;->J(II)V

    .line 4
    return-void
.end method

.method public static updateFin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "SelfUpdate"

    .line 3
    const-string v1, "Recv UpdateFin"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    if-eqz p1, :cond_0

    .line 10
    invoke-static {}, Ltc0;->m()Ltc0;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ltc0;->h()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string v2, "classes.dex"

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Lo50;->l(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    :cond_0
    invoke-static {p0, p1}, Lnk0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 46
    move-result p0

    .line 47
    return p0
.end method
