.class public final enum Ld20;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Ld20;

.field public static final enum c:Ld20;

.field public static final enum d:Ld20;

.field public static final enum e:Ld20;

.field public static final enum f:Ld20;

.field public static final enum g:Ld20;

.field public static final enum h:Ld20;

.field public static final synthetic i:[Ld20;


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ld20;

    .line 3
    const-string v1, "NO_MUTIL_SCREEN"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Ld20;-><init>(Ljava/lang/String;II)V

    .line 9
    sput-object v0, Ld20;->b:Ld20;

    .line 11
    new-instance v0, Ld20;

    .line 13
    const-string v1, "SYSTEM_BUFFER"

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Ld20;-><init>(Ljava/lang/String;II)V

    .line 19
    sput-object v0, Ld20;->c:Ld20;

    .line 21
    new-instance v0, Ld20;

    .line 23
    const-string v1, "SYSTEM_PRESENTATION"

    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Ld20;-><init>(Ljava/lang/String;II)V

    .line 29
    sput-object v0, Ld20;->d:Ld20;

    .line 31
    new-instance v0, Ld20;

    .line 33
    const-string v1, "VIDEO_STREAM"

    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v2}, Ld20;-><init>(Ljava/lang/String;II)V

    .line 39
    sput-object v0, Ld20;->e:Ld20;

    .line 41
    new-instance v0, Ld20;

    .line 43
    const-string v1, "AIDL_INTERNAL_WIDGET"

    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2, v2}, Ld20;-><init>(Ljava/lang/String;II)V

    .line 49
    sput-object v0, Ld20;->f:Ld20;

    .line 51
    new-instance v0, Ld20;

    .line 53
    const-string v1, "AIDL_EXTERNAL_WIDGET"

    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2, v2}, Ld20;-><init>(Ljava/lang/String;II)V

    .line 59
    sput-object v0, Ld20;->g:Ld20;

    .line 61
    new-instance v0, Ld20;

    .line 63
    const-string v1, "AUXILIARY_NAVIGATION_ACTIVITY"

    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2, v2}, Ld20;-><init>(Ljava/lang/String;II)V

    .line 69
    sput-object v0, Ld20;->h:Ld20;

    .line 71
    invoke-static {}, Ld20;->a()[Ld20;

    .line 74
    move-result-object v0

    .line 75
    sput-object v0, Ld20;->i:[Ld20;

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput p3, p0, Ld20;->a:I

    .line 6
    return-void
.end method

.method public static synthetic a()[Ld20;
    .locals 3

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [Ld20;

    .line 4
    const/4 v1, 0x0

    .line 5
    sget-object v2, Ld20;->b:Ld20;

    .line 7
    aput-object v2, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    sget-object v2, Ld20;->c:Ld20;

    .line 12
    aput-object v2, v0, v1

    .line 14
    const/4 v1, 0x2

    .line 15
    sget-object v2, Ld20;->d:Ld20;

    .line 17
    aput-object v2, v0, v1

    .line 19
    const/4 v1, 0x3

    .line 20
    sget-object v2, Ld20;->e:Ld20;

    .line 22
    aput-object v2, v0, v1

    .line 24
    const/4 v1, 0x4

    .line 25
    sget-object v2, Ld20;->f:Ld20;

    .line 27
    aput-object v2, v0, v1

    .line 29
    const/4 v1, 0x5

    .line 30
    sget-object v2, Ld20;->g:Ld20;

    .line 32
    aput-object v2, v0, v1

    .line 34
    const/4 v1, 0x6

    .line 35
    sget-object v2, Ld20;->h:Ld20;

    .line 37
    aput-object v2, v0, v1

    .line 39
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ld20;
    .locals 1

    .line 1
    const-class v0, Ld20;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ld20;

    .line 9
    return-object p0
.end method

.method public static values()[Ld20;
    .locals 1

    .line 1
    sget-object v0, Ld20;->i:[Ld20;

    .line 3
    invoke-virtual {v0}, [Ld20;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Ld20;

    .line 9
    return-object v0
.end method
