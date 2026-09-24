.class public abstract Lip0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lyp0;)Lmq0;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lyp0;->a()Ljava/util/HashMap;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_0

    .line 13
    new-instance v0, Lmq0;

    .line 15
    invoke-direct {v0}, Lmq0;-><init>()V

    .line 18
    invoke-virtual {v0, p0}, Lmq0;->d(Lyp0;)V

    .line 21
    return-object v0

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 24
    const-string v0, "Encrypt key is required"

    .line 26
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p0
.end method
