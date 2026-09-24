.class public Lbc$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbc;->setSystemUiLightMode(IZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:I

.field public final synthetic d:Landroid/view/Window;

.field public final synthetic e:Lbc;


# direct methods
.method public constructor <init>(Lbc;IZILandroid/view/Window;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbc$a;->e:Lbc;

    .line 3
    iput p2, p0, Lbc$a;->a:I

    .line 5
    iput-boolean p3, p0, Lbc$a;->b:Z

    .line 7
    iput p4, p0, Lbc$a;->c:I

    .line 9
    iput-object p5, p0, Lbc$a;->d:Landroid/view/Window;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lbc$a;->e:Lbc;

    .line 6
    iget-object v1, v1, Lbc;->mMainActivity:Landroid/app/Activity;

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v1, v0, v2

    .line 11
    iget v1, p0, Lbc$a;->a:I

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x1

    .line 18
    aput-object v1, v0, v2

    .line 20
    iget-boolean v1, p0, Lbc$a;->b:Z

    .line 22
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x2

    .line 27
    aput-object v1, v0, v2

    .line 29
    iget v1, p0, Lbc$a;->c:I

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    const/4 v2, 0x3

    .line 36
    aput-object v1, v0, v2

    .line 38
    const-string v1, "BaseAssembleDelegateImpl"

    .line 40
    const-string v2, "setSystemUiLightMode, activity={?}, uiType={?}, isLight={?}, flag=0x{?}"

    .line 42
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lbc$a;->d:Landroid/view/Window;

    .line 47
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 50
    move-result-object v0

    .line 51
    iget v1, p0, Lbc$a;->c:I

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 56
    return-void
.end method
