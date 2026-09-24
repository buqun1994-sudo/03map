.class public Loj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    .line 6
    iput-object v0, p0, Loj;->a:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Loj;->b:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Loj;->c:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Loj;->d:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Loj;->e:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Loj;->f:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Loj;->g:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public a(Loj;)V
    .locals 1

    .line 1
    iget-object v0, p1, Loj;->a:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Loj;->a:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Loj;->b:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Loj;->b:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Loj;->c:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Loj;->c:Ljava/lang/String;

    .line 13
    iget-object v0, p1, Loj;->d:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Loj;->d:Ljava/lang/String;

    .line 17
    iget-object v0, p1, Loj;->e:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Loj;->e:Ljava/lang/String;

    .line 21
    iget-object v0, p1, Loj;->f:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Loj;->f:Ljava/lang/String;

    .line 25
    iget-object p1, p1, Loj;->g:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Loj;->g:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Loj;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Loj;->b:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Loj;->c:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object v1, p0, Loj;->d:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method
