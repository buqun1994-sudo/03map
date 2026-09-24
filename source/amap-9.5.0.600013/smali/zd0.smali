.class public abstract Lzd0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "202012101229"

    .line 3
    invoke-static {p0, p1, p2, v0}, Lzd0;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public static b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const v1, 0x5f5e14d

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    aput-object v2, v0, v3

    .line 14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object p0

    .line 18
    const/4 v2, 0x1

    .line 19
    aput-object p0, v0, v2

    .line 21
    const/4 p0, 0x2

    .line 22
    aput-object p1, v0, p0

    .line 24
    const/4 p1, 0x3

    .line 25
    aput-object p2, v0, p1

    .line 27
    const/4 p1, 0x4

    .line 28
    aput-object p3, v0, p1

    .line 30
    const-string p1, "[%d][4][%d][%s][%s][%s]"

    .line 32
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    sget p2, Lzd0;->a:I

    .line 38
    add-int/2addr p2, v2

    .line 39
    sput p2, Lzd0;->a:I

    .line 41
    new-array p0, p0, [Ljava/lang/Object;

    .line 43
    aput-object p1, p0, v3

    .line 45
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object p2

    .line 49
    aput-object p2, p0, v2

    .line 51
    const-string p2, "[ALSimulate] SimulateCollectionUtils"

    .line 53
    const-string p3, "format = {?}, sTriggerNum = {?}"

    .line 55
    invoke-static {p2, p3, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-static {}, Lib;->a()I

    .line 61
    move-result p0

    .line 62
    const/16 p3, 0x1cc

    .line 64
    const-string v0, "AUTO_AL"

    .line 66
    if-lt p0, p3, :cond_0

    .line 68
    const/16 p0, 0x64

    .line 70
    invoke-static {v0, v1, p1, p0}, Len;->c(Ljava/lang/String;ILjava/lang/String;I)V

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    invoke-static {v0, v1, p1}, Len;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 77
    :goto_0
    const-string p0, "after collectData"

    .line 79
    new-array p1, v3, [Ljava/lang/Object;

    .line 81
    invoke-static {p2, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public static c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const v1, 0x5f5e187

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    aput-object v2, v0, v3

    .line 14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object p0

    .line 18
    const/4 v2, 0x1

    .line 19
    aput-object p0, v0, v2

    .line 21
    const/4 p0, 0x2

    .line 22
    aput-object p1, v0, p0

    .line 24
    const/4 p0, 0x3

    .line 25
    aput-object p2, v0, p0

    .line 27
    const/4 p0, 0x4

    .line 28
    aput-object p3, v0, p0

    .line 30
    const/4 p0, 0x5

    .line 31
    aput-object p4, v0, p0

    .line 33
    const/4 p0, 0x6

    .line 34
    aput-object p5, v0, p0

    .line 36
    const-string p0, "[%d][6][%d][%s][%s][%s][%s][%s]"

    .line 38
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    new-array p1, v2, [Ljava/lang/Object;

    .line 44
    aput-object p0, p1, v3

    .line 46
    const-string p2, "[ALSimulate] SimulateCollectionUtils"

    .line 48
    const-string p3, "collectProtocolInfoInnerForDbB format = {?}"

    .line 50
    invoke-static {p2, p3, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    const-string p1, "AUTO_BASE"

    .line 55
    const/16 p3, 0x32

    .line 57
    invoke-static {p1, v1, p0, p3}, Len;->b(Ljava/lang/String;ILjava/lang/String;I)V

    .line 60
    const-string p0, "after collectProtocolInfoInnerForDbB"

    .line 62
    new-array p1, v3, [Ljava/lang/Object;

    .line 64
    invoke-static {p2, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    return-void
.end method
