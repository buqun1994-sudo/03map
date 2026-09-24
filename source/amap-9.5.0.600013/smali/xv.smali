.class public Lxv;
.super Lmc;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String; = "xv"


# instance fields
.field public a:Landroid/net/Uri;

.field public b:[Lkf0;

.field public c:Landroid/content/Context;


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
    const-string v0, "content://com.android.contacts/raw_contacts"

    .line 6
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lxv;->a:Landroid/net/Uri;

    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lxv;->b:[Lkf0;

    .line 15
    invoke-static {}, Lrv;->H()Lrv;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lrv;->y()Landroid/app/Application;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lxv;->c:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public getBooleanValue(I)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmc;->getBooleanValue(I)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getFloatValue(I)F
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmc;->getFloatValue(I)F

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

.method public getStringValue(I)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "mnt/media_rw/internal_sd/0"

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 6
    invoke-super {p0, p1}, Lmc;->getStringValue(I)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :pswitch_0
    return-object v0

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x9c44
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "AUTONAVI_STANDARD_BROADCAST_RECV"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    const-string p1, "ILLUMI"

    .line 16
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 19
    move-result p1

    .line 20
    sget-object p2, Lxv;->d:Ljava/lang/String;

    .line 22
    const/4 v0, 0x1

    .line 23
    new-array v0, v0, [Ljava/lang/Object;

    .line 25
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    move-result-object p1

    .line 29
    aput-object p1, v0, v1

    .line 31
    const-string p1, "is head lamp = {?}"

    .line 33
    invoke-static {p2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string p2, "com.device.accoff"

    .line 39
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_1

    .line 45
    sget-object p1, Lxv;->d:Ljava/lang/String;

    .line 47
    const-string p2, "acc off"

    .line 49
    new-array v0, v1, [Ljava/lang/Object;

    .line 51
    invoke-static {p1, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const-string p2, "ADAYO_STANDARD_BROADCAST_PRESENTATION"

    .line 57
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    :goto_0
    return-void
.end method

.method public startup()Z
    .locals 3

    .line 1
    invoke-super {p0}, Lmc;->startup()Z

    .line 4
    sget-object v0, Lxv;->d:Ljava/lang/String;

    .line 6
    const/4 v1, 0x0

    .line 7
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    const-string v2, "startup run"

    .line 11
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    const/4 v0, 0x1

    .line 15
    return v0
.end method
