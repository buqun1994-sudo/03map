.class public final enum Lbq$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lbq$a;

.field public static final enum b:Lbq$a;

.field public static final enum c:Lbq$a;

.field public static final enum d:Lbq$a;

.field public static final enum e:Lbq$a;

.field public static final synthetic f:[Lbq$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lbq$a;

    .line 3
    const-string v1, "OnApplicationInitiated"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lbq$a;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lbq$a;->a:Lbq$a;

    .line 11
    new-instance v0, Lbq$a;

    .line 13
    const-string v1, "OnActivityCreated"

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lbq$a;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v0, Lbq$a;->b:Lbq$a;

    .line 21
    new-instance v0, Lbq$a;

    .line 23
    const-string v1, "OnViewInflated"

    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lbq$a;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v0, Lbq$a;->c:Lbq$a;

    .line 31
    new-instance v0, Lbq$a;

    .line 33
    const-string v1, "OnGFrameFirstDraw"

    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lbq$a;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v0, Lbq$a;->d:Lbq$a;

    .line 41
    new-instance v0, Lbq$a;

    .line 43
    const-string v1, "OnIndexForeground"

    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lbq$a;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v0, Lbq$a;->e:Lbq$a;

    .line 51
    invoke-static {}, Lbq$a;->a()[Lbq$a;

    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lbq$a;->f:[Lbq$a;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static synthetic a()[Lbq$a;
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Lbq$a;

    .line 4
    const/4 v1, 0x0

    .line 5
    sget-object v2, Lbq$a;->a:Lbq$a;

    .line 7
    aput-object v2, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    sget-object v2, Lbq$a;->b:Lbq$a;

    .line 12
    aput-object v2, v0, v1

    .line 14
    const/4 v1, 0x2

    .line 15
    sget-object v2, Lbq$a;->c:Lbq$a;

    .line 17
    aput-object v2, v0, v1

    .line 19
    const/4 v1, 0x3

    .line 20
    sget-object v2, Lbq$a;->d:Lbq$a;

    .line 22
    aput-object v2, v0, v1

    .line 24
    const/4 v1, 0x4

    .line 25
    sget-object v2, Lbq$a;->e:Lbq$a;

    .line 27
    aput-object v2, v0, v1

    .line 29
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lbq$a;
    .locals 1

    .line 1
    const-class v0, Lbq$a;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lbq$a;

    .line 9
    return-object p0
.end method

.method public static values()[Lbq$a;
    .locals 1

    .line 1
    sget-object v0, Lbq$a;->f:[Lbq$a;

    .line 3
    invoke-virtual {v0}, [Lbq$a;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lbq$a;

    .line 9
    return-object v0
.end method
