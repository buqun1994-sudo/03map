.class public Ln50;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;


# instance fields
.field public d:Ljava/lang/String;

.field public e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 4
    iput-object p1, p0, Ln50;->d:Ljava/lang/String;

    .line 6
    iput p2, p0, Ln50;->e:I

    .line 8
    return-void
.end method


# virtual methods
.method public c()Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    const-string v1, "KEY_TYPE"

    .line 8
    const/16 v2, 0x32eb

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    const-string v1, "EXTRA_NAVI_VIA_PASS_INFO"

    .line 15
    iget-object v2, p0, Ln50;->d:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    const-string v1, "EXTRA_NAVI_VIA_PASS_CONTROL"

    .line 22
    iget v2, p0, Ln50;->e:I

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 27
    return-object v0
.end method
