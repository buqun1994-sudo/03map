.class public abstract Lr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkt;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lsa;

.field public e:Ljava/util/List;

.field public f:Z

.field public g:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "ProtocolAssert"

    .line 6
    iput-object v0, p0, Lr;->b:Ljava/lang/String;

    .line 8
    new-instance v0, Lsa;

    .line 10
    invoke-direct {v0}, Lsa;-><init>()V

    .line 13
    iput-object v0, p0, Lr;->d:Lsa;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    iput-object v0, p0, Lr;->e:Ljava/util/List;

    .line 22
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lr;->f:Z

    .line 25
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 27
    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 29
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 32
    iput-object v0, p0, Lr;->g:Ljava/text/SimpleDateFormat;

    .line 34
    iput-boolean p1, p0, Lr;->f:Z

    .line 36
    if-eqz p1, :cond_0

    .line 38
    const-string p1, "[ALSimulate][Assert] "

    .line 40
    iput-object p1, p0, Lr;->a:Ljava/lang/String;

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-string p1, "[ALNormalAssert] "

    .line 45
    iput-object p1, p0, Lr;->a:Ljava/lang/String;

    .line 47
    :goto_0
    invoke-virtual {p0}, Lr;->c()V

    .line 50
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 1

    .line 1
    new-instance v0, Lr$a;

    .line 3
    invoke-direct {v0, p0}, Lr$a;-><init>(Lr;)V

    .line 6
    invoke-static {v0}, Lbg0;->b(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lr;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lr;->b:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lr;->c:Ljava/lang/String;

    .line 22
    return-void
.end method
