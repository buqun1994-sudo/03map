.class public Lcom/autonavi/amapauto/jni/protocol/data/DeepInfoData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CATEGORY_CHARGE:I = 0x3

.field public static final CATEGORY_HOTEL:I = 0x2

.field public static final CATEGORY_OIL:I = 0x1

.field public static final CATEGORY_PARKING:I


# instance fields
.field public category:I

.field public chargeInfo:Lcom/autonavi/amapauto/jni/protocol/data/ChargeInfoData;

.field public parkinfo:Lcom/autonavi/amapauto/jni/protocol/data/ParkInfoData;

.field public tag:Ljava/lang/String;

.field public taginfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/protocol/data/OilInfoData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParkinfo()Lcom/autonavi/amapauto/jni/protocol/data/ParkInfoData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/DeepInfoData;->parkinfo:Lcom/autonavi/amapauto/jni/protocol/data/ParkInfoData;

    .line 3
    return-object v0
.end method

.method public getTaginfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/protocol/data/OilInfoData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/DeepInfoData;->taginfoList:Ljava/util/List;

    .line 3
    return-object v0
.end method
