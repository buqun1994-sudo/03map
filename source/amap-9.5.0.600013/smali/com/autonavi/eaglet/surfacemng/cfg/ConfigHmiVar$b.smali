.class public Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;
.super Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final e:Ljava/util/List;

.field public static f:Ljava/lang/String;


# instance fields
.field public final d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;->e:Ljava/util/List;

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iput-boolean p3, p0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;->d:Z

    .line 6
    sget-object p1, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;->e:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p3, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;->j()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0, p2}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic g()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;->e:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public static synthetic h()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;->f:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static synthetic i(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sput-object p0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;->f:Ljava/lang/String;

    .line 3
    return-object p0
.end method


# virtual methods
.method public j()V
    .locals 3

    .line 1
    sget-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;->f:Ljava/lang/String;

    .line 3
    if-nez v0, :cond_0

    .line 5
    sget-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi;->CONFIG_sm_eagletVariables:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi$b;

    .line 7
    invoke-virtual {v0}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi$b;->c()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;->f:Ljava/lang/String;

    .line 13
    const-string v0, "sVarCache init..."

    .line 15
    invoke-static {v0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->debugLog(Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;->f:Ljava/lang/String;

    .line 20
    invoke-static {v0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->debugLog(Ljava/lang/String;)V

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    iget-object v1, p0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$a;->a:Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, "="

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    sget-object v1, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;->f:Ljava/lang/String;

    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 47
    move-result v1

    .line 48
    if-ltz v1, :cond_2

    .line 50
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 53
    move-result v0

    .line 54
    add-int/2addr v1, v0

    .line 55
    sget-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;->f:Ljava/lang/String;

    .line 57
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 60
    move-result v0

    .line 61
    if-ge v1, v0, :cond_2

    .line 63
    sget-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;->f:Ljava/lang/String;

    .line 65
    const-string v2, "|"

    .line 67
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 70
    move-result v0

    .line 71
    if-gez v0, :cond_1

    .line 73
    sget-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;->f:Ljava/lang/String;

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 78
    move-result v0

    .line 79
    :cond_1
    sget-object v2, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;->f:Ljava/lang/String;

    .line 81
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p0, v0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$a;->b(Ljava/lang/String;)V

    .line 88
    :cond_2
    return-void
.end method
