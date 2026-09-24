.class public Lye0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfq;
.implements Lfq$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lye0;
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
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const-string v1, "carplay_navigation_activated"

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    const-string v1, "tencent_navigation_activated"

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    return-object v0
.end method

.method public j(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 2

    .line 1
    const-string p1, "self_flag"

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 7
    move-result p1

    .line 8
    const/4 p2, 0x1

    .line 9
    if-eqz p1, :cond_0

    .line 11
    const-string p1, "ignore self action carplay_navigation_activated"

    .line 13
    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    const-string v1, "StopGuideFuncRepository"

    .line 17
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    return p2

    .line 21
    :cond_0
    invoke-virtual {p0}, Lye0$b;->q()V

    .line 24
    return p2
.end method

.method public final q()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeStopGuide(I)V

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {v0, v1, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->setNaviMuteModel(IIZ)V

    .line 9
    const-string v1, "guide end from carplay intent action"

    .line 11
    new-array v0, v0, [Ljava/lang/Object;

    .line 13
    const-string v2, "StopGuideFuncRepository"

    .line 15
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    return-void
.end method
