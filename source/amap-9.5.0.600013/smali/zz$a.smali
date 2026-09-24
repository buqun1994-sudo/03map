.class public Lzz$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loz$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


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
    const/4 v0, 0x1

    return v0
.end method

.method public g()Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "FLY.ANDROID.NAVI.MSG.SENDER"

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public j(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 4

    .line 1
    const-string p1, "FLY_KEY_VALUE"

    .line 3
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string p1, "FLY_DAYNIGHT_MODE"

    .line 16
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const-string p1, "FLY_PM_MODE"

    .line 29
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 35
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/4 p1, 0x0

    .line 41
    :goto_0
    const/4 p2, 0x1

    .line 42
    new-array v0, p2, [Ljava/lang/Object;

    .line 44
    const/4 v1, 0x0

    .line 45
    aput-object p1, v0, v1

    .line 47
    const-string v2, "MapOperateFuncRepository"

    .line 49
    const-string v3, "FlyAudio onReceive value:{?}"

    .line 51
    invoke-static {v2, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    const-string v0, "KEY_LOCAL"

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v0

    .line 60
    const/4 v2, -0x1

    .line 61
    if-eqz v0, :cond_4

    .line 63
    invoke-static {}, Lib;->h()Z

    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_3

    .line 69
    new-instance p1, Lcom/autonavi/amapauto/protocol/model/client/BackToMapModel;

    .line 71
    invoke-direct {p1, v1}, Lcom/autonavi/amapauto/protocol/model/client/BackToMapModel;-><init>(I)V

    .line 74
    invoke-static {p1, v2}, Lfw;->a(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;I)V

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    invoke-static {v1, p2}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeBackToMap(II)V

    .line 81
    :goto_1
    return p2

    .line 82
    :cond_4
    const-string v0, "KEY_ZOOM_IN"

    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_6

    .line 90
    invoke-static {}, Lib;->h()Z

    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_5

    .line 96
    new-instance p1, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;

    .line 98
    invoke-direct {p1, p2, v1, v1}, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;-><init>(III)V

    .line 101
    invoke-static {p1, v2}, Lfw;->a(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;I)V

    .line 104
    goto :goto_2

    .line 105
    :cond_5
    invoke-static {v1, p2, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->doOperaMap(III)V

    .line 108
    :goto_2
    return p2

    .line 109
    :cond_6
    const-string v0, "KEY_ZOOM_OUT"

    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_8

    .line 117
    invoke-static {}, Lib;->h()Z

    .line 120
    move-result p1

    .line 121
    if-eqz p1, :cond_7

    .line 123
    new-instance p1, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;

    .line 125
    invoke-direct {p1, p2, p2, v1}, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;-><init>(III)V

    .line 128
    invoke-static {p1, v2}, Lfw;->a(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;I)V

    .line 131
    goto :goto_3

    .line 132
    :cond_7
    invoke-static {v1, p2, p2}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->doOperaMap(III)V

    .line 135
    :goto_3
    return p2

    .line 136
    :cond_8
    return v1
.end method
