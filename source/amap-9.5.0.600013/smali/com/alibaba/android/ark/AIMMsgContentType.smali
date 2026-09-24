.class public final enum Lcom/alibaba/android/ark/AIMMsgContentType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/android/ark/AIMMsgContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ark/AIMMsgContentType;

.field public static final enum CONTENT_TYPE_AT:Lcom/alibaba/android/ark/AIMMsgContentType;

.field public static final enum CONTENT_TYPE_AUDIO:Lcom/alibaba/android/ark/AIMMsgContentType;

.field public static final enum CONTENT_TYPE_CUSTOM:Lcom/alibaba/android/ark/AIMMsgContentType;

.field public static final enum CONTENT_TYPE_GEO:Lcom/alibaba/android/ark/AIMMsgContentType;

.field public static final enum CONTENT_TYPE_IMAGE:Lcom/alibaba/android/ark/AIMMsgContentType;

.field public static final enum CONTENT_TYPE_LINK:Lcom/alibaba/android/ark/AIMMsgContentType;

.field public static final enum CONTENT_TYPE_STRUCT:Lcom/alibaba/android/ark/AIMMsgContentType;

.field public static final enum CONTENT_TYPE_TEXT:Lcom/alibaba/android/ark/AIMMsgContentType;

.field public static final enum CONTENT_TYPE_UNKNOW:Lcom/alibaba/android/ark/AIMMsgContentType;

.field public static final enum CONTENT_TYPE_VIDEO:Lcom/alibaba/android/ark/AIMMsgContentType;

