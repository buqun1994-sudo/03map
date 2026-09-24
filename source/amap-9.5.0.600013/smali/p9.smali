.class public Lp9;
.super Lda;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lda;-><init>()V

    .line 4
    const/16 v0, 0x8c

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, v1, v0, v1}, Lac;->d(IIII)V

    .line 10
    return-void
.end method


# virtual methods
.method public createRealChannelImpl()Leq;
    .locals 0

    .line 1
    return-object p0
.end method
