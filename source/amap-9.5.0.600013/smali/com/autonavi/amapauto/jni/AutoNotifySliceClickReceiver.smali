.class public Lcom/autonavi/amapauto/jni/AutoNotifySliceClickReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    const-string v0, "AutoNotifySliceClickReceiver"

    .line 6
    iput-object v0, p0, Lcom/autonavi/amapauto/jni/AutoNotifySliceClickReceiver;->a:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lqa;->a(Landroid/content/Context;)Z

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    const-string v1, "AutoNotifySliceClickReceiver"

    .line 8
    if-nez p1, :cond_0

    .line 10
    const-string p1, "child over"

    .line 12
    new-array p2, v0, [Ljava/lang/Object;

    .line 14
    invoke-static {v1, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    return-void

    .line 18
    :cond_0
    const-string p1, "request_code"

    .line 20
    const/4 v2, -0x1

    .line 21
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 24
    move-result p1

    .line 25
    const-string v3, "notice_id"

    .line 27
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 30
    move-result p2

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    const-string v3, "request code "

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    const-string p1, " noticeId "

    .line 46
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    new-array v2, v0, [Ljava/lang/Object;

    .line 58
    invoke-static {v1, p1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    const/16 p1, 0x3e8

    .line 63
    if-ne p2, p1, :cond_1

    .line 65
    const/4 v2, 0x1

    .line 66
    new-array v2, v2, [Ljava/lang/Object;

    .line 68
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object p2

    .line 72
    aput-object p2, v2, v0

    .line 74
    const-string p2, "slcie 4 third app is clicked noticeId:{?}"

    .line 76
    invoke-static {v1, p2, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    new-instance p2, Landroid/os/Bundle;

    .line 81
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 84
    const-string v0, "com.autonavi.amapauto.slice.thirdapp.action_slice_third_app_clicked"

    .line 86
    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 89
    invoke-static {v0, p2}, Lcom/autonavi/amapauto/alpack/d;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    goto :goto_0

    .line 93
    :cond_1
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/AndroidNotificationNative;->nativeSliceNoticeIntentReceive(I)V

    .line 96
    :goto_0
    return-void
.end method
