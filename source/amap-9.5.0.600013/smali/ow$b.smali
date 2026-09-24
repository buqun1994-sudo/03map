.class public Low$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Low;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Low;


# direct methods
.method public constructor <init>(Low;)V
    .locals 0

    .line 1
    iput-object p1, p0, Low$b;->a:Low;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Low;Low$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Low$b;-><init>(Low;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    const/4 p1, 0x0

    .line 2
    const-string v0, "KaiwoBE11InteractionImpl"

    .line 4
    if-eqz p2, :cond_4

    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    const-string v1, "path"

    .line 19
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x2

    .line 24
    new-array v2, v2, [Ljava/lang/Object;

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 30
    aput-object v3, v2, p1

    .line 32
    const/4 v3, 0x1

    .line 33
    aput-object v1, v2, v3

    .line 35
    const-string v4, "onReceive: action={?},path={?}"

    .line 37
    invoke-static {v0, v4, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 46
    return-void

    .line 47
    :cond_1
    const-string v2, "sky.car.action.usb.device.mounted"

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result v2

    .line 57
    const-string v4, "Throwable"

    .line 59
    if-eqz v2, :cond_2

    .line 61
    :try_start_0
    const-string p2, "onReceive: udisk MOUNT path={?}"

    .line 63
    new-array v2, v3, [Ljava/lang/Object;

    .line 65
    aput-object v1, v2, p1

    .line 67
    invoke-static {v0, p2, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-static {v3, v1}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeStorageActionChange(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception p2

    .line 75
    new-array p1, p1, [Ljava/lang/Object;

    .line 77
    invoke-static {v0, v4, p2, p1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    const-string v2, "sky.car.action.usb.device.unmounted"

    .line 83
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result p2

    .line 91
    if-eqz p2, :cond_3

    .line 93
    :try_start_1
    const-string p2, "onReceive: udisk UNMOUNT path={?}"

    .line 95
    new-array v2, v3, [Ljava/lang/Object;

    .line 97
    aput-object v1, v2, p1

    .line 99
    invoke-static {v0, p2, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    const/4 p2, -0x1

    .line 103
    invoke-static {p2, v1}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeStorageActionChange(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 106
    goto :goto_0

    .line 107
    :catchall_1
    move-exception p2

    .line 108
    new-array p1, p1, [Ljava/lang/Object;

    .line 110
    invoke-static {v0, v4, p2, p1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 113
    :cond_3
    :goto_0
    return-void

    .line 114
    :cond_4
    :goto_1
    const-string p2, "onReceive: intent=null or intent.getAction=null"

    .line 116
    new-array p1, p1, [Ljava/lang/Object;

    .line 118
    invoke-static {v0, p2, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    return-void
.end method