.field private static final sValueToEnumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/android/ark/AIMMsgContentType;",
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
    new-instance v0, Lcom/alibaba/android/ark/AIMMsgContentType;

    .line 3
    const/4 v1, -0x1

    .line 4
    const-string v2, "CONTENT_TYPE_UNKNOW"

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v2, v3, v1}, Lcom/alibaba/android/ark/AIMMsgContentType;-><init>(Ljava/lang/String;II)V

    .line 10
    sput-object v0, Lcom/alibaba/android/ark/AIMMsgContentType;->CONTENT_TYPE_UNKNOW:Lcom/alibaba/android/ark/AIMMsgContentType;

    .line 12
    new-instance v1, Lcom/alibaba/android/ark/AIMMsgContentType;

    .line 14
    const-string v2, "CONTENT_TYPE_TEXT"

    .line 16
    const/4 v4, 0x1

    .line 17
    invoke-direct {v1, v2, v4, v4}, Lcom/alibaba/android/ark/AIMMsgContentType;-><init>(Ljava/lang/String;II)V

    .line 20
    sput-object v1, Lcom/alibaba/android/ark/AIMMsgContentType;->CONTENT_TYPE_TEXT:Lcom/alibaba/android/ark/AIMMsgContentType;

    .line 22
    new-instance v2, Lcom/alibaba/android/ark/AIMMsgContentType;

    .line 24
    const-string v5, "CONTENT_TYPE_IMAGE"

    .line 26
    const/4 v6, 0x2

    .line 27
    invoke-direct {v2, v5, v6, v6}, Lcom/alibaba/android/ark/AIMMsgContentType;-><init>(Ljava/lang/String;II)V

    .line 30
    sput-object v2, Lcom/alibaba/android/ark/AIMMsgContentType;->CONTENT_TYPE_IMAGE:Lcom/alibaba/android/ark/AIMMsgContentType;

    .line 32
    new-instance v5, Lcom/alibaba/android/ark/AIMMsgContentType;

    .line 34
    const-string v7, "CONTENT_TYPE_AUDIO"

    .line 36
    const/4 v8, 0x3

    .line 37
    invoke-direct {v5, v7, v8, v8}, Lcom/alibaba/android/ark/AIMMsgContentType;-><init>(Ljava/lang/String;II)V

    .line 40
    sput-object v5, Lcom/alibaba/android/ark/AIMMsgContentType;->CONTENT_TYPE_AUDIO:Lcom/alibaba/android/ark/AIMMsgContentType;

    .line 42
    new-instance v7, Lcom/alibaba/android/ark/AIMMsgContentType;

    .line 44
    const-string v9, "CONTENT_TYPE_VIDEO"

    .line 46
    const/4 v10, 0x4

    .line 47
    invoke-direct {v7, v9, v10, v10}, Lcom/alibaba/android/ark/AIMMsgContentType;-><init>(Ljava/lang/String;II)V

    .line 50
    sput-object v7, Lcom/alibaba/android/ark/AIMMsgContentType;->CONTENT_TYPE_VIDEO:Lcom/alibaba/android/ark/AIMMsgContentType;

    .line 52
    new-instance v9, Lcom/alibaba/android/ark/AIMMsgContentType;

    .line 54
    const-string v11, "CONTENT_TYPE_GEO"

    .line 56
    const/4 v12, 0x5

    .line 57
    invoke-direct {v9, v11, v12, v12}, Lcom/alibaba/android/ark/AIMMsgContentType;-><init>(Ljava/lang/String;II)V

    .line 60
    sput-object v9, Lcom/alibaba/android/ark/AIMMsgContentType;->CONTENT_TYPE_GEO:Lcom/alibaba/android/ark/AIMMsgContentType;

    .line 62
    new-instance v11, Lcom/alibaba/android/ark/AIMMsgContentType;

    .line 64
    const-string v13, "CONTENT_TYPE_STRUCT"

    .line 66
    const/4 v14, 0x6

    .line 67
    invoke-direct {v11, v13, v14, v14}, Lcom/alibaba/android/ark/AIMMsgContentType;-><init>(Ljava/lang/String;II)V

    .line 70
    sput-object v11, Lcom/alibaba/android/ark/AIMMsgContentType;->CONTENT_TYPE_STRUCT:Lcom/alibaba/android/ark/AIMMsgContentType;

    .line 72
    new-instance v13, Lcom/alibaba/android/ark/AIMMsgContentType;

    .line 74
    const-string v15, "CONTENT_TYPE_LINK"

    .line 76
    const/4 v14, 0x7

    .line 77
    invoke-direct {v13, v15, v14, v14}, Lcom/alibaba/android/ark/AIMMsgContentType;-><init>(Ljava/lang/String;II)V

    .line 80
    sput-object v13, Lcom/alibaba/android/ark/AIMMsgContentType;->CONTENT_TYPE_LINK:Lcom/alibaba/android/ark/AIMMsgContentType;

    .line 82
    new-instance v15, Lcom/alibaba/android/ark/AIMMsgContentType;

    .line 84
    const-string v14, "CONTENT_TYPE_AT"

    .line 86
    const/16 v12, 0x8

    .line 88
    invoke-direct {v15, v14, v12, v12}, Lcom/alibaba/android/ark/AIMMsgContentType;-><init>(Ljava/lang/String;II)V

    .line 91
    sput-object v15, Lcom/alibaba/android/ark/AIMMsgContentType;->CONTENT_TYPE_AT:Lcom/alibaba/android/ark/AIMMsgContentType;

    .line 93
    new-instance v14, Lcom/alibaba/android/ark/AIMMsgContentType;

    .line 95
    const/16 v12, 0x65

    .line 97
    const-string v10, "CONTENT_TYPE_CUSTOM"

    .line 99
    const/16 v8, 0x9

    .line 101
    invoke-direct {v14, v10, v8, v12}, Lcom/alibaba/android/ark/AIMMsgContentType;-><init>(Ljava/lang/String;II)V

    .line 104
    sput-object v14, Lcom/alibaba/android/ark/AIMMsgContentType;->CONTENT_TYPE_CUSTOM:Lcom/alibaba/android/ark/AIMMsgContentType;

    .line 106
    const/16 v10, 0xa

    .line 108
    new-array v10, v10, [Lcom/alibaba/android/ark/AIMMsgContentType;

    .line 110
    aput-object v0, v10, v3

    .line 112
    aput-object v1, v10, v4

    .line 114
    aput-object v2, v10, v6

    .line 116
    const/4 v0, 0x3

    .line 117
    aput-object v5, v10, v0

    .line 119
    const/4 v0, 0x4

    .line 120
    aput-object v7, v10, v0

    .line 122
    const/4 v0, 0x5

    .line 123
    aput-object v9, v10, v0

    .line 125
    const/4 v0, 0x6

    .line 126
    aput-object v11, v10, v0

    .line 128
    const/4 v0, 0x7

    .line 129
    aput-object v13, v10, v0

    .line 131
    const/16 v0, 0x8

    .line 133
    aput-object v15, v10, v0

    .line 135
    aput-object v14, v10, v8

    .line 137
    sput-object v10, Lcom/alibaba/android/ark/AIMMsgContentType;->$VALUES:[Lcom/alibaba/android/ark/AIMMsgContentType;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    .line 141
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 144
    sput-object v0, Lcom/alibaba/android/ark/AIMMsgContentType;->sValueToEnumMap:Ljava/util/Map;

    .line 146
    const-class v0, Lcom/alibaba/android/ark/AIMMsgContentType;

    .line 148
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 155
    move-result-object v0

    .line 156
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_0

    .line 162
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    move-result-object v1

    .line 166
    check-cast v1, Lcom/alibaba/android/ark/AIMMsgContentType;

    .line 168
    sget-object v2, Lcom/alibaba/android/ark/AIMMsgContentType;->sValueToEnumMap:Ljava/util/Map;

    .line 170
    iget v3, v1, Lcom/alibaba/android/ark/AIMMsgContentType;->value:I

    .line 172
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    move-result-object v3

    .line 176
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    goto :goto_0

    .line 180
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
    iput p3, p0, Lcom/alibaba/android/ark/AIMMsgContentType;->value:I

    .line 6
    return-void
.end method

.method public static forValue(I)Lcom/alibaba/android/ark/AIMMsgContentType;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/android/ark/AIMMsgContentType;->sValueToEnumMap:Ljava/util/Map;

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p0

    .line 7
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/alibaba/android/ark/AIMMsgContentType;

    .line 13
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ark/AIMMsgContentType;
    .locals 1

    .line 1
    const-class v0, Lcom/alibaba/android/ark/AIMMsgContentType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/alibaba/android/ark/AIMMsgContentType;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/alibaba/android/ark/AIMMsgContentType;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/android/ark/AIMMsgContentType;->$VALUES:[Lcom/alibaba/android/ark/AIMMsgContentType;

    .line 3
    invoke-virtual {v0}, [Lcom/alibaba/android/ark/AIMMsgContentType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/alibaba/android/ark/AIMMsgContentType;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/android/ark/AIMMsgContentType;->value:I

    .line 3
    return v0
.end method
