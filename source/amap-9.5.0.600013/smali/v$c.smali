.class public Lv$c;
.super Lv$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lv$f;-><init>(Lv$a;)V

    .line 5
    return-void
.end method


# virtual methods
.method public g()Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "com.power.action.POWER_STATE"

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
    const-string p1, "status"

    .line 3
    const/4 v0, -0x1

    .line 4
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 7
    move-result p1

    .line 8
    invoke-static {}, Lv;->a()Ljava/lang/String;

    .line 11
    move-result-object p2

    .line 12
    const/4 v0, 0x1

    .line 13
    new-array v1, v0, [Ljava/lang/Object;

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x0

    .line 20
    aput-object v2, v1, v3

    .line 22
    const-string v2, "ACTION_POWER_IGN, intent.getIntExtra, ret={?}"

    .line 24
    invoke-static {p2, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    if-eq p1, v0, :cond_2

    .line 29
    const/4 p2, 0x6

    .line 30
    if-eq p1, p2, :cond_1

    .line 32
    const/4 p2, 0x7

    .line 33
    if-eq p1, p2, :cond_0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-static {v3}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->setTempMuteState(Z)V

    .line 39
    invoke-static {v3, v3}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeAccOn(IZ)V

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-static {v3}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->setTempMuteState(Z)V

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->setTempMuteState(Z)V

    .line 50
    :goto_0
    return v3
.end method
