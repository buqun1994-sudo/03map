.class public Lcom/autonavi/amapauto/adapter/internal/CarTeamService$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/adapter/internal/CarTeamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/amapauto/adapter/internal/CarTeamService;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/adapter/internal/CarTeamService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/adapter/internal/CarTeamService$b;->a:Lcom/autonavi/amapauto/adapter/internal/CarTeamService;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeNotifyCarTeamChanged(Ljava/lang/String;)V

    .line 5
    return-void
.end method
