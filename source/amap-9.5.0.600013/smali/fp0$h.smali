.class public Lfp0$h;
.super Lxq0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfp0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lxq0;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public f(Lou0;)V
    .locals 2

    .line 1
    iget v0, p0, Lfp0$h;->a:I

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v1, v0}, Lou0;->s(II)V

    .line 9
    :cond_0
    iget v0, p0, Lfp0$h;->b:I

    .line 11
    if-eqz v0, :cond_1

    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-virtual {p1, v1, v0}, Lou0;->s(II)V

    .line 17
    :cond_1
    iget v0, p0, Lfp0$h;->c:I

    .line 19
    if-eqz v0, :cond_2

    .line 21
    const/4 v1, 0x3

    .line 22
    invoke-virtual {p1, v1, v0}, Lou0;->s(II)V

    .line 25
    :cond_2
    iget v0, p0, Lfp0$h;->d:I

    .line 27
    if-eqz v0, :cond_3

    .line 29
    const/4 v1, 0x4

    .line 30
    invoke-virtual {p1, v1, v0}, Lou0;->s(II)V

    .line 33
    :cond_3
    return-void
.end method
