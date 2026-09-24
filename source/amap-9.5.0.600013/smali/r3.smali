.class public Lr3;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public a:Lr90;

.field public b:Lp90;


# direct methods
.method public constructor <init>(Lr90;Lp90;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    iput-object p1, p0, Lr3;->a:Lr90;

    .line 6
    iput-object p2, p0, Lr3;->b:Lp90;

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    :goto_0
    iget-object v0, p0, Lr3;->a:Lr90;

    .line 3
    iget-boolean v1, v0, Lr90;->w:Z

    .line 5
    if-nez v1, :cond_4

    .line 7
    iget-object v0, v0, Lr90;->u:Ljava/util/concurrent/locks/Lock;

    .line 9
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 12
    const/4 v0, 0x0

    .line 13
    :try_start_0
    iget-object v1, p0, Lr3;->a:Lr90;

    .line 15
    iget-object v1, v1, Lr90;->v:Ljava/util/concurrent/locks/Condition;

    .line 17
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    goto :goto_1

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_3

    .line 23
    :catch_0
    move-exception v1

    .line 24
    :try_start_1
    const-string v2, "RTPSession"

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    const-string v4, "AppCallerThread:"

    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    new-array v3, v0, [Ljava/lang/Object;

    .line 49
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    :goto_1
    iget-object v1, p0, Lr3;->a:Lr90;

    .line 54
    iget-object v1, v1, Lr90;->p:Ll50;

    .line 56
    invoke-virtual {v1}, Ll50;->e()Ljava/util/Enumeration;

    .line 59
    move-result-object v1

    .line 60
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_3

    .line 66
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Lk50;

    .line 72
    const/4 v3, 0x0

    .line 73
    :goto_2
    if-nez v3, :cond_0

    .line 75
    iget-boolean v4, v2, Lk50;->a:Z

    .line 77
    if-eqz v4, :cond_1

    .line 79
    iget-object v4, p0, Lr3;->a:Lr90;

    .line 81
    iget-boolean v4, v4, Lr90;->m:Z

    .line 83
    if-eqz v4, :cond_0

    .line 85
    :cond_1
    iget-object v4, v2, Lk50;->F:La60;

    .line 87
    if-eqz v4, :cond_0

    .line 89
    iget v5, v4, La60;->d:I

    .line 91
    if-lez v5, :cond_0

    .line 93
    invoke-virtual {v4}, La60;->h()Lth;

    .line 96
    move-result-object v4

    .line 97
    if-nez v4, :cond_2

    .line 99
    const/4 v3, 0x1

    .line 100
    goto :goto_2

    .line 101
    :cond_2
    iget-object v5, p0, Lr3;->b:Lp90;

    .line 103
    invoke-interface {v5, v4, v2}, Lp90;->a(Lth;Lk50;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    goto :goto_2

    .line 107
    :cond_3
    iget-object v0, p0, Lr3;->a:Lr90;

    .line 109
    iget-object v0, v0, Lr90;->u:Ljava/util/concurrent/locks/Lock;

    .line 111
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 114
    goto :goto_0

    .line 115
    :goto_3
    iget-object v1, p0, Lr3;->a:Lr90;

    .line 117
    iget-object v1, v1, Lr90;->u:Ljava/util/concurrent/locks/Lock;

    .line 119
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 122
    throw v0

    .line 123
    :cond_4
    return-void
.end method
