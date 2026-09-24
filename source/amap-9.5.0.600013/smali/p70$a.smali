.class public Lp70$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp70;


# direct methods
.method public constructor <init>(Lp70;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp70$a;->a:Lp70;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "[ALSimulate] ProtocolAidlControl"

    .line 6
    const-string v3, "binderDied"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v1, p0, Lp70$a;->a:Lp70;

    .line 13
    invoke-static {v1}, Lp70;->a(Lp70;)Lvs;

    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_0

    .line 19
    iget-object v0, p0, Lp70$a;->a:Lp70;

    .line 21
    invoke-virtual {v0}, Lp70;->n()Z

    .line 24
    return-void

    .line 25
    :cond_0
    iget-object v1, p0, Lp70$a;->a:Lp70;

    .line 27
    invoke-static {v1}, Lp70;->a(Lp70;)Lvs;

    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 34
    move-result-object v1

    .line 35
    iget-object v2, p0, Lp70$a;->a:Lp70;

    .line 37
    invoke-static {v2}, Lp70;->c(Lp70;)Landroid/os/IBinder$DeathRecipient;

    .line 40
    move-result-object v2

    .line 41
    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 44
    iget-object v0, p0, Lp70$a;->a:Lp70;

    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-static {v0, v1}, Lp70;->b(Lp70;Lvs;)Lvs;

    .line 50
    iget-object v0, p0, Lp70$a;->a:Lp70;

    .line 52
    invoke-virtual {v0}, Lp70;->n()Z

    .line 55
    return-void
.end method
