.class public Le2;
.super Lei;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lei;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getArCamera()Liq;
    .locals 1

    .line 1
    new-instance v0, Lr2;

    .line 3
    invoke-direct {v0}, Lr2;-><init>()V

    .line 6
    return-object v0
.end method

.method public onWindowFocusChanged(Landroid/app/Activity;Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lbc;->onWindowFocusChanged(Landroid/app/Activity;Z)V

    .line 4
    invoke-static {}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->jniGetDeviceScreenWidth()I

    .line 7
    move-result p1

    .line 8
    invoke-static {}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->jniGetDeviceScreenHeight()I

    .line 11
    move-result p2

    .line 12
    iget-object v0, p0, Lei;->d:Ljava/lang/String;

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    const-string v2, "width "

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v2, " height "

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    const-string v2, " form AiMiInteractionImpl"

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    const/4 v2, 0x0

    .line 45
    new-array v2, v2, [Ljava/lang/Object;

    .line 47
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    invoke-static {}, Lrv;->H()Lrv;

    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lrv;->y()Landroid/app/Application;

    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 65
    move-result-object v0

    .line 66
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 68
    invoke-static {p1, p2, v0}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeOnLayoutChange(III)V

    .line 71
    return-void
.end method
