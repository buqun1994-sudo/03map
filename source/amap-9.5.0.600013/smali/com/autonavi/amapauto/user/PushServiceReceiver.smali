.class public Lcom/autonavi/amapauto/user/PushServiceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "PushServiceReceiver"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .line 1
    sget-object p1, Lcom/autonavi/amapauto/user/PushServiceReceiver;->a:Ljava/lang/String;

    .line 3
    const/4 v0, 0x0

    .line 4
    new-array v1, v0, [Ljava/lang/Object;

    .line 6
    const-string v2, "onReceive PushServiceReceiver"

    .line 8
    invoke-static {p1, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    if-eqz p2, :cond_4

    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    const-string v2, "com.autonavi.amapauto.user.al.action.HANDLE_PUSH_MSG"

    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_4

    .line 25
    const-string v1, "message"

    .line 27
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v5

    .line 31
    const-string v1, "title"

    .line 33
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v4

    .line 37
    const-string v1, "messageId"

    .line 39
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v6

    .line 43
    const-string v1, "actionUri"

    .line 45
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object v7

    .line 49
    const-string v1, "userId"

    .line 51
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 58
    move-result-object p2

    .line 59
    if-nez p2, :cond_0

    .line 61
    const-string p2, "No extras in Intent"

    .line 63
    new-array v0, v0, [Ljava/lang/Object;

    .line 65
    invoke-static {p1, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    return-void

    .line 69
    :cond_0
    const-string v2, "=== Start: Printing String Extras ==="

    .line 71
    new-array v3, v0, [Ljava/lang/Object;

    .line 73
    invoke-static {p1, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 79
    move-result-object p1

    .line 80
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 83
    move-result-object p1

    .line 84
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_2

    .line 90
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Ljava/lang/String;

    .line 96
    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    move-result-object v3

    .line 100
    instance-of v8, v3, Ljava/lang/String;

    .line 102
    if-eqz v8, :cond_1

    .line 104
    sget-object v8, Lcom/autonavi/amapauto/user/PushServiceReceiver;->a:Ljava/lang/String;

    .line 106
    new-instance v9, Ljava/lang/StringBuilder;

    .line 108
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    const-string v10, "String Extra: "

    .line 113
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v2, " = "

    .line 121
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object v2

    .line 131
    new-array v3, v0, [Ljava/lang/Object;

    .line 133
    invoke-static {v8, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    goto :goto_0

    .line 137
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 140
    move-result p1

    .line 141
    if-nez p1, :cond_3

    .line 143
    invoke-static {}, Lf30;->A()Ljava/lang/String;

    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    move-result p1

    .line 151
    if-nez p1, :cond_3

    .line 153
    sget-object p1, Lcom/autonavi/amapauto/user/PushServiceReceiver;->a:Ljava/lang/String;

    .line 155
    const-string p2, "userId not equal NetworkParam.getUid"

    .line 157
    new-array v0, v0, [Ljava/lang/Object;

    .line 159
    invoke-static {p1, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    return-void

    .line 163
    :cond_3
    sget-object p1, Lcom/autonavi/amapauto/user/PushServiceReceiver;->a:Ljava/lang/String;

    .line 165
    const/4 p2, 0x5

    .line 166
    new-array p2, p2, [Ljava/lang/Object;

    .line 168
    aput-object v5, p2, v0

    .line 170
    const/4 v8, 0x1

    .line 171
    aput-object v4, p2, v8

    .line 173
    const/4 v2, 0x2

    .line 174
    aput-object v6, p2, v2

    .line 176
    const/4 v2, 0x3

    .line 177
    aput-object v7, p2, v2

    .line 179
    const/4 v2, 0x4

    .line 180
    aput-object v1, p2, v2

    .line 182
    const-string v1, "message:{?};title:{?};messageId:{?};actionUri:{?};userId:{?}"

    .line 184
    invoke-static {p1, v1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    :try_start_0
    const-string p2, "PushServiceReceiver success"

    .line 189
    new-array v1, v0, [Ljava/lang/Object;

    .line 191
    invoke-static {p1, p2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    invoke-static {}, Lse;->c()Lse;

    .line 197
    move-result-object v2

    .line 198
    invoke-static {}, Lrv;->H()Lrv;

    .line 201
    move-result-object p1

    .line 202
    invoke-virtual {p1}, Lrv;->z()Landroid/content/Context;

    .line 205
    move-result-object v3

    .line 206
    invoke-virtual/range {v2 .. v7}, Lse;->sendNotifcation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    goto :goto_1

    .line 210
    :catch_0
    move-exception p1

    .line 211
    sget-object p2, Lcom/autonavi/amapauto/user/PushServiceReceiver;->a:Ljava/lang/String;

    .line 213
    new-array v1, v8, [Ljava/lang/Object;

    .line 215
    aput-object p1, v1, v0

    .line 217
    const-string p1, "StartupReceiver startService catch Exception e = {?}."

    .line 219
    invoke-static {p2, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    :cond_4
    :goto_1
    return-void
.end method
