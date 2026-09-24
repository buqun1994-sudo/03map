.class Lcom/amap/location/e/a/a/j$1$1$1;
.super Lcom/amap/location/e/c/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/e/a/a/j$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:[I

.field final synthetic b:Lcom/amap/location/e/a/a/j$1$1;


# direct methods
.method public constructor <init>(Lcom/amap/location/e/a/a/j$1$1;[I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/e/a/a/j$1$1$1;->b:Lcom/amap/location/e/a/a/j$1$1;

    .line 3
    iput-object p2, p0, Lcom/amap/location/e/a/a/j$1$1$1;->a:[I

    .line 5
    invoke-direct {p0}, Lcom/amap/location/e/c/b$a;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public a(IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    const/4 p2, 0x1

    .line 2
    const/4 p4, 0x0

    .line 3
    if-ne p1, p2, :cond_0

    .line 5
    iget-object p1, p0, Lcom/amap/location/e/a/a/j$1$1$1;->b:Lcom/amap/location/e/a/a/j$1$1;

    .line 7
    iget-object p1, p1, Lcom/amap/location/e/a/a/j$1$1;->c:Lcom/amap/location/e/a/a/j$1;

    .line 9
    iget-object p2, p1, Lcom/amap/location/e/a/a/j$1;->d:Lcom/amap/location/e/a/a/j;

    .line 11
    iget-object p1, p1, Lcom/amap/location/e/a/a/j$1;->a:Ljava/lang/String;

    .line 13
    invoke-static {p2, p3, p1}, Lcom/amap/location/e/a/a/j;->a(Lcom/amap/location/e/a/a/j;Ljava/lang/String;Ljava/lang/String;)Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 19
    iget-object p1, p0, Lcom/amap/location/e/a/a/j$1$1$1;->a:[I

    .line 21
    iget-object p2, p0, Lcom/amap/location/e/a/a/j$1$1$1;->b:Lcom/amap/location/e/a/a/j$1$1;

    .line 23
    iget-object p2, p2, Lcom/amap/location/e/a/a/j$1$1;->c:Lcom/amap/location/e/a/a/j$1;

    .line 25
    iget-object v0, p2, Lcom/amap/location/e/a/a/j$1;->b:Ljava/lang/String;

    .line 27
    iget-object p2, p2, Lcom/amap/location/e/a/a/j$1;->d:Lcom/amap/location/e/a/a/j;

    .line 29
    invoke-static {p2}, Lcom/amap/location/e/a/a/j;->a(Lcom/amap/location/e/a/a/j;)[I

    .line 32
    move-result-object v1

    .line 33
    iget-object p2, p0, Lcom/amap/location/e/a/a/j$1$1$1;->b:Lcom/amap/location/e/a/a/j$1$1;

    .line 35
    iget-object p2, p2, Lcom/amap/location/e/a/a/j$1$1;->c:Lcom/amap/location/e/a/a/j$1;

    .line 37
    iget-object p2, p2, Lcom/amap/location/e/a/a/j$1;->d:Lcom/amap/location/e/a/a/j;

    .line 39
    invoke-static {p2}, Lcom/amap/location/e/a/a/j;->b(Lcom/amap/location/e/a/a/j;)[I

    .line 42
    move-result-object v2

    .line 43
    iget-object p2, p0, Lcom/amap/location/e/a/a/j$1$1$1;->b:Lcom/amap/location/e/a/a/j$1$1;

    .line 45
    iget-object p2, p2, Lcom/amap/location/e/a/a/j$1$1;->c:Lcom/amap/location/e/a/a/j$1;

    .line 47
    iget-object p2, p2, Lcom/amap/location/e/a/a/j$1;->d:Lcom/amap/location/e/a/a/j;

    .line 49
    invoke-static {p2}, Lcom/amap/location/e/a/a/j;->c(Lcom/amap/location/e/a/a/j;)[D

    .line 52
    move-result-object v3

    .line 53
    iget-object p2, p0, Lcom/amap/location/e/a/a/j$1$1$1;->b:Lcom/amap/location/e/a/a/j$1$1;

    .line 55
    iget-object p2, p2, Lcom/amap/location/e/a/a/j$1$1;->c:Lcom/amap/location/e/a/a/j$1;

    .line 57
    iget-object p2, p2, Lcom/amap/location/e/a/a/j$1;->d:Lcom/amap/location/e/a/a/j;

    .line 59
    invoke-static {p2}, Lcom/amap/location/e/a/a/j;->d(Lcom/amap/location/e/a/a/j;)[I

    .line 62
    move-result-object v4

    .line 63
    iget-object p2, p0, Lcom/amap/location/e/a/a/j$1$1$1;->b:Lcom/amap/location/e/a/a/j$1$1;

    .line 65
    iget-object p2, p2, Lcom/amap/location/e/a/a/j$1$1;->c:Lcom/amap/location/e/a/a/j$1;

    .line 67
    iget-object p2, p2, Lcom/amap/location/e/a/a/j$1;->d:Lcom/amap/location/e/a/a/j;

    .line 69
    invoke-static {p2}, Lcom/amap/location/e/a/a/j;->e(Lcom/amap/location/e/a/a/j;)[I

    .line 72
    move-result-object v5

    .line 73
    invoke-static/range {v0 .. v5}, Lcom/amap/location/e/a/a/i;->a(Ljava/lang/String;[I[I[D[I[I)I

    .line 76
    move-result p2

    .line 77
    aput p2, p1, p4

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/amap/location/e/a/a/j$1$1$1;->a:[I

    .line 81
    aget p1, p1, p4

    .line 83
    if-eqz p1, :cond_1

    .line 85
    sput p1, Lcom/amap/location/e/a/d;->o:I

    .line 87
    goto :goto_0

    .line 88
    :cond_1
    const/4 p1, 0x2

    .line 89
    sput p1, Lcom/amap/location/e/a/d;->o:I

    .line 91
    :goto_0
    iget-object p1, p0, Lcom/amap/location/e/a/a/j$1$1$1;->b:Lcom/amap/location/e/a/a/j$1$1;

    .line 93
    iget-object p1, p1, Lcom/amap/location/e/a/a/j$1$1;->c:Lcom/amap/location/e/a/a/j$1;

    .line 95
    iget-object p1, p1, Lcom/amap/location/e/a/a/j$1;->d:Lcom/amap/location/e/a/a/j;

    .line 97
    invoke-static {p1, p4}, Lcom/amap/location/e/a/a/j;->a(Lcom/amap/location/e/a/a/j;Z)Z

    .line 100
    iget-object p1, p0, Lcom/amap/location/e/a/a/j$1$1$1;->b:Lcom/amap/location/e/a/a/j$1$1;

    .line 102
    iget-object p1, p1, Lcom/amap/location/e/a/a/j$1$1;->c:Lcom/amap/location/e/a/a/j$1;

    .line 104
    iget-object p2, p1, Lcom/amap/location/e/a/a/j$1;->d:Lcom/amap/location/e/a/a/j;

    .line 106
    iget-object p1, p1, Lcom/amap/location/e/a/a/j$1;->b:Ljava/lang/String;

    .line 108
    invoke-static {p2, p1}, Lcom/amap/location/e/a/a/j;->a(Lcom/amap/location/e/a/a/j;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    return-void
.end method
