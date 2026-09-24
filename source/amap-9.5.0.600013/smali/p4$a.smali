.class public Lp4$a;
.super Lya0$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp4;->B(Landroid/content/Context;Lih0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/ref/WeakReference;

.field public final synthetic d:Lp4;


# direct methods
.method public constructor <init>(Lp4;IILjava/lang/ref/WeakReference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp4$a;->d:Lp4;

    .line 3
    iput p2, p0, Lp4$a;->a:I

    .line 5
    iput p3, p0, Lp4$a;->b:I

    .line 7
    iput-object p4, p0, Lp4$a;->c:Ljava/lang/ref/WeakReference;

    .line 9
    invoke-direct {p0}, Lya0$c;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public d(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public e(Landroid/graphics/Typeface;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1c

    .line 5
    if-lt v0, v1, :cond_1

    .line 7
    iget v0, p0, Lp4$a;->a:I

    .line 9
    const/4 v1, -0x1

    .line 10
    if-eq v0, v1, :cond_1

    .line 12
    iget v1, p0, Lp4$a;->b:I

    .line 14
    and-int/lit8 v1, v1, 0x2

    .line 16
    if-eqz v1, :cond_0

    .line 18
    const/4 v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    invoke-static {p1, v0, v1}, Lo4;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 24
    move-result-object p1

    .line 25
    :cond_1
    iget-object v0, p0, Lp4$a;->d:Lp4;

    .line 27
    iget-object v1, p0, Lp4$a;->c:Ljava/lang/ref/WeakReference;

    .line 29
    invoke-virtual {v0, v1, p1}, Lp4;->n(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V

    .line 32
    return-void
.end method
