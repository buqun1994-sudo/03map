.class public final enum Lcom/alibaba/android/ark/AIMGroupMemberRole;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/android/ark/AIMGroupMemberRole;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ark/AIMGroupMemberRole;

.field public static final enum GROUP_MEMBER_ROLE_ADMIN:Lcom/alibaba/android/ark/AIMGroupMemberRole;

.field public static final enum GROUP_MEMBER_ROLE_NORMAL:Lcom/alibaba/android/ark/AIMGroupMemberRole;

.field public static final enum GROUP_MEMBER_ROLE_OWNER:Lcom/alibaba/android/ark/AIMGroupMemberRole;

.field public static final enum GROUP_MEMBER_ROLE_UNKNOW:Lcom/alibaba/android/ark/AIMGroupMemberRole;

.field private static final sValueToEnumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/android/ark/AIMGroupMemberRole;",
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
    new-instance v0, Lcom/alibaba/android/ark/AIMGroupMemberRole;

    .line 3
    const-string v1, "GROUP_MEMBER_ROLE_UNKNOW"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/android/ark/AIMGroupMemberRole;-><init>(Ljava/lang/String;II)V

    .line 9
    sput-object v0, Lcom/alibaba/android/ark/AIMGroupMemberRole;->GROUP_MEMBER_ROLE_UNKNOW:Lcom/alibaba/android/ark/AIMGroupMemberRole;

    .line 11
    new-instance v1, Lcom/alibaba/android/ark/AIMGroupMemberRole;

    .line 13
    const-string v3, "GROUP_MEMBER_ROLE_OWNER"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lcom/alibaba/android/ark/AIMGroupMemberRole;-><init>(Ljava/lang/String;II)V

    .line 19
    sput-object v1, Lcom/alibaba/android/ark/AIMGroupMemberRole;->GROUP_MEMBER_ROLE_OWNER:Lcom/alibaba/android/ark/AIMGroupMemberRole;

    .line 21
    new-instance v3, Lcom/alibaba/android/ark/AIMGroupMemberRole;

    .line 23
    const-string v5, "GROUP_MEMBER_ROLE_ADMIN"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Lcom/alibaba/android/ark/AIMGroupMemberRole;-><init>(Ljava/lang/String;II)V

    .line 29
    sput-object v3, Lcom/alibaba/android/ark/AIMGroupMemberRole;->GROUP_MEMBER_ROLE_ADMIN:Lcom/alibaba/android/ark/AIMGroupMemberRole;

    .line 31
    new-instance v5, Lcom/alibaba/android/ark/AIMGroupMemberRole;

    .line 33
    const-string v7, "GROUP_MEMBER_ROLE_NORMAL"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v8}, Lcom/alibaba/android/ark/AIMGroupMemberRole;-><init>(Ljava/lang/String;II)V

    .line 39
    sput-object v5, Lcom/alibaba/android/ark/AIMGroupMemberRole;->GROUP_MEMBER_ROLE_NORMAL:Lcom/alibaba/android/ark/AIMGroupMemberRole;

    .line 41
    const/4 v7, 0x4

    .line 42
    new-array v7, v7, [Lcom/alibaba/android/ark/AIMGroupMemberRole;

    .line 44
    aput-object v0, v7, v2

    .line 46
    aput-object v1, v7, v4

    .line 48
    aput-object v3, v7, v6

    .line 50
    aput-object v5, v7, v8

    .line 52
    sput-object v7, Lcom/alibaba/android/ark/AIMGroupMemberRole;->$VALUES:[Lcom/alibaba/android/ark/AIMGroupMemberRole;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    .line 56
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 59
    sput-object v0, Lcom/alibaba/android/ark/AIMGroupMemberRole;->sValueToEnumMap:Ljava/util/Map;

    .line 61
    const-class v0, Lcom/alibaba/android/ark/AIMGroupMemberRole;

    .line 63
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 70
    move-result-object v0

    .line 71
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_0

    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Lcom/alibaba/android/ark/AIMGroupMemberRole;

    .line 83
    sget-object v2, Lcom/alibaba/android/ark/AIMGroupMemberRole;->sValueToEnumMap:Ljava/util/Map;

    .line 85
    iget v3, v1, Lcom/alibaba/android/ark/AIMGroupMemberRole;->value:I

    .line 87
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    move-result-object v3

    .line 91
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    goto :goto_0

    .line 95
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
    iput p3, p0, Lcom/alibaba/android/ark/AIMGroupMemberRole;->value:I

    .line 6
    return-void
.end method

.method public static forValue(I)Lcom/alibaba/android/ark/AIMGroupMemberRole;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/android/ark/AIMGroupMemberRole;->sValueToEnumMap:Ljava/util/Map;

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p0

    .line 7
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/alibaba/android/ark/AIMGroupMemberRole;

    .line 13
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ark/AIMGroupMemberRole;
    .locals 1

    .line 1
    const-class v0, Lcom/alibaba/android/ark/AIMGroupMemberRole;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/alibaba/android/ark/AIMGroupMemberRole;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/alibaba/android/ark/AIMGroupMemberRole;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/android/ark/AIMGroupMemberRole;->$VALUES:[Lcom/alibaba/android/ark/AIMGroupMemberRole;

    .line 3
    invoke-virtual {v0}, [Lcom/alibaba/android/ark/AIMGroupMemberRole;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/alibaba/android/ark/AIMGroupMemberRole;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/android/ark/AIMGroupMemberRole;->value:I

    .line 3
    return v0
.end method
