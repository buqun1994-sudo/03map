.class public final enum Lcom/alibaba/android/ark/AIMConvType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/android/ark/AIMConvType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ark/AIMConvType;

.field public static final enum CONV_TYPE_GROUP:Lcom/alibaba/android/ark/AIMConvType;

.field public static final enum CONV_TYPE_SINGLE:Lcom/alibaba/android/ark/AIMConvType;

.field public static final enum CONV_TYPE_UNKNOW:Lcom/alibaba/android/ark/AIMConvType;

.field private static final sValueToEnumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/android/ark/AIMConvType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/alibaba/android/ark/AIMConvType;

    .line 3
    const/4 v1, -0x1

    .line 4
    const-string v2, "CONV_TYPE_UNKNOW"

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v2, v3, v1}, Lcom/alibaba/android/ark/AIMConvType;-><init>(Ljava/lang/String;II)V

    .line 10
    sput-object v0, Lcom/alibaba/android/ark/AIMConvType;->CONV_TYPE_UNKNOW:Lcom/alibaba/android/ark/AIMConvType;

    .line 12
    new-instance v1, Lcom/alibaba/android/ark/AIMConvType;

    .line 14
    const-string v2, "CONV_TYPE_SINGLE"

    .line 16
    const/4 v4, 0x1

    .line 17
    invoke-direct {v1, v2, v4, v4}, Lcom/alibaba/android/ark/AIMConvType;-><init>(Ljava/lang/String;II)V

    .line 20
    sput-object v1, Lcom/alibaba/android/ark/AIMConvType;->CONV_TYPE_SINGLE:Lcom/alibaba/android/ark/AIMConvType;

    .line 22
    new-instance v2, Lcom/alibaba/android/ark/AIMConvType;

    .line 24
    const-string v5, "CONV_TYPE_GROUP"

    .line 26
    const/4 v6, 0x2

    .line 27
    invoke-direct {v2, v5, v6, v6}, Lcom/alibaba/android/ark/AIMConvType;-><init>(Ljava/lang/String;II)V

    .line 30
    sput-object v2, Lcom/alibaba/android/ark/AIMConvType;->CONV_TYPE_GROUP:Lcom/alibaba/android/ark/AIMConvType;

    .line 32
    const/4 v5, 0x3

    .line 33
    new-array v5, v5, [Lcom/alibaba/android/ark/AIMConvType;

    .line 35
    aput-object v0, v5, v3

    .line 37
    aput-object v1, v5, v4

    .line 39
    aput-object v2, v5, v6

    .line 41
    sput-object v5, Lcom/alibaba/android/ark/AIMConvType;->$VALUES:[Lcom/alibaba/android/ark/AIMConvType;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    .line 45
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 48
    sput-object v0, Lcom/alibaba/android/ark/AIMConvType;->sValueToEnumMap:Ljava/util/Map;

    .line 50
    const-class v0, Lcom/alibaba/android/ark/AIMConvType;

    .line 52
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 59
    move-result-object v0

    .line 60
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_0

    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Lcom/alibaba/android/ark/AIMConvType;

    .line 72
    sget-object v2, Lcom/alibaba/android/ark/AIMConvType;->sValueToEnumMap:Ljava/util/Map;

    .line 74
    iget v3, v1, Lcom/alibaba/android/ark/AIMConvType;->value:I

    .line 76
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    move-result-object v3

    .line 80
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    goto :goto_0

    .line 84
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
    iput p3, p0, Lcom/alibaba/android/ark/AIMConvType;->value:I

    .line 6
    return-void
.end method

.method public static forValue(I)Lcom/alibaba/android/ark/AIMConvType;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/android/ark/AIMConvType;->sValueToEnumMap:Ljava/util/Map;

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p0

    .line 7
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/alibaba/android/ark/AIMConvType;

    .line 13
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ark/AIMConvType;
    .locals 1

    .line 1
    const-class v0, Lcom/alibaba/android/ark/AIMConvType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/alibaba/android/ark/AIMConvType;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/alibaba/android/ark/AIMConvType;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/android/ark/AIMConvType;->$VALUES:[Lcom/alibaba/android/ark/AIMConvType;

    .line 3
    invoke-virtual {v0}, [Lcom/alibaba/android/ark/AIMConvType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/alibaba/android/ark/AIMConvType;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/android/ark/AIMConvType;->value:I

    .line 3
    return v0
.end method
