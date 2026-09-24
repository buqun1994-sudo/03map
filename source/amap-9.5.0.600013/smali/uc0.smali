.class public Luc0;
.super Lnc;
.source "SourceFile"


# instance fields
.field public final k:Ljava/lang/String;

.field public l:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    const-string v0, "Send2CarAction"

    .line 6
    iput-object v0, p0, Luc0;->k:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Luc0;->l:Landroid/net/Uri;

    .line 10
    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Luc0;->l:Landroid/net/Uri;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    aput-object v0, v1, v2

    .line 15
    const-string v0, "Send2CarAction"

    .line 17
    const-string v2, "doAction uri={?}"

    .line 19
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    iget-object v0, p0, Luc0;->l:Landroid/net/Uri;

    .line 24
    invoke-static {v0}, Lxc0;->a(Landroid/net/Uri;)Lcom/autonavi/amapauto/user/Send2CarMessage;

    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/autonavi/amapauto/user/AndroidUserControl;->setSend2CarMessage(Lcom/autonavi/amapauto/user/Send2CarMessage;)V

    .line 31
    :cond_0
    return-void
.end method
