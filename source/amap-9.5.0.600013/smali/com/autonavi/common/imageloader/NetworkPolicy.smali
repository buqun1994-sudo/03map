.class public final enum Lcom/autonavi/common/imageloader/NetworkPolicy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/autonavi/common/imageloader/NetworkPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/common/imageloader/NetworkPolicy;

.field public static final enum NO_CACHE:Lcom/autonavi/common/imageloader/NetworkPolicy;

.field public static final enum NO_STORE:Lcom/autonavi/common/imageloader/NetworkPolicy;

.field public static final enum OFFLINE:Lcom/autonavi/common/imageloader/NetworkPolicy;


# instance fields
.field final index:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/autonavi/common/imageloader/NetworkPolicy;

    .line 3
    const-string v1, "NO_CACHE"

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/common/imageloader/NetworkPolicy;-><init>(Ljava/lang/String;II)V

    .line 10
    sput-object v0, Lcom/autonavi/common/imageloader/NetworkPolicy;->NO_CACHE:Lcom/autonavi/common/imageloader/NetworkPolicy;

    .line 12
    new-instance v1, Lcom/autonavi/common/imageloader/NetworkPolicy;

    .line 14
    const-string v4, "NO_STORE"

    .line 16
    const/4 v5, 0x2

    .line 17
    invoke-direct {v1, v4, v3, v5}, Lcom/autonavi/common/imageloader/NetworkPolicy;-><init>(Ljava/lang/String;II)V

    .line 20
    sput-object v1, Lcom/autonavi/common/imageloader/NetworkPolicy;->NO_STORE:Lcom/autonavi/common/imageloader/NetworkPolicy;

    .line 22
    new-instance v4, Lcom/autonavi/common/imageloader/NetworkPolicy;

    .line 24
    const-string v6, "OFFLINE"

    .line 26
    const/4 v7, 0x4

    .line 27
    invoke-direct {v4, v6, v5, v7}, Lcom/autonavi/common/imageloader/NetworkPolicy;-><init>(Ljava/lang/String;II)V

    .line 30
    sput-object v4, Lcom/autonavi/common/imageloader/NetworkPolicy;->OFFLINE:Lcom/autonavi/common/imageloader/NetworkPolicy;

    .line 32
    const/4 v6, 0x3

    .line 33
    new-array v6, v6, [Lcom/autonavi/common/imageloader/NetworkPolicy;

    .line 35
    aput-object v0, v6, v2

    .line 37
    aput-object v1, v6, v3

    .line 39
    aput-object v4, v6, v5

    .line 41
    sput-object v6, Lcom/autonavi/common/imageloader/NetworkPolicy;->$VALUES:[Lcom/autonavi/common/imageloader/NetworkPolicy;

    .line 43
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput p3, p0, Lcom/autonavi/common/imageloader/NetworkPolicy;->index:I

    .line 6
    return-void
.end method

.method public static isOfflineOnly(I)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/common/imageloader/NetworkPolicy;->OFFLINE:Lcom/autonavi/common/imageloader/NetworkPolicy;

    .line 3
    iget v0, v0, Lcom/autonavi/common/imageloader/NetworkPolicy;->index:I

    .line 5
    and-int/2addr p0, v0

    .line 6
    if-eqz p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public static shouldReadFromDiskCache(I)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/common/imageloader/NetworkPolicy;->NO_CACHE:Lcom/autonavi/common/imageloader/NetworkPolicy;

    .line 3
    iget v0, v0, Lcom/autonavi/common/imageloader/NetworkPolicy;->index:I

    .line 5
    and-int/2addr p0, v0

    .line 6
    if-nez p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public static shouldWriteToDiskCache(I)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/common/imageloader/NetworkPolicy;->NO_STORE:Lcom/autonavi/common/imageloader/NetworkPolicy;

    .line 3
    iget v0, v0, Lcom/autonavi/common/imageloader/NetworkPolicy;->index:I

    .line 5
    and-int/2addr p0, v0

    .line 6
    if-nez p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/common/imageloader/NetworkPolicy;
    .locals 1

    .line 1
    const-class v0, Lcom/autonavi/common/imageloader/NetworkPolicy;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/autonavi/common/imageloader/NetworkPolicy;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/autonavi/common/imageloader/NetworkPolicy;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/common/imageloader/NetworkPolicy;->$VALUES:[Lcom/autonavi/common/imageloader/NetworkPolicy;

    .line 3
    invoke-virtual {v0}, [Lcom/autonavi/common/imageloader/NetworkPolicy;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/autonavi/common/imageloader/NetworkPolicy;

    .line 9
    return-object v0
.end method
