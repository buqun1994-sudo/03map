.class public final enum Lkp0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:Lkp0;

.field public static final enum d:Lkp0;

.field public static final enum e:Lkp0;

.field public static final synthetic f:[Lkp0;


# instance fields
.field public a:B

.field public b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lkp0;

    .line 3
    const/4 v1, -0x1

    .line 4
    const-string v2, "\u672a\u5b9a\u4e49"

    .line 6
    const-string v3, "Undefined"

    .line 8
    const/4 v4, 0x0

    .line 9
    invoke-direct {v0, v3, v4, v1, v2}, Lkp0;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    .line 12
    sput-object v0, Lkp0;->c:Lkp0;

    .line 14
    new-instance v1, Lkp0;

    .line 16
    const-string v2, "\u771f\u5b9e\u5b9a\u4f4d"

    .line 18
    const-string v3, "Real"

    .line 20
    const/4 v5, 0x1

    .line 21
    invoke-direct {v1, v3, v5, v4, v2}, Lkp0;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    .line 24
    sput-object v1, Lkp0;->d:Lkp0;

    .line 26
    new-instance v2, Lkp0;

    .line 28
    const-string v3, "\u6a21\u62dfGPS"

    .line 30
    const-string v6, "Mocking"

    .line 32
    const/4 v7, 0x2

    .line 33
    invoke-direct {v2, v6, v7, v5, v3}, Lkp0;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    .line 36
    sput-object v2, Lkp0;->e:Lkp0;

    .line 38
    const/4 v3, 0x3

    .line 39
    new-array v3, v3, [Lkp0;

    .line 41
    aput-object v0, v3, v4

    .line 43
    aput-object v1, v3, v5

    .line 45
    aput-object v2, v3, v7

    .line 47
    sput-object v3, Lkp0;->f:[Lkp0;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IBLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-byte p3, p0, Lkp0;->a:B

    .line 6
    iput-object p4, p0, Lkp0;->b:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public static b(B)Lkp0;
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_0

    .line 6
    sget-object v0, Lkp0;->c:Lkp0;

    .line 8
    iput-byte p0, v0, Lkp0;->a:B

    .line 10
    return-object v0

    .line 11
    :cond_0
    sget-object p0, Lkp0;->e:Lkp0;

    .line 13
    return-object p0

    .line 14
    :cond_1
    sget-object p0, Lkp0;->d:Lkp0;

    .line 16
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lkp0;
    .locals 1

    .line 1
    const-class v0, Lkp0;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lkp0;

    .line 9
    return-object p0
.end method

.method public static values()[Lkp0;
    .locals 1

    .line 1
    sget-object v0, Lkp0;->f:[Lkp0;

    .line 3
    invoke-virtual {v0}, [Lkp0;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lkp0;

    .line 9
    return-object v0
.end method


# virtual methods
.method public a()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lkp0;->a:B

    .line 3
    return v0
.end method
