.class public Lcom/autonavi/amapauto/socol/SocolParamsProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field public static a:Landroid/content/UriMatcher;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/UriMatcher;

    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 7
    sput-object v0, Lcom/autonavi/amapauto/socol/SocolParamsProvider;->a:Landroid/content/UriMatcher;

    .line 9
    const-string v1, "UUID"

    .line 11
    const/4 v2, 0x1

    .line 12
    const-string v3, "com.autonavi.amapautolite.provider.socol"

    .line 14
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    sget-object v0, Lcom/autonavi/amapauto/socol/SocolParamsProvider;->a:Landroid/content/UriMatcher;

    .line 19
    const-string v1, "BASEINFO"

    .line 21
    const/4 v2, 0x2

    .line 22
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 25
    sget-object v0, Lcom/autonavi/amapauto/socol/SocolParamsProvider;->a:Landroid/content/UriMatcher;

    .line 27
    const-string v1, "AR_STATE"

    .line 29
    const/4 v2, 0x3

    .line 30
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 5

    .line 1
    const-string v0, "SocolParamsProvider"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/autonavi/amapauto/ar/camera/CameraManager;->getInstance()Lcom/autonavi/amapauto/ar/camera/CameraManager;

    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {v2}, Lcom/autonavi/amapauto/ar/camera/CameraManager;->getArState()I

    .line 11
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v2

    .line 14
    const-string v3, "getArState:"

    .line 16
    new-array v4, v1, [Ljava/lang/Object;

    .line 18
    invoke-static {v0, v3, v2, v4}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_0
    const/4 v3, 0x1

    .line 23
    new-array v3, v3, [Ljava/lang/Object;

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v4

    .line 29
    aput-object v4, v3, v1

    .line 31
    const-string v1, "getArState = {?}"

    .line 33
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    return v2
.end method

.method public final b()Landroid/database/Cursor;
    .locals 4

    .line 1
    const-string v0, "ar_state"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/database/MatrixCursor;

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 13
    new-array v0, v2, [Ljava/lang/Object;

    .line 15
    invoke-virtual {p0}, Lcom/autonavi/amapauto/socol/SocolParamsProvider;->a()I

    .line 18
    move-result v2

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v2

    .line 23
    const/4 v3, 0x0

    .line 24
    aput-object v2, v0, v3

    .line 26
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 29
    return-object v1
.end method

.method public final c()Landroid/database/Cursor;
    .locals 8

    .line 1
    new-instance v0, Landroid/database/MatrixCursor;

    .line 3
    const-string v1, "ISSHAREROAD"

    .line 5
    const-string v2, "VERSIONNAME"

    .line 7
    const-string v3, "ADIU"

    .line 9
    const-string v4, "DEVICEIDTYPE"

    .line 11
    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 19
    invoke-static {}, Lf30;->b()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-static {}, Lcom/autonavi/amapauto/socol/SocolNative;->nativeGetTbtInitDeviceIdType()Ljava/lang/String;

    .line 26
    move-result-object v3

    .line 27
    invoke-static {}, Lcom/autonavi/amapauto/socol/SocolNative;->nativeGetSocolState()Z

    .line 30
    move-result v4

    .line 31
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 34
    move-result-object v4

    .line 35
    invoke-static {}, Lrv;->H()Lrv;

    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v5}, Lrv;->w()Ljava/lang/String;

    .line 42
    move-result-object v5

    .line 43
    filled-new-array {v1, v3, v4, v5}, [Ljava/lang/String;

    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 50
    const/4 v6, 0x4

    .line 51
    new-array v6, v6, [Ljava/lang/Object;

    .line 53
    const/4 v7, 0x0

    .line 54
    aput-object v1, v6, v7

    .line 56
    aput-object v3, v6, v2

    .line 58
    const/4 v1, 0x2

    .line 59
    aput-object v4, v6, v1

    .line 61
    const/4 v1, 0x3

    .line 62
    aput-object v5, v6, v1

    .line 64
    const-string v1, "SocolParamsProvider"

    .line 66
    const-string v2, "query BaseInfo = {?}, {?}, {?}, {?}"

    .line 68
    invoke-static {v1, v2, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    return-object v0
.end method

.method public final d()Landroid/database/Cursor;
    .locals 5

    .line 1
    const-string v0, ""

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/database/MatrixCursor;

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 13
    invoke-static {}, Lf30;->n()Ljava/lang/String;

    .line 16
    move-result-object v3

    .line 17
    const/4 v4, 0x0

    .line 18
    aput-object v3, v0, v4

    .line 20
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 23
    new-array v2, v2, [Ljava/lang/Object;

    .line 25
    aget-object v0, v0, v4

    .line 27
    aput-object v0, v2, v4

    .line 29
    const-string v0, "SocolParamsProvider"

    .line 31
    const-string v3, "query diu = {?}"

    .line 33
    invoke-static {v0, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    return-object v1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    .line 1
    const/4 p2, 0x1

    .line 2
    new-array p3, p2, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 7
    move-result-object p4

    .line 8
    const/4 p5, 0x0

    .line 9
    aput-object p4, p3, p5

    .line 11
    const-string p4, "SocolParamsProvider"

    .line 13
    const-string v0, "query uri = {?}"

    .line 15
    invoke-static {p4, v0, p3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {}, La7;->c()La7;

    .line 21
    move-result-object p3

    .line 22
    invoke-virtual {p3}, La7;->d()Z

    .line 25
    move-result p3

    .line 26
    if-nez p3, :cond_0

    .line 28
    invoke-static {}, La7;->c()La7;

    .line 31
    move-result-object p3

    .line 32
    invoke-static {}, Lrv;->H()Lrv;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lrv;->y()Landroid/app/Application;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p3, v0}, La7;->h(Landroid/content/Context;)V

    .line 43
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 46
    move-result-wide v0

    .line 47
    :cond_1
    invoke-static {}, La7;->c()La7;

    .line 50
    move-result-object p3

    .line 51
    invoke-virtual {p3}, La7;->d()Z

    .line 54
    move-result p3

    .line 55
    const/4 v2, 0x0

    .line 56
    if-nez p3, :cond_2

    .line 58
    const-wide/16 v3, 0x64

    .line 60
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_0

    .line 64
    :catch_0
    nop

    .line 65
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 68
    move-result-wide v3

    .line 69
    sub-long/2addr v3, v0

    .line 70
    const-wide/16 v5, 0x1388

    .line 72
    cmp-long p3, v3, v5

    .line 74
    if-ltz p3, :cond_1

    .line 76
    const-string p1, "init time out"

    .line 78
    new-array p2, p5, [Ljava/lang/Object;

    .line 80
    invoke-static {p4, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    return-object v2

    .line 84
    :cond_2
    :try_start_1
    sget-object p3, Lcom/autonavi/amapauto/socol/SocolParamsProvider;->a:Landroid/content/UriMatcher;

    .line 86
    invoke-virtual {p3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 89
    move-result p1

    .line 90
    if-eq p1, p2, :cond_5

    .line 92
    const/4 p2, 0x2

    .line 93
    if-eq p1, p2, :cond_4

    .line 95
    const/4 p2, 0x3

    .line 96
    if-eq p1, p2, :cond_3

    .line 98
    goto :goto_1

    .line 99
    :cond_3
    invoke-virtual {p0}, Lcom/autonavi/amapauto/socol/SocolParamsProvider;->b()Landroid/database/Cursor;

    .line 102
    move-result-object p1

    .line 103
    return-object p1

    .line 104
    :cond_4
    invoke-virtual {p0}, Lcom/autonavi/amapauto/socol/SocolParamsProvider;->c()Landroid/database/Cursor;

    .line 107
    move-result-object p1

    .line 108
    return-object p1

    .line 109
    :cond_5
    invoke-virtual {p0}, Lcom/autonavi/amapauto/socol/SocolParamsProvider;->d()Landroid/database/Cursor;

    .line 112
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 113
    return-object p1

    .line 114
    :catch_1
    move-exception p1

    .line 115
    const-string p2, "query"

    .line 117
    new-array p3, p5, [Ljava/lang/Object;

    .line 119
    invoke-static {p4, p2, p1, p3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 122
    :goto_1
    return-object v2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
