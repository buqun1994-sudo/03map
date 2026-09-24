.class public Ljq0$f$b;
.super Ljq0$f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljq0$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljq0$f$a;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public d(ILcq0;)Z
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 3
    if-eq p1, v0, :cond_6

    .line 5
    const/16 v0, 0x12

    .line 7
    if-eq p1, v0, :cond_5

    .line 9
    const/16 v0, 0x18

    .line 11
    if-eq p1, v0, :cond_4

    .line 13
    const/16 v0, 0x20

    .line 15
    if-eq p1, v0, :cond_3

    .line 17
    const/16 v0, 0x2a

    .line 19
    if-eq p1, v0, :cond_2

    .line 21
    const/16 v0, 0x30

    .line 23
    if-eq p1, v0, :cond_1

    .line 25
    const/16 v0, 0x38

    .line 27
    if-eq p1, v0, :cond_0

    .line 29
    const/4 p1, 0x0

    .line 30
    return p1

    .line 31
    :cond_0
    invoke-virtual {p2}, Lcq0;->u()I

    .line 34
    move-result p1

    .line 35
    iput p1, p0, Ljq0$f$b;->g:I

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p2}, Lcq0;->u()I

    .line 41
    move-result p1

    .line 42
    iput p1, p0, Ljq0$f$a;->f:I

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p2}, Lcq0;->r()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Ljq0$f$a;->e:Ljava/lang/String;

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    invoke-virtual {p2}, Lcq0;->y()D

    .line 55
    move-result-wide p1

    .line 56
    iput-wide p1, p0, Ljq0$f$a;->d:D

    .line 58
    goto :goto_0

    .line 59
    :cond_4
    invoke-virtual {p2}, Lcq0;->y()D

    .line 62
    move-result-wide p1

    .line 63
    iput-wide p1, p0, Ljq0$f$a;->c:D

    .line 65
    goto :goto_0

    .line 66
    :cond_5
    invoke-virtual {p2}, Lcq0;->r()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Ljq0$f$a;->b:Ljava/lang/String;

    .line 72
    goto :goto_0

    .line 73
    :cond_6
    invoke-virtual {p2}, Lcq0;->r()Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 77
    iput-object p1, p0, Ljq0$f$a;->a:Ljava/lang/String;

    .line 79
    :goto_0
    const/4 p1, 0x1

    .line 80
    return p1
.end method
