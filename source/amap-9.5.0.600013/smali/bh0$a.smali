.class public final enum Lbh0$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lbh0$a;

.field public static final enum b:Lbh0$a;

.field public static final enum c:Lbh0$a;

.field public static final synthetic d:[Lbh0$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lbh0$a;

    .line 3
    const-string v1, "DEFAULT"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lbh0$a;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lbh0$a;->a:Lbh0$a;

    .line 11
    new-instance v0, Lbh0$a;

    .line 13
    const-string v1, "HOME"

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lbh0$a;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v0, Lbh0$a;->b:Lbh0$a;

    .line 21
    new-instance v0, Lbh0$a;

    .line 23
    const-string v1, "COMPANY"

    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lbh0$a;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v0, Lbh0$a;->c:Lbh0$a;

    .line 31
    invoke-static {}, Lbh0$a;->a()[Lbh0$a;

    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lbh0$a;->d:[Lbh0$a;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static synthetic a()[Lbh0$a;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Lbh0$a;

    .line 4
    const/4 v1, 0x0

    .line 5
    sget-object v2, Lbh0$a;->a:Lbh0$a;

    .line 7
    aput-object v2, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    sget-object v2, Lbh0$a;->b:Lbh0$a;

    .line 12
    aput-object v2, v0, v1

    .line 14
    const/4 v1, 0x2

    .line 15
    sget-object v2, Lbh0$a;->c:Lbh0$a;

    .line 17
    aput-object v2, v0, v1

    .line 19
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lbh0$a;
    .locals 1

    .line 1
    const-class v0, Lbh0$a;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lbh0$a;

    .line 9
    return-object p0
.end method

.method public static values()[Lbh0$a;
    .locals 1

    .line 1
    sget-object v0, Lbh0$a;->d:[Lbh0$a;

    .line 3
    invoke-virtual {v0}, [Lbh0$a;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lbh0$a;

    .line 9
    return-object v0
.end method
