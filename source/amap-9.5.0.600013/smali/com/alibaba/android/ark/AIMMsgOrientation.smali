.class public final enum Lcom/alibaba/android/ark/AIMMsgOrientation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/android/ark/AIMMsgOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ark/AIMMsgOrientation;

.field public static final enum ORIENTATION_FLIP_HORIZONTAL:Lcom/alibaba/android/ark/AIMMsgOrientation;

.field public static final enum ORIENTATION_FLIP_VERTICAL:Lcom/alibaba/android/ark/AIMMsgOrientation;

.field public static final enum ORIENTATION_NORMAL:Lcom/alibaba/android/ark/AIMMsgOrientation;

.field public static final enum ORIENTATION_ROTATE_180:Lcom/alibaba/android/ark/AIMMsgOrientation;

.field public static final enum ORIENTATION_ROTATE_270:Lcom/alibaba/android/ark/AIMMsgOrientation;

.field public static final enum ORIENTATION_ROTATE_90:Lcom/alibaba/android/ark/AIMMsgOrientation;

.field public static final enum ORIENTATION_TRANSPOSE:Lcom/alibaba/android/ark/AIMMsgOrientation;

.field public static final enum ORIENTATION_TRANSVERSE:Lcom/alibaba/android/ark/AIMMsgOrientation;

.field public static final enum ORIENTATION_UNKNOWN:Lcom/alibaba/android/ark/AIMMsgOrientation;

