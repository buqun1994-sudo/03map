.class public final enum Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum b:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;

.field public static final enum c:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;

.field public static final enum d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;

.field public static final synthetic e:[Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;

    .line 3
    const-string v1, "NAVIGATION"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;-><init>(Ljava/lang/String;II)V

    .line 9
    sput-object v0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;->b:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;

    .line 11
    new-instance v0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;

    .line 13
    const-string v1, "SIMULATION"

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;-><init>(Ljava/lang/String;II)V

    .line 19
    sput-object v0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;->c:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;

    .line 21
    new-instance v0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;

    .line 23
    const-string v1, "CRUISE"

    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;-><init>(Ljava/lang/String;II)V

    .line 29
    sput-object v0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;

    .line 31
    invoke-static {}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;->a()[Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;

    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;->e:[Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput p3, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;->a:I

    .line 6
    return-void
.end method

.method public static synthetic a()[Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;

    .line 4
    const/4 v1, 0x0

    .line 5
    sget-object v2, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;->b:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;

    .line 7
    aput-object v2, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    sget-object v2, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;->c:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;

    .line 12
    aput-object v2, v0, v1

    .line 14
    const/4 v1, 0x2

    .line 15
    sget-object v2, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;

    .line 17
    aput-object v2, v0, v1

    .line 19
    return-object v0
.end method

.method public static b(I)Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;
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
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    sget-object p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;

    .line 13
    return-object p0

    .line 14
    :cond_1
    sget-object p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;->c:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;

    .line 16
    return-object p0

    .line 17
    :cond_2
    sget-object p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;->b:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;

    .line 19
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;
    .locals 1

    .line 1
    const-class v0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;->e:[Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;

    .line 3
    invoke-virtual {v0}, [Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;

    .line 9
    return-object v0
.end method
