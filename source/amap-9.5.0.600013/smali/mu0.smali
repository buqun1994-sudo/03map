.class public final enum Lmu0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lmu0;

.field public static final enum c:Lmu0;

.field public static final enum d:Lmu0;

.field public static final enum e:Lmu0;

.field public static final enum f:Lmu0;

.field public static final enum g:Lmu0;

.field public static final enum h:Lmu0;

.field public static final synthetic i:[Lmu0;


# instance fields
.field public final a:S


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lmu0;

    .line 3
    const-string v1, "WIFI_STANDARD_UNKNOWN"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lmu0;-><init>(Ljava/lang/String;IS)V

    .line 9
    sput-object v0, Lmu0;->b:Lmu0;

    .line 11
    new-instance v1, Lmu0;

    .line 13
    const-string v3, "WIFI_STANDARD_LEGACY"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lmu0;-><init>(Ljava/lang/String;IS)V

    .line 19
    sput-object v1, Lmu0;->c:Lmu0;

    .line 21
    new-instance v3, Lmu0;

    .line 23
    const-string v5, "WIFI_STANDARD_11N"

    .line 25
    const/4 v6, 0x2

    .line 26
    const/4 v7, 0x4

    .line 27
    invoke-direct {v3, v5, v6, v7}, Lmu0;-><init>(Ljava/lang/String;IS)V

    .line 30
    sput-object v3, Lmu0;->d:Lmu0;

    .line 32
    new-instance v5, Lmu0;

    .line 34
    const-string v8, "WIFI_STANDARD_11AC"

    .line 36
    const/4 v9, 0x3

    .line 37
    const/4 v10, 0x5

    .line 38
    invoke-direct {v5, v8, v9, v10}, Lmu0;-><init>(Ljava/lang/String;IS)V

    .line 41
    sput-object v5, Lmu0;->e:Lmu0;

    .line 43
    new-instance v8, Lmu0;

    .line 45
    const-string v11, "WIFI_STANDARD_11AX"

    .line 47
    const/4 v12, 0x6

    .line 48
    invoke-direct {v8, v11, v7, v12}, Lmu0;-><init>(Ljava/lang/String;IS)V

    .line 51
    sput-object v8, Lmu0;->f:Lmu0;

    .line 53
    new-instance v11, Lmu0;

    .line 55
    const-string v13, "WIFI_STANDARD_11AD"

    .line 57
    const/4 v14, 0x7

    .line 58
    invoke-direct {v11, v13, v10, v14}, Lmu0;-><init>(Ljava/lang/String;IS)V

    .line 61
    sput-object v11, Lmu0;->g:Lmu0;

    .line 63
    new-instance v13, Lmu0;

    .line 65
    const-string v15, "WIFI_STANDARD_11BE"

    .line 67
    const/16 v10, 0x8

    .line 69
    invoke-direct {v13, v15, v12, v10}, Lmu0;-><init>(Ljava/lang/String;IS)V

    .line 72
    sput-object v13, Lmu0;->h:Lmu0;

    .line 74
    new-array v10, v14, [Lmu0;

    .line 76
    aput-object v0, v10, v2

    .line 78
    aput-object v1, v10, v4

    .line 80
    aput-object v3, v10, v6

    .line 82
    aput-object v5, v10, v9

    .line 84
    aput-object v8, v10, v7

    .line 86
    const/4 v0, 0x5

    .line 87
    aput-object v11, v10, v0

    .line 89
    aput-object v13, v10, v12

    .line 91
    sput-object v10, Lmu0;->i:[Lmu0;

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IS)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-short p3, p0, Lmu0;->a:S

    .line 6
    return-void
.end method

.method public static a(S)S
    .locals 4

    .line 1
    invoke-static {}, Lmu0;->values()[Lmu0;

    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 9
    aget-object v3, v0, v2

    .line 11
    iget-short v3, v3, Lmu0;->a:S

    .line 13
    if-ne p0, v3, :cond_0

    .line 15
    return p0

    .line 16
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    sget-object p0, Lmu0;->b:Lmu0;

    .line 21
    iget-short p0, p0, Lmu0;->a:S

    .line 23
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lmu0;
    .locals 1

    .line 1
    const-class v0, Lmu0;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lmu0;

    .line 9
    return-object p0
.end method

.method public static values()[Lmu0;
    .locals 1

    .line 1
    sget-object v0, Lmu0;->i:[Lmu0;

    .line 3
    invoke-virtual {v0}, [Lmu0;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lmu0;

    .line 9
    return-object v0
.end method
