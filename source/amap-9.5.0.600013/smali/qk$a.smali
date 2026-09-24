.class public Lqk$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqk;->b(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/view/Window;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lqk;


# direct methods
.method public constructor <init>(Lqk;ILandroid/view/View;Landroid/view/Window;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqk$a;->f:Lqk;

    .line 3
    iput p2, p0, Lqk$a;->a:I

    .line 5
    iput-object p3, p0, Lqk$a;->b:Landroid/view/View;

    .line 7
    iput-object p4, p0, Lqk$a;->c:Landroid/view/Window;

    .line 9
    iput-object p5, p0, Lqk$a;->d:Ljava/lang/String;

    .line 11
    iput-object p6, p0, Lqk$a;->e:Ljava/lang/String;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "onSystemUiVisibilityChange: visibility=0x{?}"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    new-array v2, v1, [Ljava/lang/Object;

    .line 25
    const-string v3, "DysmorphismImmerse"

    .line 27
    invoke-static {v3, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    and-int/lit8 p1, p1, 0x4

    .line 32
    if-nez p1, :cond_1

    .line 34
    iget p1, p0, Lqk$a;->a:I

    .line 36
    const/4 v0, -0x1

    .line 37
    if-eq v0, p1, :cond_0

    .line 39
    iget-object v0, p0, Lqk$a;->b:Landroid/view/View;

    .line 41
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 44
    :cond_0
    const/4 p1, 0x1

    .line 45
    new-array p1, p1, [Ljava/lang/Object;

    .line 47
    iget v0, p0, Lqk$a;->a:I

    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object v0

    .line 53
    aput-object v0, p1, v1

    .line 55
    const-string v0, "onSystemUiVisibilityChange uiFlags = {?}"

    .line 57
    invoke-static {v3, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    iget-object p1, p0, Lqk$a;->f:Lqk;

    .line 62
    iget-object v0, p0, Lqk$a;->c:Landroid/view/Window;

    .line 64
    iget-object v1, p0, Lqk$a;->d:Ljava/lang/String;

    .line 66
    iget-object v2, p0, Lqk$a;->e:Ljava/lang/String;

    .line 68
    invoke-static {p1, v0, v1, v2}, Lqk;->a(Lqk;Landroid/view/Window;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_1
    return-void
.end method
