.class public Ldi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leq;


# static fields
.field public static final TAG:Ljava/lang/String; = "DefalutChannelImpl"


# instance fields
.field private speedoMeter:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/high16 v0, -0x40800000    # -1.0f

    .line 6
    iput v0, p0, Ldi;->speedoMeter:F

    .line 8
    return-void
.end method


# virtual methods
.method public abandomFocus(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const-string v1, "DefalutChannelImpl"

    .line 13
    const-string v2, "abandomFocus new audioType:{?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {}, Lo6;->j()Lo6;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p1}, Lo6;->b(I)Z

    .line 25
    return-void
.end method

.method public abandomFocusByScene(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Ldi;->abandomFocusByScene(IZ)Z

    move-result p1

    return p1
.end method

.method public abandomFocusByScene(IZ)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget p2, Lc;->l:I

    if-ne p2, p1, :cond_0

    .line 2
    invoke-static {}, Lo6;->j()Lo6;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lo6;->a(I)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public abandonAppFocus(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public addAppFocusChange(ILcom/autonavi/amapauto/jni/AutoCarAppFocusManager$c;)V
    .locals 0

    .line 1
    return-void
.end method

.method public adjustNotification(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public callSystemLauncher()V
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "callSystemLauncher"

    .line 3
    new-instance v1, Ljava/lang/Throwable;

    .line 5
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 8
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    new-array v2, v2, [Ljava/lang/Object;

    .line 15
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    new-instance v0, Landroid/content/Intent;

    .line 20
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 23
    const-string v1, "android.intent.action.MAIN"

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    const-string v1, "android.intent.category.HOME"

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    const/high16 v1, 0x10000000

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 38
    invoke-static {}, Lrv;->H()Lrv;

    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    :goto_0
    return-void
.end method

.method public cancelSliceNotification(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public changeScreenMode(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public cleanup()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "DefalutChannelImpl"

    .line 6
    const-string v2, "unInit"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v0, 0x1

    .line 12
    return v0
.end method

.method public clearSliceNotification()V
    .locals 0

    .line 1
    return-void
.end method

.method public connectCar(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
.end method

.method public converFeedBackType(I)I
    .locals 0

    .line 1
    return p1
.end method

.method public convertToEvent(Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)Landroid/os/Bundle;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public createCustomizeMultiScreen(Lcom/autonavi/extscreen/dto/PresentationConfig;)Lhl;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public disconnectCar()V
    .locals 0

    .line 1
    return-void
.end method

.method public getArCamera()Liq;
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "DefalutChannelImpl"

    .line 6
    const-string v3, "[getArCamera]"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lzm;->d()Lzm;

    .line 14
    move-result-object v1

    .line 15
    sget-object v3, Lzm;->E:Ljava/lang/String;

    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-virtual {v1, v3, v4}, Lzm;->e(Ljava/lang/String;I)I

    .line 21
    move-result v1

    .line 22
    new-array v3, v4, [Ljava/lang/Object;

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v5

    .line 28
    aput-object v5, v3, v0

    .line 30
    const-string v5, "getArCamera arCameraType = {?}"

    .line 32
    invoke-static {v2, v5, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    if-eqz v1, :cond_7

    .line 37
    if-eq v1, v4, :cond_6

    .line 39
    const/4 v3, 0x2

    .line 40
    if-eq v1, v3, :cond_0

    .line 42
    new-instance v0, Lzd;

    .line 44
    invoke-direct {v0}, Lzd;-><init>()V

    .line 47
    goto/16 :goto_3

    .line 49
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 51
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-static {}, Lzm;->d()Lzm;

    .line 57
    move-result-object v5

    .line 58
    sget-object v6, Lzm;->F:Ljava/lang/String;

    .line 60
    const-string v7, ""

    .line 62
    invoke-virtual {v5, v6, v7}, Lzm;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object v5

    .line 66
    new-array v6, v4, [Ljava/lang/Object;

    .line 68
    aput-object v5, v6, v0

    .line 70
    const-string v8, "getArCamera gdArCameraServiceAppPackageList = {?}"

    .line 72
    invoke-static {v2, v8, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    invoke-static {}, Lzm;->d()Lzm;

    .line 78
    move-result-object v6

    .line 79
    sget-object v8, Lzm;->G:Ljava/lang/String;

    .line 81
    invoke-virtual {v6, v8, v7}, Lzm;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object v6

    .line 85
    new-array v7, v4, [Ljava/lang/Object;

    .line 87
    aput-object v6, v7, v0

    .line 89
    const-string v8, "getArCamera gdArCameraServiceActionNameList = {?}"

    .line 91
    invoke-static {v2, v8, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 97
    move-result v7

    .line 98
    const-string v8, "#"

    .line 100
    const/4 v9, 0x0

    .line 101
    if-nez v7, :cond_1

    .line 103
    const-string v7, "getArCamera !TextUtils.isEmpty(gdArCameraServiceAppPackageList)"

    .line 105
    new-array v10, v0, [Ljava/lang/Object;

    .line 107
    invoke-static {v2, v7, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 113
    move-result-object v5

    .line 114
    goto :goto_0

    .line 115
    :cond_1
    move-object v5, v9

    .line 116
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 119
    move-result v7

    .line 120
    if-nez v7, :cond_2

    .line 122
    const-string v7, "getArCamera !TextUtils.isEmpty(gdArCameraServiceActionNameList)"

    .line 124
    new-array v9, v0, [Ljava/lang/Object;

    .line 126
    invoke-static {v2, v7, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 132
    move-result-object v9

    .line 133
    :cond_2
    if-eqz v5, :cond_5

    .line 135
    if-eqz v9, :cond_5

    .line 137
    array-length v6, v5

    .line 138
    array-length v7, v9

    .line 139
    new-array v8, v3, [Ljava/lang/Object;

    .line 141
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    move-result-object v10

    .line 145
    aput-object v10, v8, v0

    .line 147
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    move-result-object v10

    .line 151
    aput-object v10, v8, v4

    .line 153
    const-string v10, "getArCamera gdArCameraServiceAppPackageArrayLength = {?},gdArCameraServiceActionNameArrayLength = {?}"

    .line 155
    invoke-static {v2, v10, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    if-ne v6, v7, :cond_4

    .line 160
    const/4 v7, 0x0

    .line 161
    :goto_1
    if-ge v7, v6, :cond_3

    .line 163
    aget-object v8, v5, v7

    .line 165
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 168
    move-result-object v8

    .line 169
    aget-object v10, v9, v7

    .line 171
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 174
    move-result-object v10

    .line 175
    new-array v11, v3, [Ljava/lang/Object;

    .line 177
    aput-object v8, v11, v0

    .line 179
    aput-object v10, v11, v4

    .line 181
    const-string v12, "getArCamera gdArCameraServiceAppPackage = {?},gdArCameraServiceActionName = {?}"

    .line 183
    invoke-static {v2, v12, v11}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    new-instance v11, Lcn$c;

    .line 188
    invoke-direct {v11, v8, v10}, Lcn$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    add-int/lit8 v7, v7, 0x1

    .line 196
    goto :goto_1

    .line 197
    :cond_3
    new-array v3, v4, [Ljava/lang/Object;

    .line 199
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 202
    move-result-object v4

    .line 203
    aput-object v4, v3, v0

    .line 205
    const-string v0, "getArCamera packageNameAndServiceActionArrayList = {?}}"

    .line 207
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    goto :goto_2

    .line 211
    :cond_4
    const-string v3, "getArCamera \u5973\u5a32\u4e0a\u914d\u7f6e\u51fa\u9519\uff0c\u5305\u540d\u548c\u670d\u52a1Action\u672a\u6210\u5bf9"

    .line 213
    new-array v0, v0, [Ljava/lang/Object;

    .line 215
    invoke-static {v2, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    goto :goto_2

    .line 219
    :cond_5
    const-string v3, "getArCamera gdArCameraServiceAppPackageArray == null || gdArCameraServiceActionNameArray == null"

    .line 221
    new-array v0, v0, [Ljava/lang/Object;

    .line 223
    invoke-static {v2, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    :goto_2
    new-instance v0, Lcn;

    .line 228
    invoke-direct {v0, v1}, Lcn;-><init>(Ljava/util/ArrayList;)V

    .line 231
    goto :goto_3

    .line 232
    :cond_6
    new-instance v0, Lzd;

    .line 234
    invoke-direct {v0}, Lzd;-><init>()V

    .line 237
    goto :goto_3

    .line 238
    :cond_7
    new-instance v0, Lyd;

    .line 240
    invoke-direct {v0}, Lyd;-><init>()V

    .line 243
    :goto_3
    return-object v0
.end method

.method public getAudioPlayState()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public getBooleanValue(I)Z
    .locals 5

    .line 1
    const/16 v0, 0x271d

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq p1, v0, :cond_7

    .line 6
    const/16 v0, 0x2720

    .line 8
    if-eq p1, v0, :cond_6

    .line 10
    const/16 v0, 0x2722

    .line 12
    if-eq p1, v0, :cond_6

    .line 14
    const/16 v0, 0x272d

    .line 16
    const-string v2, "DefalutChannelImpl"

    .line 18
    const/4 v3, 0x0

    .line 19
    if-eq p1, v0, :cond_5

    .line 21
    const/16 v0, 0x2731

    .line 23
    if-eq p1, v0, :cond_3

    .line 25
    const/16 v0, 0x2739

    .line 27
    if-eq p1, v0, :cond_1

    .line 29
    const/16 v0, 0x273b

    .line 31
    if-eq p1, v0, :cond_0

    .line 33
    const/16 v0, 0x2749

    .line 35
    if-eq p1, v0, :cond_0

    .line 37
    const/16 v0, 0x274c

    .line 39
    if-eq p1, v0, :cond_0

    .line 41
    packed-switch p1, :pswitch_data_0

    .line 44
    packed-switch p1, :pswitch_data_1

    .line 47
    return v3

    .line 48
    :pswitch_0
    const-string p1, "[DefalutChannelImpl]SHOW_CAR_LOGIN:true"

    .line 50
    new-array v0, v3, [Ljava/lang/Object;

    .line 52
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    return v1

    .line 56
    :pswitch_1
    const-string p1, "[DefalutChannelImpl]SHOW_CAR_PLATE_NUMBER:true"

    .line 58
    new-array v0, v3, [Ljava/lang/Object;

    .line 60
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    :pswitch_2
    return v1

    .line 64
    :pswitch_3
    invoke-static {}, Lsk;->c()Lsk;

    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lsk;->f()Z

    .line 71
    move-result p1

    .line 72
    return p1

    .line 73
    :pswitch_4
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    .line 75
    const-string v0, "android.settings.WIFI_SETTINGS"

    .line 77
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    const/high16 v0, 0x10000000

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    invoke-static {}, Lrv;->H()Lrv;

    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_0

    .line 97
    :catch_0
    move-exception p1

    .line 98
    new-array v0, v1, [Ljava/lang/Object;

    .line 100
    aput-object p1, v0, v3

    .line 102
    const-string p1, "SHOW_NETWORK_SETTING Exception "

    .line 104
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    :cond_0
    :goto_0
    return v1

    .line 108
    :cond_1
    invoke-static {}, Lzm;->d()Lzm;

    .line 111
    move-result-object p1

    .line 112
    sget-object v0, Lzm;->H:Ljava/lang/String;

    .line 114
    invoke-virtual {p1, v0, v1}, Lzm;->e(Ljava/lang/String;I)I

    .line 117
    move-result p1

    .line 118
    new-array v0, v1, [Ljava/lang/Object;

    .line 120
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    move-result-object v4

    .line 124
    aput-object v4, v0, v3

    .line 126
    const-string v4, "[DefalutChannelImpl]phonePermission = {?}"

    .line 128
    invoke-static {v2, v4, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    if-ne p1, v1, :cond_2

    .line 133
    return v1

    .line 134
    :cond_2
    return v3

    .line 135
    :cond_3
    invoke-static {}, Lzm;->d()Lzm;

    .line 138
    move-result-object p1

    .line 139
    sget-object v0, Lzm;->I:Ljava/lang/String;

    .line 141
    invoke-virtual {p1, v0, v1}, Lzm;->e(Ljava/lang/String;I)I

    .line 144
    move-result p1

    .line 145
    new-array v0, v1, [Ljava/lang/Object;

    .line 147
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    move-result-object v4

    .line 151
    aput-object v4, v0, v3

    .line 153
    const-string v4, "[DefalutChannelImpl]audioPermission = {?}"

    .line 155
    invoke-static {v2, v4, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    if-ne p1, v1, :cond_4

    .line 160
    return v1

    .line 161
    :cond_4
    return v3

    .line 162
    :cond_5
    const-string p1, "[DefalutChannelImpl]SHOW_SHARE_TRIP:false"

    .line 164
    new-array v0, v3, [Ljava/lang/Object;

    .line 166
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    return v3

    .line 170
    :cond_6
    return v1

    .line 171
    :cond_7
    invoke-virtual {p0}, Ldi;->callSystemLauncher()V

    .line 174
    return v1

    .line 175
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 185
    :pswitch_data_1
    .packed-switch 0x2716
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCarEnterpriseUserInfo()Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "[getCarEnterpriseUserInfo]"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {}, Lrv;->H()Lrv;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x0

    .line 31
    new-array v2, v1, [Ljava/lang/Object;

    .line 33
    const-string v3, "DefalutChannelImpl"

    .line 35
    invoke-static {v3, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/user/RequestUnionLoginInfoModel;

    .line 40
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/user/RequestUnionLoginInfoModel;-><init>()V

    .line 43
    :try_start_0
    invoke-static {}, Ll30;->g()Ll30;

    .line 46
    move-result-object v2

    .line 47
    const-class v4, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;

    .line 49
    invoke-virtual {v2, v0, v4}, Ll30;->c(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;Ljava/lang/reflect/Type;)Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;

    .line 55
    if-eqz v0, :cond_1

    .line 57
    new-instance v2, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;

    .line 59
    invoke-direct {v2}, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;-><init>()V

    .line 62
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getSourceApp()Ljava/lang/String;

    .line 65
    move-result-object v4

    .line 66
    iput-object v4, v2, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->sourceApp:Ljava/lang/String;

    .line 68
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getSourceAppName()Ljava/lang/String;

    .line 71
    move-result-object v4

    .line 72
    iput-object v4, v2, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->sourceAppName:Ljava/lang/String;

    .line 74
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getAccoundLoginStatus()I

    .line 77
    move-result v4

    .line 78
    const/4 v5, 0x1

    .line 79
    if-nez v4, :cond_0

    .line 81
    const/4 v4, 0x1

    .line 82
    goto :goto_0

    .line 83
    :cond_0
    const/4 v4, 0x0

    .line 84
    :goto_0
    iput-boolean v4, v2, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->isAccountLoginStatus:Z

    .line 86
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getSourceAccountToken()Ljava/lang/String;

    .line 89
    move-result-object v4

    .line 90
    iput-object v4, v2, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->sourceAccountToken:Ljava/lang/String;

    .line 92
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getSourceAccount()Ljava/lang/String;

    .line 95
    move-result-object v4

    .line 96
    iput-object v4, v2, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->sourceTokenId:Ljava/lang/String;

    .line 98
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getSourceAccountId()Ljava/lang/String;

    .line 101
    move-result-object v4

    .line 102
    iput-object v4, v2, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->sourceAccountId:Ljava/lang/String;

    .line 104
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getSourceAccountName()Ljava/lang/String;

    .line 107
    move-result-object v4

    .line 108
    iput-object v4, v2, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->sourceAccountName:Ljava/lang/String;

    .line 110
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getSourceAccountAvatar()Ljava/lang/String;

    .line 113
    move-result-object v4

    .line 114
    iput-object v4, v2, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->sourceAccountAvatar:Ljava/lang/String;

    .line 116
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getSourceAutoAccount()Ljava/lang/String;

    .line 119
    move-result-object v4

    .line 120
    iput-object v4, v2, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->sourceAutoAccount:Ljava/lang/String;

    .line 122
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getDeviceId()Ljava/lang/String;

    .line 125
    move-result-object v4

    .line 126
    iput-object v4, v2, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->deviceId:Ljava/lang/String;

    .line 128
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getDeviceNo()Ljava/lang/String;

    .line 131
    move-result-object v4

    .line 132
    iput-object v4, v2, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->deviceNo:Ljava/lang/String;

    .line 134
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getUserRequestTime()Ljava/lang/String;

    .line 137
    move-result-object v4

    .line 138
    iput-object v4, v2, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->userRequestTime:Ljava/lang/String;

    .line 140
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getBindingId()Ljava/lang/String;

    .line 143
    move-result-object v4

    .line 144
    iput-object v4, v2, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->bindingId:Ljava/lang/String;

    .line 146
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getBingingAck()I

    .line 149
    move-result v4

    .line 150
    iput v4, v2, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->bingingAck:I

    .line 152
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getCarLoginEnvironment()Ljava/lang/String;

    .line 155
    move-result-object v0

    .line 156
    iput-object v0, v2, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->carLoginEnvironment:Ljava/lang/String;

    .line 158
    const-string v0, "[getCarEnterpriseUserInfo]CarEnterpriseUserInfoData:{?}"

    .line 160
    new-array v4, v5, [Ljava/lang/Object;

    .line 162
    invoke-virtual {v2}, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->toString()Ljava/lang/String;

    .line 165
    move-result-object v5

    .line 166
    aput-object v5, v4, v1

    .line 168
    invoke-static {v3, v0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    return-object v2

    .line 172
    :catch_0
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 176
    move-result-object v2

    .line 177
    new-array v4, v1, [Ljava/lang/Object;

    .line 179
    invoke-static {v3, v2, v0, v4}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 182
    :cond_1
    const-string v0, "[getCarEnterpriseUserInfo]CarEnterpriseUserInfoData == null"

    .line 184
    new-array v1, v1, [Ljava/lang/Object;

    .line 186
    invoke-static {v3, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    const/4 v0, 0x0

    .line 190
    return-object v0
.end method

.method public getCruisingDis()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    return v0
.end method

.method public getCustomActivityOptions()Landroid/app/ActivityOptions;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCustomAudioAttribute(ILandroid/media/AudioAttributes;)Landroid/media/AudioAttributes;
    .locals 0

    .line 1
    return-object p2
.end method

.method public getCustomChannelVolume(I)I
    .locals 0

    .line 1
    return p1
.end method

.method public getFloatValue(I)F
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public getGnssStatusCallbackType()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public getIPLDpi()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    return v0
.end method

.method public getInputAttachActivity(I)Landroid/app/Activity;
    .locals 0

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lrv;->F()Landroid/app/Activity;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getIntValue(I)I
    .locals 3

    .line 1
    const/16 v0, -0x7550

    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq p1, v0, :cond_2

    .line 6
    const/16 v0, 0x2741

    .line 8
    if-eq p1, v0, :cond_2

    .line 10
    const/16 v0, 0x7535

    .line 12
    if-eq p1, v0, :cond_2

    .line 14
    const/16 v0, 0x7537

    .line 16
    if-eq p1, v0, :cond_2

    .line 18
    const/16 v0, 0x754e

    .line 20
    if-eq p1, v0, :cond_2

    .line 22
    const/16 v0, 0x7553

    .line 24
    if-eq p1, v0, :cond_2

    .line 26
    const/16 v0, 0x271b

    .line 28
    const/4 v2, 0x0

    .line 29
    if-eq p1, v0, :cond_1

    .line 31
    const/16 v0, 0x271c

    .line 33
    if-eq p1, v0, :cond_0

    .line 35
    packed-switch p1, :pswitch_data_0

    .line 38
    packed-switch p1, :pswitch_data_1

    .line 41
    return v2

    .line 42
    :cond_0
    :pswitch_0
    return v1

    .line 43
    :cond_1
    const-string p1, "[DefalutChannelImpl]IS_NEED_OPEN_AGROUP:0"

    .line 45
    new-array v0, v2, [Ljava/lang/Object;

    .line 47
    const-string v1, "DefalutChannelImpl"

    .line 49
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    return v2

    .line 53
    :cond_2
    return v1

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x753a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 71
    :pswitch_data_1
    .packed-switch 0x7545
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getLastOneKmParams(ILcom/autonavi/amapauto/jni/protocol/data/LastOneKmInfoData;)Lcom/autonavi/amapauto/jni/protocol/data/HttpRequestParam;
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p1

    .line 9
    aput-object p1, v0, v1

    .line 11
    const/4 p1, 0x0

    .line 12
    if-eqz p2, :cond_0

    .line 14
    invoke-virtual {p2}, Lcom/autonavi/amapauto/jni/protocol/data/LastOneKmInfoData;->toString()Ljava/lang/String;

    .line 17
    move-result-object p2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object p2, p1

    .line 20
    :goto_0
    const/4 v1, 0x1

    .line 21
    aput-object p2, v0, v1

    .line 23
    const-string p2, "DefalutChannelImpl"

    .line 25
    const-string v1, "[getLastOneKmParams]type:{?};lastOneKmInfoData:{?}"

    .line 27
    invoke-static {p2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    return-object p1
.end method

.method public getLocationInfo(Landroid/location/Location;)Lcom/autonavi/amapauto/location/model/LocDrPos;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLocationInfoV2(Le;)Lcom/autonavi/amapauto/location/model/LocDrPos;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMacFromHardware()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMapMatchFeedbackInfo(Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMapSurfaceCreateLock()Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMinmumCoverDisplayTime()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public getMountAngleInfo()Lcom/autonavi/amapauto/location/model/LocMountAngle;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetWorkState()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    return v0
.end method

.method public getOilType()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    return v0
.end method

.method public getOptionalValue(I)Leq$a;
    .locals 1

    .line 1
    const v0, 0xea67

    .line 4
    if-eq p1, v0, :cond_0

    .line 6
    new-instance p1, Leq$a;

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, v0}, Leq$a;-><init>(Ljava/lang/Object;)V

    .line 12
    return-object p1

    .line 13
    :cond_0
    new-instance p1, Leq$a;

    .line 15
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 17
    invoke-direct {p1, v0}, Leq$a;-><init>(Ljava/lang/Object;)V

    .line 20
    return-object p1
.end method

.method public getPowertrainLoss()Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSNRForShow(IF)I
    .locals 0

    .line 1
    float-to-int p1, p2

    return p1
.end method

.method public getSatellitePrnForShow(I)I
    .locals 0

    .line 1
    return p1
.end method

.method public getSatelliteType(I)I
    .locals 1

    .line 1
    if-lez p1, :cond_0

    .line 3
    const/16 v0, 0x40

    .line 5
    if-gt p1, v0, :cond_0

    .line 7
    sget p1, Luy;->a:I

    .line 9
    return p1

    .line 10
    :cond_0
    const/16 v0, 0x41

    .line 12
    if-lt p1, v0, :cond_1

    .line 14
    const/16 v0, 0x60

    .line 16
    if-gt p1, v0, :cond_1

    .line 18
    sget p1, Luy;->c:I

    .line 20
    return p1

    .line 21
    :cond_1
    const/16 v0, 0xc9

    .line 23
    if-lt p1, v0, :cond_2

    .line 25
    const/16 v0, 0xeb

    .line 27
    if-gt p1, v0, :cond_2

    .line 29
    sget p1, Luy;->b:I

    .line 31
    return p1

    .line 32
    :cond_2
    sget p1, Luy;->e:I

    .line 34
    return p1
.end method

.method public getSatelliteTypeForN(I)I
    .locals 0

    .line 1
    sget p1, Luy;->f:I

    .line 3
    return p1
.end method

.method public getSocolEnabled()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "DefalutChannelImpl"

    .line 6
    const-string v3, "getSocolEnabled from FuncConfig!"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lzm;->d()Lzm;

    .line 14
    move-result-object v1

    .line 15
    sget-object v2, Lzm;->i:Ljava/lang/String;

    .line 17
    invoke-virtual {v1, v2, v0}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method public getSpecPermissions()Ljava/util/Map;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpeedoMeter(F)F
    .locals 0

    .line 1
    iget p1, p0, Ldi;->speedoMeter:F

    .line 3
    return p1
.end method

.method public getSplitScreen()Lot;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x3b07

    .line 3
    if-eq p1, v0, :cond_1

    .line 5
    const v0, 0x9c43

    .line 8
    if-eq p1, v0, :cond_0

    .line 10
    const/4 p1, 0x0

    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-static {}, Lri;->b()Lri;

    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lri;->a()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_1
    invoke-static {}, Lse;->c()Lse;

    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lse;->b()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method

.method public getSystemDysmorphismInfo()Lrk;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemMaxVolume()I
    .locals 1

    .line 1
    invoke-static {}, Lo6;->j()Lo6;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lo6;->n()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getSystemVolume()I
    .locals 1

    .line 1
    invoke-static {}, Lo6;->j()Lo6;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lo6;->o()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getTravelSharePhoneAddress()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/user/UserPhone;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "DefalutChannelImpl"

    .line 6
    const-string v3, "[getTravelSharePhoneAddress]"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lse;->c()Lse;

    .line 14
    move-result-object v1

    .line 15
    const/16 v2, 0x271f

    .line 17
    invoke-virtual {v1, v2}, Lse;->getBooleanValue(I)Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    new-instance v2, Lcom/autonavi/amapauto/user/UserPhone;

    .line 30
    const-string v3, "\u963f\u8def"

    .line 32
    const-string v4, "18811111111"

    .line 34
    invoke-direct {v2, v3, v4, v0}, Lcom/autonavi/amapauto/user/UserPhone;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 37
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v2, Lcom/autonavi/amapauto/user/UserPhone;

    .line 42
    const-string v3, "\u6b63\u5728"

    .line 44
    const-string v4, "18886522314"

    .line 46
    invoke-direct {v2, v3, v4, v0}, Lcom/autonavi/amapauto/user/UserPhone;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 49
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v2, Lcom/autonavi/amapauto/user/UserPhone;

    .line 54
    const-string v3, "\u5b58\u50a8"

    .line 56
    const-string v4, "18833333333"

    .line 58
    invoke-direct {v2, v3, v4, v0}, Lcom/autonavi/amapauto/user/UserPhone;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 61
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v2, Lcom/autonavi/amapauto/user/UserPhone;

    .line 66
    const-string v3, "\u62c9\u4e86"

    .line 68
    const-string v4, "18811223344"

    .line 70
    invoke-direct {v2, v3, v4, v0}, Lcom/autonavi/amapauto/user/UserPhone;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 73
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v2, Lcom/autonavi/amapauto/user/UserPhone;

    .line 78
    const-string v3, "\u65b9\u6cd5"

    .line 80
    const-string v4, "18866666666"

    .line 82
    invoke-direct {v2, v3, v4, v0}, Lcom/autonavi/amapauto/user/UserPhone;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 85
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v2, Lcom/autonavi/amapauto/user/UserPhone;

    .line 90
    const-string v3, "\u6162\u6162"

    .line 92
    const-string v4, "18822334455"

    .line 94
    invoke-direct {v2, v3, v4, v0}, Lcom/autonavi/amapauto/user/UserPhone;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 97
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v2, Lcom/autonavi/amapauto/user/UserPhone;

    .line 102
    const-string v3, "\u8bf7\u6c42"

    .line 104
    const-string v4, "18866778899"

    .line 106
    invoke-direct {v2, v3, v4, v0}, Lcom/autonavi/amapauto/user/UserPhone;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 109
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v2, Lcom/autonavi/amapauto/user/UserPhone;

    .line 114
    const-string v3, "\u5f39\u6761"

    .line 116
    const-string v4, "18868678766"

    .line 118
    invoke-direct {v2, v3, v4, v0}, Lcom/autonavi/amapauto/user/UserPhone;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 121
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v2, Lcom/autonavi/amapauto/user/UserPhone;

    .line 126
    const-string v3, "\u8c22\u8c22"

    .line 128
    const-string v4, "18897565464"

    .line 130
    invoke-direct {v2, v3, v4, v0}, Lcom/autonavi/amapauto/user/UserPhone;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 133
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v2, Lcom/autonavi/amapauto/user/UserPhone;

    .line 138
    const-string v3, "\u539f\u56e0"

    .line 140
    const-string v4, "18834325731"

    .line 142
    invoke-direct {v2, v3, v4, v0}, Lcom/autonavi/amapauto/user/UserPhone;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 145
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v2, Lcom/autonavi/amapauto/user/UserPhone;

    .line 150
    const-string v3, "\u4eba\u65e5"

    .line 152
    const-string v4, "18812314214"

    .line 154
    invoke-direct {v2, v3, v4, v0}, Lcom/autonavi/amapauto/user/UserPhone;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 157
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v2, Lcom/autonavi/amapauto/user/UserPhone;

    .line 162
    const-string v3, "\u641c\u7d22"

    .line 164
    const-string v4, "18834543543"

    .line 166
    invoke-direct {v2, v3, v4, v0}, Lcom/autonavi/amapauto/user/UserPhone;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 169
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v2, Lcom/autonavi/amapauto/user/UserPhone;

    .line 174
    const-string v3, "\u5339\u914d"

    .line 176
    const-string v4, "18855667788"

    .line 178
    invoke-direct {v2, v3, v4, v0}, Lcom/autonavi/amapauto/user/UserPhone;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 181
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v2, Lcom/autonavi/amapauto/user/UserPhone;

    .line 186
    const-string v3, "\u95ee\u95ee"

    .line 188
    const-string v4, "18812423546"

    .line 190
    invoke-direct {v2, v3, v4, v0}, Lcom/autonavi/amapauto/user/UserPhone;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 193
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v2, Lcom/autonavi/amapauto/user/UserPhone;

    .line 198
    const-string v3, "\u54e6\u54e6"

    .line 200
    const-string v4, "18844556677"

    .line 202
    invoke-direct {v2, v3, v4, v0}, Lcom/autonavi/amapauto/user/UserPhone;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 205
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v2, Lcom/autonavi/amapauto/user/UserPhone;

    .line 210
    const-string v3, "\u725b\u5976"

    .line 212
    const-string v4, "18833445566"

    .line 214
    invoke-direct {v2, v3, v4, v0}, Lcom/autonavi/amapauto/user/UserPhone;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 217
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v2, Lcom/autonavi/amapauto/user/UserPhone;

    .line 222
    const-string v3, "\u6765\u4e86"

    .line 224
    const-string v4, "18800000000"

    .line 226
    invoke-direct {v2, v3, v4, v0}, Lcom/autonavi/amapauto/user/UserPhone;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 229
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    new-instance v2, Lcom/autonavi/amapauto/user/UserPhone;

    .line 234
    const-string v3, "\u7ed9\u4e2a"

    .line 236
    const-string v4, "18877777777"

    .line 238
    invoke-direct {v2, v3, v4, v0}, Lcom/autonavi/amapauto/user/UserPhone;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 241
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v2, Lcom/autonavi/amapauto/user/UserPhone;

    .line 246
    const-string v3, "\u6069\u6069"

    .line 248
    const-string v4, "18855555555"

    .line 250
    invoke-direct {v2, v3, v4, v0}, Lcom/autonavi/amapauto/user/UserPhone;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 253
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v2, Lcom/autonavi/amapauto/user/UserPhone;

    .line 258
    const-string v3, "\u561f\u561f"

    .line 260
    const-string v4, "18844444444"

    .line 262
    invoke-direct {v2, v3, v4, v0}, Lcom/autonavi/amapauto/user/UserPhone;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 265
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    new-instance v2, Lcom/autonavi/amapauto/user/UserPhone;

    .line 270
    const-string v3, "\u767d\u767d"

    .line 272
    const-string v4, "18822222222"

    .line 274
    invoke-direct {v2, v3, v4, v0}, Lcom/autonavi/amapauto/user/UserPhone;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 277
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    new-instance v2, Lcom/autonavi/amapauto/user/UserPhone;

    .line 282
    const-string v3, "\u89e3\u51b3"

    .line 284
    const-string v4, "18899999999"

    .line 286
    invoke-direct {v2, v3, v4, v0}, Lcom/autonavi/amapauto/user/UserPhone;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 289
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    new-instance v2, Lcom/autonavi/amapauto/user/UserPhone;

    .line 294
    const-string v3, "\u8fd8\u4f1a"

    .line 296
    const-string v4, "18888888888"

    .line 298
    invoke-direct {v2, v3, v4, v0}, Lcom/autonavi/amapauto/user/UserPhone;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 301
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    new-instance v2, Lcom/autonavi/amapauto/user/UserPhone;

    .line 306
    const-string v3, "&&&"

    .line 308
    const-string v4, "12342353451"

    .line 310
    invoke-direct {v2, v3, v4, v0}, Lcom/autonavi/amapauto/user/UserPhone;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 313
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    new-instance v2, Lcom/autonavi/amapauto/user/UserPhone;

    .line 318
    const-string v3, "***"

    .line 320
    const-string v4, "12312313113"

    .line 322
    invoke-direct {v2, v3, v4, v0}, Lcom/autonavi/amapauto/user/UserPhone;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 325
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    new-instance v2, Lcom/autonavi/amapauto/user/UserPhone;

    .line 330
    const-string v3, "$$$"

    .line 332
    invoke-direct {v2, v3, v4, v0}, Lcom/autonavi/amapauto/user/UserPhone;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 335
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    new-instance v2, Lcom/autonavi/amapauto/user/UserPhone;

    .line 340
    const-string v3, "@@@"

    .line 342
    invoke-direct {v2, v3, v4, v0}, Lcom/autonavi/amapauto/user/UserPhone;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 345
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    new-instance v2, Lcom/autonavi/amapauto/user/UserPhone;

    .line 350
    const-string v3, "123"

    .line 352
    invoke-direct {v2, v3, v4, v0}, Lcom/autonavi/amapauto/user/UserPhone;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 355
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    new-instance v2, Lcom/autonavi/amapauto/user/UserPhone;

    .line 360
    const-string v3, "333"

    .line 362
    invoke-direct {v2, v3, v4, v0}, Lcom/autonavi/amapauto/user/UserPhone;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 365
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    new-instance v2, Lcom/autonavi/amapauto/user/UserPhone;

    .line 370
    const-string v3, "666"

    .line 372
    invoke-direct {v2, v3, v4, v0}, Lcom/autonavi/amapauto/user/UserPhone;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 375
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    return-object v1

    .line 379
    :cond_0
    const/4 v0, 0x0

    .line 380
    return-object v0
.end method

.method public getUISurfaceCreateLock()Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnobscured()Landroid/graphics/Rect;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUsbUpdataPath()Ljava/util/List;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWavPlayer()Lzt;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "DefalutChannelImpl"

    .line 6
    const-string v2, "getWavPlayer "

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v0, Lkb;

    .line 13
    invoke-direct {v0}, Lkb;-><init>()V

    .line 16
    return-object v0
.end method

.method public handleDrA3d(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    return-object p1
.end method

.method public handleDrGyr(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    return-object p1
.end method

.method public handleDrPulse(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    return-object p1
.end method

.method public handleLastOneKmResponse(ILjava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p1

    .line 9
    aput-object p1, v0, v1

    .line 11
    const/4 p1, 0x1

    .line 12
    aput-object p2, v0, p1

    .line 14
    const-string p1, "DefalutChannelImpl"

    .line 16
    const-string p2, "[handleLastOneKmResponse]type:{?};dataJson:{?}"

    .line 18
    invoke-static {p1, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method public handleProtocolRequest(Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public initAudio()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public initAuxiliaryNavigation()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public initCarSpeed()V
    .locals 0

    .line 1
    return-void
.end method

.method public initWakeUp()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "DefalutChannelImpl"

    .line 6
    const-string v2, "initWakeUp"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lrv;->H()Lrv;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lrv;->K()Ls20;

    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 21
    invoke-static {}, Lrv;->H()Lrv;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lrv;->K()Ls20;

    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ls20;->initWakeUp()V

    .line 32
    :cond_0
    return-void
.end method

.method public isChannelProtocolResult(Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public isCustomSatelliteTypeForN()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public isCustomizeMultiScreen(Lcom/autonavi/extscreen/dto/PresentationConfig;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public isLogOutputToLogcat()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public isQREnableFlag()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public isRealDevices()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public multiFingerEnable(Landroid/view/MotionEvent;)I
    .locals 0

    .line 1
    const/4 p1, -0x1

    return p1
.end method

.method public notifyGasolineShortage(IFF)V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    move-result-object v2

    .line 16
    aput-object v2, v0, v1

    .line 18
    const/4 v1, 0x2

    .line 19
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 22
    move-result-object v2

    .line 23
    aput-object v2, v0, v1

    .line 25
    const-string v1, "DefalutChannelImpl"

    .line 27
    const-string v2, "notifyGasolineShortage type:{?},cruisingDis:{?},remainFuel:{?}"

    .line 29
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    invoke-static {p1, p2, p3}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeOilStatusNotify(IFF)V

    .line 35
    return-void
.end method

.method public notifyISLElecInfo(DDII)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyISLJctWayInfo(DDI)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyISLRoadInfo(Ljava/lang/String;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyNightModeChange(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyRegionData(ILcom/autonavi/amapauto/jni/ehp/EHPRegion;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onActivityLifecycleChanged(Landroid/app/Activity;I)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v2

    .line 12
    aput-object v2, v0, v1

    .line 14
    const-string v1, "DefalutChannelImpl"

    .line 16
    const-string v2, "onActivityLifecycleChanged: {?}-->{?}"

    .line 18
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    invoke-static {}, Lqk;->d()Lqk;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p1, p2}, Lqk;->e(Landroid/app/Activity;I)V

    .line 28
    return-void
.end method

.method public onAudioInit(I)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public onInterruptMultiscreen(Lcom/autonavi/extscreen/dto/PresentationConfig;)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onWindowFocusChanged(Landroid/app/Activity;Z)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    move-result-object v2

    .line 12
    aput-object v2, v0, v1

    .line 14
    const-string v1, "DefalutChannelImpl"

    .line 16
    const-string v2, "onWindowFocusChanged: activity:{?}-->hasFocus:{?}"

    .line 18
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    invoke-static {}, Lqk;->d()Lqk;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p1, p2}, Lqk;->f(Landroid/app/Activity;Z)V

    .line 28
    return-void
.end method

.method public playClickSound()Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "DefalutChannelImpl"

    .line 6
    const-string v3, "playClickSound"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lrv;->H()Lrv;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 21
    :try_start_0
    const-string v3, "audio"

    .line 23
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/media/AudioManager;

    .line 29
    if-eqz v1, :cond_0

    .line 31
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->playSoundEffect(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 34
    const/4 v1, 0x1

    .line 35
    :try_start_1
    const-string v3, "AudioManager playSoundEffect Click:{?}"

    .line 37
    new-array v4, v1, [Ljava/lang/Object;

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object v5

    .line 43
    aput-object v5, v4, v0

    .line 45
    invoke-static {v2, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 48
    const/4 v0, 0x1

    .line 49
    goto :goto_1

    .line 50
    :catch_0
    move-exception v3

    .line 51
    goto :goto_0

    .line 52
    :catch_1
    move-exception v3

    .line 53
    const/4 v1, 0x0

    .line 54
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 57
    move-result-object v4

    .line 58
    new-array v0, v0, [Ljava/lang/Object;

    .line 60
    invoke-static {v2, v4, v3, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 63
    move v0, v1

    .line 64
    :cond_0
    :goto_1
    return v0
.end method

.method public playText(ILjava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public releaseAudio()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public removeAppFocusChange(Lcom/autonavi/amapauto/jni/AutoCarAppFocusManager$c;)V
    .locals 0

    .line 1
    return-void
.end method

.method public requestAppFocus(ILcom/autonavi/amapauto/jni/AutoCarAppFocusManager$d;)V
    .locals 0

    .line 1
    return-void
.end method

.method public requestFocus(IIILandroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v2

    .line 16
    aput-object v2, v0, v1

    .line 18
    const/4 v1, 0x2

    .line 19
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v2

    .line 23
    aput-object v2, v0, v1

    .line 25
    const/4 v1, 0x3

    .line 26
    aput-object p4, v0, v1

    .line 28
    const-string v1, "DefalutChannelImpl"

    .line 30
    const-string v2, "requestFocus new streamType:{?} durationHint:{?};audioType:{?};listener:{?}"

    .line 32
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    invoke-static {}, Lo6;->j()Lo6;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, p1, p2, p3, p4}, Lo6;->F(IIILandroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 42
    move-result p1

    .line 43
    return p1
.end method

.method public requestFocusByScene(IIIZ)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget p4, Lc;->l:I

    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p4, p3, :cond_1

    .line 6
    invoke-static {}, Lo6;->j()Lo6;

    .line 9
    move-result-object p3

    .line 10
    invoke-static {}, Lo6;->j()Lo6;

    .line 13
    move-result-object p4

    .line 14
    const/4 v1, 0x3

    .line 15
    invoke-virtual {p4, v1}, Lo6;->k(I)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 18
    move-result-object p4

    .line 19
    invoke-virtual {p3, p1, p2, v1, p4}, Lo6;->F(IIILandroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 22
    move-result p1

    .line 23
    if-ne p1, v0, :cond_0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    const/4 v0, 0x0

    .line 28
    :cond_1
    :goto_0
    return v0
.end method

.method public requestPermissions([Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "DefalutChannelImpl"

    .line 6
    const-string v2, "requestPermissions"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {p1}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->requestPermissionsByAdaptor([Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public requestPermissionsResult([Ljava/lang/String;[I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "DefalutChannelImpl"

    .line 6
    const-string v2, "requestPermissionsResult"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {p1, p2}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->requestPermissionsResult([Ljava/lang/String;[I)V

    .line 14
    return-void
.end method

.method public responseProtocolResult(ILcom/autonavi/amapauto/jni/protocol/data/ALResponeData;)V
    .locals 0

    .line 1
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Lrv;->H()Lrv;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x1

    .line 24
    new-array v0, v0, [Ljava/lang/Object;

    .line 26
    const/4 v1, 0x0

    .line 27
    aput-object p1, v0, v1

    .line 29
    const-string p1, "DefalutChannelImpl"

    .line 31
    const-string v1, "Error sendBroadcast mContext == null, intent={?}"

    .line 33
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    :goto_0
    return-void
.end method

.method public sendEnergyPredictionData(Lcom/autonavi/amapauto/jni/protocol/data/EnergyPredictionSysData;)V
    .locals 0

    .line 1
    return-void
.end method

.method public sendNavTargetSocData([I)V
    .locals 0

    .line 1
    return-void
.end method

.method public sendNotifcation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "DefalutChannelImpl"

    .line 6
    const-string v2, "sendNotifcation"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v7, 0x0

    .line 12
    move-object v3, p1

    .line 13
    move-object v4, p2

    .line 14
    move-object v5, p3

    .line 15
    move-object v6, p4

    .line 16
    move-object v8, p5

    .line 17
    invoke-static/range {v3 .. v8}, Lxc0;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public sendPowerPredictionData(Lcom/autonavi/amapauto/jni/protocol/data/PowerPredictionSysData;)V
    .locals 0

    .line 1
    return-void
.end method

.method public sendSliceNotification(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public sendTurn(Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setDIMActivityInteraction(Ler;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setGpsInfo(Landroid/location/Location;)V
    .locals 1

    .line 1
    invoke-static {}, Lzx;->h()Lzx;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lzx;->q(Landroid/location/Location;)V

    .line 8
    return-void
.end method

.method public setGpsInfoV2(Le;)V
    .locals 1

    .line 1
    invoke-static {}, Lzx;->h()Lzx;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lzx;->r(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 8
    return-void
.end method

.method public setLaneInfo(Lcom/autonavi/amapauto/widget/jni/LaneInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setNzpPassingPoi(Lcom/autonavi/amapauto/jni/protocol/data/PassingPointItem;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public setNzpRouteLinkInfoListNotify(Lcom/autonavi/amapauto/jni/protocol/data/NzpRouteLinkInfoData;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public setOptionalValue(ILeq$a;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setSpeedoMeter(F)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p1, v0

    .line 4
    if-ltz v0, :cond_0

    .line 6
    iput p1, p0, Ldi;->speedoMeter:F

    .line 8
    :cond_0
    if-ltz v0, :cond_1

    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 p1, 0x0

    .line 13
    :goto_0
    return p1
.end method

.method public setSystemUiLightMode(IZ)Z
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object p1

    .line 8
    const/4 v1, 0x0

    .line 9
    aput-object p1, v0, v1

    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    move-result-object p2

    .line 16
    aput-object p2, v0, p1

    .line 18
    const-string p1, "DefalutChannelImpl"

    .line 20
    const-string p2, "setSystemUiLightMode, uiType={?}, isLight={?}"

    .line 22
    invoke-static {p1, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    return v1
.end method

.method public setSystemVolume(II)V
    .locals 1

    .line 1
    invoke-static {}, Lo6;->j()Lo6;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lo6;->J(II)V

    .line 8
    return-void
.end method

.method public startCluster()V
    .locals 0

    .line 1
    return-void
.end method

.method public startup()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "DefalutChannelImpl"

    .line 6
    const-string v2, "startup"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v0, 0x1

    .line 12
    return v0
.end method

.method public stopAudio(Z)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public stopCluster()V
    .locals 0

    .line 1
    return-void
.end method

.method public stopDimRender()V
    .locals 0

    .line 1
    return-void
.end method

.method public stopWakeUp()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "DefalutChannelImpl"

    .line 6
    const-string v2, "stopWakeUp"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lrv;->H()Lrv;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lrv;->K()Ls20;

    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 21
    invoke-static {}, Lrv;->H()Lrv;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lrv;->K()Ls20;

    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ls20;->stopWakeUp()V

    .line 32
    :cond_0
    return-void
.end method

.method public wrapGuideInfoProtocolData(Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)V
    .locals 0

    .line 1
    return-void
.end method

.method public writeChargingStationInfo(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public writeEnergyAtDistance(IIIZ)V
    .locals 0

    .line 1
    return-void
.end method
