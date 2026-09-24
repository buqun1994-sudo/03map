.class public final enum Lcom/alibaba/android/ark/AIMMsgAudioType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/android/ark/AIMMsgAudioType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ark/AIMMsgAudioType;

.field public static final enum AUDIO_TYPE_AMR:Lcom/alibaba/android/ark/AIMMsgAudioType;

.field public static final enum AUDIO_TYPE_OGG:Lcom/alibaba/android/ark/AIMMsgAudioType;

.field public static final enum AUDIO_TYPE_OPUS:Lcom/alibaba/android/ark/AIMMsgAudioType;

.field public static final enum AUDIO_TYPE_UNKNOWN:Lcom/alibaba/android/ark/AIMMsgAudioType;

.field private static final sValueToEnumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/android/ark/AIMMsgAudioType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/alibaba/android/ark/AIMMsgAudioType;

    .line 3
    const/4 v1, -0x1

    .line 4
    const-string v2, "AUDIO_TYPE_UNKNOWN"

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v2, v3, v1}, Lcom/alibaba/android/ark/AIMMsgAudioType;-><init>(Ljava/lang/String;II)V

    .line 10
    sput-object v0, Lcom/alibaba/android/ark/AIMMsgAudioType;->AUDIO_TYPE_UNKNOWN:Lcom/alibaba/android/ark/AIMMsgAudioType;

    .line 12
    new-instance v1, Lcom/alibaba/android/ark/AIMMsgAudioType;

    .line 14
    const-string v2, "AUDIO_TYPE_OPUS"

    .line 16
    const/4 v4, 0x1

    .line 17
    invoke-direct {v1, v2, v4, v3}, Lcom/alibaba/android/ark/AIMMsgAudioType;-><init>(Ljava/lang/String;II)V

    .line 20
    sput-object v1, Lcom/alibaba/android/ark/AIMMsgAudioType;->AUDIO_TYPE_OPUS:Lcom/alibaba/android/ark/AIMMsgAudioType;

    .line 22
    new-instance v2, Lcom/alibaba/android/ark/AIMMsgAudioType;

    .line 24
    const-string v5, "AUDIO_TYPE_OGG"

    .line 26
    const/4 v6, 0x2

    .line 27
    invoke-direct {v2, v5, v6, v4}, Lcom/alibaba/android/ark/AIMMsgAudioType;-><init>(Ljava/lang/String;II)V

    .line 30
    sput-object v2, Lcom/alibaba/android/ark/AIMMsgAudioType;->AUDIO_TYPE_OGG:Lcom/alibaba/android/ark/AIMMsgAudioType;

    .line 32
    new-instance v5, Lcom/alibaba/android/ark/AIMMsgAudioType;

    .line 34
    const-string v7, "AUDIO_TYPE_AMR"

    .line 36
    const/4 v8, 0x3

    .line 37
    invoke-direct {v5, v7, v8, v6}, Lcom/alibaba/android/ark/AIMMsgAudioType;-><init>(Ljava/lang/String;II)V

    .line 40
    sput-object v5, Lcom/alibaba/android/ark/AIMMsgAudioType;->AUDIO_TYPE_AMR:Lcom/alibaba/android/ark/AIMMsgAudioType;

    .line 42
    const/4 v7, 0x4

    .line 43
    new-array v7, v7, [Lcom/alibaba/android/ark/AIMMsgAudioType;

    .line 45
    aput-object v0, v7, v3

    .line 47
    aput-object v1, v7, v4

    .line 49
    aput-object v2, v7, v6

    .line 51
    aput-object v5, v7, v8

    .line 53
    sput-object v7, Lcom/alibaba/android/ark/AIMMsgAudioType;->$VALUES:[Lcom/alibaba/android/ark/AIMMsgAudioType;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    .line 57
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 60
    sput-object v0, Lcom/alibaba/android/ark/AIMMsgAudioType;->sValueToEnumMap:Ljava/util/Map;

    .line 62
    const-class v0, Lcom/alibaba/android/ark/AIMMsgAudioType;

    .line 64
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 71
    move-result-object v0

    .line 72
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_0

    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Lcom/alibaba/android/ark/AIMMsgAudioType;

    .line 84
    sget-object v2, Lcom/alibaba/android/ark/AIMMsgAudioType;->sValueToEnumMap:Ljava/util/Map;

    .line 86
    iget v3, v1, Lcom/alibaba/android/ark/AIMMsgAudioType;->value:I

    .line 88
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    move-result-object v3

    .line 92
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    goto :goto_0

    .line 96
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
    iput p3, p0, Lcom/alibaba/android/ark/AIMMsgAudioType;->value:I

    .line 6
    return-void
.end method

.method public static forValue(I)Lcom/alibaba/android/ark/AIMMsgAudioType;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/android/ark/AIMMsgAudioType;->sValueToEnumMap:Ljava/util/Map;

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p0

    .line 7
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/alibaba/android/ark/AIMMsgAudioType;

    .line 13
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ark/AIMMsgAudioType;
    .locals 1

    .line 1
    const-class v0, Lcom/alibaba/android/ark/AIMMsgAudioType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/alibaba/android/ark/AIMMsgAudioType;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/alibaba/android/ark/AIMMsgAudioType;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/android/ark/AIMMsgAudioType;->$VALUES:[Lcom/alibaba/android/ark/AIMMsgAudioType;

    .line 3
    invoke-virtual {v0}, [Lcom/alibaba/android/ark/AIMMsgAudioType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/alibaba/android/ark/AIMMsgAudioType;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/android/ark/AIMMsgAudioType;->value:I

    .line 3
    return v0
.end method
