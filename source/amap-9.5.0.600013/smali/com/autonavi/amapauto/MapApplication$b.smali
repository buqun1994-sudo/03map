.class public Lcom/autonavi/amapauto/MapApplication$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/amapauto/MapApplication;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/amapauto/MapApplication;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/MapApplication;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/MapApplication$b;->a:Lcom/autonavi/amapauto/MapApplication;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/framework/TurboConfig;->c()Lcom/autonavi/amapauto/framework/TurboConfig;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/framework/TurboConfig;->r(I)V

    .line 12
    invoke-static {}, Lf30;->F()V

    .line 15
    invoke-static {}, Lcom/autonavi/amapauto/framework/TurboConfig;->c()Lcom/autonavi/amapauto/framework/TurboConfig;

    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/framework/TurboConfig;->r(I)V

    .line 23
    return-void
.end method
