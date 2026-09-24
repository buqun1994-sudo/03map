.class public final enum Lkm$f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "f"
.end annotation


# static fields
.field public static final enum b:Lkm$f;

.field public static final enum c:Lkm$f;

.field public static final enum d:Lkm$f;

.field public static final enum e:Lkm$f;

.field public static final enum f:Lkm$f;

.field public static final synthetic g:[Lkm$f;


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lkm$f;

    .line 3
    const-string v1, "GPS_LOCATING"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lkm$f;-><init>(Ljava/lang/String;II)V

    .line 9
    sput-object v0, Lkm$f;->b:Lkm$f;

    .line 11
    new-instance v0, Lkm$f;

    .line 13
    const-string v1, "YAW_REROUTING"

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lkm$f;-><init>(Ljava/lang/String;II)V

    .line 19
    sput-object v0, Lkm$f;->c:Lkm$f;

    .line 21
    new-instance v0, Lkm$f;

    .line 23
    const-string v1, "ARRIVAL_DESTINATION"

    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lkm$f;-><init>(Ljava/lang/String;II)V

    .line 29
    sput-object v0, Lkm$f;->d:Lkm$f;

    .line 31
    new-instance v0, Lkm$f;

    .line 33
    const-string v1, "GUIDE_REFRESH"

    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v2}, Lkm$f;-><init>(Ljava/lang/String;II)V

    .line 39
    sput-object v0, Lkm$f;->e:Lkm$f;

    .line 41
    new-instance v0, Lkm$f;

    .line 43
    const-string v1, "GPS_LOCATED"

    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2, v2}, Lkm$f;-><init>(Ljava/lang/String;II)V

    .line 49
    sput-object v0, Lkm$f;->f:Lkm$f;

    .line 51
    invoke-static {}, Lkm$f;->a()[Lkm$f;

    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lkm$f;->g:[Lkm$f;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput p3, p0, Lkm$f;->a:I

    .line 6
    return-void
.end method

.method public static synthetic a()[Lkm$f;
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Lkm$f;

    .line 4
    const/4 v1, 0x0

    .line 5
    sget-object v2, Lkm$f;->b:Lkm$f;

    .line 7
    aput-object v2, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    sget-object v2, Lkm$f;->c:Lkm$f;

    .line 12
    aput-object v2, v0, v1

    .line 14
    const/4 v1, 0x2

    .line 15
    sget-object v2, Lkm$f;->d:Lkm$f;

    .line 17
    aput-object v2, v0, v1

    .line 19
    const/4 v1, 0x3

    .line 20
    sget-object v2, Lkm$f;->e:Lkm$f;

    .line 22
    aput-object v2, v0, v1

    .line 24
    const/4 v1, 0x4

    .line 25
    sget-object v2, Lkm$f;->f:Lkm$f;

    .line 27
    aput-object v2, v0, v1

    .line 29
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkm$f;
    .locals 1

    .line 1
    const-class v0, Lkm$f;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lkm$f;

    .line 9
    return-object p0
.end method

.method public static values()[Lkm$f;
    .locals 1

    .line 1
    sget-object v0, Lkm$f;->g:[Lkm$f;

    .line 3
    invoke-virtual {v0}, [Lkm$f;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lkm$f;

    .line 9
    return-object v0
.end method
