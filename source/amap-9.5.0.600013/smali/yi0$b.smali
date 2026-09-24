.class public Lyi0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyi0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyi0;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lyi0;


# direct methods
.method public constructor <init>(Lyi0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyi0$b;->a:Lyi0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    const-string v0, "onUpload"

    .line 3
    invoke-static {v0}, Lbz;->a(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lyi0$b;->a:Lyi0;

    .line 8
    invoke-static {v0}, Lyi0;->a(Lyi0;)Lbr;

    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lbr;->s()V

    .line 15
    new-instance v0, Lxi0;

    .line 17
    iget-object v1, p0, Lyi0$b;->a:Lyi0;

    .line 19
    invoke-static {v1}, Lyi0;->a(Lyi0;)Lbr;

    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v1}, Lbr;->f()Ljava/io/File;

    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, v1}, Lxi0;-><init>(Ljava/io/File;)V

    .line 30
    invoke-virtual {v0}, Lxi0;->b()[Ljava/io/File;

    .line 33
    move-result-object v1

    .line 34
    :goto_0
    invoke-static {v1}, Llj0;->m([Ljava/lang/Object;)Z

    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_1

    .line 40
    const-string v1, "begin realUploadCrash"

    .line 42
    invoke-static {v1}, Lbz;->a(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lyi0$b;->a:Lyi0;

    .line 47
    invoke-static {v1}, Lyi0;->b(Lyi0;)Z

    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_0

    .line 53
    const-string v0, "realUploadCrash error, break uploadAllCrash"

    .line 55
    invoke-static {v0}, Lbz;->a(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lyi0$b;->a:Lyi0;

    .line 60
    invoke-static {v0}, Lyi0;->a(Lyi0;)Lbr;

    .line 63
    move-result-object v0

    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-interface {v0, v1}, Lbr;->p(Z)V

    .line 68
    return-void

    .line 69
    :cond_0
    invoke-virtual {v0}, Lxi0;->b()[Ljava/io/File;

    .line 72
    move-result-object v1

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lyi0$b;->a:Lyi0;

    .line 76
    invoke-static {v0}, Lyi0;->a(Lyi0;)Lbr;

    .line 79
    move-result-object v0

    .line 80
    const/4 v1, 0x1

    .line 81
    invoke-interface {v0, v1}, Lbr;->p(Z)V

    .line 84
    return-void
.end method
