.class public final Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/model/ModelDataResponseBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlgorithmModelData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;",
        "Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData$Builder;",
        ">;",
        "Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelDataOrBuilder;"
    }
.end annotation


# static fields
.field public static final ALGORITHMNAME_FIELD_NUMBER:I = 0x1

.field public static final AREALEVEL_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

.field public static final MODELDATA_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;",
            ">;"
        }
    .end annotation
.end field

.field public static final YAWREJECTLIST_FIELD_NUMBER:I = 0x4


# instance fields
.field private algorithmName_:Ljava/lang/String;

.field private areaLevel_:I

.field private modelData_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/protobuf/model/ModelDataResponseBean$ModelData;",
            ">;"
        }
    .end annotation
.end field

.field private yawRejectList_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/protobuf/model/ModelDataResponseBean$YawReject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    .line 3
    invoke-direct {v0}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;-><init>()V

    .line 6
    sput-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    .line 8
    const-class v1, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    .line 10
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4
    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->algorithmName_:Ljava/lang/String;

    .line 8
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->modelData_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 14
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->yawRejectList_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 20
    return-void
.end method

.method public static synthetic access$1600()Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    .line 3
    return-object v0
.end method

.method public static synthetic access$1700(Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->setAlgorithmName(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic access$1800(Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->clearAlgorithmName()V

    .line 4
    return-void
.end method

.method public static synthetic access$1900(Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->setAlgorithmNameBytes(Lcom/google/protobuf/ByteString;)V

    .line 4
    return-void
.end method

.method public static synthetic access$2000(Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->setAreaLevelValue(I)V

    .line 4
    return-void
.end method

.method public static synthetic access$2100(Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;Lcom/google/protobuf/model/ModelDataResponseBean$AreaLevel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->setAreaLevel(Lcom/google/protobuf/model/ModelDataResponseBean$AreaLevel;)V

    .line 4
    return-void
.end method

.method public static synthetic access$2200(Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->clearAreaLevel()V

    .line 4
    return-void
.end method

.method public static synthetic access$2300(Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;ILcom/google/protobuf/model/ModelDataResponseBean$ModelData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->setModelData(ILcom/google/protobuf/model/ModelDataResponseBean$ModelData;)V

    .line 4
    return-void
.end method

.method public static synthetic access$2400(Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;ILcom/google/protobuf/model/ModelDataResponseBean$ModelData$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->setModelData(ILcom/google/protobuf/model/ModelDataResponseBean$ModelData$Builder;)V

    .line 4
    return-void
.end method

.method public static synthetic access$2500(Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;Lcom/google/protobuf/model/ModelDataResponseBean$ModelData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->addModelData(Lcom/google/protobuf/model/ModelDataResponseBean$ModelData;)V

    .line 4
    return-void
.end method

.method public static synthetic access$2600(Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;ILcom/google/protobuf/model/ModelDataResponseBean$ModelData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->addModelData(ILcom/google/protobuf/model/ModelDataResponseBean$ModelData;)V

    .line 4
    return-void
.end method

.method public static synthetic access$2700(Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;Lcom/google/protobuf/model/ModelDataResponseBean$ModelData$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->addModelData(Lcom/google/protobuf/model/ModelDataResponseBean$ModelData$Builder;)V

    .line 4
    return-void
.end method

.method public static synthetic access$2800(Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;ILcom/google/protobuf/model/ModelDataResponseBean$ModelData$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->addModelData(ILcom/google/protobuf/model/ModelDataResponseBean$ModelData$Builder;)V

    .line 4
    return-void
.end method

.method public static synthetic access$2900(Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->addAllModelData(Ljava/lang/Iterable;)V

    .line 4
    return-void
.end method

.method public static synthetic access$3000(Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->clearModelData()V

    .line 4
    return-void
.end method

.method public static synthetic access$3100(Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->removeModelData(I)V

    .line 4
    return-void
.end method

.method public static synthetic access$3200(Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;ILcom/google/protobuf/model/ModelDataResponseBean$YawReject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->setYawRejectList(ILcom/google/protobuf/model/ModelDataResponseBean$YawReject;)V

    .line 4
    return-void
.end method

.method public static synthetic access$3300(Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;ILcom/google/protobuf/model/ModelDataResponseBean$YawReject$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->setYawRejectList(ILcom/google/protobuf/model/ModelDataResponseBean$YawReject$Builder;)V

    .line 4
    return-void
.end method

.method public static synthetic access$3400(Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;Lcom/google/protobuf/model/ModelDataResponseBean$YawReject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->addYawRejectList(Lcom/google/protobuf/model/ModelDataResponseBean$YawReject;)V

    .line 4
    return-void
.end method

.method public static synthetic access$3500(Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;ILcom/google/protobuf/model/ModelDataResponseBean$YawReject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->addYawRejectList(ILcom/google/protobuf/model/ModelDataResponseBean$YawReject;)V

    .line 4
    return-void
.end method

.method public static synthetic access$3600(Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;Lcom/google/protobuf/model/ModelDataResponseBean$YawReject$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->addYawRejectList(Lcom/google/protobuf/model/ModelDataResponseBean$YawReject$Builder;)V

    .line 4
    return-void
.end method

.method public static synthetic access$3700(Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;ILcom/google/protobuf/model/ModelDataResponseBean$YawReject$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->addYawRejectList(ILcom/google/protobuf/model/ModelDataResponseBean$YawReject$Builder;)V

    .line 4
    return-void
.end method

.method public static synthetic access$3800(Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->addAllYawRejectList(Ljava/lang/Iterable;)V

    .line 4
    return-void
.end method

.method public static synthetic access$3900(Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->clearYawRejectList()V

    .line 4
    return-void
.end method

.method public static synthetic access$4000(Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->removeYawRejectList(I)V

    .line 4
    return-void
.end method

.method private addAllModelData(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/model/ModelDataResponseBean$ModelData;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->ensureModelDataIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->modelData_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 9
    return-void
.end method

.method private addAllYawRejectList(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/model/ModelDataResponseBean$YawReject;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->ensureYawRejectListIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->yawRejectList_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 9
    return-void
.end method

.method private addModelData(ILcom/google/protobuf/model/ModelDataResponseBean$ModelData$Builder;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->ensureModelDataIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->modelData_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addModelData(ILcom/google/protobuf/model/ModelDataResponseBean$ModelData;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->ensureModelDataIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->modelData_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addModelData(Lcom/google/protobuf/model/ModelDataResponseBean$ModelData$Builder;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->ensureModelDataIsMutable()V

    .line 8
    iget-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->modelData_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addModelData(Lcom/google/protobuf/model/ModelDataResponseBean$ModelData;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->ensureModelDataIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->modelData_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addYawRejectList(ILcom/google/protobuf/model/ModelDataResponseBean$YawReject$Builder;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->ensureYawRejectListIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->yawRejectList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addYawRejectList(ILcom/google/protobuf/model/ModelDataResponseBean$YawReject;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->ensureYawRejectListIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->yawRejectList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addYawRejectList(Lcom/google/protobuf/model/ModelDataResponseBean$YawReject$Builder;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->ensureYawRejectListIsMutable()V

    .line 8
    iget-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->yawRejectList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addYawRejectList(Lcom/google/protobuf/model/ModelDataResponseBean$YawReject;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->ensureYawRejectListIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->yawRejectList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAlgorithmName()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->getDefaultInstance()Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->getAlgorithmName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->algorithmName_:Ljava/lang/String;

    .line 11
    return-void
.end method

.method private clearAreaLevel()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->areaLevel_:I

    .line 4
    return-void
.end method

.method private clearModelData()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->modelData_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7
    return-void
.end method

.method private clearYawRejectList()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->yawRejectList_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7
    return-void
.end method

.method private ensureModelDataIsMutable()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->modelData_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->modelData_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 11
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->modelData_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 17
    :cond_0
    return-void
.end method

.method private ensureYawRejectListIsMutable()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->yawRejectList_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->yawRejectList_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 11
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->yawRejectList_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 17
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;)Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private removeModelData(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->ensureModelDataIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->modelData_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 9
    return-void
.end method

.method private removeYawRejectList(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->ensureYawRejectListIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->yawRejectList_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 9
    return-void
.end method

.method private setAlgorithmName(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p1, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->algorithmName_:Ljava/lang/String;

    .line 6
    return-void
.end method

.method private setAlgorithmNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 7
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->algorithmName_:Ljava/lang/String;

    .line 13
    return-void
.end method

.method private setAreaLevel(Lcom/google/protobuf/model/ModelDataResponseBean$AreaLevel;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/model/ModelDataResponseBean$AreaLevel;->getNumber()I

    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->areaLevel_:I

    .line 10
    return-void
.end method

.method private setAreaLevelValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->areaLevel_:I

    .line 3
    return-void
.end method

.method private setModelData(ILcom/google/protobuf/model/ModelDataResponseBean$ModelData$Builder;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->ensureModelDataIsMutable()V

    .line 5
    iget-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->modelData_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setModelData(ILcom/google/protobuf/model/ModelDataResponseBean$ModelData;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->ensureModelDataIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->modelData_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setYawRejectList(ILcom/google/protobuf/model/ModelDataResponseBean$YawReject$Builder;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->ensureYawRejectListIsMutable()V

    .line 5
    iget-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->yawRejectList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setYawRejectList(ILcom/google/protobuf/model/ModelDataResponseBean$YawReject;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->ensureYawRejectListIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->yawRejectList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lcom/google/protobuf/model/ModelDataResponseBean$1;->a:[I

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result p1

    .line 7
    aget p1, p2, p1

    .line 9
    const/4 p2, 0x1

    .line 10
    const/4 p3, 0x0

    .line 11
    packed-switch p1, :pswitch_data_0

    .line 14
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 16
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 19
    throw p1

    .line 20
    :pswitch_0
    return-object p3

    .line 21
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :pswitch_2
    sget-object p1, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->PARSER:Lcom/google/protobuf/Parser;

    .line 28
    if-nez p1, :cond_1

    .line 30
    const-class p2, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    .line 32
    monitor-enter p2

    .line 33
    :try_start_0
    sget-object p1, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->PARSER:Lcom/google/protobuf/Parser;

    .line 35
    if-nez p1, :cond_0

    .line 37
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    .line 39
    sget-object p3, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    .line 41
    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 44
    sput-object p1, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->PARSER:Lcom/google/protobuf/Parser;

    .line 46
    :cond_0
    monitor-exit p2

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p1

    .line 51
    :cond_1
    :goto_0
    return-object p1

    .line 52
    :pswitch_3
    sget-object p1, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    .line 54
    return-object p1

    .line 55
    :pswitch_4
    const/4 p1, 0x6

    .line 56
    new-array p1, p1, [Ljava/lang/Object;

    .line 58
    const/4 p3, 0x0

    .line 59
    const-string v0, "algorithmName_"

    .line 61
    aput-object v0, p1, p3

    .line 63
    const-string p3, "areaLevel_"

    .line 65
    aput-object p3, p1, p2

    .line 67
    const/4 p2, 0x2

    .line 68
    const-string p3, "modelData_"

    .line 70
    aput-object p3, p1, p2

    .line 72
    const/4 p2, 0x3

    .line 73
    const-class p3, Lcom/google/protobuf/model/ModelDataResponseBean$ModelData;

    .line 75
    aput-object p3, p1, p2

    .line 77
    const/4 p2, 0x4

    .line 78
    const-string p3, "yawRejectList_"

    .line 80
    aput-object p3, p1, p2

    .line 82
    const/4 p2, 0x5

    .line 83
    const-class p3, Lcom/google/protobuf/model/ModelDataResponseBean$YawReject;

    .line 85
    aput-object p3, p1, p2

    .line 87
    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0002\u0000\u0001\u0208\u0002\u000c\u0003\u001b\u0004\u001b"

    .line 89
    sget-object p3, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    .line 91
    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    move-result-object p1

    .line 95
    return-object p1

    .line 96
    :pswitch_5
    new-instance p1, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData$Builder;

    .line 98
    invoke-direct {p1, p3}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData$Builder;-><init>(Lcom/google/protobuf/model/ModelDataResponseBean$1;)V

    .line 101
    return-object p1

    .line 102
    :pswitch_6
    new-instance p1, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    .line 104
    invoke-direct {p1}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;-><init>()V

    .line 107
    return-object p1

    .line 108
    nop

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->algorithmName_:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getAlgorithmNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->algorithmName_:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getAreaLevel()Lcom/google/protobuf/model/ModelDataResponseBean$AreaLevel;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->areaLevel_:I

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/model/ModelDataResponseBean$AreaLevel;->forNumber(I)Lcom/google/protobuf/model/ModelDataResponseBean$AreaLevel;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$AreaLevel;->UNRECOGNIZED:Lcom/google/protobuf/model/ModelDataResponseBean$AreaLevel;

    .line 11
    :cond_0
    return-object v0
.end method

.method public getAreaLevelValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->areaLevel_:I

    .line 3
    return v0
.end method

.method public getModelData(I)Lcom/google/protobuf/model/ModelDataResponseBean$ModelData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->modelData_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/protobuf/model/ModelDataResponseBean$ModelData;

    .line 9
    return-object p1
.end method

.method public getModelDataCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->modelData_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getModelDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/model/ModelDataResponseBean$ModelData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->modelData_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3
    return-object v0
.end method

.method public getModelDataOrBuilder(I)Lcom/google/protobuf/model/ModelDataResponseBean$ModelDataOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->modelData_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/protobuf/model/ModelDataResponseBean$ModelDataOrBuilder;

    .line 9
    return-object p1
.end method

.method public getModelDataOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/model/ModelDataResponseBean$ModelDataOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->modelData_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3
    return-object v0
.end method

.method public getYawRejectList(I)Lcom/google/protobuf/model/ModelDataResponseBean$YawReject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->yawRejectList_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/protobuf/model/ModelDataResponseBean$YawReject;

    .line 9
    return-object p1
.end method

.method public getYawRejectListCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->yawRejectList_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getYawRejectListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/model/ModelDataResponseBean$YawReject;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->yawRejectList_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3
    return-object v0
.end method

.method public getYawRejectListOrBuilder(I)Lcom/google/protobuf/model/ModelDataResponseBean$YawRejectOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->yawRejectList_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/protobuf/model/ModelDataResponseBean$YawRejectOrBuilder;

    .line 9
    return-object p1
.end method

.method public getYawRejectListOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/model/ModelDataResponseBean$YawRejectOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->yawRejectList_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3
    return-object v0
.end method
