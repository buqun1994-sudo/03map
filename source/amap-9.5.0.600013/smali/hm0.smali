.class public Lhm0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static f:Z

.field public static g:Z

.field public static h:Lhm0;

.field public static i:Ljava/lang/Boolean;


# instance fields
.field public a:Lpq;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Lh1;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lhm0;->b:Z

    .line 7
    iput-boolean v0, p0, Lhm0;->c:Z

    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lhm0;->d:Z

    .line 12
    return-void
.end method

.method public static declared-synchronized g()Lhm0;
    .locals 2

    .line 1
    const-class v0, Lhm0;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lhm0;->h:Lhm0;

    .line 6
    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lhm0;

    .line 10
    invoke-direct {v1}, Lhm0;-><init>()V

    .line 13
    sput-object v1, Lhm0;->h:Lhm0;

    .line 15
    :cond_0
    sget-object v1, Lhm0;->h:Lhm0;
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

.method public static i()Z
    .locals 2

    .line 1
    invoke-static {}, Lob;->e()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    const-class v1, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;

    .line 19
    invoke-static {v0, v1}, Lob;->j(Landroid/content/Context;Ljava/lang/Class;)Z

    .line 22
    move-result v0

    .line 23
    return v0
.end method

.method public static j()Z
    .locals 2

    .line 1
    invoke-static {}, Lob;->e()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    const-class v1, Lcom/autonavi/autowidget/AutoWidgetProvider;

    .line 19
    invoke-static {v0, v1}, Lob;->j(Landroid/content/Context;Ljava/lang/Class;)Z

    .line 22
    move-result v0

    .line 23
    return v0
.end method

