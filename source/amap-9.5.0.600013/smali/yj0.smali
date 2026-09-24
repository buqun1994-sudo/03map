.class public final enum Lyj0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lyj0;

.field public static final enum c:Lyj0;

.field public static final synthetic d:[Lyj0;


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lyj0;

    .line 3
    const-string v1, "SYNC_GET"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lyj0;-><init>(Ljava/lang/String;II)V

    .line 9
    sput-object v0, Lyj0;->b:Lyj0;

    .line 11
    new-instance v0, Lyj0;

    .line 13
    const-string v1, "ASYNC_CALLBACK"

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lyj0;-><init>(Ljava/lang/String;II)V

    .line 19
    sput-object v0, Lyj0;->c:Lyj0;

    .line 21
    invoke-static {}, Lyj0;->a()[Lyj0;

    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lyj0;->d:[Lyj0;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput p3, p0, Lyj0;->a:I

    .line 6
    return-void
.end method

.method public static synthetic a()[Lyj0;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lyj0;

    .line 4
    const/4 v1, 0x0

    .line 5
    sget-object v2, Lyj0;->b:Lyj0;

    .line 7
    aput-object v2, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    sget-object v2, Lyj0;->c:Lyj0;

    .line 12
    aput-object v2, v0, v1

    .line 14
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lyj0;
    .locals 1

    .line 1
    const-class v0, Lyj0;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lyj0;

    .line 9
    return-object p0
.end method

.method public static values()[Lyj0;
    .locals 1

    .line 1
    sget-object v0, Lyj0;->d:[Lyj0;

    .line 3
    invoke-virtual {v0}, [Lyj0;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lyj0;

    .line 9
    return-object v0
.end method
