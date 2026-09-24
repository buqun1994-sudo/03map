.class public Lcom/autonavi/eaglet/surfacemng/cfg/ConfigEaglet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/eaglet/surfacemng/cfg/ConfigEaglet$b;
    }
.end annotation


# static fields
.field public static final enablePauseRender:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigEaglet$b;

.field public static final ignoreMakeCurrent:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigEaglet$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigEaglet$b;

    .line 3
    const-string v1, "sm_support_ignore_makeCurrent"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigEaglet$b;-><init>(Ljava/lang/String;Lcom/autonavi/eaglet/surfacemng/cfg/ConfigEaglet$a;)V

    .line 9
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigEaglet;->ignoreMakeCurrent:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigEaglet$b;

    .line 11
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigEaglet$b;

    .line 13
    const-string v1, "sm_enable_window_pause_stop_render"

    .line 15
    invoke-direct {v0, v1, v2}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigEaglet$b;-><init>(Ljava/lang/String;Lcom/autonavi/eaglet/surfacemng/cfg/ConfigEaglet$a;)V

    .line 18
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigEaglet;->enablePauseRender:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigEaglet$b;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static finishLoad()V
    .locals 0

    return-void
.end method

.method public static preLoad()V
    .locals 0

    return-void
.end method
