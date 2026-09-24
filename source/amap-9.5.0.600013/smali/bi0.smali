.class public Lbi0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static h:Z

.field public static i:Z

.field public static j:Z

.field public static k:Z

.field public static l:Lbi0;


# instance fields
.field public a:I

.field public b:Landroid/content/Context;

.field public c:Ltt;

.field public d:Lci0;

.field public e:Ljava/lang/String;

.field public f:Lst;

.field public g:Landroid/content/ServiceConnection;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lbi0;->e:Ljava/lang/String;

    .line 7
    new-instance v0, Lbi0$a;

    .line 9
    invoke-direct {v0, p0}, Lbi0$a;-><init>(Lbi0;)V

    .line 12
    iput-object v0, p0, Lbi0;->g:Landroid/content/ServiceConnection;

    .line 14
    return-void
.end method

.method public static synthetic a(Lbi0;Lci0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbi0;->d:Lci0;

    .line 3
    return-void
.end method

.method public static synthetic b(Lbi0;Lst;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbi0;->f:Lst;

    .line 3
    return-void
.end method

.method public static synthetic c(Lbi0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lbi0;->n()V

    .line 4
    return-void
.end method

.method public static synthetic d(Lbi0;)Lst;
    .locals 0

    .line 1
    iget-object p0, p0, Lbi0;->f:Lst;

    .line 3
    return-object p0
.end method

.method public static synthetic e(Lbi0;)Ltt;
    .locals 0

    .line 1
    iget-object p0, p0, Lbi0;->c:Ltt;

    .line 3
    return-object p0
.end method

.method public static synthetic f(Lbi0;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lbi0;->b:Landroid/content/Context;

    .line 3
    return-object p0
.end method

.method public static synthetic g(Lbi0;)Lci0;
    .locals 0

    .line 1
    iget-object p0, p0, Lbi0;->d:Lci0;

    .line 3
    return-object p0
.end method

.method public static synthetic h(Lbi0;)I
    .locals 0

    .line 1
    iget p0, p0, Lbi0;->a:I

    .line 3
    return p0
.end method

.method public static synthetic i(Lbi0;)Landroid/content/ServiceConnection;
    .locals 0

    .line 1
    iget-object p0, p0, Lbi0;->g:Landroid/content/ServiceConnection;

    .line 3
    return-object p0
.end method

.method public static k()Lbi0;
    .locals 1

    .line 1
    sget-object v0, Lbi0;->l:Lbi0;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lbi0;

    .line 7
    invoke-direct {v0}, Lbi0;-><init>()V

    .line 10
    sput-object v0, Lbi0;->l:Lbi0;

    .line 12
    :cond_0
    sget-object v0, Lbi0;->l:Lbi0;

    .line 14
    return-object v0
.end method


# virtual methods
.method public final j(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4

    .line 1
    iget-object v0, p0, Lbi0;->b:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x1

    .line 19
    if-eq v2, v3, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 28
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 30
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 32
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 34
    new-instance v2, Landroid/content/ComponentName;

    .line 36
    invoke-direct {v2, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v0, Landroid/content/Intent;

    .line 41
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 44
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 47
    return-object v0

    .line 48
    :cond_1
    :goto_0
    const-string p1, "TTS Agent"

    .line 50
    const-string v0, "\u4e0d\u5b58\u5728TTS\u670d\u52a1\uff0c\u6216\u8005\u5b58\u5728\u591a\u4e2aTTS\u670d\u52a1\uff01"

    .line 52
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 p1, 0x0

    .line 56
    return-object p1
.end method

.method public l(Ltt;Landroid/content/Context;I)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "----->initService, streameType = "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    const-string v1, "TtsServiceAgent"

    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    const/4 v0, 0x0

    .line 21
    if-nez p1, :cond_0

    .line 23
    const-string p1, "initService, client == null!"

    .line 25
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return v0

    .line 29
    :cond_0
    if-nez p2, :cond_1

    .line 31
    const-string p1, "initService, context == null!"

    .line 33
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return v0

    .line 37
    :cond_1
    iput-object p1, p0, Lbi0;->c:Ltt;

    .line 39
    iput p3, p0, Lbi0;->a:I

    .line 41
    iput-object p2, p0, Lbi0;->b:Landroid/content/Context;

    .line 43
    invoke-virtual {p0}, Lbi0;->m()Z

    .line 46
    move-result p1

    .line 47
    const/4 p2, 0x1

    .line 48
    if-eqz p1, :cond_2

    .line 50
    const-string p1, "is connected"

    .line 52
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return p2

    .line 56
    :cond_2
    sget-boolean p1, Lbi0;->k:Z

    .line 58
    if-nez p1, :cond_4

    .line 60
    iget-object p1, p0, Lbi0;->d:Lci0;

    .line 62
    if-nez p1, :cond_4

    .line 64
    sput-boolean p2, Lbi0;->k:Z

    .line 66
    new-instance p1, Landroid/content/Intent;

    .line 68
    const-string p3, "com.iflytek.adapter.ttsservice.TtsService"

    .line 70
    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, p1}, Lbi0;->j(Landroid/content/Intent;)Landroid/content/Intent;

    .line 76
    move-result-object p1

    .line 77
    if-nez p1, :cond_3

    .line 79
    const-string p1, "intent == null"

    .line 81
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sput-boolean v0, Lbi0;->k:Z

    .line 86
    return v0

    .line 87
    :cond_3
    iget-object p3, p0, Lbi0;->b:Landroid/content/Context;

    .line 89
    iget-object v2, p0, Lbi0;->g:Landroid/content/ServiceConnection;

    .line 91
    invoke-virtual {p3, p1, v2, p2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 94
    move-result p1

    .line 95
    sput-boolean p1, Lbi0;->i:Z

    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    .line 99
    const-string p2, "bindService: "

    .line 101
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    sget-boolean p2, Lbi0;->i:Z

    .line 106
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object p1

    .line 113
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sget-boolean p1, Lbi0;->i:Z

    .line 118
    if-nez p1, :cond_4

    .line 120
    sput-boolean v0, Lbi0;->k:Z

    .line 122
    invoke-virtual {p0}, Lbi0;->n()V

    .line 125
    :cond_4
    sget-boolean p1, Lbi0;->i:Z

    .line 127
    return p1
.end method

.method public m()Z
    .locals 1

    .line 1
    sget-boolean v0, Lbi0;->h:Z

    .line 3
    return v0
.end method

.method public final n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbi0;->c:Ltt;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Ltt;->n()V

    .line 8
    :cond_0
    sget-boolean v0, Lbi0;->j:Z

    .line 10
    if-eqz v0, :cond_1

    .line 12
    const-string v0, "TtsServiceAgent"

    .line 14
    const-string v1, "aidlCheckThreadRunning = true"

    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-void

    .line 20
    :cond_1
    new-instance v0, Lbi0$b;

    .line 22
    const-string v1, "aidlCheckThread"

    .line 24
    invoke-direct {v0, p0, v1}, Lbi0$b;-><init>(Lbi0;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 30
    return-void
.end method

.method public o()V
    .locals 2

    .line 1
    const-string v0, "TtsServiceAgent"

    .line 3
    const-string v1, "----->speakRetry"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lbi0;->e:Ljava/lang/String;

    .line 10
    if-nez v0, :cond_0

    .line 12
    return-void

    .line 13
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Lbi0;->p(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    :goto_0
    return-void
.end method

.method public p(Ljava/lang/String;)I
    .locals 3

    .line 1
    const-string v0, "----->startSpeak"

    .line 3
    const-string v1, "TtsServiceAgent"

    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lbi0;->d:Lci0;

    .line 10
    if-nez v0, :cond_1

    .line 12
    const-string v0, "startSpeak, mTtsService == null"

    .line 14
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iput-object p1, p0, Lbi0;->e:Ljava/lang/String;

    .line 19
    const/4 p1, 0x0

    .line 20
    sput-boolean p1, Lbi0;->h:Z

    .line 22
    iget-object p1, p0, Lbi0;->c:Ltt;

    .line 24
    if-eqz p1, :cond_0

    .line 26
    iget-object v0, p0, Lbi0;->b:Landroid/content/Context;

    .line 28
    if-eqz v0, :cond_0

    .line 30
    iget v1, p0, Lbi0;->a:I

    .line 32
    invoke-virtual {p0, p1, v0, v1}, Lbi0;->l(Ltt;Landroid/content/Context;I)Z

    .line 35
    :cond_0
    const/16 p1, -0x3ea

    .line 37
    return p1

    .line 38
    :cond_1
    iget-object v2, p0, Lbi0;->f:Lst;

    .line 40
    invoke-interface {v0, v2, p1}, Lci0;->O0(Lst;Ljava/lang/String;)I

    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_2

    .line 46
    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lbi0;->e:Ljava/lang/String;

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/16 v2, 0x2710

    .line 52
    if-eq v0, v2, :cond_4

    .line 54
    const/16 v2, -0x3e9

    .line 56
    if-ne v0, v2, :cond_3

    .line 58
    goto :goto_1

    .line 59
    :cond_3
    iput-object p1, p0, Lbi0;->e:Ljava/lang/String;

    .line 61
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 63
    const-string v2, "startSpeak, errorCode = "

    .line 65
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return v0

    .line 79
    :cond_4
    :goto_1
    const-string v0, "startSpeak fail"

    .line 81
    const-string v1, "Retrying..."

    .line 83
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iput-object p1, p0, Lbi0;->e:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lbi0;->n()V

    .line 91
    const/16 p1, -0x7d0

    .line 93
    return p1
.end method

.method public q()I
    .locals 4

    .line 1
    const-string v0, "----->stopSpeak"

    .line 3
    const-string v1, "TtsServiceAgent"

    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lbi0;->d:Lci0;

    .line 10
    if-nez v0, :cond_1

    .line 12
    const-string v0, "stopSpeak, mTtsService == null"

    .line 14
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    const/4 v0, 0x0

    .line 18
    sput-boolean v0, Lbi0;->h:Z

    .line 20
    iget-object v0, p0, Lbi0;->c:Ltt;

    .line 22
    if-eqz v0, :cond_0

    .line 24
    iget-object v1, p0, Lbi0;->b:Landroid/content/Context;

    .line 26
    if-eqz v1, :cond_0

    .line 28
    iget v2, p0, Lbi0;->a:I

    .line 30
    invoke-virtual {p0, v0, v1, v2}, Lbi0;->l(Ltt;Landroid/content/Context;I)Z

    .line 33
    :cond_0
    const/16 v0, -0x3ea

    .line 35
    return v0

    .line 36
    :cond_1
    iget-object v2, p0, Lbi0;->f:Lst;

    .line 38
    invoke-interface {v0, v2}, Lci0;->S0(Lst;)I

    .line 41
    move-result v0

    .line 42
    const/16 v2, 0x2710

    .line 44
    if-eq v0, v2, :cond_3

    .line 46
    const/16 v2, -0x3e9

    .line 48
    if-ne v0, v2, :cond_2

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    const-string v3, "stopSpeak, errorCode = "

    .line 55
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v2

    .line 65
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return v0

    .line 69
    :cond_3
    :goto_0
    const-string v0, "stopSpeak fail"

    .line 71
    const-string v1, "Retrying..."

    .line 73
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p0}, Lbi0;->n()V

    .line 79
    const/16 v0, -0x7d0

    .line 81
    return v0
.end method
