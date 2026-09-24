.class public final enum Lcom/alibaba/android/ark/AIMMsgUpdateMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/android/ark/AIMMsgUpdateMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ark/AIMMsgUpdateMode;

.field public static final enum UPDATE_ALL:Lcom/alibaba/android/ark/AIMMsgUpdateMode;

.field public static final enum UPDATE_BIZ_TAG:Lcom/alibaba/android/ark/AIMMsgUpdateMode;

.field public static final enum UPDATE_BIZ_TEXT:Lcom/alibaba/android/ark/AIMMsgUpdateMode;

.field private static final sValueToEnumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/android/ark/AIMMsgUpdateMode;",
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
    new-instance v0, Lcom/alibaba/android/ark/AIMMsgUpdateMode;

    .line 3
    const-string v1, "UPDATE_BIZ_TAG"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/android/ark/AIMMsgUpdateMode;-><init>(Ljava/lang/String;II)V

    .line 9
    sput-object v0, Lcom/alibaba/android/ark/AIMMsgUpdateMode;->UPDATE_BIZ_TAG:Lcom/alibaba/android/ark/AIMMsgUpdateMode;

    .line 11
    new-instance v1, Lcom/alibaba/android/ark/AIMMsgUpdateMode;

    .line 13
    const-string v3, "UPDATE_BIZ_TEXT"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lcom/alibaba/android/ark/AIMMsgUpdateMode;-><init>(Ljava/lang/String;II)V

    .line 19
    sput-object v1, Lcom/alibaba/android/ark/AIMMsgUpdateMode;->UPDATE_BIZ_TEXT:Lcom/alibaba/android/ark/AIMMsgUpdateMode;

    .line 21
    new-instance v3, Lcom/alibaba/android/ark/AIMMsgUpdateMode;

    .line 23
    const-string v5, "UPDATE_ALL"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Lcom/alibaba/android/ark/AIMMsgUpdateMode;-><init>(Ljava/lang/String;II)V

    .line 29
    sput-object v3, Lcom/alibaba/android/ark/AIMMsgUpdateMode;->UPDATE_ALL:Lcom/alibaba/android/ark/AIMMsgUpdateMode;

    .line 31
    const/4 v5, 0x3

    .line 32
    new-array v5, v5, [Lcom/alibaba/android/ark/AIMMsgUpdateMode;

    .line 34
    aput-object v0, v5, v2

    .line 36
    aput-object v1, v5, v4

    .line 38
    aput-object v3, v5, v6

    .line 40
    sput-object v5, Lcom/alibaba/android/ark/AIMMsgUpdateMode;->$VALUES:[Lcom/alibaba/android/ark/AIMMsgUpdateMode;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    .line 44
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 47
    sput-object v0, Lcom/alibaba/android/ark/AIMMsgUpdateMode;->sValueToEnumMap:Ljava/util/Map;

    .line 49
    const-class v0, Lcom/alibaba/android/ark/AIMMsgUpdateMode;

    .line 51
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 58
    move-result-object v0

    .line 59
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_0

    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Lcom/alibaba/android/ark/AIMMsgUpdateMode;

    .line 71
    sget-object v2, Lcom/alibaba/android/ark/AIMMsgUpdateMode;->sValueToEnumMap:Ljava/util/Map;

    .line 73
    iget v3, v1, Lcom/alibaba/android/ark/AIMMsgUpdateMode;->value:I

    .line 75
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    move-result-object v3

    .line 79
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    goto :goto_0

    .line 83
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
    iput p3, p0, Lcom/alibaba/android/ark/AIMMsgUpdateMode;->value:I

    .line 6
    return-void
.end method

.method public static forValue(I)Lcom/alibaba/android/ark/AIMMsgUpdateMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/android/ark/AIMMsgUpdateMode;->sValueToEnumMap:Ljava/util/Map;

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p0

    .line 7
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/alibaba/android/ark/AIMMsgUpdateMode;

    .line 13
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ark/AIMMsgUpdateMode;
    .locals 1

    .line 1
    const-class v0, Lcom/alibaba/android/ark/AIMMsgUpdateMode;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/alibaba/android/ark/AIMMsgUpdateMode;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/alibaba/android/ark/AIMMsgUpdateMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/android/ark/AIMMsgUpdateMode;->$VALUES:[Lcom/alibaba/android/ark/AIMMsgUpdateMode;

    .line 3
    invoke-virtual {v0}, [Lcom/alibaba/android/ark/AIMMsgUpdateMode;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/alibaba/android/ark/AIMMsgUpdateMode;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/android/ark/AIMMsgUpdateMode;->value:I

    .line 3
    return v0
.end method
