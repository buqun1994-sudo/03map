.class public abstract Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final a:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

.field public static final b:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

.field public static final c:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

.field public static final d:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

.field public static final e:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

.field public static final f:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

.field public static final g:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

.field public static final h:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

.field public static final i:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

.field public static final j:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

    .line 3
    const-string v1, "loadTick"

    .line 5
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$c;->a:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

    .line 10
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

    .line 12
    const-string v1, "timeBootMax"

    .line 14
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;-><init>(Ljava/lang/String;)V

    .line 17
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$c;->b:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

    .line 19
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

    .line 21
    const-string v1, "timeBootMin"

    .line 23
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;-><init>(Ljava/lang/String;)V

    .line 26
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$c;->c:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

    .line 28
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

    .line 30
    const-string v1, "timeBootAvg"

    .line 32
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;-><init>(Ljava/lang/String;)V

    .line 35
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$c;->d:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

    .line 37
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

    .line 39
    const-string v1, "timeMapMax"

    .line 41
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;-><init>(Ljava/lang/String;)V

    .line 44
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$c;->e:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

    .line 46
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

    .line 48
    const-string v1, "timeMapMin"

    .line 50
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;-><init>(Ljava/lang/String;)V

    .line 53
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$c;->f:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

    .line 55
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

    .line 57
    const-string v1, "timeMapAvg"

    .line 59
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;-><init>(Ljava/lang/String;)V

    .line 62
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$c;->g:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

    .line 64
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

    .line 66
    const-string v1, "timeGFrameMax"

    .line 68
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;-><init>(Ljava/lang/String;)V

    .line 71
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$c;->h:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

    .line 73
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

    .line 75
    const-string v1, "timeGFrameMin"

    .line 77
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;-><init>(Ljava/lang/String;)V

    .line 80
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$c;->i:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

    .line 82
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

    .line 84
    const-string v1, "timeGFrameAvg"

    .line 86
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;-><init>(Ljava/lang/String;)V

    .line 89
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$c;->j:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar$b;

    .line 91
    return-void
.end method

.method public static a()V
    .locals 0

    .line 1
    return-void
.end method
