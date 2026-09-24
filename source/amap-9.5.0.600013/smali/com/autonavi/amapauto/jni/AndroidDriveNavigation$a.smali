.class public Lcom/autonavi/amapauto/jni/AndroidDriveNavigation$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/amapauto/jni/AndroidDriveNavigation;->jniISLEventNotify(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;->b()Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;->b()Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 14
    :cond_0
    return-void
.end method
