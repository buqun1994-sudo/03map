.class public final enum Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/common/imageloader/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoadedFrom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;

.field public static final enum DISK:Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;

.field public static final enum MEMORY:Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;

.field public static final enum NETWORK:Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;


# instance fields
.field final debugColor:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;

    .line 3
    const v1, -0xff0100

    .line 6
    const-string v2, "MEMORY"

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {v0, v2, v3, v1}, Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;-><init>(Ljava/lang/String;II)V

    .line 12
    sput-object v0, Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;->MEMORY:Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;

    .line 14
    new-instance v1, Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;

    .line 16
    const v2, -0xffff01

    .line 19
    const-string v4, "DISK"

    .line 21
    const/4 v5, 0x1

    .line 22
    invoke-direct {v1, v4, v5, v2}, Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;-><init>(Ljava/lang/String;II)V

    .line 25
    sput-object v1, Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;->DISK:Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;

    .line 27
    new-instance v2, Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;

    .line 29
    const/high16 v4, -0x10000

    .line 31
    const-string v6, "NETWORK"

    .line 33
    const/4 v7, 0x2

    .line 34
    invoke-direct {v2, v6, v7, v4}, Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;-><init>(Ljava/lang/String;II)V

    .line 37
    sput-object v2, Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;->NETWORK:Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;

    .line 39
    const/4 v4, 0x3

    .line 40
    new-array v4, v4, [Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;

    .line 42
    aput-object v0, v4, v3

    .line 44
    aput-object v1, v4, v5

    .line 46
    aput-object v2, v4, v7

    .line 48
    sput-object v4, Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;->$VALUES:[Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;

    .line 50
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
    iput p3, p0, Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;->debugColor:I

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;
    .locals 1

    .line 1
    const-class v0, Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;->$VALUES:[Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;

    .line 3
    invoke-virtual {v0}, [Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;

    .line 9
    return-object v0
.end method
