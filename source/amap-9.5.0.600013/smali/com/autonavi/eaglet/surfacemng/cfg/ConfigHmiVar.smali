.class public Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$c;,
        Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;
    }
.end annotation


# static fields
.field public static final CONFIG_MapViewParam_height:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

.field public static final CONFIG_MapViewParam_width:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

.field public static final CONFIG_MapViewParam_x:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

.field public static final CONFIG_MapViewParam_y:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

.field public static final STATE_BACK:Ljava/lang/String; = "0"

.field public static final STATE_FORE:Ljava/lang/String; = "1"

.field public static final STATE_INVALID:Ljava/lang/String; = "-1"

.field public static final hmiDelaySurfaceChangeUI:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

.field public static final hmiIsInMultiWindowMode:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

.field public static final requestInputMethodIfShown:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

    .line 3
    const-string v1, "MapViewParam_x"

    .line 5
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar;->CONFIG_MapViewParam_x:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

    .line 10
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

    .line 12
    const-string v1, "MapViewParam_y"

    .line 14
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;-><init>(Ljava/lang/String;)V

    .line 17
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar;->CONFIG_MapViewParam_y:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

    .line 19
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

    .line 21
    const-string v1, "MapViewParam_width"

    .line 23
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;-><init>(Ljava/lang/String;)V

    .line 26
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar;->CONFIG_MapViewParam_width:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

    .line 28
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

    .line 30
    const-string v1, "MapViewParam_height"

    .line 32
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;-><init>(Ljava/lang/String;)V

    .line 35
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar;->CONFIG_MapViewParam_height:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

    .line 37
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

    .line 39
    const/4 v1, 0x1

    .line 40
    const/4 v2, 0x0

    .line 41
    const-string v3, "isInMultiWindowMode"

    .line 43
    invoke-direct {v0, v3, v1, v2}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;-><init>(Ljava/lang/String;ZLcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$a;)V

    .line 46
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar;->hmiIsInMultiWindowMode:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

    .line 48
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

    .line 50
    const-string v1, "nDelaySurfaceChangeUI"

    .line 52
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;-><init>(Ljava/lang/String;)V

    .line 55
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar;->hmiDelaySurfaceChangeUI:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

    .line 57
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

    .line 59
    const-string v1, "requestInputMethodIfShown"

    .line 61
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;-><init>(Ljava/lang/String;)V

    .line 64
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar;->requestInputMethodIfShown:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static finishLoad()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar;->setVarIntoHmi()V

    .line 4
    return-void
.end method

.method public static getConfigList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;->g()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static getVarAssemble()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;->g()Ljava/util/List;

    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_3

    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

    .line 26
    invoke-virtual {v2}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$a;->a()Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 30
    if-eqz v3, :cond_0

    .line 32
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 42
    move-result v3

    .line 43
    if-lez v3, :cond_2

    .line 45
    const-string v3, "|"

    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :cond_2
    iget-object v3, v2, Lcom/autonavi/eaglet/surfacemng/cfg/Config$a;->a:Ljava/lang/String;

    .line 52
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v3, "="

    .line 57
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v2}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$a;->a()Ljava/lang/String;

    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    goto :goto_0

    .line 68
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    return-object v0
.end method

.method public static preLoad()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$c;->a()V

    .line 4
    return-void
.end method

.method public static setVarIntoHmi()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar;->getVarAssemble()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    sget-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi;->CONFIG_sm_eagletVariables:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi$b;

    .line 10
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;->h()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi$b;->b(Ljava/lang/String;)V

    .line 17
    return-void
.end method
