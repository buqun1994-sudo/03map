.class public Lgj;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;


# instance fields
.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 4
    iput p1, p0, Lgj;->d:I

    .line 6
    iput-object p2, p0, Lgj;->e:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lgj;->f:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lgj;->g:Ljava/lang/String;

    .line 12
    iput-object p5, p0, Lgj;->h:Ljava/lang/String;

    .line 14
    iput-object p6, p0, Lgj;->i:Ljava/lang/String;

    .line 16
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
    const/16 v2, 0x32e4

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    const-string v1, "DIALOG_ID"

    .line 15
    iget v2, p0, Lgj;->d:I

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    const-string v1, "DIALOG_TITILE"

    .line 22
    iget-object v2, p0, Lgj;->e:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    const-string v1, "DIALOG_MSG"

    .line 29
    iget-object v2, p0, Lgj;->f:Ljava/lang/String;

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    const-string v1, "DIALOG_LEFT"

    .line 36
    iget-object v2, p0, Lgj;->g:Ljava/lang/String;

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const-string v1, "DIALOG_RIGHT"

    .line 43
    iget-object v2, p0, Lgj;->i:Ljava/lang/String;

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string v1, "DIALOG_MIDDLE"

    .line 50
    iget-object v2, p0, Lgj;->h:Ljava/lang/String;

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    return-object v0
.end method
