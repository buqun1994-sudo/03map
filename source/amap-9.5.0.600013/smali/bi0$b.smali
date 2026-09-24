.class public Lbi0$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbi0;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lbi0;


# direct methods
.method public constructor <init>(Lbi0;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbi0$b;->a:Lbi0;

    .line 3
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 4
    :goto_0
    sget-boolean v0, Lbi0;->h:Z

    .line 6
    const/4 v1, 0x0

    .line 7
    const-string v2, "TtsServiceAgent"

    .line 9
    if-eqz v0, :cond_0

    .line 11
    const-string v0, "connect success"

    .line 13
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    sput-boolean v1, Lbi0;->j:Z

    .line 18
    return-void

    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 20
    sput-boolean v0, Lbi0;->j:Z

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    const-string v3, "isConnected == false, threadId = "

    .line 26
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    .line 36
    move-result-wide v3

    .line 37
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    sget-boolean v0, Lbi0;->k:Z

    .line 49
    if-eqz v0, :cond_1

    .line 51
    const-string v0, "tts aidl is binding... waiting 300ms"

    .line 53
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-wide/16 v0, 0x12c

    .line 58
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    iget-object v0, p0, Lbi0$b;->a:Lbi0;

    .line 69
    invoke-static {v0}, Lbi0;->f(Lbi0;)Landroid/content/Context;

    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_2

    .line 75
    iget-object v0, p0, Lbi0$b;->a:Lbi0;

    .line 77
    invoke-static {v0}, Lbi0;->i(Lbi0;)Landroid/content/ServiceConnection;

    .line 80
    move-result-object v0

    .line 81
    if-eqz v0, :cond_2

    .line 83
    sget-boolean v0, Lbi0;->i:Z

    .line 85
    if-eqz v0, :cond_2

    .line 87
    const-string v0, "unbindService"

    .line 89
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lbi0$b;->a:Lbi0;

    .line 94
    invoke-static {v0}, Lbi0;->f(Lbi0;)Landroid/content/Context;

    .line 97
    move-result-object v0

    .line 98
    iget-object v3, p0, Lbi0$b;->a:Lbi0;

    .line 100
    invoke-static {v3}, Lbi0;->i(Lbi0;)Landroid/content/ServiceConnection;

    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 107
    sput-boolean v1, Lbi0;->i:Z

    .line 109
    :cond_2
    iget-object v0, p0, Lbi0$b;->a:Lbi0;

    .line 111
    const/4 v3, 0x0

    .line 112
    invoke-static {v0, v3}, Lbi0;->b(Lbi0;Lst;)V

    .line 115
    iget-object v0, p0, Lbi0$b;->a:Lbi0;

    .line 117
    invoke-static {v0, v3}, Lbi0;->a(Lbi0;Lci0;)V

    .line 120
    sput-boolean v1, Lbi0;->h:Z

    .line 122
    const-string v0, "start bind service..."

    .line 124
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lbi0$b;->a:Lbi0;

    .line 129
    invoke-static {v0}, Lbi0;->e(Lbi0;)Ltt;

    .line 132
    move-result-object v1

    .line 133
    iget-object v3, p0, Lbi0$b;->a:Lbi0;

    .line 135
    invoke-static {v3}, Lbi0;->f(Lbi0;)Landroid/content/Context;

    .line 138
    move-result-object v3

    .line 139
    iget-object v4, p0, Lbi0$b;->a:Lbi0;

    .line 141
    invoke-static {v4}, Lbi0;->h(Lbi0;)I

    .line 144
    move-result v4

    .line 145
    invoke-virtual {v0, v1, v3, v4}, Lbi0;->l(Ltt;Landroid/content/Context;I)Z

    .line 148
    const-string v0, "----->check connection status in 5s..."

    .line 150
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-wide/16 v0, 0x1388

    .line 155
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 158
    goto/16 :goto_0

    .line 160
    :catch_1
    move-exception v0

    .line 161
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 164
    goto/16 :goto_0
.end method
