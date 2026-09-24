.class public Lcom/autonavi/amapauto/splitscreen/SplitScreenManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final ourInstance:Lcom/autonavi/amapauto/splitscreen/SplitScreenManager;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private splitScreen:Lot;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/splitscreen/SplitScreenManager;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/splitscreen/SplitScreenManager;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/splitscreen/SplitScreenManager;->ourInstance:Lcom/autonavi/amapauto/splitscreen/SplitScreenManager;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "SplitScreenManager"

    .line 6
    iput-object v0, p0, Lcom/autonavi/amapauto/splitscreen/SplitScreenManager;->TAG:Ljava/lang/String;

    .line 8
    invoke-static {}, Lse;->c()Lse;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lse;->getSplitScreen()Lot;

    .line 15
    return-void
.end method

.method public static getInstance()Lcom/autonavi/amapauto/splitscreen/SplitScreenManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/splitscreen/SplitScreenManager;->ourInstance:Lcom/autonavi/amapauto/splitscreen/SplitScreenManager;

    .line 3
    return-object v0
.end method


# virtual methods
.method public doSplitScreen()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "SplitScreenManager"

    .line 6
    const-string v3, "doSplitScreen"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const-string v1, "doSplitScreen splitScreen == null"

    .line 13
    new-array v3, v0, [Ljava/lang/Object;

    .line 15
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    return v0
.end method

.method public goSplitScreenHome()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "SplitScreenManager"

    .line 6
    const-string v3, "goSplitScreenHome"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const-string v1, "goSplitScreenHome splitScreen == null"

    .line 13
    new-array v3, v0, [Ljava/lang/Object;

    .line 15
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    return v0
.end method
