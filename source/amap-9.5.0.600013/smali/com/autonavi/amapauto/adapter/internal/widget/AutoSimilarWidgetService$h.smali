.class public Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$h;->a:Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "AutoSimilarWidgetService"

    .line 6
    const-string v2, "WidgetWaitTimeoutRunnable. widget wait hmiconfig callback timeout\u3002"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/16 v0, 0xb

    .line 13
    invoke-static {v0}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->n(I)V

    .line 16
    return-void
.end method
