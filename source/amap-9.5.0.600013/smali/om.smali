.class public Lom;
.super Lei;
.source "SourceFile"


# static fields
.field public static e:Ljava/lang/String; = "FlyAudioInteractionImpl"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lei;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getIntValue(I)I
    .locals 1

    .line 1
    const/16 v0, 0x271c

    .line 3
    if-eq p1, v0, :cond_0

    .line 5
    invoke-super {p0, p1}, Lac;->getIntValue(I)I

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const-string p1, "fly.android.navi.daynightmode"

    .line 12
    invoke-static {p1}, Lvf0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    const-string v0, "night"

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "FLY.ANDROID.NAVI.MSG.SENDER"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_c

    .line 13
    const-string p1, "FLY_KEY_VALUE"

    .line 15
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string p1, "FLY_DAYNIGHT_MODE"

    .line 28
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const-string p1, "FLY_PM_MODE"

    .line 41
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 47
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 p1, 0x0

    .line 53
    :goto_0
    sget-object p2, Lom;->e:Ljava/lang/String;

    .line 55
    const/4 v0, 0x1

    .line 56
    new-array v1, v0, [Ljava/lang/Object;

    .line 58
    const/4 v2, 0x0

    .line 59
    aput-object p1, v1, v2

    .line 61
    const-string v3, "FlyAudio onReceive value:{?}"

    .line 63
    invoke-static {p2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    const-string p2, "KEY_DEST"

    .line 68
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result p2

    .line 72
    if-eqz p2, :cond_3

    .line 74
    sget-object p1, Lom;->e:Ljava/lang/String;

    .line 76
    const-string p2, "FlyAudio do go destination"

    .line 78
    new-array v0, v2, [Ljava/lang/Object;

    .line 80
    invoke-static {p1, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    goto/16 :goto_1

    .line 85
    :cond_3
    const-string p2, "KEY_LOCAL"

    .line 87
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result p2

    .line 91
    const/4 v1, -0x1

    .line 92
    if-eqz p2, :cond_5

    .line 94
    invoke-static {}, Lib;->h()Z

    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_4

    .line 100
    new-instance p1, Lcom/autonavi/amapauto/protocol/model/client/BackToMapModel;

    .line 102
    invoke-direct {p1, v2}, Lcom/autonavi/amapauto/protocol/model/client/BackToMapModel;-><init>(I)V

    .line 105
    invoke-static {p1, v1}, Lfw;->a(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;I)V

    .line 108
    goto :goto_1

    .line 109
    :cond_4
    invoke-static {v2, v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeBackToMap(II)V

    .line 112
    goto :goto_1

    .line 113
    :cond_5
    const-string p2, "KEY_ZOOM_IN"

    .line 115
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    move-result p2

    .line 119
    if-eqz p2, :cond_7

    .line 121
    invoke-static {}, Lib;->h()Z

    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_6

    .line 127
    new-instance p1, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;

    .line 129
    invoke-direct {p1, v0, v2, v2}, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;-><init>(III)V

    .line 132
    invoke-static {p1, v1}, Lfw;->a(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;I)V

    .line 135
    goto :goto_1

    .line 136
    :cond_6
    invoke-static {v2, v0, v2}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->doOperaMap(III)V

    .line 139
    goto :goto_1

    .line 140
    :cond_7
    const-string p2, "KEY_ZOOM_OUT"

    .line 142
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    move-result p2

    .line 146
    if-eqz p2, :cond_9

    .line 148
    invoke-static {}, Lib;->h()Z

    .line 151
    move-result p1

    .line 152
    if-eqz p1, :cond_8

    .line 154
    new-instance p1, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;

    .line 156
    invoke-direct {p1, v0, v0, v2}, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;-><init>(III)V

    .line 159
    invoke-static {p1, v1}, Lfw;->a(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;I)V

    .line 162
    goto :goto_1

    .line 163
    :cond_8
    invoke-static {v2, v0, v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->doOperaMap(III)V

    .line 166
    goto :goto_1

    .line 167
    :cond_9
    const-string p2, "MODE_DAY"

    .line 169
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    move-result p2

    .line 173
    if-eqz p2, :cond_a

    .line 175
    invoke-static {v2, v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->setHeadLampStatus(II)V

    .line 178
    goto :goto_1

    .line 179
    :cond_a
    const-string p2, "MODE_NIGHT"

    .line 181
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    move-result p2

    .line 185
    if-eqz p2, :cond_b

    .line 187
    invoke-static {v2, v2}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->setHeadLampStatus(II)V

    .line 190
    goto :goto_1

    .line 191
    :cond_b
    const-string p2, "PM_SUSPEND"

    .line 193
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    move-result p1

    .line 197
    if-eqz p1, :cond_c

    .line 199
    invoke-static {v2, v2}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeAccOn(IZ)V

    .line 202
    :cond_c
    :goto_1
    return-void
.end method
