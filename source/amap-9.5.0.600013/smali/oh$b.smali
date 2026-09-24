.class public Loh$b;
.super Lmh$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Loh;


# direct methods
.method public constructor <init>(Loh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loh$b;->a:Loh;

    .line 3
    invoke-direct {p0}, Lmh$a;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public L0(ZI)V
    .locals 3

    .line 1
    invoke-static {}, Loh;->a()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    const-string v2, "custom mvw onVwInited errId is "

    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object v0, p0, Loh$b;->a:Loh;

    .line 24
    invoke-static {v0}, Loh;->g(Loh;)Ldr;

    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Loh$b;->a:Loh;

    .line 32
    invoke-static {v0}, Loh;->g(Loh;)Ldr;

    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v0, p1, p2}, Ldr;->a(ZI)V

    .line 39
    :cond_0
    return-void
.end method

.method public W0(II)V
    .locals 3

    .line 1
    invoke-static {}, Loh;->a()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    const-string v2, "custom mvw wakeup:mvwId is "

    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    const-string v2, "; nMvwScore is "

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v0, p0, Loh$b;->a:Loh;

    .line 32
    invoke-static {v0}, Loh;->g(Loh;)Ldr;

    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Loh$b;->a:Loh;

    .line 40
    invoke-static {v0}, Loh;->g(Loh;)Ldr;

    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0, p1, p2}, Ldr;->c(II)V

    .line 47
    :cond_0
    return-void
.end method
