.class public Ljl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljl$c;
    }
.end annotation


# instance fields
.field public a:Lzq;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    .line 6
    iput-object v0, p0, Ljl;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Ljl;->g()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    invoke-static {}, Lf2;->o()Lf2;

    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Ljl;->a:Lzq;

    .line 20
    new-instance v1, Ljl$a;

    .line 22
    invoke-direct {v1, p0}, Ljl$a;-><init>(Ljl;)V

    .line 25
    invoke-interface {v0, v1}, Lzq;->a(Lzq$a;)V

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Ljl;->f()Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 35
    new-instance v0, Lf2;

    .line 37
    invoke-direct {v0}, Lf2;-><init>()V

    .line 40
    iput-object v0, p0, Ljl;->a:Lzq;

    .line 42
    new-instance v1, Ljl$b;

    .line 44
    invoke-direct {v1, p0}, Ljl$b;-><init>(Ljl;)V

    .line 47
    invoke-interface {v0, v1}, Lzq;->a(Lzq$a;)V

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    new-instance v0, Lhi;

    .line 53
    invoke-direct {v0}, Lhi;-><init>()V

    .line 56
    iput-object v0, p0, Ljl;->a:Lzq;

    .line 58
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    const-string v1, "mConsole"

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v1, p0, Ljl;->a:Lzq;

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    const-string v1, "ExternalConsole"

    .line 79
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method

.method public static synthetic d(Ljl;Lzq;)Lzq;
    .locals 0

    .line 1
    iput-object p1, p0, Ljl;->a:Lzq;

    .line 3
    return-object p1
.end method

.method public static e()Ljl;
    .locals 1

    .line 1
    invoke-static {}, Ljl$c;->a()Ljl;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public a(Lzq$a;)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ljl;->a:Lzq;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    move-object v1, p1

    .line 7
    move-wide v2, p2

    .line 8
    move-object v4, p4

    .line 9
    move-object v5, p5

    .line 10
    invoke-interface/range {v0 .. v5}, Lzq;->b(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public varargs c(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Ljl;->a:Lzq;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    move-object v1, p1

    .line 7
    move-wide v2, p2

    .line 8
    move-object v4, p4

    .line 9
    move-object v5, p5

    .line 10
    move-object v6, p6

    .line 11
    invoke-interface/range {v0 .. v6}, Lzq;->c(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    return-void
.end method

.method public f()Z
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-static {}, Lr50;->i()Ljava/io/File;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    const-string v2, "/amapauto9/cleaner.txt"

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 30
    move-result v0

    .line 31
    return v0
.end method

.method public g()Z
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-static {}, Lr50;->i()Ljava/io/File;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    const-string v2, "/amapauto9/cleanerLogcatEnable.txt"

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 30
    move-result v0

    .line 31
    return v0
.end method
