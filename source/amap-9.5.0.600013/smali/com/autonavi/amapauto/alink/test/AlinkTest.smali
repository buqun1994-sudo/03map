.class public Lcom/autonavi/amapauto/alink/test/AlinkTest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/amapauto/alink/test/AlinkTest$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AlinkTest"


# instance fields
.field private codecHeight:I

.field private codecWidth:I

.field private iAlinkAVListener:Lcom/autonavi/amapauto/alink/IAlinkAVListener;

.field private iAlinkEventListener:Lcom/autonavi/amapauto/alink/IAlinkEventListener;

.field private iAlinkSencorListener:Lcom/autonavi/amapauto/alink/IAlinkSencorListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/autonavi/amapauto/alink/test/AlinkTest$1;

    invoke-direct {v0, p0}, Lcom/autonavi/amapauto/alink/test/AlinkTest$1;-><init>(Lcom/autonavi/amapauto/alink/test/AlinkTest;)V

    iput-object v0, p0, Lcom/autonavi/amapauto/alink/test/AlinkTest;->iAlinkAVListener:Lcom/autonavi/amapauto/alink/IAlinkAVListener;

    .line 4
    new-instance v0, Lcom/autonavi/amapauto/alink/test/AlinkTest$2;

    invoke-direct {v0, p0}, Lcom/autonavi/amapauto/alink/test/AlinkTest$2;-><init>(Lcom/autonavi/amapauto/alink/test/AlinkTest;)V

    iput-object v0, p0, Lcom/autonavi/amapauto/alink/test/AlinkTest;->iAlinkSencorListener:Lcom/autonavi/amapauto/alink/IAlinkSencorListener;

    .line 5
    new-instance v0, Lcom/autonavi/amapauto/alink/test/AlinkTest$3;

    invoke-direct {v0, p0}, Lcom/autonavi/amapauto/alink/test/AlinkTest$3;-><init>(Lcom/autonavi/amapauto/alink/test/AlinkTest;)V

    iput-object v0, p0, Lcom/autonavi/amapauto/alink/test/AlinkTest;->iAlinkEventListener:Lcom/autonavi/amapauto/alink/IAlinkEventListener;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/autonavi/amapauto/alink/test/AlinkTest$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/alink/test/AlinkTest;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/autonavi/amapauto/alink/test/AlinkTest;
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/alink/test/AlinkTest$SingletonHolder;->access$100()Lcom/autonavi/amapauto/alink/test/AlinkTest;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public asyncProbe()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->getInstance()Lcom/autonavi/amapauto/alink/AlinkClientManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->getAlinkClient()Lcom/autonavi/amapauto/alink/IAlinkClient;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "*"

    .line 11
    invoke-interface {v0, v1}, Lcom/autonavi/amapauto/alink/IAlinkClient;->asyncProbe(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public connectProjection(I)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    const-string p1, ""

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-static {p1, v0}, Lcom/autonavi/amapauto/alink/AlinkNative;->sendConnect(Ljava/lang/String;Z)V

    .line 22
    return-void
.end method

.method public init()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "AlinkTest"

    .line 6
    const-string v2, "init"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->getInstance()Lcom/autonavi/amapauto/alink/AlinkClientManager;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->initAlinkClient()V

    .line 18
    invoke-static {}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->getInstance()Lcom/autonavi/amapauto/alink/AlinkClientManager;

    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/autonavi/amapauto/alink/test/AlinkTest;->iAlinkSencorListener:Lcom/autonavi/amapauto/alink/IAlinkSencorListener;

    .line 24
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->registerSensorListener(Lcom/autonavi/amapauto/alink/IAlinkSencorListener;)V

    .line 27
    invoke-static {}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->getInstance()Lcom/autonavi/amapauto/alink/AlinkClientManager;

    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/autonavi/amapauto/alink/test/AlinkTest;->iAlinkSencorListener:Lcom/autonavi/amapauto/alink/IAlinkSencorListener;

    .line 33
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->registerSensorListener(Lcom/autonavi/amapauto/alink/IAlinkSencorListener;)V

    .line 36
    invoke-static {}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->getInstance()Lcom/autonavi/amapauto/alink/AlinkClientManager;

    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/autonavi/amapauto/alink/test/AlinkTest;->iAlinkEventListener:Lcom/autonavi/amapauto/alink/IAlinkEventListener;

    .line 42
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->registerEventListener(Lcom/autonavi/amapauto/alink/IAlinkEventListener;)V

    .line 45
    return-void
.end method

.method public openCamera(I)V
    .locals 3

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lsi;->u(Landroid/content/Context;)Lsi;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lsi;->I()I

    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/autonavi/amapauto/alink/test/AlinkTest;->codecWidth:I

    .line 19
    invoke-static {}, Lrv;->H()Lrv;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lsi;->u(Landroid/content/Context;)Lsi;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lsi;->H()I

    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lcom/autonavi/amapauto/alink/test/AlinkTest;->codecHeight:I

    .line 37
    const/4 v0, 0x3

    .line 38
    new-array v0, v0, [Ljava/lang/Object;

    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v2

    .line 45
    aput-object v2, v0, v1

    .line 47
    iget v1, p0, Lcom/autonavi/amapauto/alink/test/AlinkTest;->codecWidth:I

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object v1

    .line 53
    const/4 v2, 0x1

    .line 54
    aput-object v1, v0, v2

    .line 56
    iget v1, p0, Lcom/autonavi/amapauto/alink/test/AlinkTest;->codecHeight:I

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v1

    .line 62
    const/4 v2, 0x2

    .line 63
    aput-object v1, v0, v2

    .line 65
    const-string v1, "AlinkTest"

    .line 67
    const-string v2, "openCamera serviceId:{?} codecWidth:{?} codecHeight:{?}"

    .line 69
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-static {}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->getInstance()Lcom/autonavi/amapauto/alink/AlinkClientManager;

    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->getAlinkClient()Lcom/autonavi/amapauto/alink/IAlinkClient;

    .line 79
    move-result-object v0

    .line 80
    iget v1, p0, Lcom/autonavi/amapauto/alink/test/AlinkTest;->codecWidth:I

    .line 82
    iget v2, p0, Lcom/autonavi/amapauto/alink/test/AlinkTest;->codecHeight:I

    .line 84
    invoke-interface {v0, p1, v1, v2}, Lcom/autonavi/amapauto/alink/IAlinkClient;->openCamera(III)V

    .line 87
    return-void
.end method

.method public startProjection()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->getInstance()Lcom/autonavi/amapauto/alink/AlinkClientManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->getAlinkClient()Lcom/autonavi/amapauto/alink/IAlinkClient;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-interface {v0, v1}, Lcom/autonavi/amapauto/alink/IAlinkClient;->updateProjectionStatus(I)V

    .line 13
    return-void
.end method
