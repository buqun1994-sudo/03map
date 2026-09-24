.class public Lcom/autonavi/common/tool/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/common/tool/d;->d(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Throwable;

.field public final synthetic b:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/Thread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/common/tool/d$a;->a:Ljava/lang/Throwable;

    .line 3
    iput-object p2, p0, Lcom/autonavi/common/tool/d$a;->b:Ljava/lang/Thread;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/autonavi/common/tool/d$a;->a:Ljava/lang/Throwable;

    .line 4
    invoke-static {v1}, Llj0;->a(Ljava/lang/Throwable;)Z

    .line 7
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 8
    if-nez v1, :cond_2

    .line 10
    :try_start_1
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Lbr;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 22
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/autonavi/common/tool/d$a;->b:Ljava/lang/Thread;

    .line 28
    iget-object v3, p0, Lcom/autonavi/common/tool/d$a;->a:Ljava/lang/Throwable;

    .line 30
    invoke-interface {v1, v2, v3, v0}, Lbr;->g0(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;)Z

    .line 33
    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 34
    if-nez v1, :cond_2

    .line 36
    :try_start_4
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 39
    move-result-object v1

    .line 40
    invoke-interface {v1}, Lbr;->z()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 43
    invoke-static {v0}, Lcom/autonavi/common/tool/d;->a(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 46
    iget-object v0, p0, Lcom/autonavi/common/tool/d$a;->a:Ljava/lang/Throwable;

    .line 48
    invoke-static {v0}, Llj0;->a(Ljava/lang/Throwable;)Z

    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_1

    .line 54
    :try_start_5
    sget-object v0, Lcom/autonavi/common/tool/d;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 56
    if-eqz v0, :cond_0

    .line 58
    iget-object v1, p0, Lcom/autonavi/common/tool/d$a;->b:Ljava/lang/Thread;

    .line 60
    iget-object v2, p0, Lcom/autonavi/common/tool/d$a;->a:Ljava/lang/Throwable;

    .line 62
    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 65
    :catch_0
    :cond_0
    invoke-static {}, Llj0;->e()V

    .line 68
    :cond_1
    return-void

    .line 69
    :catchall_1
    move-exception v1

    .line 70
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    :cond_2
    iget-object v1, p0, Lcom/autonavi/common/tool/d$a;->a:Ljava/lang/Throwable;

    .line 75
    invoke-static {v1}, Lxf0;->t(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 78
    move-result-object v3

    .line 79
    invoke-static {}, Lbh;->s()Lbh;

    .line 82
    move-result-object v2

    .line 83
    iget-object v4, p0, Lcom/autonavi/common/tool/d$a;->a:Ljava/lang/Throwable;

    .line 85
    const/4 v5, 0x0

    .line 86
    const/4 v6, 0x0

    .line 87
    iget-object v7, p0, Lcom/autonavi/common/tool/d$a;->b:Ljava/lang/Thread;

    .line 89
    const/4 v8, 0x0

    .line 90
    const/4 v9, 0x1

    .line 91
    invoke-virtual/range {v2 .. v9}, Lbh;->N(Ljava/lang/String;Ljava/lang/Throwable;ZLbh$e;Ljava/lang/Thread;ZZ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 94
    :try_start_7
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 97
    move-result-object v1

    .line 98
    invoke-interface {v1}, Lbr;->z()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 101
    invoke-static {v0}, Lcom/autonavi/common/tool/d;->a(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 104
    iget-object v0, p0, Lcom/autonavi/common/tool/d$a;->a:Ljava/lang/Throwable;

    .line 106
    invoke-static {v0}, Llj0;->a(Ljava/lang/Throwable;)Z

    .line 109
    move-result v0

    .line 110
    if-nez v0, :cond_4

    .line 112
    :try_start_8
    sget-object v0, Lcom/autonavi/common/tool/d;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 114
    if-eqz v0, :cond_3

    .line 116
    iget-object v1, p0, Lcom/autonavi/common/tool/d$a;->b:Ljava/lang/Thread;

    .line 118
    iget-object v2, p0, Lcom/autonavi/common/tool/d$a;->a:Ljava/lang/Throwable;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 120
    goto :goto_1

    .line 121
    :catchall_2
    move-exception v1

    .line 122
    :try_start_9
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 125
    move-result-object v2

    .line 126
    invoke-interface {v2}, Lbr;->z()V

    .line 129
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 130
    :catchall_3
    nop

    .line 131
    invoke-static {v0}, Lcom/autonavi/common/tool/d;->a(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 134
    iget-object v0, p0, Lcom/autonavi/common/tool/d$a;->a:Ljava/lang/Throwable;

    .line 136
    invoke-static {v0}, Llj0;->a(Ljava/lang/Throwable;)Z

    .line 139
    move-result v0

    .line 140
    if-nez v0, :cond_4

    .line 142
    :try_start_a
    sget-object v0, Lcom/autonavi/common/tool/d;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 144
    if-eqz v0, :cond_3

    .line 146
    iget-object v1, p0, Lcom/autonavi/common/tool/d$a;->b:Ljava/lang/Thread;

    .line 148
    iget-object v2, p0, Lcom/autonavi/common/tool/d$a;->a:Ljava/lang/Throwable;

    .line 150
    :goto_1
    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 153
    :catch_1
    :cond_3
    invoke-static {}, Llj0;->e()V

    .line 156
    :cond_4
    return-void
.end method
