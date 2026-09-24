.class public Ldm0;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lem0;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    const-string p1, "WidgetHomeCompanyCheckHandler"

    .line 6
    iput-object p1, p0, Ldm0;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Ldm0;->c()V

    .line 11
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "WidgetHomeCompanyCheckHandler"

    .line 6
    const-string v3, "endHomeCompanyCheck"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    return-void
.end method

.method public b()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "WidgetHomeCompanyCheckHandler"

    .line 6
    const-string v3, "hasHomeCompanyMessage"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public final c()V
    .locals 1

    .line 1
    invoke-static {}, Lem0;->d()Lem0;

    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Ldm0;->b:Lem0;

    .line 7
    return-void
.end method

.method public d()V
    .locals 4

    .line 1
    invoke-static {}, Lmb;->b()Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "WidgetHomeCompanyCheckHandler"

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 10
    const-string v0, "startHomeCompanyCheck(). jingmoGoHomeCompany not configed"

    .line 12
    new-array v2, v2, [Ljava/lang/Object;

    .line 14
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    return-void

    .line 18
    :cond_0
    const-string v0, "startHomeCompanyCheck"

    .line 20
    new-array v3, v2, [Ljava/lang/Object;

    .line 22
    invoke-static {v1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 28
    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 31
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 4
    iget p1, p1, Landroid/os/Message;->what:I

    .line 6
    if-eqz p1, :cond_0

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const-string p1, "handleMessage MSG_CHECK_HOME_COMPANY"

    .line 11
    const/4 v0, 0x0

    .line 12
    new-array v1, v0, [Ljava/lang/Object;

    .line 14
    const-string v2, "WidgetHomeCompanyCheckHandler"

    .line 16
    invoke-static {v2, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    invoke-static {}, Lmb;->b()Z

    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_2

    .line 25
    invoke-static {}, Lhm0;->l()Z

    .line 28
    move-result p1

    .line 29
    const/4 v1, 0x1

    .line 30
    if-eqz p1, :cond_1

    .line 32
    invoke-static {}, Lnb;->j()Lnb;

    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lnb;->r()Z

    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_1

    .line 42
    invoke-static {v1}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetRequest;->requestWidgetInfo(I)V

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    .line 48
    invoke-static {}, Lhm0;->l()Z

    .line 51
    move-result v1

    .line 52
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    move-result-object v1

    .line 56
    aput-object v1, p1, v0

    .line 58
    const-string v1, "handleMessage MSG_CHECK_HOME_COMPANY isWidgetAdded={?}"

    .line 60
    invoke-static {v2, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 66
    const-wide/32 v1, 0x927c0

    .line 69
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    const-string p1, "handleMessage MSG_CHECK_HOME_COMPANY jingmoGoHomeCompany not configed"

    .line 75
    new-array v0, v0, [Ljava/lang/Object;

    .line 77
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    :goto_1
    return-void
.end method
