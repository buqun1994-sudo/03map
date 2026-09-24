.class public final enum Llw0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:Llw0;

.field public static final enum d:Llw0;

.field public static final enum e:Llw0;

.field public static final enum f:Llw0;

.field public static final synthetic g:[Llw0;


# instance fields
.field public a:B

.field public b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Llw0;

    .line 3
    const/4 v1, -0x1

    .line 4
    const-string v2, "\u672a\u5b9a\u4e49"

    .line 6
    const-string v3, "Undefined"

    .line 8
    const/4 v4, 0x0

    .line 9
    invoke-direct {v0, v3, v4, v1, v2}, Llw0;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    .line 12
    sput-object v0, Llw0;->c:Llw0;

    .line 14
    new-instance v1, Llw0;

    .line 16
    const-string v2, "\u672a\u77e5"

    .line 18
    const-string v3, "Unknown"

    .line 20
    const/4 v5, 0x1

    .line 21
    invoke-direct {v1, v3, v5, v4, v2}, Llw0;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    .line 24
    sput-object v1, Llw0;->d:Llw0;

    .line 26
    new-instance v2, Llw0;

    .line 28
    const-string v3, "\u8702\u7a9d\u7f51\u7edc"

    .line 30
    const-string v6, "Cellular"

    .line 32
    const/4 v7, 0x2

    .line 33
    invoke-direct {v2, v6, v7, v5, v3}, Llw0;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    .line 36
    sput-object v2, Llw0;->e:Llw0;

    .line 38
    new-instance v3, Llw0;

    .line 40
    const-string v6, "Wifi"

    .line 42
    const/4 v8, 0x3

    .line 43
    invoke-direct {v3, v6, v8, v7, v6}, Llw0;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    .line 46
    sput-object v3, Llw0;->f:Llw0;

    .line 48
    const/4 v6, 0x4

    .line 49
    new-array v6, v6, [Llw0;

    .line 51
    aput-object v0, v6, v4

    .line 53
    aput-object v1, v6, v5

    .line 55
    aput-object v2, v6, v7

    .line 57
    aput-object v3, v6, v8

    .line 59
    sput-object v6, Llw0;->g:[Llw0;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IBLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-byte p3, p0, Llw0;->a:B

    .line 6
    iput-object p4, p0, Llw0;->b:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public static b(B)Llw0;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 9
    sget-object v0, Llw0;->c:Llw0;

    .line 11
    iput-byte p0, v0, Llw0;->a:B

    .line 13
    return-object v0

    .line 14
    :cond_0
    sget-object p0, Llw0;->f:Llw0;

    .line 16
    return-object p0

    .line 17
    :cond_1
    sget-object p0, Llw0;->e:Llw0;

    .line 19
    return-object p0

    .line 20
    :cond_2
    sget-object p0, Llw0;->d:Llw0;

    .line 22
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Llw0;
    .locals 1

    .line 1
    const-class v0, Llw0;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Llw0;

    .line 9
    return-object p0
.end method

.method public static values()[Llw0;
    .locals 1

    .line 1
    sget-object v0, Llw0;->g:[Llw0;

    .line 3
    invoke-virtual {v0}, [Llw0;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Llw0;

    .line 9
    return-object v0
.end method


# virtual methods
.method public a()B
    .locals 1

    .line 1
    iget-byte v0, p0, Llw0;->a:B

    .line 3
    return v0
.end method
