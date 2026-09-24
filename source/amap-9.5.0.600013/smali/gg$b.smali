.class public final enum Lgg$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation


# static fields
.field public static final enum a:Lgg$b;

.field public static final enum b:Lgg$b;

.field public static final enum c:Lgg$b;

.field public static final enum d:Lgg$b;

.field public static final enum e:Lgg$b;

.field public static final enum f:Lgg$b;

.field public static final enum g:Lgg$b;

.field public static final synthetic h:[Lgg$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lgg$b;

    .line 3
    const-string v1, "INT_TYPE"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lgg$b;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lgg$b;->a:Lgg$b;

    .line 11
    new-instance v1, Lgg$b;

    .line 13
    const-string v3, "FLOAT_TYPE"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lgg$b;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lgg$b;->b:Lgg$b;

    .line 21
    new-instance v3, Lgg$b;

    .line 23
    const-string v5, "COLOR_TYPE"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lgg$b;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Lgg$b;->c:Lgg$b;

    .line 31
    new-instance v5, Lgg$b;

    .line 33
    const-string v7, "COLOR_DRAWABLE_TYPE"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lgg$b;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v5, Lgg$b;->d:Lgg$b;

    .line 41
    new-instance v7, Lgg$b;

    .line 43
    const-string v9, "STRING_TYPE"

    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Lgg$b;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v7, Lgg$b;->e:Lgg$b;

    .line 51
    new-instance v9, Lgg$b;

    .line 53
    const-string v11, "BOOLEAN_TYPE"

    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12}, Lgg$b;-><init>(Ljava/lang/String;I)V

    .line 59
    sput-object v9, Lgg$b;->f:Lgg$b;

    .line 61
    new-instance v11, Lgg$b;

    .line 63
    const-string v13, "DIMENSION_TYPE"

    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14}, Lgg$b;-><init>(Ljava/lang/String;I)V

    .line 69
    sput-object v11, Lgg$b;->g:Lgg$b;

    .line 71
    const/4 v13, 0x7

    .line 72
    new-array v13, v13, [Lgg$b;

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
    sput-object v13, Lgg$b;->h:[Lgg$b;

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgg$b;
    .locals 1

    .line 1
    const-class v0, Lgg$b;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lgg$b;

    .line 9
    return-object p0
.end method

.method public static values()[Lgg$b;
    .locals 1

    .line 1
    sget-object v0, Lgg$b;->h:[Lgg$b;

    .line 3
    invoke-virtual {v0}, [Lgg$b;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lgg$b;

    .line 9
    return-object v0
.end method
