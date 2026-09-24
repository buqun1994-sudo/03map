.class public Ln70$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln70;->l()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln70;


# direct methods
.method public constructor <init>(Ln70;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln70$b;->a:Ln70;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 0

    .line 1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lm70;

    .line 7
    iget-object p2, p2, Lm70;->c:Ljava/lang/String;

    .line 9
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 12
    move-result p2

    .line 13
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lm70;

    .line 19
    iget-object p1, p1, Lm70;->c:Ljava/lang/String;

    .line 21
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 24
    move-result p1

    .line 25
    invoke-static {p2, p1}, Ljava/lang/Float;->compare(FF)I

    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    .line 3
    check-cast p2, Ljava/util/Map$Entry;

    .line 5
    invoke-virtual {p0, p1, p2}, Ln70$b;->a(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method
