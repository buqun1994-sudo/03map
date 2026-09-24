.class public Luz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/content/pm/PackageInfo;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:J

.field public i:I

.field public j:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Luz;->c:Ljava/lang/String;

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Luz;->e:Z

    .line 10
    const-string v1, ""

    .line 12
    iput-object v1, p0, Luz;->f:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Luz;->g:Ljava/lang/String;

    .line 16
    const-wide/16 v1, 0x0

    .line 18
    iput-wide v1, p0, Luz;->h:J

    .line 20
    iput v0, p0, Luz;->i:I

    .line 22
    iput-wide v1, p0, Luz;->j:J

    .line 24
    iput-object p1, p0, Luz;->a:Landroid/content/Context;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 29
    move-result-object v1

    .line 30
    const-string v2, "MapDumpDataSourceControler"

    .line 32
    new-array v3, v0, [Ljava/lang/Object;

    .line 34
    const-string v4, "[MapDumpDataSourceControler]"

    .line 36
    invoke-static {v4, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Luz;->b:Landroid/content/pm/PackageInfo;

    .line 49
    iget-object v0, p0, Luz;->b:Landroid/content/pm/PackageInfo;

    .line 51
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    :goto_0
    new-instance v0, Ljava/io/File;

    .line 60
    invoke-static {}, Lze0;->h()Lze0;

    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lze0;->j()Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 68
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_0

    .line 77
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 80
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    iput-object v0, p0, Luz;->c:Ljava/lang/String;

    .line 86
    if-eqz p2, :cond_1

    .line 88
    iput-object p2, p0, Luz;->d:Ljava/lang/String;

    .line 90
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 93
    iput-boolean p3, p0, Luz;->e:Z

    .line 95
    return-void
.end method

.method public static n0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .line 3
    const-string v1, "UTF-8"

    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 8
    move-result-object p0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p0, v1}, Landroid/util/Base64;->decode([BI)[B

    .line 13
    move-result-object p0

    .line 14
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-object v0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    const-string p0, ""

    .line 24
    return-object p0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "[MapDumpDataSourceControler]"

    .line 6
    const-string v2, "getDiv"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lf30;->f()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public A0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Luz;->d:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public B()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "[MapDumpDataSourceControler]"

    .line 6
    const-string v2, "getTaobaoID"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lf30;->z()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public B0()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "[MapDumpDataSourceControler]"

    .line 6
    const-string v2, "updateCrashParam"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Luz;->getAdiu()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/autonavi/common/tool/b;->W(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Luz;->getDiu()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/autonavi/common/tool/b;->a0(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Luz;->b0()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/autonavi/common/tool/b;->b0(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Luz;->e()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/autonavi/common/tool/b;->c0(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Luz;->F()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/autonavi/common/tool/b;->h0(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Luz;->B()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/autonavi/common/tool/b;->i0(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Luz;->l0()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/autonavi/common/tool/b;->Z(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Luz;->A()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    invoke-static {v0}, Lcom/autonavi/common/tool/b;->d0(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Luz;->Q()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Lcom/autonavi/common/tool/b;->Y(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public C()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic D()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lar;->c(Lbr;)Z

    move-result v0

    return v0
.end method

.method public E()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "[MapDumpDataSourceControler]"

    .line 6
    const-string v2, "getCheckNetWork"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Luz;->a()Landroid/app/Application;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lpa;->h(Landroid/content/Context;)I

    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public F()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lf30;->x()J

    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 8
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    const-string v0, ""

    .line 12
    :goto_0
    return-object v0
.end method

.method public G()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "[MapDumpDataSourceControler]"

    .line 6
    const-string v2, "getUploadParamProduct"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v0, 0x4

    .line 12
    return v0
.end method

.method public H()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public I()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lsi;->z()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v0, v1, v2

    .line 11
    const-string v2, "[MapDumpDataSourceControler]"

    .line 13
    const-string v3, "getMemorySize = {?}"

    .line 15
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    return-object v0
.end method

.method public J()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Luz;->r0()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public K()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public L()I
    .locals 1

    .line 1
    const/16 v0, 0x78

    return v0
.end method

.method public M()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lsi;->f()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v0, v1, v2

    .line 11
    const-string v2, "[MapDumpDataSourceControler]"

    .line 13
    const-string v3, "getManufacture = {?}"

    .line 15
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    return-object v0
.end method

.method public N()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lsi;->E()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v0, v1, v2

    .line 11
    const-string v2, "[MapDumpDataSourceControler]"

    .line 13
    const-string v3, "getResolution = {?}"

    .line 15
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    return-object v0
.end method

.method public O()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    return v0
.end method

.method public P()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {}, Lsi;->j()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "/"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-static {}, Lsi;->h()Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-static {}, Lsi;->i()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method

.method public Q()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "[MapDumpDataSourceControler]"

    .line 6
    const-string v2, "getDibv"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lf30;->k()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public R()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "[MapDumpDataSourceControler]"

    .line 6
    const-string v3, "isForceDumpHeap"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    return v0
.end method

.method public S()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public T()Ljava/lang/String;
    .locals 4

    .line 1
    const/16 v0, 0x138a

    .line 3
    :try_start_0
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/config/AndroidAdapterConfiger;->nativeGetStringValue(I)Ljava/lang/String;

    .line 6
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    goto :goto_0

    .line 8
    :catch_0
    const-string v0, ""

    .line 10
    :goto_0
    const/4 v1, 0x1

    .line 11
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    const/4 v2, 0x0

    .line 14
    aput-object v0, v1, v2

    .line 16
    const-string v2, "[MapDumpDataSourceControler]"

    .line 18
    const-string v3, "getFeatureCode = {?}"

    .line 20
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    return-object v0
.end method

.method public U()Ljava/util/Map;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-virtual {p0, v0}, Luz;->p0(Ljava/util/Map;)V

    .line 9
    invoke-virtual {p0, v0}, Luz;->u0(Ljava/util/Map;)V

    .line 12
    invoke-virtual {p0, v0}, Luz;->s0(Ljava/util/Map;)V

    .line 15
    invoke-virtual {p0, v0}, Luz;->o0(Ljava/util/Map;)V

    .line 18
    invoke-virtual {p0, v0}, Luz;->v0(Ljava/util/Map;)V

    .line 21
    invoke-virtual {p0, v0}, Luz;->t0(Ljava/util/Map;)V

    .line 24
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 31
    :cond_0
    return-object v0
.end method

.method public V()I
    .locals 1

    .line 1
    const/16 v0, 0x1e

    return v0
.end method

.method public W()Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "[MapDumpDataSourceControler]"

    .line 6
    const-string v3, "isInternetConnected"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lrv;->y()Landroid/app/Application;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Lpa;->e(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 30
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    const/4 v1, 0x0

    .line 33
    :goto_0
    if-eqz v1, :cond_1

    .line 35
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 37
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 40
    move-result-object v4

    .line 41
    const/4 v5, 0x1

    .line 42
    if-ne v3, v4, :cond_0

    .line 44
    const/4 v3, 0x1

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    const/4 v3, 0x0

    .line 47
    :goto_1
    new-array v4, v5, [Ljava/lang/Object;

    .line 49
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 52
    move-result-object v3

    .line 53
    aput-object v3, v4, v0

    .line 55
    const-string v3, "getUploadCrashDir:isConne={?}"

    .line 57
    invoke-static {v2, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 62
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 65
    move-result-object v1

    .line 66
    if-ne v2, v1, :cond_1

    .line 68
    const/4 v0, 0x1

    .line 69
    :cond_1
    return v0
.end method

.method public X()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "[MapDumpDataSourceControler]"

    .line 6
    const-string v2, "getOperatorName"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Luz;->a()Landroid/app/Application;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lpa;->j(Landroid/content/Context;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public Y()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "[MapDumpDataSourceControler]"

    .line 6
    const-string v2, "getCurrentCity"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeGetCurrentCityAdCode()I

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public Z()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "[MapDumpDataSourceControler]"

    .line 6
    const-string v2, "getUploadParamKey"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget v0, p0, Luz;->i:I

    .line 13
    const/4 v1, 0x2

    .line 14
    if-ne v0, v1, :cond_0

    .line 16
    const-string v0, "TnpRME5qVmlaVEl4TWpVMFptUmlabUU0TldZMFpUa3haVGd6WlRCa1ptWT0="

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v0, "TURCbE1EVXhOR015TUdKalpEWTFPVFExTm1NMU56RTFNekptTjJReE1qQT0="

    .line 21
    :goto_0
    invoke-static {v0}, Luz;->n0(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Luz;->n0(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public a()Landroid/app/Application;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "[MapDumpDataSourceControler]"

    .line 6
    const-string v2, "getApplication"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lrv;->H()Lrv;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lrv;->y()Landroid/app/Application;

    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public a0(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "Y0dGblpTNWhiV0Z3TG1OdmJTOTNjeTl3WVdkbEwzVndiRzloWkM4PQ=="

    .line 3
    invoke-static {v0}, Luz;->n0(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Luz;->n0(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const-string v2, "https://"

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Lvi0;

    .line 30
    invoke-direct {v1}, Lvi0;-><init>()V

    .line 33
    invoke-virtual {v1, v0, p1}, Lvi0;->c(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    const/4 v0, 0x1

    .line 38
    new-array v0, v0, [Ljava/lang/Object;

    .line 40
    const/4 v1, 0x0

    .line 41
    aput-object p1, v0, v1

    .line 43
    const-string v1, "[MapDumpDataSourceControler]"

    .line 45
    const-string v2, "getUploadUrl={?}"

    .line 47
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public b0()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lqf;->a()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    const/16 v0, 0x64

    return v0
.end method

.method public c0()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "[MapDumpDataSourceControler]"

    .line 6
    const-string v2, "getExternalStoragePath"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "17020"

    return-object v0
.end method

.method public d0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Luz;->w0()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lf30;->s()Ljava/lang/String;

    .line 4
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    goto :goto_0

    .line 6
    :catch_0
    const-string v0, ""

    .line 8
    :goto_0
    return-object v0
.end method

.method public e0()Ljava/io/File;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "[MapDumpDataSourceControler]"

    .line 6
    const-string v2, "getDumpHprofDataFile"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v0, Ljava/io/File;

    .line 13
    invoke-virtual {p0}, Luz;->r0()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    const-string v2, "minimap.log"

    .line 19
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-object v0
.end method

.method public f()Ljava/io/File;
    .locals 3

    .line 1
    iget-object v0, p0, Luz;->c:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const-string v2, "getUploadCrashDir:rootPath={?}"

    .line 8
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v0, Ljava/io/File;

    .line 13
    invoke-static {}, Lr50;->e()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 26
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 29
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    const-string v2, "uploadcrash"

    .line 37
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_1

    .line 46
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 49
    :cond_1
    return-object v1
.end method

.method public f0()I
    .locals 1

    .line 1
    const/4 v0, 0x5

    return v0
.end method

.method public g()Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object v2, v1, v3

    .line 9
    const-string v2, "[MapDumpDataSourceControler]"

    .line 11
    const-string v4, "origin isDebug = {?}"

    .line 13
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    invoke-static {}, Lze0;->h()Lze0;

    .line 19
    move-result-object v1

    .line 20
    const-string v4, "amap_local_debug_mode.txt"

    .line 22
    invoke-virtual {v1, v4}, Lze0;->a(Ljava/lang/String;)Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 28
    const/4 v1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    :goto_0
    iget v4, p0, Luz;->i:I

    .line 33
    if-ne v4, v0, :cond_1

    .line 35
    const/4 v1, 0x0

    .line 36
    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    .line 38
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 41
    move-result-object v4

    .line 42
    aput-object v4, v0, v3

    .line 44
    const-string v3, "at the end isDebug = {?}"

    .line 46
    invoke-static {v2, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    return v1
.end method

.method public g0(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;)Z
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v0, "onDumpStartEx throwable: "

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    const-string p2, "\uff0c s: "

    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string p2, ", "

    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    new-instance p2, Ljava/lang/Throwable;

    .line 29
    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    .line 32
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    const/4 p2, 0x0

    .line 44
    new-array p2, p2, [Ljava/lang/Object;

    .line 46
    const-string p3, "[MapDumpDataSourceControler]"

    .line 48
    invoke-static {p3, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-boolean p1, p0, Luz;->e:Z

    .line 53
    if-eqz p1, :cond_0

    .line 55
    :try_start_0
    invoke-static {}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeGetCurrentCityAdCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    :cond_0
    :goto_0
    const/4 p1, 0x1

    .line 64
    return p1
.end method

.method public getAdiu()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lf30;->b()Ljava/lang/String;

    .line 4
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    goto :goto_0

    .line 6
    :catch_0
    const-string v0, ""

    .line 8
    :goto_0
    return-object v0
.end method

.method public getDiu()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "[MapDumpDataSourceControler]"

    .line 6
    const-string v2, "getDiu"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lf30;->n()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "[MapDumpDataSourceControler]"

    .line 6
    const-string v2, "getUploadParamSecurityCode"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget v0, p0, Luz;->i:I

    .line 13
    const/4 v1, 0x2

    .line 14
    if-ne v0, v1, :cond_0

    .line 16
    const-string v0, "WkRkalpEYzRNVFEwWm1FNFlXWTNOREppWkRnMFpqWTFNakZtTkRsaVpUaz0="

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v0, "T0RZeU1UVXpaVEZoTVRrMVptWTBZV1UzTnpNNU5UVmlNek16T1ROa1pHST0="

    .line 21
    :goto_0
    invoke-static {v0}, Luz;->n0(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Luz;->n0(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public h0()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Luz;->q0()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Luz;->h:J

    .line 3
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public i0()I
    .locals 1

    .line 1
    const/16 v0, 0xa

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lsi;->g()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v0, v1, v2

    .line 11
    const-string v2, "[MapDumpDataSourceControler]"

    .line 13
    const-string v3, "getModel = {?}"

    .line 15
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    return-object v0
.end method

.method public synthetic j0()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lar;->b(Lbr;)Z

    move-result v0

    return v0
.end method

.method public k()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "[MapDumpDataSourceControler]"

    .line 6
    const-string v2, "onDumpStart"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Luz;->j:J

    .line 17
    invoke-virtual {p0}, Luz;->m0()V

    .line 20
    return-void
.end method

.method public k0()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/framework/TurboDiagnose;->d()Lcom/autonavi/amapauto/framework/TurboDiagnose;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/amapauto/framework/TurboDiagnose;->b()V

    .line 8
    invoke-virtual {v0}, Lcom/autonavi/amapauto/framework/TurboDiagnose;->e()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public l()I
    .locals 1

    .line 1
    const/16 v0, 0x1e

    return v0
.end method

.method public l0()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "[MapDumpDataSourceControler]"

    .line 6
    const-string v2, "getDic"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lf30;->l()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "[MapDumpDataSourceControler]"

    .line 6
    const-string v2, "getVersionName"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Luz;->d:Ljava/lang/String;

    .line 13
    if-eqz v0, :cond_0

    .line 15
    return-object v0

    .line 16
    :cond_0
    iget-object v0, p0, Luz;->b:Landroid/content/pm/PackageInfo;

    .line 18
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 20
    return-object v0
.end method

.method public final m0()V
    .locals 3

    .line 1
    iget-object v0, p0, Luz;->a:Landroid/content/Context;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    invoke-static {}, Lrv;->H()Lrv;

    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Luz;->a:Landroid/content/Context;

    .line 16
    invoke-virtual {v1, v2}, Lrv;->D(Landroid/content/Context;)Landroid/content/Context;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 23
    move-result-object v1

    .line 24
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    const-string v1, "/"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    new-instance v1, Ljava/io/File;

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v0, "proc_mode"

    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_0

    .line 66
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :catch_0
    :cond_0
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    const-string v2, "android_arm64_v8a"

    .line 7
    aput-object v2, v0, v1

    .line 9
    const-string v1, "[MapDumpDataSourceControler]"

    .line 11
    const-string v3, "getBuildPlatform = {?}"

    .line 13
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    return-object v2
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Luz;->e:Z

    .line 3
    return v0
.end method

.method public final o0(Ljava/util/Map;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/autonavi/amapauto/framework/TurboDiagnose;->d()Lcom/autonavi/amapauto/framework/TurboDiagnose;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/amapauto/framework/TurboDiagnose;->i()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    const-string v0, "RuntimeDetector"

    .line 13
    const-string v1, "1"

    .line 15
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :catchall_0
    :cond_0
    return-void
.end method

.method public p(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final p0(Ljava/util/Map;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    .line 8
    move-result-wide v0

    .line 9
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "maxMemory"

    .line 15
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    .line 25
    move-result-wide v0

    .line 26
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    const-string v1, "freeMemory"

    .line 32
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    .line 42
    move-result-wide v0

    .line 43
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    const-string v1, "totalMemory"

    .line 49
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public q()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    return v0
.end method

.method public final q0()Ljava/lang/String;
    .locals 4

    .line 1
    const/16 v0, 0x138c

    .line 3
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/config/AndroidAdapterConfiger;->nativeGetStringValue(I)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v0, v1, v2

    .line 13
    const-string v2, "[MapDumpDataSourceControler]"

    .line 15
    const-string v3, "get caCertsPath = {?}"

    .line 17
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    return-object v0
.end method

.method public r()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "[MapDumpDataSourceControler]"

    .line 6
    const-string v2, "getVersionCode"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Luz;->b:Landroid/content/pm/PackageInfo;

    .line 13
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 15
    return v0
.end method

.method public final r0()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Luz;->c:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "/dumpcrash/"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Ljava/io/File;

    .line 22
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x1

    .line 31
    const-string v5, "[MapDumpDataSourceControler]"

    .line 33
    if-nez v2, :cond_0

    .line 35
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 38
    move-result v1

    .line 39
    new-array v2, v4, [Ljava/lang/Object;

    .line 41
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    move-result-object v1

    .line 45
    aput-object v1, v2, v3

    .line 47
    const-string v1, "is mkdir = {?}"

    .line 49
    invoke-static {v5, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    :cond_0
    new-array v1, v4, [Ljava/lang/Object;

    .line 54
    aput-object v0, v1, v3

    .line 56
    const-string v2, "getCrashBasePath {?}"

    .line 58
    invoke-static {v5, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    return-object v0
.end method

.method public s()V
    .locals 0

    .line 1
    return-void
.end method

.method public final s0(Ljava/util/Map;)V
    .locals 4

    .line 1
    const-string v0, "CrashReason"

    .line 3
    :try_start_0
    invoke-static {}, Lcom/autonavi/amapauto/framework/CrashBridge;->b()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    const-string v3, "content="

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :catchall_0
    :cond_0
    return-void
.end method

.method public t()I
    .locals 1

    .line 1
    const/16 v0, 0x1e

    return v0
.end method

.method public final t0(Ljava/util/Map;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/amapauto/framework/AutoLoader;->k()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 15
    const-string v1, "runtime"

    .line 17
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :catchall_0
    :cond_0
    return-void
.end method

.method public u()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    return v0
.end method

.method public final u0(Ljava/util/Map;)V
    .locals 2

    .line 1
    const-string v0, "SurfaceCreate"

    .line 3
    iget-object v1, p0, Luz;->f:Ljava/lang/String;

    .line 5
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-string v0, "SurfaceDestroy"

    .line 10
    iget-object v1, p0, Luz;->g:Ljava/lang/String;

    .line 12
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    return-void
.end method

.method public synthetic v()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lar;->a(Lbr;)Z

    move-result v0

    return v0
.end method

.method public final v0(Ljava/util/Map;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lpi;->n()Lpi;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lpi;->t()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    const-string v0, "DeviceAdapterVersion"

    .line 13
    invoke-static {}, Lpi;->n()Lpi;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lpi;->m()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :catchall_0
    :cond_0
    return-void
.end method

.method public w()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "[MapDumpDataSourceControler]"

    .line 6
    const-string v2, "getRestUploadUrl"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget v0, p0, Luz;->i:I

    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 16
    const-string v0, "YUhSMGNITTZMeTl3Y21VdFlYVjBiMkZ3YVM1aGJXRndMbU52YlRvME5ETXZkM012Y0dGblpTOTFjR3h2WVdR"

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x2

    .line 20
    if-ne v0, v1, :cond_1

    .line 22
    const-string v0, "YUhSMGNITTZMeTlwZEdWemRDMWhkWFJ2WVhCcExuUmxjM1JwYm1jdVlXMWhjQzVqYjIwNk5EUXpMM2R6TDNCaFoyVXZkWEJzYjJGaw=="

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-string v0, "YUhSMGNITTZMeTloZFhSdllYQnBMbUZ0WVhBdVkyOXRPalEwTXk5M2N5OXdZV2RsTDNWd2JHOWhaQT09"

    .line 27
    :goto_0
    invoke-static {v0}, Luz;->n0(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Luz;->n0(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method public final w0()Z
    .locals 4

    .line 1
    invoke-static {}, Lzm;->d()Lzm;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "IsNeedCertificateAuthority"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    new-array v1, v1, [Ljava/lang/Object;

    .line 15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    move-result-object v3

    .line 19
    aput-object v3, v1, v2

    .line 21
    const-string v2, "[MapDumpDataSourceControler]"

    .line 23
    const-string v3, "isNeedCertificateAuthorityFromAL = {?}"

    .line 25
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    return v0
.end method

.method public x()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "[MapDumpDataSourceControler]"

    .line 6
    const-string v2, "getInternalStoragePath"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Luz;->c:Ljava/lang/String;

    .line 13
    return-object v0
.end method

.method public x0()V
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 3
    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v1, Ljava/util/Date;

    .line 10
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 13
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Luz;->f:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public y()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "[MapDumpDataSourceControler]"

    .line 6
    const-string v2, "getLibSoPath"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lr50;->k()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public y0()V
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 3
    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v1, Ljava/util/Date;

    .line 10
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 13
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Luz;->g:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public z()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Luz;->j:J

    .line 7
    sub-long/2addr v0, v2

    .line 8
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    new-array v1, v1, [Ljava/lang/Object;

    .line 15
    const-string v2, "onDumpEnd used:{?}"

    .line 17
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    return-void
.end method

.method public z0(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Luz;->h:J

    .line 3
    return-void
.end method
