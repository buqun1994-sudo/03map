.class public Ls7$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls7;->s(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ls7;


# direct methods
.method public constructor <init>(Ls7;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls7$b;->b:Ls7;

    .line 3
    iput-boolean p2, p0, Ls7$b;->a:Z

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Ls7$b;->b:Ls7;

    .line 3
    invoke-static {v0}, Ls7;->a(Ls7;)Ljava/text/SimpleDateFormat;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    move-result-wide v1

    .line 11
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    const-string v2, "timestamp:"

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    const/4 v2, 0x0

    .line 37
    new-array v3, v2, [Ljava/lang/Object;

    .line 39
    const-string v4, "isstts"

    .line 41
    const-string v5, "AutoIssttsManager"

    .line 43
    const/4 v6, 0x0

    .line 44
    invoke-static {v4, v5, v1, v6, v3}, Lcz;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 47
    iget-boolean v1, p0, Ls7$b;->a:Z

    .line 49
    if-eqz v1, :cond_0

    .line 51
    const-wide/16 v3, 0x3e8

    .line 53
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception v1

    .line 58
    const-string v3, "InterruptedException ="

    .line 60
    new-array v2, v2, [Ljava/lang/Object;

    .line 62
    invoke-static {v5, v3, v1, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 65
    :goto_0
    iget-object v1, p0, Ls7$b;->b:Ls7;

    .line 67
    invoke-static {v1, v0}, Ls7;->c(Ls7;Ljava/lang/String;)Z

    .line 70
    goto :goto_1

    .line 71
    :cond_0
    iget-object v1, p0, Ls7$b;->b:Ls7;

    .line 73
    invoke-static {v1, v0}, Ls7;->c(Ls7;Ljava/lang/String;)Z

    .line 76
    :goto_1
    return-void
.end method
