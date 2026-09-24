.class public final enum Lcom/alibaba/android/ark/AIMMsgRecallType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/android/ark/AIMMsgRecallType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ark/AIMMsgRecallType;

.field public static final enum RECALL_TYPE_ADMIN:Lcom/alibaba/android/ark/AIMMsgRecallType;

.field public static final enum RECALL_TYPE_CUSTOM:Lcom/alibaba/android/ark/AIMMsgRecallType;

.field public static final enum RECALL_TYPE_GROUP_OWNER:Lcom/alibaba/android/ark/AIMMsgRecallType;

.field public static final enum RECALL_TYPE_SECURITY:Lcom/alibaba/android/ark/AIMMsgRecallType;

.field public static final enum RECALL_TYPE_SENDER:Lcom/alibaba/android/ark/AIMMsgRecallType;

.field public static final enum RECALL_TYPE_SYSTEM:Lcom/alibaba/android/ark/AIMMsgRecallType;

.field public static final enum RECALL_TYPE_UNKNOWN:Lcom/alibaba/android/ark/AIMMsgRecallType;

.field private static final sValueToEnumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/android/ark/AIMMsgRecallType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/alibaba/android/ark/AIMMsgRecallType;

    .line 3
    const/4 v1, -0x1

    .line 4
    const-string v2, "RECALL_TYPE_UNKNOWN"

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v2, v3, v1}, Lcom/alibaba/android/ark/AIMMsgRecallType;-><init>(Ljava/lang/String;II)V

    .line 10
    sput-object v0, Lcom/alibaba/android/ark/AIMMsgRecallType;->RECALL_TYPE_UNKNOWN:Lcom/alibaba/android/ark/AIMMsgRecallType;

    .line 12
    new-instance v1, Lcom/alibaba/android/ark/AIMMsgRecallType;

    .line 14
    const-string v2, "RECALL_TYPE_SENDER"

    .line 16
    const/4 v4, 0x1

    .line 17
    invoke-direct {v1, v2, v4, v3}, Lcom/alibaba/android/ark/AIMMsgRecallType;-><init>(Ljava/lang/String;II)V

    .line 20
    sput-object v1, Lcom/alibaba/android/ark/AIMMsgRecallType;->RECALL_TYPE_SENDER:Lcom/alibaba/android/ark/AIMMsgRecallType;

    .line 22
    new-instance v2, Lcom/alibaba/android/ark/AIMMsgRecallType;

    .line 24
    const-string v5, "RECALL_TYPE_GROUP_OWNER"

    .line 26
    const/4 v6, 0x2

    .line 27
    invoke-direct {v2, v5, v6, v4}, Lcom/alibaba/android/ark/AIMMsgRecallType;-><init>(Ljava/lang/String;II)V

    .line 30
    sput-object v2, Lcom/alibaba/android/ark/AIMMsgRecallType;->RECALL_TYPE_GROUP_OWNER:Lcom/alibaba/android/ark/AIMMsgRecallType;

    .line 32
    new-instance v5, Lcom/alibaba/android/ark/AIMMsgRecallType;

    .line 34
    const-string v7, "RECALL_TYPE_SYSTEM"

    .line 36
    const/4 v8, 0x3

    .line 37
    invoke-direct {v5, v7, v8, v6}, Lcom/alibaba/android/ark/AIMMsgRecallType;-><init>(Ljava/lang/String;II)V

    .line 40
    sput-object v5, Lcom/alibaba/android/ark/AIMMsgRecallType;->RECALL_TYPE_SYSTEM:Lcom/alibaba/android/ark/AIMMsgRecallType;

    .line 42
    new-instance v7, Lcom/alibaba/android/ark/AIMMsgRecallType;

    .line 44
    const-string v9, "RECALL_TYPE_SECURITY"

    .line 46
    const/4 v10, 0x4

    .line 47
    invoke-direct {v7, v9, v10, v8}, Lcom/alibaba/android/ark/AIMMsgRecallType;-><init>(Ljava/lang/String;II)V

    .line 50
    sput-object v7, Lcom/alibaba/android/ark/AIMMsgRecallType;->RECALL_TYPE_SECURITY:Lcom/alibaba/android/ark/AIMMsgRecallType;

    .line 52
    new-instance v9, Lcom/alibaba/android/ark/AIMMsgRecallType;

    .line 54
    const-string v11, "RECALL_TYPE_ADMIN"

    .line 56
    const/4 v12, 0x5

    .line 57
    invoke-direct {v9, v11, v12, v10}, Lcom/alibaba/android/ark/AIMMsgRecallType;-><init>(Ljava/lang/String;II)V

    .line 60
    sput-object v9, Lcom/alibaba/android/ark/AIMMsgRecallType;->RECALL_TYPE_ADMIN:Lcom/alibaba/android/ark/AIMMsgRecallType;

    .line 62
    new-instance v11, Lcom/alibaba/android/ark/AIMMsgRecallType;

    .line 64
    const/16 v13, 0x65

    .line 66
    const-string v14, "RECALL_TYPE_CUSTOM"

    .line 68
    const/4 v15, 0x6

    .line 69
    invoke-direct {v11, v14, v15, v13}, Lcom/alibaba/android/ark/AIMMsgRecallType;-><init>(Ljava/lang/String;II)V

    .line 72
    sput-object v11, Lcom/alibaba/android/ark/AIMMsgRecallType;->RECALL_TYPE_CUSTOM:Lcom/alibaba/android/ark/AIMMsgRecallType;

    .line 74
    const/4 v13, 0x7

    .line 75
    new-array v13, v13, [Lcom/alibaba/android/ark/AIMMsgRecallType;

    .line 77
    aput-object v0, v13, v3

    .line 79
    aput-object v1, v13, v4

    .line 81
    aput-object v2, v13, v6

    .line 83
    aput-object v5, v13, v8

    .line 85
    aput-object v7, v13, v10

    .line 87
    aput-object v9, v13, v12

    .line 89
    aput-object v11, v13, v15

    .line 91
    sput-object v13, Lcom/alibaba/android/ark/AIMMsgRecallType;->$VALUES:[Lcom/alibaba/android/ark/AIMMsgRecallType;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    .line 95
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 98
    sput-object v0, Lcom/alibaba/android/ark/AIMMsgRecallType;->sValueToEnumMap:Ljava/util/Map;

    .line 100
    const-class v0, Lcom/alibaba/android/ark/AIMMsgRecallType;

    .line 102
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 109
    move-result-object v0

    .line 110
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_0

    .line 116
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Lcom/alibaba/android/ark/AIMMsgRecallType;

    .line 122
    sget-object v2, Lcom/alibaba/android/ark/AIMMsgRecallType;->sValueToEnumMap:Ljava/util/Map;

    .line 124
    iget v3, v1, Lcom/alibaba/android/ark/AIMMsgRecallType;->value:I

    .line 126
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    move-result-object v3

    .line 130
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    goto :goto_0

    .line 134
    :cond_0
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
    iput p3, p0, Lcom/alibaba/android/ark/AIMMsgRecallType;->value:I

    .line 6
    return-void
.end method

.method public static forValue(I)Lcom/alibaba/android/ark/AIMMsgRecallType;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/android/ark/AIMMsgRecallType;->sValueToEnumMap:Ljava/util/Map;

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p0

    .line 7
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/alibaba/android/ark/AIMMsgRecallType;

    .line 13
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ark/AIMMsgRecallType;
    .locals 1

    .line 1
    const-class v0, Lcom/alibaba/android/ark/AIMMsgRecallType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/alibaba/android/ark/AIMMsgRecallType;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/alibaba/android/ark/AIMMsgRecallType;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/android/ark/AIMMsgRecallType;->$VALUES:[Lcom/alibaba/android/ark/AIMMsgRecallType;

    .line 3
    invoke-virtual {v0}, [Lcom/alibaba/android/ark/AIMMsgRecallType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/alibaba/android/ark/AIMMsgRecallType;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/android/ark/AIMMsgRecallType;->value:I

    .line 3
    return v0
.end method
