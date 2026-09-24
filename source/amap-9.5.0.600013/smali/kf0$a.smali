.class public Lkf0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkf0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lkf0;


# direct methods
.method public constructor <init>(Lkf0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkf0$a;->a:Lkf0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lkf0$a;->a:Lkf0;

    .line 3
    sub-int/2addr p4, p2

    .line 4
    invoke-static {p1, p4}, Lkf0;->c(Lkf0;I)I

    .line 7
    iget-object p1, p0, Lkf0$a;->a:Lkf0;

    .line 9
    sub-int/2addr p5, p3

    .line 10
    invoke-static {p1, p5}, Lkf0;->e(Lkf0;I)I

    .line 13
    invoke-static {}, Lkf0;->f()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    const/4 p2, 0x2

    .line 18
    new-array p2, p2, [Ljava/lang/Object;

    .line 20
    iget-object p3, p0, Lkf0$a;->a:Lkf0;

    .line 22
    invoke-static {p3}, Lkf0;->b(Lkf0;)I

    .line 25
    move-result p3

    .line 26
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object p3

    .line 30
    const/4 p4, 0x0

    .line 31
    aput-object p3, p2, p4

    .line 33
    iget-object p3, p0, Lkf0$a;->a:Lkf0;

    .line 35
    invoke-static {p3}, Lkf0;->d(Lkf0;)I

    .line 38
    move-result p3

    .line 39
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object p3

    .line 43
    const/4 p4, 0x1

    .line 44
    aput-object p3, p2, p4

    .line 46
    const-string p3, "onLayoutChange width:{?} height:{?}"

    .line 48
    invoke-static {p1, p3, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    return-void
.end method
