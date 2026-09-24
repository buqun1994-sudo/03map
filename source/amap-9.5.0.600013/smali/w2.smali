.class public Lw2;
.super Lqc;
.source "SourceFile"


# direct methods
.method public constructor <init>([B[Ljava/io/File;Lbr;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lqc;-><init>([B[Ljava/io/File;Lbr;)V

    .line 4
    return-void
.end method


# virtual methods
.method public i()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lqc;->f()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-string v0, "upload file param error"

    .line 9
    invoke-static {v0}, Lbz;->d(Ljava/lang/String;)V

    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lqc;->c:Lbr;

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-interface {v0, v1}, Lbr;->a0(Ljava/io/File;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 26
    return-void

    .line 27
    :cond_1
    new-instance v1, Lsp;

    .line 29
    invoke-direct {v1}, Lsp;-><init>()V

    .line 32
    iget-object v2, p0, Lqc;->a:[B

    .line 34
    invoke-virtual {v1, v0, v2, p0}, Lsp;->b(Ljava/lang/String;[BLrp;)V

    .line 37
    return-void
.end method
