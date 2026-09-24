.class public final enum Lcom/alibaba/android/ark/AIMNetType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/android/ark/AIMNetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ark/AIMNetType;

.field public static final enum NT_2G:Lcom/alibaba/android/ark/AIMNetType;

.field public static final enum NT_3G:Lcom/alibaba/android/ark/AIMNetType;

.field public static final enum NT_4G:Lcom/alibaba/android/ark/AIMNetType;

.field public static final enum NT_5G:Lcom/alibaba/android/ark/AIMNetType;

.field public static final enum NT_NOT_REACHABLE:Lcom/alibaba/android/ark/AIMNetType;

.field public static final enum NT_OTHER:Lcom/alibaba/android/ark/AIMNetType;

.field public static final enum NT_WIFI:Lcom/alibaba/android/ark/AIMNetType;

.field public static final enum NT_WIRE:Lcom/alibaba/android/ark/AIMNetType;

.field private static final sValueToEnumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/android/ark/AIMNetType;",
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
    new-instance v0, Lcom/alibaba/android/ark/AIMNetType;

    .line 3
    const-string v1, "NT_NOT_REACHABLE"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/android/ark/AIMNetType;-><init>(Ljava/lang/String;II)V

    .line 9
    sput-object v0, Lcom/alibaba/android/ark/AIMNetType;->NT_NOT_REACHABLE:Lcom/alibaba/android/ark/AIMNetType;

    .line 11
    new-instance v1, Lcom/alibaba/android/ark/AIMNetType;

    .line 13
    const-string v3, "NT_WIFI"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lcom/alibaba/android/ark/AIMNetType;-><init>(Ljava/lang/String;II)V

    .line 19
    sput-object v1, Lcom/alibaba/android/ark/AIMNetType;->NT_WIFI:Lcom/alibaba/android/ark/AIMNetType;

    .line 21
    new-instance v3, Lcom/alibaba/android/ark/AIMNetType;

    .line 23
    const-string v5, "NT_WIRE"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Lcom/alibaba/android/ark/AIMNetType;-><init>(Ljava/lang/String;II)V

    .line 29
    sput-object v3, Lcom/alibaba/android/ark/AIMNetType;->NT_WIRE:Lcom/alibaba/android/ark/AIMNetType;

    .line 31
    new-instance v5, Lcom/alibaba/android/ark/AIMNetType;

    .line 33
    const-string v7, "NT_2G"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v8}, Lcom/alibaba/android/ark/AIMNetType;-><init>(Ljava/lang/String;II)V

    .line 39
    sput-object v5, Lcom/alibaba/android/ark/AIMNetType;->NT_2G:Lcom/alibaba/android/ark/AIMNetType;

    .line 41
    new-instance v7, Lcom/alibaba/android/ark/AIMNetType;

    .line 43
    const-string v9, "NT_3G"

    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10, v10}, Lcom/alibaba/android/ark/AIMNetType;-><init>(Ljava/lang/String;II)V

    .line 49
    sput-object v7, Lcom/alibaba/android/ark/AIMNetType;->NT_3G:Lcom/alibaba/android/ark/AIMNetType;

    .line 51
    new-instance v9, Lcom/alibaba/android/ark/AIMNetType;

    .line 53
    const-string v11, "NT_4G"

    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12, v12}, Lcom/alibaba/android/ark/AIMNetType;-><init>(Ljava/lang/String;II)V

    .line 59
    sput-object v9, Lcom/alibaba/android/ark/AIMNetType;->NT_4G:Lcom/alibaba/android/ark/AIMNetType;

    .line 61
    new-instance v11, Lcom/alibaba/android/ark/AIMNetType;

    .line 63
    const-string v13, "NT_5G"

    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14, v14}, Lcom/alibaba/android/ark/AIMNetType;-><init>(Ljava/lang/String;II)V

    .line 69
    sput-object v11, Lcom/alibaba/android/ark/AIMNetType;->NT_5G:Lcom/alibaba/android/ark/AIMNetType;

    .line 71
    new-instance v13, Lcom/alibaba/android/ark/AIMNetType;

    .line 73
    const/16 v15, 0x64

    .line 75
    const-string v14, "NT_OTHER"

    .line 77
    const/4 v12, 0x7

    .line 78
    invoke-direct {v13, v14, v12, v15}, Lcom/alibaba/android/ark/AIMNetType;-><init>(Ljava/lang/String;II)V

    .line 81
    sput-object v13, Lcom/alibaba/android/ark/AIMNetType;->NT_OTHER:Lcom/alibaba/android/ark/AIMNetType;

    .line 83
    const/16 v14, 0x8

    .line 85
    new-array v14, v14, [Lcom/alibaba/android/ark/AIMNetType;

    .line 87
    aput-object v0, v14, v2

    .line 89
    aput-object v1, v14, v4

    .line 91
    aput-object v3, v14, v6

    .line 93
    aput-object v5, v14, v8

    .line 95
    aput-object v7, v14, v10

    .line 97
    const/4 v0, 0x5

    .line 98
    aput-object v9, v14, v0

    .line 100
    const/4 v0, 0x6

    .line 101
    aput-object v11, v14, v0

    .line 103
    aput-object v13, v14, v12

    .line 105
    sput-object v14, Lcom/alibaba/android/ark/AIMNetType;->$VALUES:[Lcom/alibaba/android/ark/AIMNetType;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    .line 109
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 112
    sput-object v0, Lcom/alibaba/android/ark/AIMNetType;->sValueToEnumMap:Ljava/util/Map;

    .line 114
    const-class v0, Lcom/alibaba/android/ark/AIMNetType;

    .line 116
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 123
    move-result-object v0

    .line 124
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_0

    .line 130
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    move-result-object v1

    .line 134
    check-cast v1, Lcom/alibaba/android/ark/AIMNetType;

    .line 136
    sget-object v2, Lcom/alibaba/android/ark/AIMNetType;->sValueToEnumMap:Ljava/util/Map;

    .line 138
    iget v3, v1, Lcom/alibaba/android/ark/AIMNetType;->value:I

    .line 140
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    move-result-object v3

    .line 144
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    goto :goto_0

    .line 148
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
    iput p3, p0, Lcom/alibaba/android/ark/AIMNetType;->value:I

    .line 6
    return-void
.end method

.method public static forValue(I)Lcom/alibaba/android/ark/AIMNetType;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/android/ark/AIMNetType;->sValueToEnumMap:Ljava/util/Map;

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p0

    .line 7
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/alibaba/android/ark/AIMNetType;

    .line 13
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ark/AIMNetType;
    .locals 1

    .line 1
    const-class v0, Lcom/alibaba/android/ark/AIMNetType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/alibaba/android/ark/AIMNetType;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/alibaba/android/ark/AIMNetType;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/android/ark/AIMNetType;->$VALUES:[Lcom/alibaba/android/ark/AIMNetType;

    .line 3
    invoke-virtual {v0}, [Lcom/alibaba/android/ark/AIMNetType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/alibaba/android/ark/AIMNetType;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/android/ark/AIMNetType;->value:I

    .line 3
    return v0
.end method
