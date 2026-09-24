.class public Ltb0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqy$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltb0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public getSNRForShow(IF)I
    .locals 7

    .line 1
    invoke-static {p1}, Ltb0;->a(I)I

    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x40400000    # 3.0f

    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    if-eqz v0, :cond_3

    .line 13
    const/high16 v6, 0x40c00000    # 6.0f

    .line 15
    if-eq v0, v4, :cond_2

    .line 17
    if-eq v0, v3, :cond_1

    .line 19
    if-eq v0, v2, :cond_0

    .line 21
    const/4 v0, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    add-float/2addr v6, p2

    .line 24
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 27
    move-result v0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    add-float/2addr v1, p2

    .line 30
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 33
    move-result v0

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    add-float/2addr v6, p2

    .line 36
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 39
    move-result v0

    .line 40
    goto :goto_0

    .line 41
    :cond_3
    add-float/2addr v1, p2

    .line 42
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 45
    move-result v0

    .line 46
    :goto_0
    const/4 v1, 0x4

    .line 47
    new-array v1, v1, [Ljava/lang/Object;

    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object p1

    .line 53
    aput-object p1, v1, v5

    .line 55
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 58
    move-result-object p1

    .line 59
    aput-object p1, v1, v4

    .line 61
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 64
    move-result p1

    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object p1

    .line 69
    aput-object p1, v1, v3

    .line 71
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    move-result-object p1

    .line 75
    aput-object p1, v1, v2

    .line 77
    const-string p1, "SNRForShowFuncRepository"

    .line 79
    const-string p2, "getSNRForShow prn:{?}, snr:{?}, roundSnr:{?}, snrData:{?}"

    .line 81
    invoke-static {p1, p2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    return v0
.end method
