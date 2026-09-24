.class public final enum Lfg$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation


# static fields
.field public static final enum a:Lfg$b;

.field public static final enum b:Lfg$b;

.field public static final enum c:Lfg$b;

.field public static final enum d:Lfg$b;

.field public static final enum e:Lfg$b;

.field public static final enum f:Lfg$b;

.field public static final enum g:Lfg$b;

.field public static final enum h:Lfg$b;

.field public static final enum i:Lfg$b;

.field public static final synthetic j:[Lfg$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lfg$b;

    .line 3
    const-string v1, "NONE"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lfg$b;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lfg$b;->a:Lfg$b;

    .line 11
    new-instance v1, Lfg$b;

    .line 13
    const-string v3, "LEFT"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lfg$b;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lfg$b;->b:Lfg$b;

    .line 21
    new-instance v3, Lfg$b;

    .line 23
    const-string v5, "TOP"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lfg$b;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Lfg$b;->c:Lfg$b;

    .line 31
    new-instance v5, Lfg$b;

    .line 33
    const-string v7, "RIGHT"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lfg$b;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v5, Lfg$b;->d:Lfg$b;

    .line 41
    new-instance v7, Lfg$b;

    .line 43
    const-string v9, "BOTTOM"

    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Lfg$b;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v7, Lfg$b;->e:Lfg$b;

    .line 51
    new-instance v9, Lfg$b;

    .line 53
    const-string v11, "BASELINE"

    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12}, Lfg$b;-><init>(Ljava/lang/String;I)V

    .line 59
    sput-object v9, Lfg$b;->f:Lfg$b;

    .line 61
    new-instance v11, Lfg$b;

    .line 63
    const-string v13, "CENTER"

    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14}, Lfg$b;-><init>(Ljava/lang/String;I)V

    .line 69
    sput-object v11, Lfg$b;->g:Lfg$b;

    .line 71
    new-instance v13, Lfg$b;

    .line 73
    const-string v15, "CENTER_X"

    .line 75
    const/4 v14, 0x7

    .line 76
    invoke-direct {v13, v15, v14}, Lfg$b;-><init>(Ljava/lang/String;I)V

    .line 79
    sput-object v13, Lfg$b;->h:Lfg$b;

    .line 81
    new-instance v15, Lfg$b;

    .line 83
    const-string v14, "CENTER_Y"

    .line 85
    const/16 v12, 0x8

    .line 87
    invoke-direct {v15, v14, v12}, Lfg$b;-><init>(Ljava/lang/String;I)V

    .line 90
    sput-object v15, Lfg$b;->i:Lfg$b;

    .line 92
    const/16 v14, 0x9

    .line 94
    new-array v14, v14, [Lfg$b;

    .line 96
    aput-object v0, v14, v2

    .line 98
    aput-object v1, v14, v4

    .line 100
    aput-object v3, v14, v6

    .line 102
    aput-object v5, v14, v8

    .line 104
    aput-object v7, v14, v10

    .line 106
    const/4 v0, 0x5

    .line 107
    aput-object v9, v14, v0

    .line 109
    const/4 v0, 0x6

    .line 110
    aput-object v11, v14, v0

    .line 112
    const/4 v0, 0x7

    .line 113
    aput-object v13, v14, v0

    .line 115
    aput-object v15, v14, v12

    .line 117
    sput-object v14, Lfg$b;->j:[Lfg$b;

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfg$b;
    .locals 1

    .line 1
    const-class v0, Lfg$b;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lfg$b;

    .line 9
    return-object p0
.end method

.method public static values()[Lfg$b;
    .locals 1

    .line 1
    sget-object v0, Lfg$b;->j:[Lfg$b;

    .line 3
    invoke-virtual {v0}, [Lfg$b;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lfg$b;

    .line 9
    return-object v0
.end method
