.class public Lgy;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;


# instance fields
.field public d:I

.field public e:D

.field public f:D


# direct methods
.method public constructor <init>(IDD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 4
    iput p1, p0, Lgy;->d:I

    .line 6
    iput-wide p2, p0, Lgy;->f:D

    .line 8
    iput-wide p4, p0, Lgy;->e:D

    .line 10
    return-void
.end method


# virtual methods
.method public c()Landroid/content/Intent;
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    const-string v1, "KEY_TYPE"

    .line 8
    const/16 v2, 0x32cb

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    const-string v1, "EXTRA_LATLONG_TYPE"

    .line 15
    iget v2, p0, Lgy;->d:I

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    const-string v1, "EXTRA_LATITUDE_VALUE"

    .line 22
    iget-wide v2, p0, Lgy;->f:D

    .line 24
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 27
    const-string v1, "EXTRA_LONGITUDE_VALUE"

    .line 29
    iget-wide v2, p0, Lgy;->e:D

    .line 31
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 34
    return-object v0
.end method