.field private static final sValueToEnumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/android/ark/AIMMsgOrientation;",
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
    new-instance v0, Lcom/alibaba/android/ark/AIMMsgOrientation;

    .line 3
    const/4 v1, -0x1

    .line 4
    const-string v2, "ORIENTATION_UNKNOWN"

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v2, v3, v1}, Lcom/alibaba/android/ark/AIMMsgOrientation;-><init>(Ljava/lang/String;II)V

    .line 10
    sput-object v0, Lcom/alibaba/android/ark/AIMMsgOrientation;->ORIENTATION_UNKNOWN:Lcom/alibaba/android/ark/AIMMsgOrientation;

    .line 12
    new-instance v1, Lcom/alibaba/android/ark/AIMMsgOrientation;

    .line 14
    const-string v2, "ORIENTATION_NORMAL"

    .line 16
    const/4 v4, 0x1

    .line 17
    invoke-direct {v1, v2, v4, v4}, Lcom/alibaba/android/ark/AIMMsgOrientation;-><init>(Ljava/lang/String;II)V

    .line 20
    sput-object v1, Lcom/alibaba/android/ark/AIMMsgOrientation;->ORIENTATION_NORMAL:Lcom/alibaba/android/ark/AIMMsgOrientation;

    .line 22
    new-instance v2, Lcom/alibaba/android/ark/AIMMsgOrientation;

    .line 24
    const-string v5, "ORIENTATION_FLIP_HORIZONTAL"

    .line 26
    const/4 v6, 0x2

    .line 27
    invoke-direct {v2, v5, v6, v6}, Lcom/alibaba/android/ark/AIMMsgOrientation;-><init>(Ljava/lang/String;II)V

    .line 30
    sput-object v2, Lcom/alibaba/android/ark/AIMMsgOrientation;->ORIENTATION_FLIP_HORIZONTAL:Lcom/alibaba/android/ark/AIMMsgOrientation;

    .line 32
    new-instance v5, Lcom/alibaba/android/ark/AIMMsgOrientation;

    .line 34
    const-string v7, "ORIENTATION_ROTATE_180"

    .line 36
    const/4 v8, 0x3

    .line 37
    invoke-direct {v5, v7, v8, v8}, Lcom/alibaba/android/ark/AIMMsgOrientation;-><init>(Ljava/lang/String;II)V

    .line 40
    sput-object v5, Lcom/alibaba/android/ark/AIMMsgOrientation;->ORIENTATION_ROTATE_180:Lcom/alibaba/android/ark/AIMMsgOrientation;

    .line 42
    new-instance v7, Lcom/alibaba/android/ark/AIMMsgOrientation;

    .line 44
    const-string v9, "ORIENTATION_FLIP_VERTICAL"

    .line 46
    const/4 v10, 0x4

    .line 47
    invoke-direct {v7, v9, v10, v10}, Lcom/alibaba/android/ark/AIMMsgOrientation;-><init>(Ljava/lang/String;II)V

    .line 50
    sput-object v7, Lcom/alibaba/android/ark/AIMMsgOrientation;->ORIENTATION_FLIP_VERTICAL:Lcom/alibaba/android/ark/AIMMsgOrientation;

    .line 52
    new-instance v9, Lcom/alibaba/android/ark/AIMMsgOrientation;

    .line 54
    const-string v11, "ORIENTATION_TRANSPOSE"

    .line 56
    const/4 v12, 0x5

    .line 57
    invoke-direct {v9, v11, v12, v12}, Lcom/alibaba/android/ark/AIMMsgOrientation;-><init>(Ljava/lang/String;II)V

    .line 60
    sput-object v9, Lcom/alibaba/android/ark/AIMMsgOrientation;->ORIENTATION_TRANSPOSE:Lcom/alibaba/android/ark/AIMMsgOrientation;

    .line 62
    new-instance v11, Lcom/alibaba/android/ark/AIMMsgOrientation;

    .line 64
    const-string v13, "ORIENTATION_ROTATE_90"

    .line 66
    const/4 v14, 0x6

    .line 67
    invoke-direct {v11, v13, v14, v14}, Lcom/alibaba/android/ark/AIMMsgOrientation;-><init>(Ljava/lang/String;II)V

    .line 70
    sput-object v11, Lcom/alibaba/android/ark/AIMMsgOrientation;->ORIENTATION_ROTATE_90:Lcom/alibaba/android/ark/AIMMsgOrientation;

    .line 72
    new-instance v13, Lcom/alibaba/android/ark/AIMMsgOrientation;

    .line 74
    const-string v15, "ORIENTATION_TRANSVERSE"

    .line 76
    const/4 v14, 0x7

    .line 77
    invoke-direct {v13, v15, v14, v14}, Lcom/alibaba/android/ark/AIMMsgOrientation;-><init>(Ljava/lang/String;II)V

    .line 80
    sput-object v13, Lcom/alibaba/android/ark/AIMMsgOrientation;->ORIENTATION_TRANSVERSE:Lcom/alibaba/android/ark/AIMMsgOrientation;

    .line 82
    new-instance v15, Lcom/alibaba/android/ark/AIMMsgOrientation;

    .line 84
    const-string v14, "ORIENTATION_ROTATE_270"

    .line 86
    const/16 v12, 0x8

    .line 88
    invoke-direct {v15, v14, v12, v12}, Lcom/alibaba/android/ark/AIMMsgOrientation;-><init>(Ljava/lang/String;II)V

    .line 91
    sput-object v15, Lcom/alibaba/android/ark/AIMMsgOrientation;->ORIENTATION_ROTATE_270:Lcom/alibaba/android/ark/AIMMsgOrientation;

    .line 93
    const/16 v14, 0x9

    .line 95
    new-array v14, v14, [Lcom/alibaba/android/ark/AIMMsgOrientation;

    .line 97
    aput-object v0, v14, v3

    .line 99
    aput-object v1, v14, v4

    .line 101
    aput-object v2, v14, v6

    .line 103
    aput-object v5, v14, v8

    .line 105
    aput-object v7, v14, v10

    .line 107
    const/4 v0, 0x5

    .line 108
    aput-object v9, v14, v0

    .line 110
    const/4 v0, 0x6

    .line 111
    aput-object v11, v14, v0

    .line 113
    const/4 v0, 0x7

    .line 114
    aput-object v13, v14, v0

    .line 116
    aput-object v15, v14, v12

    .line 118
    sput-object v14, Lcom/alibaba/android/ark/AIMMsgOrientation;->$VALUES:[Lcom/alibaba/android/ark/AIMMsgOrientation;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    .line 122
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 125
    sput-object v0, Lcom/alibaba/android/ark/AIMMsgOrientation;->sValueToEnumMap:Ljava/util/Map;

    .line 127
    const-class v0, Lcom/alibaba/android/ark/AIMMsgOrientation;

    .line 129
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 136
    move-result-object v0

    .line 137
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_0

    .line 143
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    move-result-object v1

    .line 147
    check-cast v1, Lcom/alibaba/android/ark/AIMMsgOrientation;

    .line 149
    sget-object v2, Lcom/alibaba/android/ark/AIMMsgOrientation;->sValueToEnumMap:Ljava/util/Map;

    .line 151
    iget v3, v1, Lcom/alibaba/android/ark/AIMMsgOrientation;->value:I

    .line 153
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    move-result-object v3

    .line 157
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    goto :goto_0

    .line 161
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
    iput p3, p0, Lcom/alibaba/android/ark/AIMMsgOrientation;->value:I

    .line 6
    return-void
.end method

.method public static forValue(I)Lcom/alibaba/android/ark/AIMMsgOrientation;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/android/ark/AIMMsgOrientation;->sValueToEnumMap:Ljava/util/Map;

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p0

    .line 7
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/alibaba/android/ark/AIMMsgOrientation;

    .line 13
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ark/AIMMsgOrientation;
    .locals 1

    .line 1
    const-class v0, Lcom/alibaba/android/ark/AIMMsgOrientation;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/alibaba/android/ark/AIMMsgOrientation;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/alibaba/android/ark/AIMMsgOrientation;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/android/ark/AIMMsgOrientation;->$VALUES:[Lcom/alibaba/android/ark/AIMMsgOrientation;

    .line 3
    invoke-virtual {v0}, [Lcom/alibaba/android/ark/AIMMsgOrientation;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/alibaba/android/ark/AIMMsgOrientation;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/android/ark/AIMMsgOrientation;->value:I

    .line 3
    return v0
.end method
