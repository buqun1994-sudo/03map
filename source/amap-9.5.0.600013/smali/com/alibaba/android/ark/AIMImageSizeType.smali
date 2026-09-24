.class public final enum Lcom/alibaba/android/ark/AIMImageSizeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/android/ark/AIMImageSizeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ark/AIMImageSizeType;

.field public static final enum IST_1200X1200:Lcom/alibaba/android/ark/AIMImageSizeType;

.field public static final enum IST_120X120:Lcom/alibaba/android/ark/AIMImageSizeType;

.field public static final enum IST_200X200:Lcom/alibaba/android/ark/AIMImageSizeType;

.field public static final enum IST_250X10000:Lcom/alibaba/android/ark/AIMImageSizeType;

.field public static final enum IST_480X480:Lcom/alibaba/android/ark/AIMImageSizeType;

.field public static final enum IST_640X640:Lcom/alibaba/android/ark/AIMImageSizeType;

.field public static final enum IST_BIG:Lcom/alibaba/android/ark/AIMImageSizeType;

.field public static final enum IST_DEFAULT:Lcom/alibaba/android/ark/AIMImageSizeType;

.field public static final enum IST_FUZZY:Lcom/alibaba/android/ark/AIMImageSizeType;

.field public static final enum IST_ORIGIN:Lcom/alibaba/android/ark/AIMImageSizeType;

.field public static final enum IST_THUMB:Lcom/alibaba/android/ark/AIMImageSizeType;

