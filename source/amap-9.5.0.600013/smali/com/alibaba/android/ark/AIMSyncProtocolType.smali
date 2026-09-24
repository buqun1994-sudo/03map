.class public final enum Lcom/alibaba/android/ark/AIMSyncProtocolType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/android/ark/AIMSyncProtocolType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ark/AIMSyncProtocolType;

.field public static final enum RELIABLE:Lcom/alibaba/android/ark/AIMSyncProtocolType;

.field public static final enum UNRELIABLE:Lcom/alibaba/android/ark/AIMSyncProtocolType;

.field private static final sValueToEnumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/android/ark/AIMSyncProtocolType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/alibaba/android/ark/AIMSyncProtocolType;

    .line 3
    const-string v1, "RELIABLE"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/android/ark/AIMSyncProtocolType;-><init>(Ljava/lang/String;II)V

    .line 9
    sput-object v0, Lcom/alibaba/android/ark/AIMSyncProtocolType;->RELIABLE:Lcom/alibaba/android/ark/AIMSyncProtocolType;

    .line 11
    new-instance v1, Lcom/alibaba/android/ark/AIMSyncProtocolType;

    .line 13
    const-string v3, "UNRELIABLE"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lcom/alibaba/android/ark/AIMSyncProtocolType;-><init>(Ljava/lang/String;II)V

    .line 19
    sput-object v1, Lcom/alibaba/android/ark/AIMSyncProtocolType;->UNRELIABLE:Lcom/alibaba/android/ark/AIMSyncProtocolType;

    .line 21
    const/4 v3, 0x2

    .line 22
    new-array v3, v3, [Lcom/alibaba/android/ark/AIMSyncProtocolType;

    .line 24
    aput-object v0, v3, v2

    .line 26
    aput-object v1, v3, v4

    .line 28
    sput-object v3, Lcom/alibaba/android/ark/AIMSyncProtocolType;->$VALUES:[Lcom/alibaba/android/ark/AIMSyncProtocolType;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    .line 32
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    sput-object v0, Lcom/alibaba/android/ark/AIMSyncProtocolType;->sValueToEnumMap:Ljava/util/Map;

    .line 37
    const-class v0, Lcom/alibaba/android/ark/AIMSyncProtocolType;

    .line 39
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 46
    move-result-object v0

    .line 47
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_0

    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Lcom/alibaba/android/ark/AIMSyncProtocolType;

    .line 59
    sget-object v2, Lcom/alibaba/android/ark/AIMSyncProtocolType;->sValueToEnumMap:Ljava/util/Map;

    .line 61
    iget v3, v1, Lcom/alibaba/android/ark/AIMSyncProtocolType;->value:I

    .line 63
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object v3

    .line 67
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    goto :goto_0

    .line 71
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
    iput p3, p0, Lcom/alibaba/android/ark/AIMSyncProtocolType;->value:I

    .line 6
    return-void
.end method

.method public static forValue(I)Lcom/alibaba/android/ark/AIMSyncProtocolType;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/android/ark/AIMSyncProtocolType;->sValueToEnumMap:Ljava/util/Map;

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p0

    .line 7
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/alibaba/android/ark/AIMSyncProtocolType;

    .line 13
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ark/AIMSyncProtocolType;
    .locals 1

    .line 1
    const-class v0, Lcom/alibaba/android/ark/AIMSyncProtocolType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/alibaba/android/ark/AIMSyncProtocolType;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/alibaba/android/ark/AIMSyncProtocolType;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/android/ark/AIMSyncProtocolType;->$VALUES:[Lcom/alibaba/android/ark/AIMSyncProtocolType;

    .line 3
    invoke-virtual {v0}, [Lcom/alibaba/android/ark/AIMSyncProtocolType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/alibaba/android/ark/AIMSyncProtocolType;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/android/ark/AIMSyncProtocolType;->value:I

    .line 3
    return v0
.end method
