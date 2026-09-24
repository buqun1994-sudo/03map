.class public final enum Lcom/alibaba/android/ark/AIMMsgImageFileType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/android/ark/AIMMsgImageFileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ark/AIMMsgImageFileType;

.field public static final enum IMAGE_FILE_TYPE_GIF:Lcom/alibaba/android/ark/AIMMsgImageFileType;

.field public static final enum IMAGE_FILE_TYPE_JPG:Lcom/alibaba/android/ark/AIMMsgImageFileType;

.field public static final enum IMAGE_FILE_TYPE_PNG:Lcom/alibaba/android/ark/AIMMsgImageFileType;

.field public static final enum IMAGE_FILE_TYPE_UNKNOWN:Lcom/alibaba/android/ark/AIMMsgImageFileType;

.field public static final enum IMAGE_FILE_TYPE_WEBP:Lcom/alibaba/android/ark/AIMMsgImageFileType;

.field private static final sValueToEnumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/android/ark/AIMMsgImageFileType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/alibaba/android/ark/AIMMsgImageFileType;

    .line 3
    const/4 v1, -0x1

    .line 4
    const-string v2, "IMAGE_FILE_TYPE_UNKNOWN"

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v2, v3, v1}, Lcom/alibaba/android/ark/AIMMsgImageFileType;-><init>(Ljava/lang/String;II)V

    .line 10
    sput-object v0, Lcom/alibaba/android/ark/AIMMsgImageFileType;->IMAGE_FILE_TYPE_UNKNOWN:Lcom/alibaba/android/ark/AIMMsgImageFileType;

    .line 12
    new-instance v1, Lcom/alibaba/android/ark/AIMMsgImageFileType;

    .line 14
    const-string v2, "IMAGE_FILE_TYPE_WEBP"

    .line 16
    const/4 v4, 0x1

    .line 17
    invoke-direct {v1, v2, v4, v4}, Lcom/alibaba/android/ark/AIMMsgImageFileType;-><init>(Ljava/lang/String;II)V

    .line 20
    sput-object v1, Lcom/alibaba/android/ark/AIMMsgImageFileType;->IMAGE_FILE_TYPE_WEBP:Lcom/alibaba/android/ark/AIMMsgImageFileType;

    .line 22
    new-instance v2, Lcom/alibaba/android/ark/AIMMsgImageFileType;

    .line 24
    const-string v5, "IMAGE_FILE_TYPE_PNG"

    .line 26
    const/4 v6, 0x2

    .line 27
    invoke-direct {v2, v5, v6, v6}, Lcom/alibaba/android/ark/AIMMsgImageFileType;-><init>(Ljava/lang/String;II)V

    .line 30
    sput-object v2, Lcom/alibaba/android/ark/AIMMsgImageFileType;->IMAGE_FILE_TYPE_PNG:Lcom/alibaba/android/ark/AIMMsgImageFileType;

    .line 32
    new-instance v5, Lcom/alibaba/android/ark/AIMMsgImageFileType;

    .line 34
    const-string v7, "IMAGE_FILE_TYPE_JPG"

    .line 36
    const/4 v8, 0x3

    .line 37
    invoke-direct {v5, v7, v8, v8}, Lcom/alibaba/android/ark/AIMMsgImageFileType;-><init>(Ljava/lang/String;II)V

    .line 40
    sput-object v5, Lcom/alibaba/android/ark/AIMMsgImageFileType;->IMAGE_FILE_TYPE_JPG:Lcom/alibaba/android/ark/AIMMsgImageFileType;

    .line 42
    new-instance v7, Lcom/alibaba/android/ark/AIMMsgImageFileType;

    .line 44
    const-string v9, "IMAGE_FILE_TYPE_GIF"

    .line 46
    const/4 v10, 0x4

    .line 47
    invoke-direct {v7, v9, v10, v10}, Lcom/alibaba/android/ark/AIMMsgImageFileType;-><init>(Ljava/lang/String;II)V

    .line 50
    sput-object v7, Lcom/alibaba/android/ark/AIMMsgImageFileType;->IMAGE_FILE_TYPE_GIF:Lcom/alibaba/android/ark/AIMMsgImageFileType;

    .line 52
    const/4 v9, 0x5

    .line 53
    new-array v9, v9, [Lcom/alibaba/android/ark/AIMMsgImageFileType;

    .line 55
    aput-object v0, v9, v3

    .line 57
    aput-object v1, v9, v4

    .line 59
    aput-object v2, v9, v6

    .line 61
    aput-object v5, v9, v8

    .line 63
    aput-object v7, v9, v10

    .line 65
    sput-object v9, Lcom/alibaba/android/ark/AIMMsgImageFileType;->$VALUES:[Lcom/alibaba/android/ark/AIMMsgImageFileType;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    .line 69
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 72
    sput-object v0, Lcom/alibaba/android/ark/AIMMsgImageFileType;->sValueToEnumMap:Ljava/util/Map;

    .line 74
    const-class v0, Lcom/alibaba/android/ark/AIMMsgImageFileType;

    .line 76
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 83
    move-result-object v0

    .line 84
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_0

    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Lcom/alibaba/android/ark/AIMMsgImageFileType;

    .line 96
    sget-object v2, Lcom/alibaba/android/ark/AIMMsgImageFileType;->sValueToEnumMap:Ljava/util/Map;

    .line 98
    iget v3, v1, Lcom/alibaba/android/ark/AIMMsgImageFileType;->value:I

    .line 100
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    move-result-object v3

    .line 104
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    goto :goto_0

    .line 108
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
    iput p3, p0, Lcom/alibaba/android/ark/AIMMsgImageFileType;->value:I

    .line 6
    return-void
.end method

.method public static forValue(I)Lcom/alibaba/android/ark/AIMMsgImageFileType;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/android/ark/AIMMsgImageFileType;->sValueToEnumMap:Ljava/util/Map;

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p0

    .line 7
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/alibaba/android/ark/AIMMsgImageFileType;

    .line 13
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ark/AIMMsgImageFileType;
    .locals 1

    .line 1
    const-class v0, Lcom/alibaba/android/ark/AIMMsgImageFileType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/alibaba/android/ark/AIMMsgImageFileType;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/alibaba/android/ark/AIMMsgImageFileType;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/android/ark/AIMMsgImageFileType;->$VALUES:[Lcom/alibaba/android/ark/AIMMsgImageFileType;

    .line 3
    invoke-virtual {v0}, [Lcom/alibaba/android/ark/AIMMsgImageFileType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/alibaba/android/ark/AIMMsgImageFileType;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/android/ark/AIMMsgImageFileType;->value:I

    .line 3
    return v0
.end method
