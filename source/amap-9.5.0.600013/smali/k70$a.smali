.class public Lk70$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk70;->F(Lle0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk70;


# direct methods
.method public constructor <init>(Lk70;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk70$a;->a:Lk70;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Lle0;Lle0;)I
    .locals 0

    .line 1
    iget p1, p1, Lle0;->c:I

    .line 3
    iget p2, p2, Lle0;->c:I

    .line 5
    sub-int/2addr p1, p2

    .line 6
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lle0;

    .line 3
    check-cast p2, Lle0;

    .line 5
    invoke-virtual {p0, p1, p2}, Lk70$a;->a(Lle0;Lle0;)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method
