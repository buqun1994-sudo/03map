.class public Lhz;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;


# instance fields
.field public d:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 4
    iput-boolean p1, p0, Lhz;->d:Z

    .line 6
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
    const/16 v2, 0x2fac

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    iget-boolean v1, p0, Lhz;->d:Z

    .line 15
    xor-int/lit8 v1, v1, 0x1

    .line 17
    const-string v2, "AUTO_LOGOUT_RESULT"

    .line 19
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 22
    return-object v0
.end method
