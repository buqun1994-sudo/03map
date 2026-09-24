.class public Lvi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvi$e;,
        Lvi$d;
    }
.end annotation


# instance fields
.field public a:[I

.field public b:I

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/ref/WeakReference;

.field public j:Landroid/view/ViewGroup;

.field public k:Landroid/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lvi;->b:I

    .line 4
    iput-boolean v0, p0, Lvi;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lvi$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lvi;-><init>()V

    return-void
.end method

.method public static synthetic a(Lvi;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lvi;->i:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lvi;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lvi;->t()V

    .line 4
    return-void
.end method

.method public static synthetic c(Lvi;)Landroid/opengl/GLSurfaceView;
    .locals 0

    .line 1
    iget-object p0, p0, Lvi;->k:Landroid/opengl/GLSurfaceView;

    .line 3
    return-object p0
.end method

.method public static synthetic d(Lvi;Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView;
    .locals 0

    .line 1
    iput-object p1, p0, Lvi;->k:Landroid/opengl/GLSurfaceView;

    .line 3
    return-object p1
.end method

.method public static synthetic e(Lvi;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lvi;->j:Landroid/view/ViewGroup;

    .line 3
    return-object p0
.end method

.method public static synthetic f(Lvi;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iput-object p1, p0, Lvi;->j:Landroid/view/ViewGroup;

    .line 3
    return-object p1
.end method

.method public static synthetic g(Lvi;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lvi;->m()V

    .line 4
    return-void
.end method

.method public static synthetic h(Lvi;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lvi;->a:[I

    .line 3
    return-object p0
.end method

.method public static synthetic i(Lvi;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lvi;->l()V

    .line 4
    return-void
.end method

.method public static synthetic j(Lvi;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lvi;->s()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic k(Lvi;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lvi;->o()V

    .line 4
    return-void
.end method

.method public static q()Lvi;
    .locals 1

    .line 1
    sget-object v0, Lvi$e;->a:Lvi;

    .line 3
    return-object v0
.end method


# virtual methods
.method public final l()V
    .locals 8

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 19
    move-result-object v0

    .line 20
    const-string v1, "BASE"

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 26
    move-result-object v0

    .line 27
    const-string v1, "YEAR"

    .line 29
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 32
    move-result v1

    .line 33
    const-string v3, "MONTH"

    .line 35
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 38
    move-result v3

    .line 39
    const-string v4, "DAY"

    .line 41
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 44
    move-result v0

    .line 45
    const/4 v4, 0x2

    .line 46
    const/4 v5, 0x1

    .line 47
    const/4 v6, 0x3

    .line 48
    if-eqz v1, :cond_1

    .line 50
    if-eqz v3, :cond_1

    .line 52
    if-eqz v0, :cond_1

    .line 54
    new-array v7, v6, [I

    .line 56
    iput-object v7, p0, Lvi;->a:[I

    .line 58
    aput v1, v7, v2

    .line 60
    aput v3, v7, v5

    .line 62
    aput v0, v7, v4

    .line 64
    :cond_1
    new-array v6, v6, [Ljava/lang/Object;

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v1

    .line 70
    aput-object v1, v6, v2

    .line 72
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object v1

    .line 76
    aput-object v1, v6, v5

    .line 78
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    move-result-object v0

    .line 82
    aput-object v0, v6, v4

    .line 84
    const-string v0, "DeviceInfoCollectionManager"

    .line 86
    const-string v1, "checkIfCollect mTimeArray={?},{?},{?}"

    .line 88
    invoke-static {v0, v1, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lvi;->a:[I

    .line 93
    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {p0}, Lvi;->s()Z

    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_3

    .line 101
    :cond_2
    invoke-virtual {p0}, Lvi;->o()V

    .line 104
    :cond_3
    return-void
.end method

.method public final m()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget v1, p0, Lvi;->b:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    const-string v1, "DeviceInfoCollectionManager"

    .line 15
    const-string v2, "collectDeviceInfo mTriggerCount={?}"

    .line 17
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget v0, p0, Lvi;->b:I

    .line 22
    const/16 v1, 0x3c

    .line 24
    if-le v0, v1, :cond_0

    .line 26
    return-void

    .line 27
    :cond_0
    new-instance v0, Lvi$b;

    .line 29
    invoke-direct {v0, p0}, Lvi$b;-><init>(Lvi;)V

    .line 32
    invoke-static {v0}, Lbg0;->f(Ljava/lang/Runnable;)V

    .line 35
    return-void
.end method

.method public n(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lvi;->r()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lvi;->m()V

    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 13
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 16
    iput-object v0, p0, Lvi;->i:Ljava/lang/ref/WeakReference;

    .line 18
    new-instance p1, Lvi$a;

    .line 20
    invoke-direct {p1, p0}, Lvi$a;-><init>(Lvi;)V

    .line 23
    invoke-static {p1}, Lbg0;->b(Ljava/lang/Runnable;)V

    .line 26
    return-void
.end method

.method public final o()V
    .locals 9

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Lvi;->v()V

    .line 15
    iget-object v1, p0, Lvi;->a:[I

    .line 17
    const/4 v2, 0x3

    .line 18
    if-nez v1, :cond_1

    .line 20
    new-array v1, v2, [I

    .line 22
    iput-object v1, p0, Lvi;->a:[I

    .line 24
    :cond_1
    iget-object v1, p0, Lvi;->a:[I

    .line 26
    invoke-static {v1}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeGetTime([I)V

    .line 29
    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 31
    const/16 v3, 0xb

    .line 33
    new-array v3, v3, [Ljava/lang/Object;

    .line 35
    const v4, 0x5f5e171

    .line 38
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v5

    .line 42
    const/4 v6, 0x0

    .line 43
    aput-object v5, v3, v6

    .line 45
    iget-object v5, p0, Lvi;->g:Ljava/lang/String;

    .line 47
    const/4 v7, 0x1

    .line 48
    aput-object v5, v3, v7

    .line 50
    iget-object v5, p0, Lvi;->h:Ljava/lang/String;

    .line 52
    const/4 v8, 0x2

    .line 53
    aput-object v5, v3, v8

    .line 55
    sget-object v5, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 57
    aput-object v5, v3, v2

    .line 59
    const/4 v2, 0x4

    .line 60
    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 62
    aput-object v5, v3, v2

    .line 64
    const/4 v2, 0x5

    .line 65
    sget-object v5, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 67
    aput-object v5, v3, v2

    .line 69
    const/4 v2, 0x6

    .line 70
    iget-object v5, p0, Lvi;->d:Ljava/lang/String;

    .line 72
    aput-object v5, v3, v2

    .line 74
    const/4 v2, 0x7

    .line 75
    iget-object v5, p0, Lvi;->e:Ljava/lang/String;

    .line 77
    aput-object v5, v3, v2

    .line 79
    const/16 v2, 0x8

    .line 81
    invoke-virtual {p0, v0}, Lvi;->p(Landroid/content/Context;)Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    aput-object v0, v3, v2

    .line 87
    const/16 v0, 0x9

    .line 89
    aput-object v1, v3, v0

    .line 91
    const/16 v0, 0xa

    .line 93
    const-string v1, ""

    .line 95
    aput-object v1, v3, v0

    .line 97
    const-string v0, "[%d][10][%s][%s][%s][%s][%s][%s][%s][%s][%s][%s]"

    .line 99
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    move-result-object v0

    .line 103
    const-string v1, "AUTO_BASE"

    .line 105
    const/16 v2, 0x3c

    .line 107
    invoke-static {v1, v4, v0, v2}, Len;->c(Ljava/lang/String;ILjava/lang/String;I)V

    .line 110
    new-array v1, v7, [Ljava/lang/Object;

    .line 112
    aput-object v0, v1, v6

    .line 114
    const-string v0, "DeviceInfoCollectionManager"

    .line 116
    const-string v2, "100000113 format={?}"

    .line 118
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    invoke-static {}, Lrv;->H()Lrv;

    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 128
    move-result-object v0

    .line 129
    const-string v1, "BASE"

    .line 131
    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 134
    move-result-object v0

    .line 135
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 138
    move-result-object v0

    .line 139
    iget-object v1, p0, Lvi;->a:[I

    .line 141
    aget v1, v1, v6

    .line 143
    const-string v2, "YEAR"

    .line 145
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 148
    iget-object v1, p0, Lvi;->a:[I

    .line 150
    aget v1, v1, v7

    .line 152
    const-string v2, "MONTH"

    .line 154
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 157
    iget-object v1, p0, Lvi;->a:[I

    .line 159
    aget v1, v1, v8

    .line 161
    const-string v2, "DAY"

    .line 163
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 166
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 169
    iget v0, p0, Lvi;->b:I

    .line 171
    add-int/2addr v0, v7

    .line 172
    iput v0, p0, Lvi;->b:I

    .line 174
    return-void
.end method

.method public final p(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "activity"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/app/ActivityManager;

    .line 9
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    .line 12
    move-result-object p1

    .line 13
    iget p1, p1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 18
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-object p1

    .line 20
    :catch_0
    const-string p1, "0"

    .line 22
    return-object p1
.end method

.method public r()Z
    .locals 1

    .line 1
    const-string v0, "mIsGLInfoGot"

    .line 3
    invoke-static {v0}, Lp7;->a(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lvi;->c:Z

    .line 12
    const-string v0, "mGlRender"

    .line 14
    invoke-static {v0}, Lp7;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lvi;->d:Ljava/lang/String;

    .line 20
    const-string v0, "mGlVendor"

    .line 22
    invoke-static {v0}, Lp7;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lvi;->e:Ljava/lang/String;

    .line 28
    const-string v0, "mGlVersion"

    .line 30
    invoke-static {v0}, Lp7;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lvi;->f:Ljava/lang/String;

    .line 36
    :cond_0
    iget-boolean v0, p0, Lvi;->c:Z

    .line 38
    return v0
.end method

.method public final s()Z
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [I

    .line 4
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeGetTime([I)V

    .line 7
    const/4 v1, 0x0

    .line 8
    aget v2, v0, v1

    .line 10
    iget-object v3, p0, Lvi;->a:[I

    .line 12
    aget v4, v3, v1

    .line 14
    const-string v5, "DeviceInfoCollectionManager"

    .line 16
    const/4 v6, 0x1

    .line 17
    if-ne v2, v4, :cond_0

    .line 19
    aget v2, v0, v6

    .line 21
    aget v4, v3, v6

    .line 23
    if-ne v2, v4, :cond_0

    .line 25
    const/4 v2, 0x2

    .line 26
    aget v0, v0, v2

    .line 28
    aget v2, v3, v2

    .line 30
    if-ne v0, v2, :cond_0

    .line 32
    const-string v0, "isReadyToCollect false"

    .line 34
    new-array v2, v1, [Ljava/lang/Object;

    .line 36
    invoke-static {v5, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    return v1

    .line 40
    :cond_0
    const-string v0, "isReadyToCollect true"

    .line 42
    new-array v1, v1, [Ljava/lang/Object;

    .line 44
    invoke-static {v5, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    return v6
.end method

.method public final t()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "DeviceInfoCollectionManager"

    .line 6
    const-string v2, "removeGlSurfaceView"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v0, Lvi$c;

    .line 13
    invoke-direct {v0, p0}, Lvi$c;-><init>(Lvi;)V

    .line 16
    invoke-static {v0}, Lbg0;->b(Ljava/lang/Runnable;)V

    .line 19
    return-void
.end method

.method public u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvi;->d:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lvi;->e:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lvi;->f:Ljava/lang/String;

    .line 7
    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p0, Lvi;->c:Z

    .line 10
    const-string p2, "mGlRender"

    .line 12
    invoke-static {p2, p1}, Lp7;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const-string p1, "mGlVendor"

    .line 17
    iget-object p2, p0, Lvi;->e:Ljava/lang/String;

    .line 19
    invoke-static {p1, p2}, Lp7;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string p1, "mGlVersion"

    .line 24
    iget-object p2, p0, Lvi;->f:Ljava/lang/String;

    .line 26
    invoke-static {p1, p2}, Lp7;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string p1, "mIsGLInfoGot"

    .line 31
    iget-boolean p2, p0, Lvi;->c:Z

    .line 33
    invoke-static {p1, p2}, Lp7;->g(Ljava/lang/String;Z)V

    .line 36
    return-void
.end method

.method public final v()V
    .locals 1

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->x()I

    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lvi;->g:Ljava/lang/String;

    .line 15
    invoke-static {}, Lrv;->H()Lrv;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lrv;->u()I

    .line 22
    move-result v0

    .line 23
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lvi;->h:Ljava/lang/String;

    .line 29
    return-void
.end method
