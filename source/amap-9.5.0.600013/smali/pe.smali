.class public Lpe;
.super Lmc;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmc;-><init>()V

    .line 4
    invoke-static {}, Lrv;->H()Lrv;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lrv;->y()Landroid/app/Application;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lpe;->a:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public cleanup()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "Changcheng_V2_EC01_InteractionImpl"

    .line 6
    const-string v2, "Changcheng_V2_EC01_InteractionImpl cleanup run"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-super {p0}, Lmc;->cleanup()Z

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public getBooleanValue(I)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmc;->getBooleanValue(I)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getIntValue(I)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmc;->getIntValue(I)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getSatelliteType(I)I
    .locals 1

    .line 1
    const/16 v0, 0xa0

    .line 3
    if-lt p1, v0, :cond_0

    .line 5
    sget p1, Luy;->b:I

    .line 7
    return p1

    .line 8
    :cond_0
    sget p1, Luy;->a:I

    .line 10
    return p1
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmc;->getStringValue(I)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Ldi;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 4
    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x1

    .line 18
    new-array p1, p1, [Ljava/lang/Object;

    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 24
    move-result-object p2

    .line 25
    aput-object p2, p1, v0

    .line 27
    const-string p2, "Changcheng_V2_EC01_InteractionImpl"

    .line 29
    const-string v0, "onReceive: action={?}"

    .line 31
    invoke-static {p2, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method public startup()Z
    .locals 3

    .line 1
    invoke-super {p0}, Lmc;->startup()Z

    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    const-string v1, "Changcheng_V2_EC01_InteractionImpl"

    .line 9
    const-string v2, "Changcheng_V2_EC01_InteractionImpl startup run"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    const/4 v0, 0x1

    .line 15
    return v0
.end method
