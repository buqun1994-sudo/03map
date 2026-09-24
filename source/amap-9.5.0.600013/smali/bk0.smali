.class public final enum Lbk0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lbk0;

.field public static final enum c:Lbk0;

.field public static final enum d:Lbk0;

.field public static final synthetic e:[Lbk0;


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lbk0;

    .line 3
    const-string v1, "COMMON_VEDIO"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lbk0;-><init>(Ljava/lang/String;II)V

    .line 9
    sput-object v0, Lbk0;->b:Lbk0;

    .line 11
    new-instance v0, Lbk0;

    .line 13
    const-string v1, "SGM_NGI_2P_VEDIO"

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lbk0;-><init>(Ljava/lang/String;II)V

    .line 19
    sput-object v0, Lbk0;->c:Lbk0;

    .line 21
    new-instance v0, Lbk0;

    .line 23
    const-string v1, "HAMAN_VEDIO"

    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lbk0;-><init>(Ljava/lang/String;II)V

    .line 29
    sput-object v0, Lbk0;->d:Lbk0;

    .line 31
    invoke-static {}, Lbk0;->a()[Lbk0;

    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lbk0;->e:[Lbk0;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput p3, p0, Lbk0;->a:I

    .line 6
    return-void
.end method

.method public static synthetic a()[Lbk0;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Lbk0;

    .line 4
    const/4 v1, 0x0

    .line 5
    sget-object v2, Lbk0;->b:Lbk0;

    .line 7
    aput-object v2, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    sget-object v2, Lbk0;->c:Lbk0;

    .line 12
    aput-object v2, v0, v1

    .line 14
    const/4 v1, 0x2

    .line 15
    sget-object v2, Lbk0;->d:Lbk0;

    .line 17
    aput-object v2, v0, v1

    .line 19
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lbk0;
    .locals 1

    .line 1
    const-class v0, Lbk0;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lbk0;

    .line 9
    return-object p0
.end method

.method public static values()[Lbk0;
    .locals 1

    .line 1
    sget-object v0, Lbk0;->e:[Lbk0;

    .line 3
    invoke-virtual {v0}, [Lbk0;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lbk0;

    .line 9
    return-object v0
.end method
