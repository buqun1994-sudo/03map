.class public Ll8;
.super Lfi;
.source "SourceFile"


# instance fields
.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfi;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public e()Lfi;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ll8;->f()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 11
    invoke-virtual {p0}, Ll8;->f()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    const-string v1, "972"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 23
    new-instance v0, Ln8;

    .line 25
    invoke-direct {v0}, Ln8;-><init>()V

    .line 28
    invoke-virtual {v0}, Ln8;->e()Lfi;

    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :cond_0
    invoke-virtual {p0}, Ll8;->f()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    const-string v1, "988"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 45
    new-instance v0, Lm8;

    .line 47
    invoke-direct {v0}, Lm8;-><init>()V

    .line 50
    invoke-virtual {v0}, Lm8;->e()Lfi;

    .line 53
    move-result-object v0

    .line 54
    return-object v0

    .line 55
    :cond_1
    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Ll8;->d:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-static {}, Lrv;->H()Lrv;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lrv;->y()Landroid/app/Application;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 20
    move-result-object v0

    .line 21
    const-string v1, "rmt_oper"

    .line 23
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Ll8;->d:Ljava/lang/String;

    .line 29
    :cond_0
    iget-object v0, p0, Ll8;->d:Ljava/lang/String;

    .line 31
    return-object v0
.end method
