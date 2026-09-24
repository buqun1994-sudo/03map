.class public final enum Lnq0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:Lnq0;

.field public static final enum d:Lnq0;

.field public static final enum e:Lnq0;

.field public static final enum f:Lnq0;

.field public static final synthetic g:[Lnq0;


# instance fields
.field public a:B

.field public b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lnq0;

    .line 3
    const/4 v1, -0x1

    .line 4
    const-string v2, "\u672a\u5b9a\u4e49"

    .line 6
    const-string v3, "Undefined"

    .line 8
    const/4 v4, 0x0

    .line 9
    invoke-direct {v0, v3, v4, v1, v2}, Lnq0;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    .line 12
    sput-object v0, Lnq0;->c:Lnq0;

    .line 14
    new-instance v1, Lnq0;

    .line 16
    const-string v2, "\u6ca1\u6709"

    .line 18
    const-string v3, "None"

    .line 20
    const/4 v5, 0x1

    .line 21
    invoke-direct {v1, v3, v5, v4, v2}, Lnq0;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    .line 24
    sput-object v1, Lnq0;->d:Lnq0;

    .line 26
    new-instance v2, Lnq0;

    .line 28
    const-string v3, "\u786c\u4ef6"

    .line 30
    const-string v6, "Hardware"

    .line 32
    const/4 v7, 0x2

    .line 33
    invoke-direct {v2, v6, v7, v5, v3}, Lnq0;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    .line 36
    sput-object v2, Lnq0;->e:Lnq0;

    .line 38
    new-instance v3, Lnq0;

    .line 40
    const-string v6, "\u7b2c\u4e09\u65b9"

    .line 42
    const-string v8, "ThirdParty"

    .line 44
    const/4 v9, 0x3

    .line 45
    invoke-direct {v3, v8, v9, v7, v6}, Lnq0;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    .line 48
    sput-object v3, Lnq0;->f:Lnq0;

    .line 50
    const/4 v6, 0x4

    .line 51
    new-array v6, v6, [Lnq0;

    .line 53
    aput-object v0, v6, v4

    .line 55
    aput-object v1, v6, v5

    .line 57
    aput-object v2, v6, v7

    .line 59
    aput-object v3, v6, v9

    .line 61
    sput-object v6, Lnq0;->g:[Lnq0;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IBLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-byte p3, p0, Lnq0;->a:B

    .line 6
    iput-object p4, p0, Lnq0;->b:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnq0;
    .locals 1

    .line 1
    const-class v0, Lnq0;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnq0;

    .line 9
    return-object p0
.end method

.method public static values()[Lnq0;
    .locals 1

    .line 1
    sget-object v0, Lnq0;->g:[Lnq0;

    .line 3
    invoke-virtual {v0}, [Lnq0;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnq0;

    .line 9
    return-object v0
.end method


# virtual methods
.method public a()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lnq0;->a:B

    .line 3
    return v0
.end method
