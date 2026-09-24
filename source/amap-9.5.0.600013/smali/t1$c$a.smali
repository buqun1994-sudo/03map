.class public Lt1$c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt1$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lt1$b;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lt1$c$a;
    .locals 6

    .line 1
    const-string v0, "\\|"

    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 8
    array-length v0, p0

    .line 9
    const/4 v2, 0x4

    .line 10
    if-eq v0, v2, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance v0, Lt1$c$a;

    .line 16
    invoke-direct {v0}, Lt1$c$a;-><init>()V

    .line 19
    new-instance v2, Lt1$b;

    .line 21
    const/4 v3, 0x0

    .line 22
    aget-object v4, p0, v3

    .line 24
    invoke-static {v4, v1}, Lu1;->h(Ljava/lang/String;I)I

    .line 27
    move-result v4

    .line 28
    const/4 v5, 0x1

    .line 29
    aget-object v5, p0, v5

    .line 31
    invoke-static {v5, v1}, Lu1;->h(Ljava/lang/String;I)I

    .line 34
    move-result v1

    .line 35
    const/4 v5, 0x2

    .line 36
    aget-object v5, p0, v5

    .line 38
    invoke-direct {v2, v4, v1, v5}, Lt1$b;-><init>(IILjava/lang/String;)V

    .line 41
    iput-object v2, v0, Lt1$c$a;->a:Lt1$b;

    .line 43
    const/4 v1, 0x3

    .line 44
    aget-object p0, p0, v1

    .line 46
    invoke-static {p0, v3}, Lu1;->h(Ljava/lang/String;I)I

    .line 49
    move-result p0

    .line 50
    iput p0, v0, Lt1$c$a;->b:I

    .line 52
    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x4

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    iget-object v2, p0, Lt1$c$a;->a:Lt1$b;

    .line 10
    iget v2, v2, Lt1$b;->a:I

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x0

    .line 17
    aput-object v2, v1, v3

    .line 19
    iget-object v2, p0, Lt1$c$a;->a:Lt1$b;

    .line 21
    iget v2, v2, Lt1$b;->b:I

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v2

    .line 27
    const/4 v3, 0x1

    .line 28
    aput-object v2, v1, v3

    .line 30
    iget-object v2, p0, Lt1$c$a;->a:Lt1$b;

    .line 32
    iget-object v2, v2, Lt1$b;->c:Ljava/lang/String;

    .line 34
    const/4 v3, 0x2

    .line 35
    aput-object v2, v1, v3

    .line 37
    iget v2, p0, Lt1$c$a;->b:I

    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object v2

    .line 43
    const/4 v3, 0x3

    .line 44
    aput-object v2, v1, v3

    .line 46
    const-string v2, "%d|%d|%s|%d"

    .line 48
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    return-object v0
.end method
