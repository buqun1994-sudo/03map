.class public final enum Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation


# static fields
.field public static final enum a:Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

.field public static final enum b:Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

.field public static final enum c:Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

.field public static final enum d:Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

.field public static final synthetic e:[Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

    .line 3
    const-string v1, "STATUS_NONE"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;->a:Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

    .line 11
    new-instance v0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

    .line 13
    const-string v1, "STATUS_SEARCHING"

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;->b:Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

    .line 21
    new-instance v0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

    .line 23
    const-string v1, "STATUS_SEARCH_SUCCESS"

    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;->c:Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

    .line 31
    new-instance v0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

    .line 33
    const-string v1, "STATUS_SEARCH_FAIL"

    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;->d:Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

    .line 41
    invoke-static {}, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;->a()[Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;->e:[Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static synthetic a()[Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

    .line 4
    const/4 v1, 0x0

    .line 5
    sget-object v2, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;->a:Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

    .line 7
    aput-object v2, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    sget-object v2, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;->b:Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

    .line 12
    aput-object v2, v0, v1

    .line 14
    const/4 v1, 0x2

    .line 15
    sget-object v2, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;->c:Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

    .line 17
    aput-object v2, v0, v1

    .line 19
    const/4 v1, 0x3

    .line 20
    sget-object v2, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;->d:Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

    .line 22
    aput-object v2, v0, v1

    .line 24
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;
    .locals 1

    .line 1
    const-class v0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;->e:[Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

    .line 3
    invoke-virtual {v0}, [Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

    .line 9
    return-object v0
.end method
