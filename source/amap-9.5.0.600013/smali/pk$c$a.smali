.class public Lpk$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpk$c;->g(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/Window;

.field public final synthetic b:Lpk$c;


# direct methods
.method public constructor <init>(Lpk$c;Landroid/view/Window;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpk$c$a;->b:Lpk$c;

    .line 3
    iput-object p2, p0, Lpk$c$a;->a:Landroid/view/Window;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "DysmorphismAdapterFuncRepository"

    .line 6
    const-string v3, "setImmersiveMode"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v1, p0, Lpk$c$a;->a:Landroid/view/Window;

    .line 13
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    .line 20
    move-result v1

    .line 21
    or-int/lit8 v1, v1, 0x1

    .line 23
    or-int/lit16 v1, v1, 0x400

    .line 25
    or-int/lit16 v1, v1, 0x100

    .line 27
    or-int/lit16 v1, v1, 0x1000

    .line 29
    or-int/lit16 v1, v1, 0x200

    .line 31
    iget-object v2, p0, Lpk$c$a;->a:Landroid/view/Window;

    .line 33
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 40
    iget-object v1, p0, Lpk$c$a;->a:Landroid/view/Window;

    .line 42
    const/high16 v2, 0xc000000

    .line 44
    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 47
    iget-object v1, p0, Lpk$c$a;->a:Landroid/view/Window;

    .line 49
    const/high16 v2, -0x80000000

    .line 51
    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 54
    iget-object v1, p0, Lpk$c$a;->a:Landroid/view/Window;

    .line 56
    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 59
    iget-object v1, p0, Lpk$c$a;->a:Landroid/view/Window;

    .line 61
    invoke-virtual {v1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 64
    return-void
.end method
