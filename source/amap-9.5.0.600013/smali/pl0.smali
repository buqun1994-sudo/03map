.class public Lpl0;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;


# instance fields
.field public d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 4
    iput p1, p0, Lpl0;->d:I

    .line 6
    return-void
.end method


# virtual methods
.method public c()Landroid/content/Intent;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget v1, p0, Lpl0;->d:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    const-string v1, "VolumeMuteStateDispatchAction"

    .line 15
    const-string v2, "pareseToIntent triggered | pareseToIntent state : {?}"

    .line 17
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    new-instance v0, Landroid/content/Intent;

    .line 22
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 25
    const-string v1, "KEY_TYPE"

    .line 27
    const/16 v2, 0x32e9

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    const-string v1, "EXTRA_MUTE"

    .line 34
    iget v2, p0, Lpl0;->d:I

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    return-object v0
.end method
