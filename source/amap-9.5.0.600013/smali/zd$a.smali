.class public Lzd$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzd;->R([Landroid/util/Size;II)Landroid/util/Size;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lzd;


# direct methods
.method public constructor <init>(Lzd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzd$a;->a:Lzd;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/util/Size;Landroid/util/Size;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    .line 8
    move-result p1

    .line 9
    mul-int v0, v0, p1

    .line 11
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    .line 14
    move-result p1

    .line 15
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    .line 18
    move-result p2

    .line 19
    mul-int p1, p1, p2

    .line 21
    sub-int/2addr v0, p1

    .line 22
    int-to-long p1, v0

    .line 23
    invoke-static {p1, p2}, Ljava/lang/Long;->signum(J)I

    .line 26
    move-result p1

    .line 27
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/util/Size;

    .line 3
    check-cast p2, Landroid/util/Size;

    .line 5
    invoke-virtual {p0, p1, p2}, Lzd$a;->a(Landroid/util/Size;Landroid/util/Size;)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method
