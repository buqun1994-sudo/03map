.class public Lcj;
.super Lt;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Laj;

.field public c:Z

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lt;-><init>()V

    .line 4
    const-string v0, "apply_version"

    .line 6
    iput-object v0, p0, Lcj;->d:Ljava/lang/String;

    .line 8
    new-instance v0, Laj;

    .line 10
    invoke-direct {v0}, Laj;-><init>()V

    .line 13
    iput-object v0, p0, Lcj;->b:Laj;

    .line 15
    return-void
.end method


# virtual methods
.method public a(Lva;)I
    .locals 0

    .line 1
    iget-object p1, p0, Lcj;->a:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Lo50;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 6
    iget-boolean p1, p0, Lcj;->c:Z

    .line 8
    xor-int/lit8 p1, p1, 0x1

    .line 10
    return p1
.end method

.method public b(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 1

    .line 1
    iput-object p1, p0, Lcj;->a:Landroid/content/Context;

    .line 3
    iget-object v0, p0, Lcj;->b:Laj;

    .line 5
    invoke-virtual {v0, p1}, Laj;->b(Landroid/content/Context;)V

    .line 8
    const/4 p1, 0x0

    .line 9
    if-eqz p2, :cond_0

    .line 11
    const-string v0, "apply_version"

    .line 13
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 16
    move-result p2

    .line 17
    iput-boolean p2, p0, Lcj;->c:Z

    .line 19
    :cond_0
    return p1
.end method
