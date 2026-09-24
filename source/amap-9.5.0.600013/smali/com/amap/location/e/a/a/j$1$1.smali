.class Lcom/amap/location/e/a/a/j$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/e/a/a/j$1;->a(IILjava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/amap/location/e/a/a/j$1;


# direct methods
.method public constructor <init>(Lcom/amap/location/e/a/a/j$1;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/e/a/a/j$1$1;->c:Lcom/amap/location/e/a/a/j$1;

    .line 3
    iput p2, p0, Lcom/amap/location/e/a/a/j$1$1;->a:I

    .line 5
    iput-object p3, p0, Lcom/amap/location/e/a/a/j$1$1;->b:Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    filled-new-array {v0}, [I

    .line 5
    move-result-object v1

    .line 6
    iget v2, p0, Lcom/amap/location/e/a/a/j$1$1;->a:I

    .line 8
    const/4 v3, 0x1

    .line 9
    if-ne v2, v3, :cond_2

    .line 11
    iget-object v2, p0, Lcom/amap/location/e/a/a/j$1$1;->c:Lcom/amap/location/e/a/a/j$1;

    .line 13
    iget-object v3, v2, Lcom/amap/location/e/a/a/j$1;->d:Lcom/amap/location/e/a/a/j;

    .line 15
    iget-object v4, p0, Lcom/amap/location/e/a/a/j$1$1;->b:Ljava/lang/String;

    .line 17
    iget-object v2, v2, Lcom/amap/location/e/a/a/j$1;->a:Ljava/lang/String;

    .line 19
    invoke-static {v3, v4, v2}, Lcom/amap/location/e/a/a/j;->a(Lcom/amap/location/e/a/a/j;Ljava/lang/String;Ljava/lang/String;)Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 25
    iget-object v2, p0, Lcom/amap/location/e/a/a/j$1$1;->c:Lcom/amap/location/e/a/a/j$1;

    .line 27
    iget-object v3, v2, Lcom/amap/location/e/a/a/j$1;->a:Ljava/lang/String;

    .line 29
    iget-object v2, v2, Lcom/amap/location/e/a/a/j$1;->d:Lcom/amap/location/e/a/a/j;

    .line 31
    invoke-static {v2}, Lcom/amap/location/e/a/a/j;->a(Lcom/amap/location/e/a/a/j;)[I

    .line 34
    move-result-object v4

    .line 35
    iget-object v2, p0, Lcom/amap/location/e/a/a/j$1$1;->c:Lcom/amap/location/e/a/a/j$1;

    .line 37
    iget-object v2, v2, Lcom/amap/location/e/a/a/j$1;->d:Lcom/amap/location/e/a/a/j;

    .line 39
    invoke-static {v2}, Lcom/amap/location/e/a/a/j;->b(Lcom/amap/location/e/a/a/j;)[I

    .line 42
    move-result-object v5

    .line 43
    iget-object v2, p0, Lcom/amap/location/e/a/a/j$1$1;->c:Lcom/amap/location/e/a/a/j$1;

    .line 45
    iget-object v2, v2, Lcom/amap/location/e/a/a/j$1;->d:Lcom/amap/location/e/a/a/j;

    .line 47
    invoke-static {v2}, Lcom/amap/location/e/a/a/j;->c(Lcom/amap/location/e/a/a/j;)[D

    .line 50
    move-result-object v6

    .line 51
    iget-object v2, p0, Lcom/amap/location/e/a/a/j$1$1;->c:Lcom/amap/location/e/a/a/j$1;

    .line 53
    iget-object v2, v2, Lcom/amap/location/e/a/a/j$1;->d:Lcom/amap/location/e/a/a/j;

    .line 55
    invoke-static {v2}, Lcom/amap/location/e/a/a/j;->d(Lcom/amap/location/e/a/a/j;)[I

    .line 58
    move-result-object v7

    .line 59
    iget-object v2, p0, Lcom/amap/location/e/a/a/j$1$1;->c:Lcom/amap/location/e/a/a/j$1;

    .line 61
    iget-object v2, v2, Lcom/amap/location/e/a/a/j$1;->d:Lcom/amap/location/e/a/a/j;

    .line 63
    invoke-static {v2}, Lcom/amap/location/e/a/a/j;->e(Lcom/amap/location/e/a/a/j;)[I

    .line 66
    move-result-object v8

    .line 67
    invoke-static/range {v3 .. v8}, Lcom/amap/location/e/a/a/i;->a(Ljava/lang/String;[I[I[D[I[I)I

    .line 70
    move-result v2

    .line 71
    aput v2, v1, v0

    .line 73
    :cond_0
    aget v1, v1, v0

    .line 75
    if-eqz v1, :cond_1

    .line 77
    sput v1, Lcom/amap/location/e/a/d;->o:I

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    const/4 v1, 0x2

    .line 81
    sput v1, Lcom/amap/location/e/a/d;->o:I

    .line 83
    :goto_0
    iget-object v1, p0, Lcom/amap/location/e/a/a/j$1$1;->c:Lcom/amap/location/e/a/a/j$1;

    .line 85
    iget-object v2, v1, Lcom/amap/location/e/a/a/j$1;->d:Lcom/amap/location/e/a/a/j;

    .line 87
    iget-object v1, v1, Lcom/amap/location/e/a/a/j$1;->a:Ljava/lang/String;

    .line 89
    invoke-static {v2, v1}, Lcom/amap/location/e/a/a/j;->a(Lcom/amap/location/e/a/a/j;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    iget-object v1, p0, Lcom/amap/location/e/a/a/j$1$1;->c:Lcom/amap/location/e/a/a/j$1;

    .line 94
    iget-object v1, v1, Lcom/amap/location/e/a/a/j$1;->d:Lcom/amap/location/e/a/a/j;

    .line 96
    invoke-static {v1, v0}, Lcom/amap/location/e/a/a/j;->a(Lcom/amap/location/e/a/a/j;Z)Z

    .line 99
    goto :goto_1

    .line 100
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 102
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    sget-object v2, Lcom/amap/location/e/a/d;->l:Ljava/lang/String;

    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v2, p0, Lcom/amap/location/e/a/a/j$1$1;->c:Lcom/amap/location/e/a/a/j$1;

    .line 112
    iget-object v2, v2, Lcom/amap/location/e/a/a/j$1;->b:Ljava/lang/String;

    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v2, ".txt"

    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object v0

    .line 126
    iget-object v2, p0, Lcom/amap/location/e/a/a/j$1$1;->c:Lcom/amap/location/e/a/a/j$1;

    .line 128
    iget-object v2, v2, Lcom/amap/location/e/a/a/j$1;->c:Lcom/amap/location/support/network/HttpRequest;

    .line 130
    iput-object v0, v2, Lcom/amap/location/support/network/HttpRequest;->url:Ljava/lang/String;

    .line 132
    invoke-static {}, Lcom/amap/location/e/c/b;->a()Lcom/amap/location/e/c/b;

    .line 135
    move-result-object v0

    .line 136
    iget-object v2, p0, Lcom/amap/location/e/a/a/j$1$1;->c:Lcom/amap/location/e/a/a/j$1;

    .line 138
    iget-object v2, v2, Lcom/amap/location/e/a/a/j$1;->c:Lcom/amap/location/support/network/HttpRequest;

    .line 140
    new-instance v3, Lcom/amap/location/e/a/a/j$1$1$1;

    .line 142
    invoke-direct {v3, p0, v1}, Lcom/amap/location/e/a/a/j$1$1$1;-><init>(Lcom/amap/location/e/a/a/j$1$1;[I)V

    .line 145
    invoke-virtual {v0, v2, v3}, Lcom/amap/location/e/c/b;->a(Lcom/amap/location/support/network/HttpRequest;Lcom/amap/location/e/c/b$a;)V

    .line 148
    :goto_1
    return-void
.end method