.field private static final sValueToEnumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/android/ark/AIMImageSizeType;",
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
    new-instance v0, Lcom/alibaba/android/ark/AIMImageSizeType;

    .line 3
    const/4 v1, -0x1

    .line 4
    const-string v2, "IST_DEFAULT"

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v2, v3, v1}, Lcom/alibaba/android/ark/AIMImageSizeType;-><init>(Ljava/lang/String;II)V

    .line 10
    sput-object v0, Lcom/alibaba/android/ark/AIMImageSizeType;->IST_DEFAULT:Lcom/alibaba/android/ark/AIMImageSizeType;

    .line 12
    new-instance v1, Lcom/alibaba/android/ark/AIMImageSizeType;

    .line 14
    const-string v2, "IST_ORIGIN"

    .line 16
    const/4 v4, 0x1

    .line 17
    invoke-direct {v1, v2, v4, v3}, Lcom/alibaba/android/ark/AIMImageSizeType;-><init>(Ljava/lang/String;II)V

    .line 20
    sput-object v1, Lcom/alibaba/android/ark/AIMImageSizeType;->IST_ORIGIN:Lcom/alibaba/android/ark/AIMImageSizeType;

    .line 22
    new-instance v2, Lcom/alibaba/android/ark/AIMImageSizeType;

    .line 24
    const-string v5, "IST_FUZZY"

    .line 26
    const/4 v6, 0x2

    .line 27
    invoke-direct {v2, v5, v6, v4}, Lcom/alibaba/android/ark/AIMImageSizeType;-><init>(Ljava/lang/String;II)V

    .line 30
    sput-object v2, Lcom/alibaba/android/ark/AIMImageSizeType;->IST_FUZZY:Lcom/alibaba/android/ark/AIMImageSizeType;

    .line 32
    new-instance v5, Lcom/alibaba/android/ark/AIMImageSizeType;

    .line 34
    const-string v7, "IST_THUMB"

    .line 36
    const/4 v8, 0x3

    .line 37
    invoke-direct {v5, v7, v8, v6}, Lcom/alibaba/android/ark/AIMImageSizeType;-><init>(Ljava/lang/String;II)V

    .line 40
    sput-object v5, Lcom/alibaba/android/ark/AIMImageSizeType;->IST_THUMB:Lcom/alibaba/android/ark/AIMImageSizeType;

    .line 42
    new-instance v7, Lcom/alibaba/android/ark/AIMImageSizeType;

    .line 44
    const-string v9, "IST_BIG"

    .line 46
    const/4 v10, 0x4

    .line 47
    invoke-direct {v7, v9, v10, v8}, Lcom/alibaba/android/ark/AIMImageSizeType;-><init>(Ljava/lang/String;II)V

    .line 50
    sput-object v7, Lcom/alibaba/android/ark/AIMImageSizeType;->IST_BIG:Lcom/alibaba/android/ark/AIMImageSizeType;

    .line 52
    new-instance v9, Lcom/alibaba/android/ark/AIMImageSizeType;

    .line 54
    const/16 v11, 0x64

    .line 56
    const-string v12, "IST_120X120"

    .line 58
    const/4 v13, 0x5

    .line 59
    invoke-direct {v9, v12, v13, v11}, Lcom/alibaba/android/ark/AIMImageSizeType;-><init>(Ljava/lang/String;II)V

    .line 62
    sput-object v9, Lcom/alibaba/android/ark/AIMImageSizeType;->IST_120X120:Lcom/alibaba/android/ark/AIMImageSizeType;

    .line 64
    new-instance v11, Lcom/alibaba/android/ark/AIMImageSizeType;

    .line 66
    const/16 v12, 0x65

    .line 68
    const-string v14, "IST_200X200"

    .line 70
    const/4 v15, 0x6

    .line 71
    invoke-direct {v11, v14, v15, v12}, Lcom/alibaba/android/ark/AIMImageSizeType;-><init>(Ljava/lang/String;II)V

    .line 74
    sput-object v11, Lcom/alibaba/android/ark/AIMImageSizeType;->IST_200X200:Lcom/alibaba/android/ark/AIMImageSizeType;

    .line 76
    new-instance v12, Lcom/alibaba/android/ark/AIMImageSizeType;

    .line 78
    const/16 v14, 0x66

    .line 80
    const-string v15, "IST_1200X1200"

    .line 82
    const/4 v13, 0x7

    .line 83
    invoke-direct {v12, v15, v13, v14}, Lcom/alibaba/android/ark/AIMImageSizeType;-><init>(Ljava/lang/String;II)V

    .line 86
    sput-object v12, Lcom/alibaba/android/ark/AIMImageSizeType;->IST_1200X1200:Lcom/alibaba/android/ark/AIMImageSizeType;

    .line 88
    new-instance v14, Lcom/alibaba/android/ark/AIMImageSizeType;

    .line 90
    const/16 v15, 0x67

    .line 92
    const-string v13, "IST_250X10000"

    .line 94
    const/16 v10, 0x8

    .line 96
    invoke-direct {v14, v13, v10, v15}, Lcom/alibaba/android/ark/AIMImageSizeType;-><init>(Ljava/lang/String;II)V

    .line 99
    sput-object v14, Lcom/alibaba/android/ark/AIMImageSizeType;->IST_250X10000:Lcom/alibaba/android/ark/AIMImageSizeType;

    .line 101
    new-instance v13, Lcom/alibaba/android/ark/AIMImageSizeType;

    .line 103
    const/16 v15, 0x68

    .line 105
    const-string v10, "IST_480X480"

    .line 107
    const/16 v8, 0x9

    .line 109
    invoke-direct {v13, v10, v8, v15}, Lcom/alibaba/android/ark/AIMImageSizeType;-><init>(Ljava/lang/String;II)V

    .line 112
    sput-object v13, Lcom/alibaba/android/ark/AIMImageSizeType;->IST_480X480:Lcom/alibaba/android/ark/AIMImageSizeType;

    .line 114
    new-instance v10, Lcom/alibaba/android/ark/AIMImageSizeType;

    .line 116
    const/16 v15, 0x69

    .line 118
    const-string v8, "IST_640X640"

    .line 120
    const/16 v6, 0xa

    .line 122
    invoke-direct {v10, v8, v6, v15}, Lcom/alibaba/android/ark/AIMImageSizeType;-><init>(Ljava/lang/String;II)V

    .line 125
    sput-object v10, Lcom/alibaba/android/ark/AIMImageSizeType;->IST_640X640:Lcom/alibaba/android/ark/AIMImageSizeType;

    .line 127
    const/16 v8, 0xb

    .line 129
    new-array v8, v8, [Lcom/alibaba/android/ark/AIMImageSizeType;

    .line 131
    aput-object v0, v8, v3

    .line 133
    aput-object v1, v8, v4

    .line 135
    const/4 v0, 0x2

    .line 136
    aput-object v2, v8, v0

    .line 138
    const/4 v0, 0x3

    .line 139
    aput-object v5, v8, v0

    .line 141
    const/4 v0, 0x4

    .line 142
    aput-object v7, v8, v0

    .line 144
    const/4 v0, 0x5

    .line 145
    aput-object v9, v8, v0

    .line 147
    const/4 v0, 0x6

    .line 148
    aput-object v11, v8, v0

    .line 150
    const/4 v0, 0x7

    .line 151
    aput-object v12, v8, v0

    .line 153
    const/16 v0, 0x8

    .line 155
    aput-object v14, v8, v0

    .line 157
    const/16 v0, 0x9

    .line 159
    aput-object v13, v8, v0

    .line 161
    aput-object v10, v8, v6

    .line 163
    sput-object v8, Lcom/alibaba/android/ark/AIMImageSizeType;->$VALUES:[Lcom/alibaba/android/ark/AIMImageSizeType;

    .line 165
    new-instance v0, Ljava/util/HashMap;

    .line 167
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 170
    sput-object v0, Lcom/alibaba/android/ark/AIMImageSizeType;->sValueToEnumMap:Ljava/util/Map;

    .line 172
    const-class v0, Lcom/alibaba/android/ark/AIMImageSizeType;

    .line 174
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 181
    move-result-object v0

    .line 182
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 185
    move-result v1

    .line 186
    if-eqz v1, :cond_0

    .line 188
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 191
    move-result-object v1

    .line 192
    check-cast v1, Lcom/alibaba/android/ark/AIMImageSizeType;

    .line 194
    sget-object v2, Lcom/alibaba/android/ark/AIMImageSizeType;->sValueToEnumMap:Ljava/util/Map;

    .line 196
    iget v3, v1, Lcom/alibaba/android/ark/AIMImageSizeType;->value:I

    .line 198
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    move-result-object v3

    .line 202
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    goto :goto_0

    .line 206
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
    iput p3, p0, Lcom/alibaba/android/ark/AIMImageSizeType;->value:I

    .line 6
    return-void
.end method

.method public static forValue(I)Lcom/alibaba/android/ark/AIMImageSizeType;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/android/ark/AIMImageSizeType;->sValueToEnumMap:Ljava/util/Map;

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p0

    .line 7
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/alibaba/android/ark/AIMImageSizeType;

    .line 13
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ark/AIMImageSizeType;
    .locals 1

    .line 1
    const-class v0, Lcom/alibaba/android/ark/AIMImageSizeType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/alibaba/android/ark/AIMImageSizeType;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/alibaba/android/ark/AIMImageSizeType;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/android/ark/AIMImageSizeType;->$VALUES:[Lcom/alibaba/android/ark/AIMImageSizeType;

    .line 3
    invoke-virtual {v0}, [Lcom/alibaba/android/ark/AIMImageSizeType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/alibaba/android/ark/AIMImageSizeType;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/android/ark/AIMImageSizeType;->value:I

    .line 3
    return v0
.end method
