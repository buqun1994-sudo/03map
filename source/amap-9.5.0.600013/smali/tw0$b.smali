.class public Ltw0$b;
.super Lnp0;
.source "SourceFile"

# interfaces
.implements Ltw0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnp0;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Ltw0$b;->i:Z

    .line 7
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ltw0$b;->i:Z

    .line 3
    return v0
.end method

.method public i()B
    .locals 1

    .line 1
    invoke-super {p0}, Lnp0;->i()B

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public q(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ltw0$b;->i:Z

    .line 3
    return-void
.end method
