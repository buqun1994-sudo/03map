.class public Ljq0$f$a;
.super Lxq0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljq0$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:D

.field public d:D

.field public e:Ljava/lang/String;

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lxq0;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public d(ILcq0;)Z
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 3
    if-eq p1, v0, :cond_5

    .line 5
    const/16 v0, 0x12

    .line 7
    if-eq p1, v0, :cond_4

    .line 9
    const/16 v0, 0x18

    .line 11
    if-eq p1, v0, :cond_3

    .line 13
    const/16 v0, 0x20

    .line 15
    if-eq p1, v0, :cond_2

    .line 17
    const/16 v0, 0x2a

    .line 19
    if-eq p1, v0, :cond_1

    .line 21
    const/16 v0, 0x30

    .line 23
    if-eq p1, v0, :cond_0

    .line 25
    const/4 p1, 0x0

    .line 26
    return p1

    .line 27
    :cond_0
    invoke-virtual {p2}, Lcq0;->u()I

    .line 30
    move-result p1

    .line 31
    iput p1, p0, Ljq0$f$a;->f:I

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p2}, Lcq0;->r()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Ljq0$f$a;->e:Ljava/lang/String;

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {p2}, Lcq0;->y()D

    .line 44
    move-result-wide p1

    .line 45
    iput-wide p1, p0, Ljq0$f$a;->d:D

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    invoke-virtual {p2}, Lcq0;->y()D

    .line 51
    move-result-wide p1

    .line 52
    iput-wide p1, p0, Ljq0$f$a;->c:D

    .line 54
    goto :goto_0

    .line 55
    :cond_4
    invoke-virtual {p2}, Lcq0;->r()Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p0, Ljq0$f$a;->b:Ljava/lang/String;

    .line 61
    goto :goto_0

    .line 62
    :cond_5
    invoke-virtual {p2}, Lcq0;->r()Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    iput-object p1, p0, Ljq0$f$a;->a:Ljava/lang/String;

    .line 68
    :goto_0
    const/4 p1, 0x1

    .line 69
    return p1
.end method
