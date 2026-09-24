.class public Lrv$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrv$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lrv$a$a;


# direct methods
.method public constructor <init>(Lrv$a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrv$a$a$a;->a:Lrv$a$a;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lrv$a$a$a;->a:Lrv$a$a;

    .line 3
    iget-object v0, v0, Lrv$a$a;->b:Lrv$a;

    .line 5
    iget-object v0, v0, Lrv$a;->a:Lrv;

    .line 7
    invoke-static {v0}, Lrv;->k(Lrv;)Lfo;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lrv$a$a$a;->a:Lrv$a$a;

    .line 15
    iget-object v0, v0, Lrv$a$a;->b:Lrv$a;

    .line 17
    iget-object v0, v0, Lrv$a;->a:Lrv;

    .line 19
    invoke-static {v0}, Lrv;->k(Lrv;)Lfo;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lfo;->a()V

    .line 26
    :cond_0
    iget-object v0, p0, Lrv$a$a$a;->a:Lrv$a$a;

    .line 28
    iget-object v0, v0, Lrv$a$a;->b:Lrv$a;

    .line 30
    iget-object v0, v0, Lrv$a;->a:Lrv;

    .line 32
    invoke-static {v0}, Lrv;->i(Lrv;)Loy;

    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lrv$a$a$a;->a:Lrv$a$a;

    .line 40
    iget-object v0, v0, Lrv$a$a;->b:Lrv$a;

    .line 42
    iget-object v0, v0, Lrv$a;->a:Lrv;

    .line 44
    invoke-static {v0}, Lrv;->i(Lrv;)Loy;

    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Loy;->A()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 56
    :cond_1
    :goto_0
    return-void
.end method
