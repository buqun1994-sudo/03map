.class public Lp2$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp2;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/amapauto/jni/ViewInfo;

.field public final synthetic b:Lp2;


# direct methods
.method public constructor <init>(Lp2;Lcom/autonavi/amapauto/jni/ViewInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp2$c;->b:Lp2;

    .line 3
    iput-object p2, p0, Lp2$c;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    iget-object v2, p0, Lp2$c;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 6
    iget v2, v2, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v2, v1, v3

    .line 15
    const-string v2, "AidlWidgetExternalScreen"

    .line 17
    const-string v4, "MultiScreenNative.surfaceDestroyed id={?}"

    .line 19
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    iget-object v1, p0, Lp2$c;->b:Lp2;

    .line 24
    invoke-static {v1}, Lp2;->D(Lp2;)I

    .line 27
    move-result v1

    .line 28
    invoke-static {v1}, Lcom/autonavi/amapauto/jni/MultiScreenNative;->onSurfaceDestroyed(I)I

    .line 31
    new-array v0, v0, [Ljava/lang/Object;

    .line 33
    iget-object v1, p0, Lp2$c;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 35
    iget v1, v1, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v1

    .line 41
    aput-object v1, v0, v3

    .line 43
    const-string v1, "MultiScreenNative.surfaceDestroyed id={?}.  notified"

    .line 45
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    return-void
.end method
