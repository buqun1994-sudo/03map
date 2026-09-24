.class public Lfn0$k;
.super Lfn0$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfn0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# static fields
.field public static final r:Lfn0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lun0;->a()Landroid/view/WindowInsets;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lfn0;->t(Landroid/view/WindowInsets;)Lfn0;

    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lfn0$k;->r:Lfn0;

    .line 11
    return-void
.end method

.method public constructor <init>(Lfn0;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfn0$j;-><init>(Lfn0;Landroid/view/WindowInsets;)V

    return-void
.end method

.method public constructor <init>(Lfn0;Lfn0$k;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lfn0$j;-><init>(Lfn0;Lfn0$j;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public g(I)Lzu;
    .locals 1

    .line 1
    iget-object v0, p0, Lfn0$g;->c:Landroid/view/WindowInsets;

    .line 3
    invoke-static {p1}, Lfn0$n;->a(I)I

    .line 6
    move-result p1

    .line 7
    invoke-static {v0, p1}, Lwn0;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lzu;->d(Landroid/graphics/Insets;)Lzu;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public h(I)Lzu;
    .locals 1

    .line 1
    iget-object v0, p0, Lfn0$g;->c:Landroid/view/WindowInsets;

    .line 3
    invoke-static {p1}, Lfn0$n;->a(I)I

    .line 6
    move-result p1

    .line 7
    invoke-static {v0, p1}, Lvn0;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lzu;->d(Landroid/graphics/Insets;)Lzu;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
