.class public final enum Lbq$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation


# static fields
.field public static final enum a:Lbq$b;

.field public static final enum b:Lbq$b;

.field public static final enum c:Lbq$b;

.field public static final enum d:Lbq$b;

.field public static final synthetic e:[Lbq$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lbq$b;

    .line 3
    const-string v1, "Destroyed"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lbq$b;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lbq$b;->a:Lbq$b;

    .line 11
    new-instance v0, Lbq$b;

    .line 13
    const-string v1, "Created"

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lbq$b;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v0, Lbq$b;->b:Lbq$b;

    .line 21
    new-instance v0, Lbq$b;

    .line 23
    const-string v1, "Changed"

    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lbq$b;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v0, Lbq$b;->c:Lbq$b;

    .line 31
    new-instance v0, Lbq$b;

    .line 33
    const-string v1, "Redrew"

    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lbq$b;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v0, Lbq$b;->d:Lbq$b;

    .line 41
    invoke-static {}, Lbq$b;->a()[Lbq$b;

    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lbq$b;->e:[Lbq$b;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static synthetic a()[Lbq$b;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Lbq$b;

    .line 4
    const/4 v1, 0x0

    .line 5
    sget-object v2, Lbq$b;->a:Lbq$b;

    .line 7
    aput-object v2, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    sget-object v2, Lbq$b;->b:Lbq$b;

    .line 12
    aput-object v2, v0, v1

    .line 14
    const/4 v1, 0x2

    .line 15
    sget-object v2, Lbq$b;->c:Lbq$b;

    .line 17
    aput-object v2, v0, v1

    .line 19
    const/4 v1, 0x3

    .line 20
    sget-object v2, Lbq$b;->d:Lbq$b;

    .line 22
    aput-object v2, v0, v1

    .line 24
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lbq$b;
    .locals 1

    .line 1
    const-class v0, Lbq$b;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lbq$b;

    .line 9
    return-object p0
.end method

.method public static values()[Lbq$b;
    .locals 1

    .line 1
    sget-object v0, Lbq$b;->e:[Lbq$b;

    .line 3
    invoke-virtual {v0}, [Lbq$b;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lbq$b;

    .line 9
    return-object v0
.end method
