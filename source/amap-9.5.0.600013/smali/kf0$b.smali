.class public Lkf0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkf0;->g(IIIIIILhl$a;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Lhl$a;

.field public final synthetic f:Lkf0;


# direct methods
.method public constructor <init>(Lkf0;IIIILhl$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkf0$b;->f:Lkf0;

    .line 3
    iput p2, p0, Lkf0$b;->a:I

    .line 5
    iput p3, p0, Lkf0$b;->b:I

    .line 7
    iput p4, p0, Lkf0$b;->c:I

    .line 9
    iput p5, p0, Lkf0$b;->d:I

    .line 11
    iput-object p6, p0, Lkf0$b;->e:Lhl$a;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lkf0$b;->f:Lkf0;

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 10
    move-result-object v0

    .line 11
    iget v1, p0, Lkf0$b;->a:I

    .line 13
    const/4 v2, 0x0

    .line 14
    if-gez v1, :cond_0

    .line 16
    const/4 v1, 0x0

    .line 17
    :cond_0
    iget v3, p0, Lkf0$b;->b:I

    .line 19
    if-gez v3, :cond_1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v2, v3

    .line 23
    :goto_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 25
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 27
    iget v3, p0, Lkf0$b;->c:I

    .line 29
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 31
    iget v3, p0, Lkf0$b;->d:I

    .line 33
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 35
    const/16 v3, 0x33

    .line 37
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 39
    iget-object v3, p0, Lkf0$b;->f:Lkf0;

    .line 41
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 48
    iget-object v0, p0, Lkf0$b;->f:Lkf0;

    .line 50
    iput v1, v0, Lkf0;->h:I

    .line 52
    iput v2, v0, Lkf0;->i:I

    .line 54
    iget v1, p0, Lkf0$b;->c:I

    .line 56
    iput v1, v0, Lkf0;->j:I

    .line 58
    iget v1, p0, Lkf0$b;->d:I

    .line 60
    iput v1, v0, Lkf0;->k:I

    .line 62
    iget-object v0, p0, Lkf0$b;->e:Lhl$a;

    .line 64
    if-eqz v0, :cond_2

    .line 66
    const/4 v1, 0x1

    .line 67
    invoke-interface {v0, v1}, Lhl$a;->a(Z)V

    .line 70
    :cond_2
    return-void
.end method
