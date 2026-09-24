.class public final enum Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;

.field public static final enum EMPTY_REFRESH_TOKEN:Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;

.field public static final enum LOCAL_TOKEN_EXPIRED:Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;

.field public static final enum NO_LOCAL_TOKEN:Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;

.field public static final enum REFRESH_TOKEN_EXPIRED:Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;

.field public static final enum REFRESH_TOKEN_FAILED:Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;

.field public static final enum UID_TOKEN_NOT_MATCH:Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;

.field public static final enum UNKNOWN:Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;

.field private static final sValueToEnumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;

    .line 3
    const-string v1, "UNKNOWN"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;-><init>(Ljava/lang/String;II)V

    .line 9
    sput-object v0, Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;->UNKNOWN:Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;

    .line 11
    new-instance v1, Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;

    .line 13
    const-string v3, "NO_LOCAL_TOKEN"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;-><init>(Ljava/lang/String;II)V

    .line 19
    sput-object v1, Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;->NO_LOCAL_TOKEN:Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;

    .line 21
    new-instance v3, Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;

    .line 23
    const-string v5, "LOCAL_TOKEN_EXPIRED"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;-><init>(Ljava/lang/String;II)V

    .line 29
    sput-object v3, Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;->LOCAL_TOKEN_EXPIRED:Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;

    .line 31
    new-instance v5, Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;

    .line 33
    const-string v7, "UID_TOKEN_NOT_MATCH"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v8}, Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;-><init>(Ljava/lang/String;II)V

    .line 39
    sput-object v5, Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;->UID_TOKEN_NOT_MATCH:Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;

    .line 41
    new-instance v7, Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;

    .line 43
    const-string v9, "EMPTY_REFRESH_TOKEN"

    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10, v10}, Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;-><init>(Ljava/lang/String;II)V

    .line 49
    sput-object v7, Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;->EMPTY_REFRESH_TOKEN:Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;

    .line 51
    new-instance v9, Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;

    .line 53
    const-string v11, "REFRESH_TOKEN_FAILED"

    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12, v12}, Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;-><init>(Ljava/lang/String;II)V

    .line 59
    sput-object v9, Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;->REFRESH_TOKEN_FAILED:Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;

    .line 61
    new-instance v11, Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;

    .line 63
    const-string v13, "REFRESH_TOKEN_EXPIRED"

    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14, v14}, Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;-><init>(Ljava/lang/String;II)V

    .line 69
    sput-object v11, Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;->REFRESH_TOKEN_EXPIRED:Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;

    .line 71
    const/4 v13, 0x7

    .line 72
    new-array v13, v13, [Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;

    .line 74
    aput-object v0, v13, v2

    .line 76
    aput-object v1, v13, v4

    .line 78
    aput-object v3, v13, v6

    .line 80
    aput-object v5, v13, v8

    .line 82
    aput-object v7, v13, v10

    .line 84
    aput-object v9, v13, v12

    .line 86
    aput-object v11, v13, v14

    .line 88
    sput-object v13, Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;->$VALUES:[Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    .line 92
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 95
    sput-object v0, Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;->sValueToEnumMap:Ljava/util/Map;

    .line 97
    const-class v0, Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;

    .line 99
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 106
    move-result-object v0

    .line 107
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_0

    .line 113
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    move-result-object v1

    .line 117
    check-cast v1, Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;

    .line 119
    sget-object v2, Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;->sValueToEnumMap:Ljava/util/Map;

    .line 121
    iget v3, v1, Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;->value:I

    .line 123
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    move-result-object v3

    .line 127
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    goto :goto_0

    .line 131
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
    iput p3, p0, Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;->value:I

    .line 6
    return-void
.end method

.method public static forValue(I)Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;->sValueToEnumMap:Ljava/util/Map;

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p0

    .line 7
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;

    .line 13
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;
    .locals 1

    .line 1
    const-class v0, Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;->$VALUES:[Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;

    .line 3
    invoke-virtual {v0}, [Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/android/ark/AIMAuthTokenExpiredReason;->value:I

    .line 3
    return v0
.end method
