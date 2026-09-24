.class public Lcm0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public final synthetic h:Lcm0;


# direct methods
.method public constructor <init>(Lcm0;Llg;Lax;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcm0$a;->h:Lcm0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 8
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 11
    iput-object p1, p0, Lcm0$a;->a:Ljava/lang/ref/WeakReference;

    .line 13
    iget-object p1, p2, Llg;->H:Lfg;

    .line 15
    invoke-virtual {p3, p1}, Lax;->x(Ljava/lang/Object;)I

    .line 18
    move-result p1

    .line 19
    iput p1, p0, Lcm0$a;->b:I

    .line 21
    iget-object p1, p2, Llg;->I:Lfg;

    .line 23
    invoke-virtual {p3, p1}, Lax;->x(Ljava/lang/Object;)I

    .line 26
    move-result p1

    .line 27
    iput p1, p0, Lcm0$a;->c:I

    .line 29
    iget-object p1, p2, Llg;->J:Lfg;

    .line 31
    invoke-virtual {p3, p1}, Lax;->x(Ljava/lang/Object;)I

    .line 34
    move-result p1

    .line 35
    iput p1, p0, Lcm0$a;->d:I

    .line 37
    iget-object p1, p2, Llg;->K:Lfg;

    .line 39
    invoke-virtual {p3, p1}, Lax;->x(Ljava/lang/Object;)I

    .line 42
    move-result p1

    .line 43
    iput p1, p0, Lcm0$a;->e:I

    .line 45
    iget-object p1, p2, Llg;->L:Lfg;

    .line 47
    invoke-virtual {p3, p1}, Lax;->x(Ljava/lang/Object;)I

    .line 50
    move-result p1

    .line 51
    iput p1, p0, Lcm0$a;->f:I

    .line 53
    iput p4, p0, Lcm0$a;->g:I

    .line 55
    return-void
.end method