.method public static l()Z
    .locals 6

    .line 1
    const/16 v0, 0xbbe

    .line 3
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/config/AndroidAdapterConfiger;->nativeGetIntValue(I)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "WidgetLifeCycleManager"

    .line 10
    const/4 v3, 0x1

    .line 11
    if-ne v3, v0, :cond_0

    .line 13
    const-string v4, "isWidgetAdded WIDGET_RENDER_TYPE_SEND_BITMAP_PATH"

    .line 15
    new-array v5, v1, [Ljava/lang/Object;

    .line 17
    invoke-static {v2, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 22
    sput-object v4, Lhm0;->i:Ljava/lang/Boolean;

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    sget-object v4, Lhm0;->i:Ljava/lang/Boolean;

    .line 27
    if-nez v4, :cond_1

    .line 29
    invoke-static {}, Lhm0;->m()Z

    .line 32
    :cond_1
    :goto_0
    const/4 v4, 0x2

    .line 33
    new-array v4, v4, [Ljava/lang/Object;

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v0

    .line 39
    aput-object v0, v4, v1

    .line 41
    sget-object v0, Lhm0;->i:Ljava/lang/Boolean;

    .line 43
    aput-object v0, v4, v3

    .line 45
    const-string v0, "isWidgetAdded type = {?}, sWidgetAttachedFlag = {?}"

    .line 47
    invoke-static {v2, v0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    sget-object v0, Lhm0;->i:Ljava/lang/Boolean;

    .line 52
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 55
    move-result v0

    .line 56
    return v0
.end method

.method public static m()Z
    .locals 4

    .line 1
    sget-boolean v0, Lhm0;->g:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_1

    .line 7
    sget-boolean v0, Lhm0;->f:Z

    .line 9
    if-nez v0, :cond_1

    .line 11
    invoke-static {}, Lhm0;->j()Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 17
    invoke-static {}, Lhm0;->i()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 27
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lhm0;->i:Ljava/lang/Boolean;

    .line 33
    const/4 v0, 0x3

    .line 34
    new-array v0, v0, [Ljava/lang/Object;

    .line 36
    sget-boolean v3, Lhm0;->f:Z

    .line 38
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 41
    move-result-object v3

    .line 42
    aput-object v3, v0, v1

    .line 44
    sget-boolean v1, Lhm0;->g:Z

    .line 46
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 49
    move-result-object v1

    .line 50
    aput-object v1, v0, v2

    .line 52
    const/4 v1, 0x2

    .line 53
    sget-object v2, Lhm0;->i:Ljava/lang/Boolean;

    .line 55
    aput-object v2, v0, v1

    .line 57
    const-string v1, "WidgetLifeCycleManager"

    .line 59
    const-string v2, " onMainMapActivityStop isWidgetAdded isFourXThreeWidgetAdded:{?} , isTwoXThreeWidgetAdded:{?} ,sWidgetAttachedFlag:{?}"

    .line 61
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    sget-object v0, Lhm0;->i:Ljava/lang/Boolean;

    .line 66
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 69
    move-result v0

    .line 70
    return v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lhm0;->a:Lpq;

    .line 3
    const-string v1, "screenshotsize"

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    const-string v3, "changeScreenShotRect isCruise = "

    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-static {}, Lnb;->j()Lnb;

    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Lnb;->p()Z

    .line 25
    move-result v3

    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    const-string v3, " isInNavi = "

    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-static {}, Lnb;->j()Lnb;

    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Lnb;->r()Z

    .line 41
    move-result v3

    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    new-array v3, v2, [Ljava/lang/Object;

    .line 51
    invoke-static {v1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    invoke-static {}, Lnb;->j()Lnb;

    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lnb;->p()Z

    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_1

    .line 64
    invoke-static {}, Lnb;->j()Lnb;

    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lnb;->r()Z

    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_1

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    const-string v3, "changeScreenShotRect getIsNeedHalfScreenShotInSilenceMode = "

    .line 81
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object v3, p0, Lhm0;->a:Lpq;

    .line 86
    invoke-interface {v3}, Lpq;->b()Z

    .line 89
    move-result v3

    .line 90
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v0

    .line 97
    new-array v3, v2, [Ljava/lang/Object;

    .line 99
    invoke-static {v1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lhm0;->a:Lpq;

    .line 104
    invoke-interface {v0}, Lpq;->b()Z

    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x1

    .line 111
    invoke-static {v0}, Lvl0;->d(Z)V

    .line 114
    goto :goto_0

    .line 115
    :cond_0
    invoke-static {v2}, Lvl0;->d(Z)V

    .line 118
    goto :goto_0

    .line 119
    :cond_1
    const-string v0, "changeScreenShotRect isCruise isInNavi"

    .line 121
    new-array v3, v2, [Ljava/lang/Object;

    .line 123
    invoke-static {v1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    invoke-static {}, Lnb;->j()Lnb;

    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lnb;->r()Z

    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_3

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    .line 138
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    const-string v3, "changeScreenShotRect getPercentScreenShotInNaviMode = "

    .line 143
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object v3, p0, Lhm0;->a:Lpq;

    .line 148
    invoke-interface {v3}, Lpq;->a()D

    .line 151
    move-result-wide v3

    .line 152
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    move-result-object v0

    .line 159
    new-array v3, v2, [Ljava/lang/Object;

    .line 161
    invoke-static {v1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lhm0;->a:Lpq;

    .line 166
    invoke-interface {v0}, Lpq;->a()D

    .line 169
    move-result-wide v0

    .line 170
    const-wide/16 v3, 0x0

    .line 172
    cmpl-double v5, v0, v3

    .line 174
    if-lez v5, :cond_2

    .line 176
    iget-object v0, p0, Lhm0;->a:Lpq;

    .line 178
    invoke-interface {v0}, Lpq;->a()D

    .line 181
    move-result-wide v0

    .line 182
    invoke-static {v0, v1}, Lvl0;->b(D)V

    .line 185
    goto :goto_0

    .line 186
    :cond_2
    invoke-static {v2}, Lvl0;->d(Z)V

    .line 189
    goto :goto_0

    .line 190
    :cond_3
    const-string v0, "changeScreenShotRect ! isInNavi"

    .line 192
    new-array v3, v2, [Ljava/lang/Object;

    .line 194
    invoke-static {v1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    invoke-static {v2}, Lvl0;->d(Z)V

    .line 200
    goto :goto_0

    .line 201
    :cond_4
    const-string v0, "changeScreenShotRect autoWidgetProvider==null"

    .line 203
    new-array v3, v2, [Ljava/lang/Object;

    .line 205
    invoke-static {v1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    invoke-static {v2}, Lvl0;->d(Z)V

    .line 211
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lhm0;->e:Lh1;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lh1;->f()V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lhm0;->e:Lh1;

    .line 11
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 0

    .line 1
    return-void
.end method

.method public e()Lh1;
    .locals 1

    .line 1
    iget-object v0, p0, Lhm0;->e:Lh1;

    .line 3
    return-object v0
.end method

.method public f()Lpq;
    .locals 1

    .line 1
    iget-object v0, p0, Lhm0;->a:Lpq;

    .line 3
    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lhm0;->b:Z

    .line 3
    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lhm0;->c:Z

    .line 3
    return v0
.end method

.method public n(I)V
    .locals 2

    .line 1
    if-eqz p1, :cond_b

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_a

    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_9

    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p1, v0, :cond_7

    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p1, v0, :cond_6

    .line 15
    const/16 v0, 0xc

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eq p1, v0, :cond_5

    .line 20
    const/16 v0, 0x30

    .line 22
    if-eq p1, v0, :cond_4

    .line 24
    const/16 v0, 0x19f

    .line 26
    if-eq p1, v0, :cond_3

    .line 28
    const/16 v0, 0x191

    .line 30
    if-eq p1, v0, :cond_2

    .line 32
    const/16 v0, 0x192

    .line 34
    if-eq p1, v0, :cond_1

    .line 36
    packed-switch p1, :pswitch_data_0

    .line 39
    goto/16 :goto_0

    .line 41
    :pswitch_0
    sput-object v1, Lco;->o:Ljava/util/List;

    .line 43
    sput-object v1, Lco;->p:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 45
    sput-object v1, Lco;->n:Ljava/util/List;

    .line 47
    invoke-static {}, Lnb;->j()Lnb;

    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0, p1}, Lnb;->K(I)V

    .line 54
    goto/16 :goto_0

    .line 56
    :pswitch_1
    invoke-virtual {p0}, Lhm0;->h()Z

    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_c

    .line 62
    invoke-static {}, Lhm0;->g()Lhm0;

    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lhm0;->f()Lpq;

    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0}, Lpq;->a()D

    .line 75
    move-result-wide v0

    .line 76
    invoke-static {v0, v1}, Lvl0;->b(D)V

    .line 79
    :cond_0
    invoke-static {}, Lnb;->j()Lnb;

    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0, p1}, Lnb;->K(I)V

    .line 86
    goto/16 :goto_0

    .line 88
    :cond_1
    invoke-static {}, Lnb;->j()Lnb;

    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Lnb;->y()V

    .line 95
    goto :goto_0

    .line 96
    :cond_2
    invoke-static {}, Lnb;->j()Lnb;

    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Lnb;->x()V

    .line 103
    goto :goto_0

    .line 104
    :cond_3
    invoke-static {}, Lnb;->j()Lnb;

    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1, v0}, Lnb;->z(I)V

    .line 111
    goto :goto_0

    .line 112
    :cond_4
    invoke-static {}, Lnb;->j()Lnb;

    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1, v0}, Lnb;->z(I)V

    .line 119
    goto :goto_0

    .line 120
    :cond_5
    sput-object v1, Lco;->o:Ljava/util/List;

    .line 122
    sput-object v1, Lco;->p:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 124
    sput-object v1, Lco;->n:Ljava/util/List;

    .line 126
    invoke-static {}, Lnb;->j()Lnb;

    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0, p1}, Lnb;->K(I)V

    .line 133
    goto :goto_0

    .line 134
    :cond_6
    new-instance v0, Lhm0$a;

    .line 136
    invoke-direct {v0, p0}, Lhm0$a;-><init>(Lhm0;)V

    .line 139
    invoke-static {v0}, Lbg0;->b(Ljava/lang/Runnable;)V

    .line 142
    invoke-static {}, Lnb;->j()Lnb;

    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v0, p1}, Lnb;->K(I)V

    .line 149
    goto :goto_0

    .line 150
    :cond_7
    invoke-static {}, Lob;->c()Z

    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_8

    .line 156
    const/4 v0, 0x0

    .line 157
    invoke-static {v0}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetMap;->setScreenShotMode(I)V

    .line 160
    :cond_8
    invoke-virtual {p0}, Lhm0;->r()V

    .line 163
    invoke-static {}, Lnb;->j()Lnb;

    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v0, p1}, Lnb;->K(I)V

    .line 170
    goto :goto_0

    .line 171
    :cond_9
    invoke-static {}, Lnb;->j()Lnb;

    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v0, p1}, Lnb;->K(I)V

    .line 178
    invoke-virtual {p0}, Lhm0;->q()V

    .line 181
    goto :goto_0

    .line 182
    :cond_a
    invoke-virtual {p0}, Lhm0;->p()V

    .line 185
    invoke-virtual {p0}, Lhm0;->s()V

    .line 188
    invoke-virtual {p0}, Lhm0;->r()V

    .line 191
    goto :goto_0

    .line 192
    :cond_b
    invoke-virtual {p0}, Lhm0;->o()V

    .line 195
    :cond_c
    :goto_0
    return-void

    .line 196
    nop

    .line 197
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public o()V
    .locals 0

    .line 1
    invoke-static {}, Lvl0;->h()V

    .line 4
    return-void
.end method

.method public p()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lhm0;->d:Z

    .line 4
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lhm0;->b:Z

    .line 7
    iput-boolean v1, p0, Lhm0;->c:Z

    .line 9
    invoke-static {}, Lnb;->j()Lnb;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Lnb;->L(Z)V

    .line 16
    invoke-virtual {p0}, Lhm0;->x()V

    .line 19
    return-void
.end method

.method public q()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "WidgetLifeCycleManager"

    .line 6
    const-string v3, "onMainMapActivityDestroy"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lhm0;->c:Z

    .line 14
    invoke-static {}, Lob;->c()Z

    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_0

    .line 20
    const-string v3, "onMainMapActivityDestroy IS_BG_BIT_MAP_RUN"

    .line 22
    new-array v4, v0, [Ljava/lang/Object;

    .line 24
    invoke-static {v2, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iput-boolean v0, p0, Lhm0;->d:Z

    .line 29
    iput-boolean v1, p0, Lhm0;->b:Z

    .line 31
    invoke-static {}, Lnb;->j()Lnb;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1, v0}, Lnb;->L(Z)V

    .line 38
    invoke-virtual {p0}, Lhm0;->c()V

    .line 41
    invoke-static {}, Lnb;->j()Lnb;

    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lnb;->g()V

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const-string v1, "onMainMapActivityDestroy ! IS_BG_BIT_MAP_RUN"

    .line 51
    new-array v0, v0, [Ljava/lang/Object;

    .line 53
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    :goto_0
    return-void
.end method

.method public r()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "WidgetLifeCycleManager"

    .line 6
    const-string v3, "onMainMapActivityResume"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iput-boolean v0, p0, Lhm0;->c:Z

    .line 13
    const/4 v1, 0x5

    .line 14
    invoke-static {v1}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetRequest;->requestWidgetInfo(I)V

    .line 17
    invoke-static {}, Lob;->c()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 23
    const-string v1, "onMainMapActivityResume IS_BG_BIT_MAP_RUN"

    .line 25
    new-array v3, v0, [Ljava/lang/Object;

    .line 27
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    invoke-static {}, Lvl0;->j()V

    .line 33
    iput-boolean v0, p0, Lhm0;->b:Z

    .line 35
    invoke-static {}, Lhm0;->j()Z

    .line 38
    move-result v0

    .line 39
    const/4 v1, 0x1

    .line 40
    if-eqz v0, :cond_0

    .line 42
    invoke-static {v1}, Lzl0;->c(Z)V

    .line 45
    :cond_0
    invoke-static {}, Lhm0;->i()Z

    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_1

    .line 51
    invoke-static {v1}, Lzl0;->b(Z)V

    .line 54
    :cond_1
    invoke-virtual {p0}, Lhm0;->y()V

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const-string v1, "onMainMapActivityResume ! IS_BG_BIT_MAP_RUN"

    .line 60
    new-array v0, v0, [Ljava/lang/Object;

    .line 62
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    :goto_0
    return-void
.end method

.method public s()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "WidgetLifeCycleManager"

    .line 6
    const-string v3, "onMainMapActivityStart"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iput-boolean v0, p0, Lhm0;->c:Z

    .line 13
    invoke-static {}, Lob;->c()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 19
    const-string v1, "onMainMapActivityStart IS_BG_BIT_MAP_RUN"

    .line 21
    new-array v3, v0, [Ljava/lang/Object;

    .line 23
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    iput-boolean v0, p0, Lhm0;->b:Z

    .line 28
    invoke-virtual {p0}, Lhm0;->y()V

    .line 31
    invoke-virtual {p0}, Lhm0;->u()V

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string v1, "onMainMapActivityStart ! IS_BG_BIT_MAP_RUN"

    .line 37
    new-array v0, v0, [Ljava/lang/Object;

    .line 39
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    :goto_0
    return-void
.end method

.method public t()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "WidgetLifeCycleManager"

    .line 6
    const-string v3, "onMainMapActivityStop"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lhm0;->d()V

    .line 14
    invoke-static {}, Lnb;->j()Lnb;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lnb;->G()V

    .line 21
    const/4 v1, 0x1

    .line 22
    iput-boolean v1, p0, Lhm0;->c:Z

    .line 24
    const/4 v3, 0x5

    .line 25
    invoke-static {v3}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetRequest;->requestWidgetInfo(I)V

    .line 28
    invoke-static {}, Lob;->c()Z

    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 34
    const-string v3, "onMainMapActivityStop IS_BG_BIT_MAP_RUN"

    .line 36
    new-array v0, v0, [Ljava/lang/Object;

    .line 38
    invoke-static {v2, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iput-boolean v1, p0, Lhm0;->b:Z

    .line 43
    invoke-static {}, Lnb;->j()Lnb;

    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lnb;->v()Z

    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 53
    invoke-static {}, Lvl0;->m()V

    .line 56
    invoke-static {}, Lvl0;->i()V

    .line 59
    invoke-virtual {p0}, Lhm0;->b()V

    .line 62
    invoke-virtual {p0}, Lhm0;->w()V

    .line 65
    invoke-virtual {p0}, Lhm0;->a()V

    .line 68
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProvider;->n()V

    .line 71
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->i()V

    .line 74
    invoke-static {}, Lnb;->j()Lnb;

    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lnb;->E()V

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    const-string v1, "onMainMapActivityStop ! IS_BG_BIT_MAP_RUN"

    .line 84
    new-array v0, v0, [Ljava/lang/Object;

    .line 86
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    :cond_1
    :goto_0
    return-void
.end method

.method public final u()V
    .locals 0

    .line 1
    return-void
.end method

.method public v(Lpq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhm0;->a:Lpq;

    .line 3
    return-void
.end method

.method public final w()V
    .locals 1

    .line 1
    iget-object v0, p0, Lhm0;->e:Lh1;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lh1;->m()V

    .line 8
    :cond_0
    return-void
.end method

.method public x()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "WidgetLifeCycleManager"

    .line 6
    const-string v3, "startWidgetScreenShot"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lnb;->j()Lnb;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Lnb;->M(Z)V

    .line 18
    invoke-virtual {p0}, Lhm0;->c()V

    .line 21
    new-instance v0, Lh1;

    .line 23
    invoke-static {}, Lrv;->H()Lrv;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 30
    move-result-object v1

    .line 31
    invoke-direct {v0, v1}, Lh1;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object v0, p0, Lhm0;->e:Lh1;

    .line 36
    return-void
.end method

.method public final y()V
    .locals 1

    .line 1
    iget-object v0, p0, Lhm0;->e:Lh1;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lh1;->l()V

    .line 8
    :cond_0
    return-void
.end method
