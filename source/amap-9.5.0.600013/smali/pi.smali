.class public Lpi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpi$d;,
        Lpi$c;
    }
.end annotation


# static fields
.field public static final f:[[I


# instance fields
.field public a:Loi;

.field public final b:Lq1;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Lpi$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [[I

    .line 4
    const/4 v1, 0x7

    .line 5
    const/4 v2, 0x0

    .line 6
    filled-new-array {v1, v2}, [I

    .line 9
    move-result-object v3

    .line 10
    aput-object v3, v0, v2

    .line 12
    const/4 v3, 0x2

    .line 13
    filled-new-array {v2, v3}, [I

    .line 16
    move-result-object v4

    .line 17
    const/4 v5, 0x1

    .line 18
    aput-object v4, v0, v5

    .line 20
    filled-new-array {v1, v5}, [I

    .line 23
    move-result-object v1

    .line 24
    aput-object v1, v0, v3

    .line 26
    filled-new-array {v5, v3}, [I

    .line 29
    move-result-object v1

    .line 30
    const/4 v3, 0x3

    .line 31
    aput-object v1, v0, v3

    .line 33
    const/4 v1, 0x4

    .line 34
    filled-new-array {v3, v2}, [I

    .line 37
    move-result-object v2

    .line 38
    aput-object v2, v0, v1

    .line 40
    sput-object v0, Lpi;->f:[[I

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lpi;->c:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lpi;->e:Lpi$c;

    .line 5
    new-instance v0, Lq1;

    invoke-direct {v0}, Lq1;-><init>()V

    iput-object v0, p0, Lpi;->b:Lq1;

    return-void
.end method

.method public synthetic constructor <init>(Lpi$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lpi;-><init>()V

    return-void
.end method

.method public static synthetic a(Lpi;Loi;)Loi;
    .locals 0

    .line 1
    iput-object p1, p0, Lpi;->a:Loi;

    .line 3
    return-object p1
.end method

.method public static synthetic b(Lpi;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lpi;->A()V

    .line 4
    return-void
.end method

.method public static synthetic c(Lpi;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lpi;->d:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic d(Lpi;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lpi;->d:Ljava/lang/String;

    .line 3
    return-object p1
.end method

.method public static synthetic e(Lpi;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lpi;->C()V

    .line 4
    return-void
.end method

.method public static synthetic f(Lpi;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lpi;->i()V

    .line 4
    return-void
.end method

.method public static synthetic g(Lpi;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lpi;->c:Z

    .line 3
    return p0
.end method

.method public static synthetic h()[[I
    .locals 1

    .line 1
    sget-object v0, Lpi;->f:[[I

    .line 3
    return-object v0
.end method

.method public static n()Lpi;
    .locals 1

    .line 1
    invoke-static {}, Lpi$d;->a()Lpi;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static s(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "C04010001001"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 9
    const-string v0, "C08010001001"

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
.end method


# virtual methods
.method public final A()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lpi;->c:Z

    .line 4
    iget-object v0, p0, Lpi;->a:Loi;

    .line 6
    if-eqz v0, :cond_2

    .line 8
    iget-object v0, v0, Loi;->e:Lm1;

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0}, Ldc;->a()Landroid/util/SparseArray;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 20
    move-result v0

    .line 21
    if-lez v0, :cond_0

    .line 23
    iput-boolean v1, p0, Lpi;->c:Z

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget-object v0, p0, Lpi;->a:Loi;

    .line 28
    iget-object v0, v0, Loi;->f:Landroid/util/SparseArray;

    .line 30
    if-eqz v0, :cond_2

    .line 32
    const/4 v0, 0x0

    .line 33
    :goto_0
    iget-object v2, p0, Lpi;->a:Loi;

    .line 35
    iget-object v2, v2, Loi;->f:Landroid/util/SparseArray;

    .line 37
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 40
    move-result v2

    .line 41
    if-ge v0, v2, :cond_2

    .line 43
    iget-object v2, p0, Lpi;->a:Loi;

    .line 45
    iget-object v2, v2, Loi;->f:Landroid/util/SparseArray;

    .line 47
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lhc;

    .line 53
    invoke-virtual {v2}, Lhc;->b()Landroid/util/SparseIntArray;

    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    .line 60
    move-result v2

    .line 61
    if-lez v2, :cond_1

    .line 63
    iput-boolean v1, p0, Lpi;->c:Z

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    :goto_1
    return-void
.end method

.method public B(Landroid/content/Intent;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-static {}, Lpi;->n()Lpi;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x7

    .line 14
    const/4 v2, 0x2

    .line 15
    invoke-virtual {v0, v1, v2}, Lpi;->k(II)Lfq;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ldk0$b;

    .line 21
    if-eqz v0, :cond_0

    .line 23
    const-string v1, "KEY_TYPE"

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 29
    move-result v1

    .line 30
    invoke-interface {v0, v1, p1}, Lfq$b;->g(ILandroid/content/Intent;)Z

    .line 33
    :cond_0
    return-void
.end method

.method public final C()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lpi;->z()V

    .line 4
    invoke-static {}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->getInstance()Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->onStartup()V

    .line 11
    invoke-virtual {p0}, Lpi;->l()I

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lpi$b;

    .line 19
    invoke-direct {v0, p0}, Lpi$b;-><init>(Lpi;)V

    .line 22
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative;->setAdapterStateRequestInterface(Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative$a;)V

    .line 25
    :cond_0
    return-void
.end method

.method public final D()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "DeviceAdapterManager"

    .line 6
    const-string v2, "unRegisterBroadcast"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lpi;->e:Lpi$c;

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-static {}, Lrv;->H()Lrv;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lrv;->y()Landroid/app/Application;

    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lpi;->e:Lpi$c;

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 28
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lpi;->e:Lpi$c;

    .line 31
    :cond_0
    return-void
.end method

.method public final i()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lpi;->D()V

    .line 4
    invoke-static {}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->getInstance()Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->onCleanup()V

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative;->setAdapterStateRequestInterface(Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative$a;)V

    .line 15
    return-void
.end method

.method public j()Lm1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lpi;->t()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lpi;->a:Loi;

    .line 9
    iget-object v0, v0, Loi;->e:Lm1;

    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public k(II)Lfq;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lpi;->t()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lpi;->a:Loi;

    .line 9
    iget-object v0, v0, Loi;->f:Landroid/util/SparseArray;

    .line 11
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lhc;

    .line 17
    invoke-virtual {p1, p2}, Lhc;->a(I)Lfq;

    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 23
    invoke-interface {p1}, Lfq;->a()Z

    .line 26
    move-result p2

    .line 27
    if-eqz p2, :cond_0

    .line 29
    return-object p1

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    return-object p1
.end method

.method public l()I
    .locals 1

    .line 1
    iget-object v0, p0, Lpi;->a:Loi;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget v0, v0, Loi;->c:I

    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, -0x1

    .line 9
    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lpi;->d:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public o(I)Lhc;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lpi;->t()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lpi;->a:Loi;

    .line 9
    iget-object v0, v0, Loi;->f:Landroid/util/SparseArray;

    .line 11
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lhc;

    .line 17
    return-object p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return-object p1
.end method

.method public final p()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/framework/TurboConfig;->c()Lcom/autonavi/amapauto/framework/TurboConfig;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "isAdaptive"

    .line 7
    const-string v2, ""

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/framework/TurboConfig;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "0"

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 21
    const-string v1, "false"

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x1

    .line 31
    return v0

    .line 32
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 33
    return v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lpi;->c:Z

    .line 3
    return v0
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lpi;->c:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-static {}, Lib;->k()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p0}, Lpi;->p()Z

    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    :cond_1
    const/4 v0, 0x1

    .line 19
    return v0
.end method

.method public t()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lpi;->a:Loi;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public u(Landroid/content/Context;Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lpi;->b:Lq1;

    .line 3
    new-instance v1, Lpi$a;

    .line 5
    invoke-direct {v1, p0, p1}, Lpi$a;-><init>(Lpi;Landroid/content/Context;)V

    .line 8
    invoke-virtual {v0, p1, p2, v1}, Lq1;->g(Landroid/content/Context;ZLq1$b;)Z

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public v(Landroid/app/Activity;I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, v0}, Lpi;->k(II)Lfq;

    .line 5
    move-result-object v1

    .line 6
    check-cast v1, Loz$a;

    .line 8
    if-eqz v1, :cond_2

    .line 10
    const/4 v2, 0x3

    .line 11
    if-eq p2, v2, :cond_1

    .line 13
    const/4 v0, 0x4

    .line 14
    if-eq p2, v0, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p2, 0x0

    .line 18
    invoke-interface {v1, p1, p2}, Loz$a;->m(Landroid/app/Activity;Z)V

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-interface {v1, p1, v0}, Loz$a;->m(Landroid/app/Activity;Z)V

    .line 25
    :cond_2
    :goto_0
    return-void
.end method

.method public w()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lpi;->t()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lpi;->D()V

    .line 10
    invoke-static {}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->getInstance()Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->onCleanup()V

    .line 17
    :cond_0
    return-void
.end method

.method public x()V
    .locals 0

    .line 1
    return-void
.end method

.method public y(Landroid/app/Activity;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, v0}, Lpi;->k(II)Lfq;

    .line 5
    move-result-object v0

    .line 6
    check-cast v0, Loz$a;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0, p1, p2}, Lfq$c;->onWindowFocusChanged(Landroid/app/Activity;Z)V

    .line 13
    :cond_0
    return-void
.end method

.method public final z()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "DeviceAdapterManager"

    .line 6
    const-string v3, "registerBroadcast"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    sget-object v3, Lpi;->f:[[I

    .line 18
    array-length v4, v3

    .line 19
    const/4 v5, 0x0

    .line 20
    :goto_0
    const/4 v6, 0x1

    .line 21
    if-ge v5, v4, :cond_1

    .line 23
    aget-object v7, v3, v5

    .line 25
    aget v8, v7, v0

    .line 27
    aget v6, v7, v6

    .line 29
    invoke-virtual {p0, v8, v6}, Lpi;->k(II)Lfq;

    .line 32
    move-result-object v6

    .line 33
    if-eqz v6, :cond_0

    .line 35
    check-cast v6, Lfq$a;

    .line 37
    invoke-interface {v6}, Lfq$a;->g()Ljava/util/List;

    .line 40
    move-result-object v6

    .line 41
    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_3

    .line 53
    new-instance v3, Landroid/content/IntentFilter;

    .line 55
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 58
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    move-result-object v1

    .line 62
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_2

    .line 68
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    move-result-object v4

    .line 72
    check-cast v4, Ljava/lang/String;

    .line 74
    const-string v5, "register broadcast, action:{?}"

    .line 76
    new-array v7, v6, [Ljava/lang/Object;

    .line 78
    aput-object v4, v7, v0

    .line 80
    invoke-static {v2, v5, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    goto :goto_1

    .line 87
    :cond_2
    new-instance v1, Lpi$c;

    .line 89
    const/4 v4, 0x0

    .line 90
    invoke-direct {v1, p0, v4}, Lpi$c;-><init>(Lpi;Lpi$a;)V

    .line 93
    iput-object v1, p0, Lpi;->e:Lpi$c;

    .line 95
    invoke-static {}, Lrv;->H()Lrv;

    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v1}, Lrv;->y()Landroid/app/Application;

    .line 102
    move-result-object v1

    .line 103
    iget-object v4, p0, Lpi;->e:Lpi$c;

    .line 105
    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_2

    .line 109
    :catch_0
    move-exception v1

    .line 110
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 113
    move-result-object v3

    .line 114
    new-array v0, v0, [Ljava/lang/Object;

    .line 116
    invoke-static {v2, v3, v1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 119
    :cond_3
    :goto_2
    return-void
.end method
