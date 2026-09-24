.class public Lcom/autonavi/amapauto/adapter/internal/SystemBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static b:Z = true


# instance fields
.field public a:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    new-instance v0, Lcom/autonavi/amapauto/adapter/internal/SystemBroadcastReceiver$a;

    .line 6
    invoke-direct {v0, p0}, Lcom/autonavi/amapauto/adapter/internal/SystemBroadcastReceiver$a;-><init>(Lcom/autonavi/amapauto/adapter/internal/SystemBroadcastReceiver;)V

    .line 9
    iput-object v0, p0, Lcom/autonavi/amapauto/adapter/internal/SystemBroadcastReceiver;->a:Landroid/os/Handler;

    .line 11
    return-void
.end method

.method public static synthetic a(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/autonavi/amapauto/adapter/internal/SystemBroadcastReceiver;->b:Z

    .line 3
    return p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1
    const-string p1, "SystemBroadcastReceiver"

    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p2, :cond_0

    .line 6
    const-string p2, "[onReceive] intent == null"

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    invoke-static {p1, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v1, 0x1

    .line 15
    new-array v2, v1, [Ljava/lang/Object;

    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 20
    move-result-object v3

    .line 21
    aput-object v3, v2, v0

    .line 23
    const-string v3, "SystemBroadcastReceiver receive broadcast action: {?}"

    .line 25
    invoke-static {p1, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 31
    move-result-object v2

    .line 32
    if-eqz v2, :cond_5

    .line 34
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 37
    move-result-object v3

    .line 38
    new-array v4, v1, [Ljava/lang/Object;

    .line 40
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    aput-object v2, v4, v0

    .line 46
    const-string v2, "SystemBroadcastReceiver receive broadcast path:{?}"

    .line 48
    invoke-static {p1, v2, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_5

    .line 57
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 60
    move-result-object v2

    .line 61
    if-eqz v2, :cond_1

    .line 63
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_1

    .line 73
    return-void

    .line 74
    :cond_1
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result v2

    .line 84
    const-string v4, "Throwable"

    .line 86
    if-eqz v2, :cond_2

    .line 88
    const-string p2, "SystemBroadcastReceiver nativeStorageActionChange StorageAction.INSERT "

    .line 90
    new-array v2, v0, [Ljava/lang/Object;

    .line 92
    invoke-static {p1, p2, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    :try_start_0
    invoke-static {v1, v3}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeStorageActionChange(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    goto :goto_0

    .line 99
    :catchall_0
    move-exception p2

    .line 100
    new-array v0, v0, [Ljava/lang/Object;

    .line 102
    invoke-static {p1, v4, p2, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 105
    goto :goto_0

    .line 106
    :cond_2
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    .line 108
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 111
    move-result-object v5

    .line 112
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    move-result v2

    .line 116
    if-nez v2, :cond_3

    .line 118
    const-string v2, "android.intent.action.MEDIA_REMOVED"

    .line 120
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 123
    move-result-object v5

    .line 124
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    move-result v2

    .line 128
    if-nez v2, :cond_3

    .line 130
    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    .line 132
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 135
    move-result-object v5

    .line 136
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    move-result v2

    .line 140
    if-nez v2, :cond_3

    .line 142
    const-string v2, "android.intent.action.MEDIA_EJECT"

    .line 144
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 147
    move-result-object p2

    .line 148
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    move-result p2

    .line 152
    if-eqz p2, :cond_5

    .line 154
    :cond_3
    new-array p2, v1, [Ljava/lang/Object;

    .line 156
    sget-boolean v1, Lcom/autonavi/amapauto/adapter/internal/SystemBroadcastReceiver;->b:Z

    .line 158
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 161
    move-result-object v1

    .line 162
    aput-object v1, p2, v0

    .line 164
    const-string v1, "SystemBroadcastReceiver isValidUsbAction={?} "

    .line 166
    invoke-static {p1, v1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    sget-boolean p2, Lcom/autonavi/amapauto/adapter/internal/SystemBroadcastReceiver;->b:Z

    .line 171
    if-nez p2, :cond_4

    .line 173
    return-void

    .line 174
    :cond_4
    sput-boolean v0, Lcom/autonavi/amapauto/adapter/internal/SystemBroadcastReceiver;->b:Z

    .line 176
    iget-object p2, p0, Lcom/autonavi/amapauto/adapter/internal/SystemBroadcastReceiver;->a:Landroid/os/Handler;

    .line 178
    const/16 v1, 0x99

    .line 180
    const-wide/16 v5, 0x1f4

    .line 182
    invoke-virtual {p2, v1, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 185
    const-string p2, "SystemBroadcastReceiver nativeStorageActionChange StorageAction.REMOVE "

    .line 187
    new-array v1, v0, [Ljava/lang/Object;

    .line 189
    invoke-static {p1, p2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    const/4 p2, -0x1

    .line 193
    :try_start_1
    invoke-static {p2, v3}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeStorageActionChange(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 196
    goto :goto_0

    .line 197
    :catchall_1
    move-exception p2

    .line 198
    new-array v0, v0, [Ljava/lang/Object;

    .line 200
    invoke-static {p1, v4, p2, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 203
    :cond_5
    :goto_0
    return-void
.end method
