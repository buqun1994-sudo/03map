.class public final enum Lxp0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lxp0;

.field public static final enum c:Lxp0;

.field public static final enum d:Lxp0;

.field public static final enum e:Lxp0;

.field public static final synthetic f:[Lxp0;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lxp0;

    .line 3
    const-string v1, "bin"

    .line 5
    const-string v2, "BIN"

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lxp0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    sput-object v0, Lxp0;->b:Lxp0;

    .line 13
    new-instance v1, Lxp0;

    .line 15
    const-string v2, "json"

    .line 17
    const-string v4, "JSON"

    .line 19
    const/4 v5, 0x1

    .line 20
    invoke-direct {v1, v4, v5, v2}, Lxp0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    sput-object v1, Lxp0;->c:Lxp0;

    .line 25
    new-instance v2, Lxp0;

    .line 27
    const-string v4, "xml"

    .line 29
    const-string v6, "XML"

    .line 31
    const/4 v7, 0x2

    .line 32
    invoke-direct {v2, v6, v7, v4}, Lxp0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    sput-object v2, Lxp0;->d:Lxp0;

    .line 37
    new-instance v4, Lxp0;

    .line 39
    const-string v6, "pb"

    .line 41
    const-string v8, "PB"

    .line 43
    const/4 v9, 0x3

    .line 44
    invoke-direct {v4, v8, v9, v6}, Lxp0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 47
    sput-object v4, Lxp0;->e:Lxp0;

    .line 49
    const/4 v6, 0x4

    .line 50
    new-array v6, v6, [Lxp0;

    .line 52
    aput-object v0, v6, v3

    .line 54
    aput-object v1, v6, v5

    .line 56
    aput-object v2, v6, v7

    .line 58
    aput-object v4, v6, v9

    .line 60
    sput-object v6, Lxp0;->f:[Lxp0;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-object p3, p0, Lxp0;->a:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public static a(Ljava/lang/String;)Lxp0;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 3
    sget-object p0, Lxp0;->d:Lxp0;

    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    const-string v0, "json"

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 18
    sget-object p0, Lxp0;->c:Lxp0;

    .line 20
    return-object p0

    .line 21
    :cond_1
    const-string v0, "bin"

    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 29
    sget-object p0, Lxp0;->b:Lxp0;

    .line 31
    return-object p0

    .line 32
    :cond_2
    const-string v0, "pb"

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_3

    .line 40
    sget-object p0, Lxp0;->e:Lxp0;

    .line 42
    return-object p0

    .line 43
    :cond_3
    sget-object p0, Lxp0;->d:Lxp0;

    .line 45
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lxp0;
    .locals 1

    .line 1
    const-class v0, Lxp0;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lxp0;

    .line 9
    return-object p0
.end method

.method public static values()[Lxp0;
    .locals 1

    .line 1
    sget-object v0, Lxp0;->f:[Lxp0;

    .line 3
    invoke-virtual {v0}, [Lxp0;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lxp0;

    .line 9
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lxp0;->a:Ljava/lang/String;

    .line 3
    return-object v0
.end method
