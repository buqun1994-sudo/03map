.class public Lbi$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbi;->t(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbi$a;->a:Landroid/content/Context;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    if-eqz p2, :cond_3

    .line 3
    const/4 p1, 0x1

    .line 4
    if-eq p2, p1, :cond_2

    .line 6
    const/4 p1, 0x2

    .line 7
    if-eq p2, p1, :cond_1

    .line 9
    const/4 p1, 0x3

    .line 10
    if-eq p2, p1, :cond_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Landroid/content/Intent;

    .line 15
    iget-object p2, p0, Lbi$a;->a:Landroid/content/Context;

    .line 17
    const-class v0, Lcom/autonavi/amapauto/DiagnoseActivity;

    .line 19
    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    const/high16 p2, 0x10000000

    .line 24
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 27
    iget-object p2, p0, Lbi$a;->a:Landroid/content/Context;

    .line 29
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-static {}, Lbi;->l()V

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iget-object p1, p0, Lbi$a;->a:Landroid/content/Context;

    .line 39
    invoke-static {p1}, Lbi;->k(Landroid/content/Context;)V

    .line 42
    goto :goto_0

    .line 43
    :cond_3
    iget-object p1, p0, Lbi$a;->a:Landroid/content/Context;

    .line 45
    invoke-static {p1}, Lbi;->a(Landroid/content/Context;)V

    .line 48
    :goto_0
    return-void
.end method
