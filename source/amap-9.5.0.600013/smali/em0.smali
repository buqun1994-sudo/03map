.class public Lem0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lem0$a;,
        Lem0$b;
    }
.end annotation


# static fields
.field public static h:Lem0;


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:J

.field public f:Landroid/graphics/Bitmap;

.field public g:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lem0;->b:I

    .line 7
    invoke-static {}, Lrv;->H()Lrv;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 14
    move-result-object v0

    .line 15
    const-string v1, "SharedPreferences"

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lem0;->g:Landroid/content/SharedPreferences;

    .line 24
    return-void
.end method

.method public static synthetic a(Lem0;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iput-object p1, p0, Lem0;->f:Landroid/graphics/Bitmap;

    .line 3
    return-object p1
.end method

.method public static synthetic b(Lem0;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lem0;->i(Z)V

    .line 4
    return-void
.end method

.method public static declared-synchronized d()Lem0;
    .locals 2

    .line 1
    const-class v0, Lem0;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lem0;->h:Lem0;

    .line 6
    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lem0;

    .line 10
    invoke-direct {v1}, Lem0;-><init>()V

    .line 13
    sput-object v1, Lem0;->h:Lem0;

    .line 15
    :cond_0
    sget-object v1, Lem0;->h:Lem0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0

    .line 21
    throw v1
.end method

.method public static e(I)Ljava/lang/String;
    .locals 4

    .line 1
    const/16 v0, 0x3c

    .line 3
    div-int/2addr p0, v0

    .line 4
    invoke-static {}, Lrv;->H()Lrv;

    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object v1

    .line 16
    if-ge p0, v0, :cond_1

    .line 18
    if-nez p0, :cond_0

    .line 20
    const/4 p0, 0x1

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    sget p0, Ld90;->p:I

    .line 31
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    div-int/lit8 v2, p0, 0x3c

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    sget v2, Ld90;->o:I

    .line 55
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v2

    .line 66
    rem-int/2addr p0, v0

    .line 67
    if-lez p0, :cond_2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    sget p0, Ld90;->p:I

    .line 82
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object p0

    .line 93
    goto :goto_0

    .line 94
    :cond_2
    move-object p0, v2

    .line 95
    :goto_0
    return-object p0
.end method


# virtual methods
.method public c()I
    .locals 3

    .line 1
    iget v0, p0, Lem0;->b:I

    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_0

    .line 7
    iget-object v0, p0, Lem0;->g:Landroid/content/SharedPreferences;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    const-string v1, "go_type_key"

    .line 13
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lem0;->b:I

    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 20
    new-array v0, v0, [Ljava/lang/Object;

    .line 22
    iget v1, p0, Lem0;->b:I

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v1

    .line 28
    aput-object v1, v0, v2

    .line 30
    const-string v1, "WidgetHomeCompanyChecker"

    .line 32
    const-string v2, "getGoType :{?}"

    .line 34
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    iget v0, p0, Lem0;->b:I

    .line 39
    return v0
.end method

.method public f(Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;->routeTMCSegmentData:[Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lem0;->d()Lem0;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lem0;->g(Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;)V

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lem0;->h()V

    .line 18
    :goto_0
    return-void
.end method

.method public g(Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 3
    iget v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;->type:I

    .line 5
    iput v0, p0, Lem0;->b:I

    .line 7
    iget-object v0, p0, Lem0;->g:Landroid/content/SharedPreferences;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 14
    move-result-object v0

    .line 15
    const-string v1, "go_type_key"

    .line 17
    iget v2, p0, Lem0;->b:I

    .line 19
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 26
    :cond_0
    iget v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;->eta:F

    .line 28
    float-to-int v0, v0

    .line 29
    invoke-static {v0}, Lem0;->e(I)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lem0;->c:Ljava/lang/String;

    .line 35
    iget-object v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;->mainroadinfo:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lem0;->d:Ljava/lang/String;

    .line 39
    new-instance v0, Lul0;

    .line 41
    invoke-static {}, Lrv;->H()Lrv;

    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 48
    move-result-object v1

    .line 49
    invoke-direct {v0, v1}, Lul0;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v1, Lem0$a;

    .line 54
    invoke-direct {v1, p0}, Lem0$a;-><init>(Lem0;)V

    .line 57
    invoke-virtual {v0, p1, v1}, Lul0;->c(Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;Lem0$b;)V

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const/4 p1, 0x0

    .line 62
    invoke-virtual {p0, p1}, Lem0;->i(Z)V

    .line 65
    :goto_0
    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "com.autonavi.amapauto.AUTO_WIDGET_UPDATE_HOME_COMPANY_INFO"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const/4 v1, 0x0

    .line 9
    sput-boolean v1, Lfm0;->a:Z

    .line 11
    const/4 v1, 0x2

    .line 12
    sput v1, Lfm0;->b:I

    .line 14
    invoke-static {}, Lrv;->H()Lrv;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lrv;->L()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    invoke-static {}, Lrv;->H()Lrv;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 36
    return-void
.end method

.method public final i(Z)V
    .locals 2

    .line 1
    iget p1, p0, Lem0;->b:I

    .line 3
    iput p1, p0, Lem0;->a:I

    .line 5
    new-instance p1, Landroid/content/Intent;

    .line 7
    const-string v0, "com.autonavi.amapauto.AUTO_WIDGET_UPDATE_HOME_COMPANY_INFO"

    .line 9
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    const/4 v0, 0x1

    .line 13
    sput-boolean v0, Lfm0;->a:Z

    .line 15
    iget v0, p0, Lem0;->b:I

    .line 17
    sput v0, Lfm0;->b:I

    .line 19
    iget-object v0, p0, Lem0;->c:Ljava/lang/String;

    .line 21
    sput-object v0, Lfm0;->c:Ljava/lang/String;

    .line 23
    iget-object v0, p0, Lem0;->d:Ljava/lang/String;

    .line 25
    sput-object v0, Lfm0;->d:Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lem0;->f:Landroid/graphics/Bitmap;

    .line 29
    sput-object v0, Lfm0;->e:Landroid/graphics/Bitmap;

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 34
    move-result-wide v0

    .line 35
    iput-wide v0, p0, Lem0;->e:J

    .line 37
    invoke-static {}, Lrv;->H()Lrv;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lrv;->L()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    invoke-static {}, Lrv;->H()Lrv;

    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 59
    return-void
.end method
