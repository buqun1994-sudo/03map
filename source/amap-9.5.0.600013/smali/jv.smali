.class public abstract Ljv;
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

.method public static a(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    sget v0, Ljv;->a:I

    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    sput v0, Ljv;->a:I

    .line 7
    const/16 v0, 0x9

    .line 9
    new-array v0, v0, [Ljava/lang/Object;

    .line 11
    const v2, 0x5f5e279

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v3

    .line 18
    const/4 v4, 0x0

    .line 19
    aput-object v3, v0, v4

    .line 21
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object p0

    .line 25
    aput-object p0, v0, v1

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object p0

    .line 31
    const/4 p1, 0x2

    .line 32
    aput-object p0, v0, p1

    .line 34
    const/4 p0, 0x3

    .line 35
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object p2

    .line 39
    aput-object p2, v0, p0

    .line 41
    const/4 p0, 0x4

    .line 42
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object p2

    .line 46
    aput-object p2, v0, p0

    .line 48
    const/4 p0, 0x5

    .line 49
    aput-object p4, v0, p0

    .line 51
    const/4 p0, 0x6

    .line 52
    aput-object p5, v0, p0

    .line 54
    const/4 p0, 0x7

    .line 55
    aput-object p6, v0, p0

    .line 57
    const/16 p0, 0x8

    .line 59
    aput-object p7, v0, p0

    .line 61
    const-string p0, "[%d][8][%d][%d][%d][%d][%s][%s][%s][%s]"

    .line 63
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 67
    new-array p1, p1, [Ljava/lang/Object;

    .line 69
    aput-object p0, p1, v4

    .line 71
    sget p2, Ljv;->a:I

    .line 73
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    move-result-object p2

    .line 77
    aput-object p2, p1, v1

    .line 79
    const-string p2, "IssueClusionCollectionUtils"

    .line 81
    const-string p3, "format = {?}, trigger num = {?}"

    .line 83
    invoke-static {p2, p3, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    const-string p1, "AUTO_AL"

    .line 88
    const/16 p2, 0x64

    .line 90
    invoke-static {p1, v2, p0, p2}, Len;->c(Ljava/lang/String;ILjava/lang/String;I)V

    .line 93
    return-void
.end method
