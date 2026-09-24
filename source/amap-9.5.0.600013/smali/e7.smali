.class public Le7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lir;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/amapauto/framework/AutoLoader;->p()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public b(Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "doDestroy :"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "Eaglet"

    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    const-string v2, "setDoDestroyState :"

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    const/4 v2, 0x0

    .line 41
    new-array v2, v2, [Ljava/lang/Object;

    .line 43
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    invoke-static {}, Lrv;->H()Lrv;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, p1}, Lrv;->m0(Z)V

    .line 53
    return-void
.end method

.method public c()I
    .locals 3

    .line 1
    invoke-static {}, Lzm;->d()Lzm;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lzm;->v:Ljava/lang/String;

    .line 7
    const/16 v2, 0xc8

    .line 9
    invoke-virtual {v0, v1, v2}, Lzm;->e(Ljava/lang/String;I)I

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public d()Z
    .locals 1

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->P()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->jniLoadScreenFlag()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public f(J)V
    .locals 2

    .line 1
    invoke-static {}, Ltk;->d()Ltk;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Le7$a;

    .line 7
    invoke-direct {v1, p0}, Le7$a;-><init>(Le7;)V

    .line 10
    invoke-virtual {v0, v1, p1, p2}, Ltk;->a(Ljava/lang/Runnable;J)V

    .line 13
    return-void
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/autonavi/amapauto/framework/AutoLoader;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public h(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lrv;->l0(Z)V

    .line 8
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lr50;->h(Ljava/lang/String;)Ljava/io/File;

    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    const-string v2, "path "

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x0

    .line 28
    new-array v2, v2, [Ljava/lang/Object;

    .line 30
    const-string v3, "Eaglet"

    .line 32
    invoke-static {v3, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    return-object v0
.end method

.method public isRealDevices()Z
    .locals 1

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lse;->isRealDevices()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/autonavi/amapauto/Debug/AutoSysTrace;->BeginSection(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public k(Landroid/os/Message;)I
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder;->redirectMsgForChannel(Landroid/os/Message;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/autonavi/amapauto/Debug/AutoSysTrace;->EndSection(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public varargs logD(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public n([Ljava/lang/String;)Z
    .locals 9

    .line 1
    const-string v0, "Eaglet"

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 6
    array-length v2, p1

    .line 7
    if-lez v2, :cond_0

    .line 9
    sget-object v2, Lcom/autonavi/amapauto/MapApplication;->r:Landroid/content/Context;

    .line 11
    invoke-static {v2, p1}, Lu50;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 17
    const-string p1, "hasPermission checkPermissions fail"

    .line 19
    new-array v2, v1, [Ljava/lang/Object;

    .line 21
    invoke-static {v0, p1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    return v1

    .line 25
    :cond_0
    array-length v2, p1

    .line 26
    const/4 v3, 0x0

    .line 27
    :goto_0
    if-ge v3, v2, :cond_2

    .line 29
    aget-object v4, p1, v3

    .line 31
    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 33
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_1

    .line 39
    invoke-static {}, Lze0;->h()Lze0;

    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v4}, Lze0;->m()Ljava/lang/String;

    .line 46
    move-result-object v4

    .line 47
    invoke-static {}, Lze0;->h()Lze0;

    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {v5}, Lze0;->n()Ljava/lang/String;

    .line 54
    move-result-object v5

    .line 55
    new-instance v6, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    const-string v7, "sdcard "

    .line 62
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v8, " state="

    .line 70
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v5

    .line 80
    new-array v6, v1, [Ljava/lang/Object;

    .line 82
    invoke-static {v0, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-static {}, Lze0;->h()Lze0;

    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {v5}, Lze0;->q()Z

    .line 92
    move-result v5

    .line 93
    if-eqz v5, :cond_1

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    .line 97
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v2, " unmounted"

    .line 108
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object p1

    .line 115
    new-array v2, v1, [Ljava/lang/Object;

    .line 117
    invoke-static {v0, p1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    return v1

    .line 121
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 123
    goto :goto_0

    .line 124
    :cond_2
    const/4 p1, 0x1

    .line 125
    return p1
.end method

.method public o()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "Eaglet"

    .line 6
    const-string v2, "in cpp getCustomDensity calls"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lrv;->H()Lrv;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lrv;->C()I

    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public p()Z
    .locals 1

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->R()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public q(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/autonavi/amapauto/framework/AutoLoader;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    return-void
.end method
