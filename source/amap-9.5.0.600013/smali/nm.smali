.class public Lnm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnm$g;
    }
.end annotation


# static fields
.field public static m:Z = true


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Landroid/os/Handler;

.field public c:I

.field public d:Lfc;

.field public e:Z

.field public f:Landroid/view/WindowManager;

.field public g:Landroid/view/WindowManager$LayoutParams;

.field public h:Landroid/content/Context;

.field public i:I

.field public j:J

.field public k:Z

.field public l:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnm;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lnm;->c:I

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p0, Lnm;->j:J

    .line 6
    iput-boolean v0, p0, Lnm;->l:Z

    .line 7
    invoke-static {}, Lvo;->b()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lnm;->b:Landroid/os/Handler;

    return-void
.end method

.method public synthetic constructor <init>(Lnm$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnm;-><init>()V

    return-void
.end method

.method public static synthetic a(Lnm;)Lfc;
    .locals 0

    .line 1
    iget-object p0, p0, Lnm;->d:Lfc;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lnm;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lnm;->a:Ljava/lang/Object;

    .line 3
    return-object p0
.end method

.method public static synthetic c(Lnm;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lnm;->b:Landroid/os/Handler;

    .line 3
    return-object p0
.end method

.method public static e()Lnm;
    .locals 1

    .line 1
    invoke-static {}, Lnm$g;->a()Lnm;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public declared-synchronized d(Landroid/content/Context;I)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lnm;->h:Landroid/content/Context;

    .line 4
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 6
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 9
    iput-object v0, p0, Lnm;->g:Landroid/view/WindowManager$LayoutParams;

    .line 11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    const/16 v2, 0x1a

    .line 15
    if-lt v1, v2, :cond_0

    .line 17
    const/16 v1, 0x7f6

    .line 19
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/16 v1, 0x7d3

    .line 24
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 26
    :goto_0
    const/4 v1, 0x1

    .line 27
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 29
    const/16 v2, 0x8

    .line 31
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 33
    const/16 v2, 0x33

    .line 35
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 37
    const/4 v2, -0x2

    .line 38
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 40
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 42
    iput p2, p0, Lnm;->i:I

    .line 44
    const-string v0, "FloatWindowManager"

    .line 46
    const-string v2, "createFloatWindow  mWindowType:{?}"

    .line 48
    new-array v3, v1, [Ljava/lang/Object;

    .line 50
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object p2

    .line 54
    const/4 v4, 0x0

    .line 55
    aput-object p2, v3, v4

    .line 57
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    invoke-virtual {p0}, Lnm;->t()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :try_start_1
    iget p2, p0, Lnm;->i:I

    .line 65
    if-eq p2, v1, :cond_1

    .line 67
    new-instance p2, Ljm;

    .line 69
    invoke-direct {p2, p1}, Ljm;-><init>(Landroid/content/Context;)V

    .line 72
    iput-object p2, p0, Lnm;->d:Lfc;

    .line 74
    invoke-virtual {p0, v1}, Lnm;->i(I)V

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    new-instance p2, Lkm;

    .line 80
    invoke-direct {p2, p1}, Lkm;-><init>(Landroid/content/Context;)V

    .line 83
    iput-object p2, p0, Lnm;->d:Lfc;

    .line 85
    invoke-virtual {p0, v4}, Lnm;->i(I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :goto_1
    :try_start_2
    iget-object p2, p0, Lnm;->d:Lfc;

    .line 90
    invoke-virtual {p0}, Lnm;->g()Z

    .line 93
    move-result v0

    .line 94
    invoke-virtual {p2, v0}, Lfc;->setGpsLocated(Z)V

    .line 97
    iget-object p2, p0, Lnm;->g:Landroid/view/WindowManager$LayoutParams;

    .line 99
    iget-object v0, p0, Lnm;->d:Lfc;

    .line 101
    invoke-virtual {v0}, Lfc;->getSavedWindowLeft()I

    .line 104
    move-result v0

    .line 105
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 107
    iget-object p2, p0, Lnm;->g:Landroid/view/WindowManager$LayoutParams;

    .line 109
    iget-object v0, p0, Lnm;->d:Lfc;

    .line 111
    invoke-virtual {v0}, Lfc;->getSavedWindowTop()I

    .line 114
    move-result v0

    .line 115
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 117
    const-string p2, "FloatWindowManager"

    .line 119
    const-string v0, "createFloatWindow  getSavedWindowLeft:{?} getSavedWindowTop:{?}"

    .line 121
    const/4 v2, 0x2

    .line 122
    new-array v2, v2, [Ljava/lang/Object;

    .line 124
    iget-object v3, p0, Lnm;->g:Landroid/view/WindowManager$LayoutParams;

    .line 126
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 128
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    move-result-object v3

    .line 132
    aput-object v3, v2, v4

    .line 134
    iget-object v3, p0, Lnm;->g:Landroid/view/WindowManager$LayoutParams;

    .line 136
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 138
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    move-result-object v3

    .line 142
    aput-object v3, v2, v1

    .line 144
    invoke-static {p2, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    iget-object p2, p0, Lnm;->d:Lfc;

    .line 149
    iget-object v0, p0, Lnm;->g:Landroid/view/WindowManager$LayoutParams;

    .line 151
    invoke-virtual {p2, v0}, Lfc;->setmWmParams(Landroid/view/WindowManager$LayoutParams;)V

    .line 154
    invoke-virtual {p0, p1}, Lnm;->f(Landroid/content/Context;)Landroid/view/WindowManager;

    .line 157
    move-result-object p1

    .line 158
    iput-object p1, p0, Lnm;->f:Landroid/view/WindowManager;

    .line 160
    iget-object p1, p0, Lnm;->d:Lfc;

    .line 162
    instance-of p2, p1, Ljm;

    .line 164
    if-eqz p2, :cond_2

    .line 166
    invoke-static {}, Lnm;->e()Lnm;

    .line 169
    move-result-object p2

    .line 170
    invoke-virtual {p2}, Lnm;->g()Z

    .line 173
    move-result p2

    .line 174
    invoke-virtual {p1, p2}, Lfc;->h(Z)V

    .line 177
    :cond_2
    iget-object p1, p0, Lnm;->b:Landroid/os/Handler;

    .line 179
    iget-object p2, p0, Lnm;->a:Ljava/lang/Object;

    .line 181
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    :try_start_3
    iget-object p1, p0, Lnm;->f:Landroid/view/WindowManager;

    .line 186
    if-eqz p1, :cond_3

    .line 188
    iget-object p2, p0, Lnm;->d:Lfc;

    .line 190
    iget-object v0, p0, Lnm;->g:Landroid/view/WindowManager$LayoutParams;

    .line 192
    invoke-interface {p1, p2, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    iget-object p1, p0, Lnm;->d:Lfc;

    .line 197
    invoke-virtual {p1, v1}, Lfc;->setHadAdd2Window(Z)V

    .line 200
    iput-boolean v1, p0, Lnm;->e:Z

    .line 202
    iput v4, p0, Lnm;->c:I

    .line 204
    iput-boolean v1, p0, Lnm;->l:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 206
    :cond_3
    :try_start_4
    iget p1, p0, Lnm;->i:I

    .line 208
    invoke-static {p1}, Lcom/autonavi/autofloat/FloatWindowManagerNative;->floatGuideInfoAcquire(I)V
    :try_end_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 211
    goto :goto_2

    .line 212
    :catch_0
    move-exception p1

    .line 213
    :try_start_5
    const-string p2, "FloatWindowManager"

    .line 215
    const-string v0, "FloatWindowManagerNative.floatGuideInfoAcquire ouccr UnsatisfiedLinkError"

    .line 217
    new-array v2, v4, [Ljava/lang/Object;

    .line 219
    invoke-static {p2, v0, p1, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 222
    :goto_2
    invoke-static {}, Llm;->b()Llm;

    .line 225
    move-result-object p1

    .line 226
    invoke-virtual {p1, v4}, Llm;->i(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 229
    goto :goto_3

    .line 230
    :catch_1
    :try_start_6
    invoke-static {}, Llm;->b()Llm;

    .line 233
    move-result-object p1

    .line 234
    invoke-virtual {p1, v1}, Llm;->i(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 237
    :goto_3
    monitor-exit p0

    .line 238
    return-void

    .line 239
    :catch_2
    move-exception p1

    .line 240
    :try_start_7
    const-string p2, "FloatWindowManager"

    .line 242
    const-string v0, "createFloatWindow res not found exception"

    .line 244
    new-array v1, v4, [Ljava/lang/Object;

    .line 246
    invoke-static {p2, v0, p1, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 249
    monitor-exit p0

    .line 250
    return-void

    .line 251
    :catchall_0
    move-exception p1

    .line 252
    monitor-exit p0

    .line 253
    throw p1
.end method

.method public final f(Landroid/content/Context;)Landroid/view/WindowManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lnm;->f:Landroid/view/WindowManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string v0, "window"

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/view/WindowManager;

    .line 13
    iput-object p1, p0, Lnm;->f:Landroid/view/WindowManager;

    .line 15
    :cond_0
    iget-object p1, p0, Lnm;->f:Landroid/view/WindowManager;

    .line 17
    return-object p1
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnm;->k:Z

    .line 3
    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnm;->e:Z

    .line 3
    return v0
.end method

.method public final i(I)V
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object p1

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v2

    .line 13
    aput-object p1, v0, v1

    .line 15
    const/4 p1, 0x1

    .line 16
    aput-object v2, v0, p1

    .line 18
    const/4 p1, 0x2

    .line 19
    aput-object v2, v0, p1

    .line 21
    const/4 p1, 0x3

    .line 22
    aput-object v2, v0, p1

    .line 24
    const-string p1, "[100000263][4][%d][%d][%d][%d]"

    .line 26
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    const v0, 0x5f5e207

    .line 33
    const/16 v1, 0xa

    .line 35
    const-string v2, "AUTO_BASE"

    .line 37
    invoke-static {v2, v0, p1, v1}, Len;->c(Ljava/lang/String;ILjava/lang/String;I)V

    .line 40
    return-void
.end method

.method public j(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnm;->e:Z

    .line 3
    if-eqz v0, :cond_1

    .line 5
    if-gez p1, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lnm$e;

    .line 10
    invoke-direct {v0, p0, p1}, Lnm$e;-><init>(Lnm;I)V

    .line 13
    invoke-static {v0}, Lbg0;->b(Ljava/lang/Runnable;)V

    .line 16
    :cond_1
    :goto_0
    return-void
.end method

.method public k(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lnm;->v(Z)V

    .line 4
    iget-boolean v0, p0, Lnm;->e:Z

    .line 6
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 9
    :cond_0
    if-eqz p1, :cond_1

    .line 11
    iget-object v0, p0, Lnm;->d:Lfc;

    .line 13
    if-eqz v0, :cond_2

    .line 15
    instance-of v1, v0, Ljm;

    .line 17
    if-eqz v1, :cond_2

    .line 19
    invoke-virtual {v0, p1}, Lfc;->h(Z)V

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, p0, Lnm;->d:Lfc;

    .line 25
    if-eqz v0, :cond_2

    .line 27
    instance-of v1, v0, Ljm;

    .line 29
    if-eqz v1, :cond_2

    .line 31
    invoke-virtual {v0, p1}, Lfc;->h(Z)V

    .line 34
    :cond_2
    :goto_0
    return-void
.end method

.method public l(Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    const-string v3, "FloatWindowManager"

    .line 6
    if-eqz p1, :cond_0

    .line 8
    const/16 v4, 0xa

    .line 10
    new-array v4, v4, [Ljava/lang/Object;

    .line 12
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCurSpeed()I

    .line 15
    move-result v5

    .line 16
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v5

    .line 20
    aput-object v5, v4, v1

    .line 22
    invoke-virtual {p0}, Lnm;->h()Z

    .line 25
    move-result v1

    .line 26
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    move-result-object v1

    .line 30
    aput-object v1, v4, v0

    .line 32
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getType()I

    .line 35
    move-result v0

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v0

    .line 40
    aput-object v0, v4, v2

    .line 42
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 45
    move-result v0

    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v0

    .line 50
    const/4 v1, 0x3

    .line 51
    aput-object v0, v4, v1

    .line 53
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCameraDist()I

    .line 56
    move-result v0

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object v0

    .line 61
    const/4 v1, 0x4

    .line 62
    aput-object v0, v4, v1

    .line 64
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCameraType()I

    .line 67
    move-result v0

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object v0

    .line 72
    const/4 v1, 0x5

    .line 73
    aput-object v0, v4, v1

    .line 75
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCameraIndex()I

    .line 78
    move-result v0

    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object v0

    .line 83
    const/4 v1, 0x6

    .line 84
    aput-object v0, v4, v1

    .line 86
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCameraExtraDist()I

    .line 89
    move-result v0

    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    move-result-object v0

    .line 94
    const/4 v1, 0x7

    .line 95
    aput-object v0, v4, v1

    .line 97
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCameraExtraType()I

    .line 100
    move-result v0

    .line 101
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    move-result-object v0

    .line 105
    const/16 v1, 0x8

    .line 107
    aput-object v0, v4, v1

    .line 109
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCameraExtraIndex()I

    .line 112
    move-result v0

    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    move-result-object v0

    .line 117
    const/16 v1, 0x9

    .line 119
    aput-object v0, v4, v1

    .line 121
    const-string v0, "onGuideInfoChange :{?} isHasShown:{?} type:{?} tid:{?} cameraDist:{?} cameraType:{?} cameraIndex:{?} cameraExtraDist:{?} cameraExtraType:{?} cameraExtraIndex:{?}"

    .line 123
    invoke-static {v3, v0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    goto :goto_0

    .line 127
    :cond_0
    new-array v2, v2, [Ljava/lang/Object;

    .line 129
    invoke-virtual {p0}, Lnm;->h()Z

    .line 132
    move-result v4

    .line 133
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 136
    move-result-object v4

    .line 137
    aput-object v4, v2, v1

    .line 139
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 142
    move-result v1

    .line 143
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    move-result-object v1

    .line 147
    aput-object v1, v2, v0

    .line 149
    const-string v0, "onGuideInfoChange :data is null isHasShown:{?} tid:{?}"

    .line 151
    invoke-static {v3, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    :goto_0
    if-eqz p1, :cond_2

    .line 156
    invoke-virtual {p0}, Lnm;->h()Z

    .line 159
    move-result v0

    .line 160
    if-nez v0, :cond_1

    .line 162
    goto :goto_1

    .line 163
    :cond_1
    new-instance v0, Lnm$a;

    .line 165
    invoke-direct {v0, p0, p1}, Lnm$a;-><init>(Lnm;Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)V

    .line 168
    invoke-static {v0}, Lbg0;->b(Ljava/lang/Runnable;)V

    .line 171
    :cond_2
    :goto_1
    return-void
.end method

.method public m(Z)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 11
    const-string v2, "FloatWindowManager"

    .line 13
    const-string v4, "floatTest onLaneInfoHide navi={?}"

    .line 15
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-object v1, p0, Lnm;->d:Lfc;

    .line 20
    if-nez v1, :cond_0

    .line 22
    new-array v0, v0, [Ljava/lang/Object;

    .line 24
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    move-result-object p1

    .line 28
    aput-object p1, v0, v3

    .line 30
    const-string p1, "floatTest onLaneInfoHide navi={?} null condition catch !!!"

    .line 32
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    return-void

    .line 36
    :cond_0
    new-instance p1, Lnm$d;

    .line 38
    invoke-direct {p1, p0}, Lnm$d;-><init>(Lnm;)V

    .line 41
    invoke-static {p1}, Lbg0;->b(Ljava/lang/Runnable;)V

    .line 44
    return-void
.end method

.method public n(Lcom/autonavi/amapauto/widget/jni/LaneInfo;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnm;->d:Lfc;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_2

    .line 8
    instance-of v0, v0, Lkm;

    .line 10
    xor-int/2addr v0, p2

    .line 11
    if-eqz v0, :cond_1

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 v0, 0x2

    .line 15
    new-array v0, v0, [Ljava/lang/Object;

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    move-result-object p2

    .line 22
    aput-object p2, v0, v1

    .line 24
    const/4 p2, 0x1

    .line 25
    aput-object p1, v0, p2

    .line 27
    const-string p2, "FloatWindowManager"

    .line 29
    const-string v1, "floatTest onShowNaviLaneInfo navi={?} laneInfo={?}"

    .line 31
    invoke-static {p2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    new-instance p2, Lnm$c;

    .line 36
    invoke-direct {p2, p0, p1}, Lnm$c;-><init>(Lnm;Lcom/autonavi/amapauto/widget/jni/LaneInfo;)V

    .line 39
    invoke-static {p2}, Lbg0;->b(Ljava/lang/Runnable;)V

    .line 42
    :cond_2
    :goto_0
    return-void
.end method

.method public o(Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnm;->d:Lfc;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lfc;->i(Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;)V

    .line 8
    :cond_0
    return-void
.end method

.method public p(ZLcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)V
    .locals 8

    .line 1
    const/16 v0, 0xa

    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x3

    .line 7
    const-string v5, "FloatWindowManager"

    .line 9
    if-eqz p2, :cond_0

    .line 11
    const/16 v6, 0xb

    .line 13
    new-array v6, v6, [Ljava/lang/Object;

    .line 15
    invoke-virtual {p2}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCurSpeed()I

    .line 18
    move-result v7

    .line 19
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v7

    .line 23
    aput-object v7, v6, v3

    .line 25
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    move-result-object v3

    .line 29
    aput-object v3, v6, v2

    .line 31
    invoke-virtual {p0}, Lnm;->h()Z

    .line 34
    move-result v2

    .line 35
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    move-result-object v2

    .line 39
    aput-object v2, v6, v1

    .line 41
    invoke-virtual {p2}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getType()I

    .line 44
    move-result v1

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v1

    .line 49
    aput-object v1, v6, v4

    .line 51
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    .line 58
    move-result-wide v1

    .line 59
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    move-result-object v1

    .line 63
    const/4 v2, 0x4

    .line 64
    aput-object v1, v6, v2

    .line 66
    invoke-virtual {p2}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCameraDist()I

    .line 69
    move-result v1

    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object v1

    .line 74
    const/4 v2, 0x5

    .line 75
    aput-object v1, v6, v2

    .line 77
    invoke-virtual {p2}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCameraType()I

    .line 80
    move-result v1

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    move-result-object v1

    .line 85
    const/4 v2, 0x6

    .line 86
    aput-object v1, v6, v2

    .line 88
    invoke-virtual {p2}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCameraIndex()I

    .line 91
    move-result v1

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    move-result-object v1

    .line 96
    const/4 v2, 0x7

    .line 97
    aput-object v1, v6, v2

    .line 99
    invoke-virtual {p2}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCameraExtraDist()I

    .line 102
    move-result v1

    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    move-result-object v1

    .line 107
    const/16 v2, 0x8

    .line 109
    aput-object v1, v6, v2

    .line 111
    invoke-virtual {p2}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCameraExtraType()I

    .line 114
    move-result v1

    .line 115
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    move-result-object v1

    .line 119
    const/16 v2, 0x9

    .line 121
    aput-object v1, v6, v2

    .line 123
    invoke-virtual {p2}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCameraExtraIndex()I

    .line 126
    move-result v1

    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    move-result-object v1

    .line 131
    aput-object v1, v6, v0

    .line 133
    const-string v1, "onSyncGuideInfoChange :{?} arrived:{?} isHasShown:{?} type:{?} tid:{?} cameraDist:{?} cameraType:{?} cameraIndex:{?} cameraExtraDist:{?} cameraExtraType:{?} cameraExtraIndex:{?}"

    .line 135
    invoke-static {v5, v1, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    goto :goto_0

    .line 139
    :cond_0
    new-array v4, v4, [Ljava/lang/Object;

    .line 141
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 144
    move-result-object v6

    .line 145
    aput-object v6, v4, v3

    .line 147
    invoke-virtual {p0}, Lnm;->h()Z

    .line 150
    move-result v3

    .line 151
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 154
    move-result-object v3

    .line 155
    aput-object v3, v4, v2

    .line 157
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 160
    move-result-object v2

    .line 161
    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    .line 164
    move-result-wide v2

    .line 165
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 168
    move-result-object v2

    .line 169
    aput-object v2, v4, v1

    .line 171
    const-string v1, "onSyncGuideInfoChange data is null arrived:{?} isHasShown:{?} tid:{?} "

    .line 173
    invoke-static {v5, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    :goto_0
    invoke-virtual {p0}, Lnm;->h()Z

    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_3

    .line 182
    iget-object v1, p0, Lnm;->d:Lfc;

    .line 184
    if-nez v1, :cond_1

    .line 186
    goto :goto_1

    .line 187
    :cond_1
    if-eqz p1, :cond_2

    .line 189
    invoke-virtual {p0, v0}, Lnm;->j(I)V

    .line 192
    goto :goto_1

    .line 193
    :cond_2
    if-eqz p2, :cond_3

    .line 195
    invoke-virtual {p0, p2}, Lnm;->l(Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)V

    .line 198
    :cond_3
    :goto_1
    return-void
.end method

.method public q(Ljava/util/List;IIZ)V
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lnm;->d:Lfc;

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 10
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    move-result-object v1

    .line 17
    aput-object v1, v0, v3

    .line 19
    iget-object v1, p0, Lnm;->d:Lfc;

    .line 21
    instance-of v1, v1, Lkm;

    .line 23
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 26
    move-result-object v1

    .line 27
    aput-object v1, v0, v2

    .line 29
    const-string v1, "FloatWindowManager"

    .line 31
    const-string v2, "mFloatLayout :{?} mFloatLayout:{?}"

    .line 33
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    iget-boolean v0, p0, Lnm;->e:Z

    .line 38
    if-eqz v0, :cond_2

    .line 40
    if-nez p4, :cond_1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    new-instance v0, Lnm$b;

    .line 45
    move-object v1, v0

    .line 46
    move-object v2, p0

    .line 47
    move v3, p2

    .line 48
    move-object v4, p1

    .line 49
    move v5, p3

    .line 50
    move v6, p4

    .line 51
    invoke-direct/range {v1 .. v6}, Lnm$b;-><init>(Lnm;ILjava/util/List;IZ)V

    .line 54
    invoke-static {v0}, Lbg0;->b(Ljava/lang/Runnable;)V

    .line 57
    :cond_2
    :goto_1
    return-void
.end method

.method public r()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-boolean v1, p0, Lnm;->e:Z

    .line 6
    if-eqz v1, :cond_0

    .line 8
    const-string v1, "\u662f"

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v1, "\u5426"

    .line 13
    :goto_0
    const/4 v2, 0x0

    .line 14
    aput-object v1, v0, v2

    .line 16
    const-string v1, "FloatWindowManager"

    .line 18
    const-string v2, "\u5bfc\u822a\u9014\u4e2d\u504f\u822a\u91cd\u7b97\u5f00\u59cb-\u60ac\u6d6e\u7a97\u662f\u5426\u663e\u793a\uff1f{?}"

    .line 20
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public s(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public declared-synchronized t()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lnm;->d:Lfc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    if-nez v0, :cond_0

    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lnm;->e:Z

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_1

    .line 13
    iget-object v1, p0, Lnm;->f:Landroid/view/WindowManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    if-eqz v1, :cond_1

    .line 17
    :try_start_2
    invoke-interface {v1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 20
    iget-object v0, p0, Lnm;->d:Lfc;

    .line 22
    invoke-virtual {v0, v2}, Lfc;->setHadAdd2Window(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    :try_start_3
    const-string v1, "FloatWindowManager"

    .line 29
    const-string v3, "\u79fb\u9664\u60ac\u6d6e\u7a97\u51fa\u73b0\u5f02\u5e38: Exceptoion="

    .line 31
    new-array v4, v2, [Ljava/lang/Object;

    .line 33
    invoke-static {v1, v3, v0, v4}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 36
    :cond_1
    :goto_0
    iget-object v0, p0, Lnm;->b:Landroid/os/Handler;

    .line 38
    iget-object v1, p0, Lnm;->a:Ljava/lang/Object;

    .line 40
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 43
    iput-boolean v2, p0, Lnm;->e:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 45
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    monitor-exit p0

    .line 49
    throw v0
.end method

.method public u(Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lnm;->i:I

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-boolean v1, p0, Lnm;->e:Z

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 11
    if-ne v0, v2, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    iget v1, p0, Lnm;->c:I

    .line 18
    rem-int/lit8 v1, v1, 0x6

    .line 20
    iput v1, p0, Lnm;->c:I

    .line 22
    if-eqz v1, :cond_2

    .line 24
    iget-boolean v4, p0, Lnm;->l:Z

    .line 26
    if-eqz v4, :cond_1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v4, 0x0

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    :goto_1
    const/4 v4, 0x1

    .line 32
    :goto_2
    iput-boolean v3, p0, Lnm;->l:Z

    .line 34
    if-nez p1, :cond_3

    .line 36
    const-string v1, "FloatWindowManager"

    .line 38
    const-string v5, "onTmcUpdate items==null"

    .line 40
    new-array v6, v3, [Ljava/lang/Object;

    .line 42
    invoke-static {v1, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iput v3, p0, Lnm;->c:I

    .line 47
    goto :goto_3

    .line 48
    :cond_3
    add-int/2addr v1, v2

    .line 49
    iput v1, p0, Lnm;->c:I

    .line 51
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 54
    move-result-wide v5

    .line 55
    iput-wide v5, p0, Lnm;->j:J

    .line 57
    if-eqz p1, :cond_5

    .line 59
    if-eqz v0, :cond_5

    .line 61
    if-eqz v4, :cond_5

    .line 63
    const-string v0, "FloatWindowManager"

    .line 65
    const-string v1, "sendTmcSegment segmentData:{?}"

    .line 67
    new-array v2, v2, [Ljava/lang/Object;

    .line 69
    aput-object p1, v2, v3

    .line 71
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;->totalDistance:I

    .line 76
    iget v1, p1, Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;->resiDistance:I

    .line 78
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;->getTmcinfos()Ljava/util/List;

    .line 81
    move-result-object p1

    .line 82
    new-instance v2, Ljava/util/ArrayList;

    .line 84
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 87
    if-eqz p1, :cond_4

    .line 89
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 92
    move-result v3

    .line 93
    if-lez v3, :cond_4

    .line 95
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 98
    move-result-object p1

    .line 99
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_4

    .line 105
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    move-result-object v3

    .line 109
    check-cast v3, Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;

    .line 111
    new-instance v5, Lcom/autonavi/amapauto/widget/jni/LightBarItem;

    .line 113
    invoke-direct {v5}, Lcom/autonavi/amapauto/widget/jni/LightBarItem;-><init>()V

    .line 116
    iget v6, v3, Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;->distance:I

    .line 118
    iput v6, v5, Lcom/autonavi/amapauto/widget/jni/LightBarItem;->length:I

    .line 120
    iget v3, v3, Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;->status:I

    .line 122
    iput v3, v5, Lcom/autonavi/amapauto/widget/jni/LightBarItem;->status:I

    .line 124
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    goto :goto_4

    .line 128
    :cond_4
    invoke-virtual {p0, v2, v0, v1, v4}, Lnm;->q(Ljava/util/List;IIZ)V

    .line 131
    :cond_5
    return-void

    .line 132
    :catchall_0
    move-exception p1

    .line 133
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    throw p1
.end method

.method public v(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const-string v1, "FloatWindowManager"

    .line 13
    const-string v2, " dispatchGuideInfo sendAutoStatus mGpsLocated     :{?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iput-boolean p1, p0, Lnm;->k:Z

    .line 20
    iget-boolean v0, p0, Lnm;->e:Z

    .line 22
    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lnm;->d:Lfc;

    .line 26
    if-eqz v0, :cond_0

    .line 28
    instance-of v1, v0, Ljm;

    .line 30
    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {v0, p1}, Lfc;->h(Z)V

    .line 35
    :cond_0
    return-void
.end method
