.class public Lcom/autonavi/eaglet/surfacemng/Adapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static mJniContext:Ltr;

.field private static mLogger:Lyr;

.field private static mMapViewAdapter:Lbs;

.field private static mTurboConfig:Lut;

.field private static smManager:Lht;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static JNIContext()Ltr;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/eaglet/surfacemng/Adapter;->mJniContext:Ltr;

    .line 3
    return-object v0
.end method

.method public static Logger()Lyr;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/eaglet/surfacemng/Adapter;->mLogger:Lyr;

    .line 3
    return-object v0
.end method

.method public static MapViewAdapter()Lbs;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/eaglet/surfacemng/Adapter;->mMapViewAdapter:Lbs;

    .line 3
    return-object v0
.end method

.method public static TurboConfig()Lut;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/eaglet/surfacemng/Adapter;->mTurboConfig:Lut;

    .line 3
    return-object v0
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/Adapter;->JNIContext()Ltr;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ltr;->a()Landroid/app/Application;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static getManager()Lht;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/eaglet/surfacemng/Adapter;->smManager:Lht;

    .line 3
    return-object v0
.end method

.method public static setJNIContext(Ltr;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/autonavi/eaglet/surfacemng/Adapter;->mJniContext:Ltr;

    .line 3
    return-void
.end method

.method public static setLogger(Lyr;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/autonavi/eaglet/surfacemng/Adapter;->mLogger:Lyr;

    .line 3
    return-void
.end method

.method public static setManager(Lht;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/autonavi/eaglet/surfacemng/Adapter;->smManager:Lht;

    .line 3
    return-void
.end method

.method public static setMapViewAdapter(Lbs;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/autonavi/eaglet/surfacemng/Adapter;->mMapViewAdapter:Lbs;

    .line 3
    return-void
.end method

.method public static setTurboConfig(Lut;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/autonavi/eaglet/surfacemng/Adapter;->mTurboConfig:Lut;

    .line 3
    return-void
.end method
