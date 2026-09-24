.class public Lcom/autonavi/autofloat/FloatWindowManagerNative$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/autofloat/FloatWindowManagerNative;->hideFloatWindow()V
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
    .locals 2

    .line 1
    invoke-static {}, Lnm;->e()Lnm;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lnm;->t()V

    .line 8
    invoke-static {}, Lhm;->a()Lhm;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lhm;->c(Z)V

    .line 16
    invoke-static {}, Lhm;->a()Lhm;

    .line 19
    move-result-object v0

    .line 20
    invoke-static {}, Lrv;->H()Lrv;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lhm;->e(Landroid/content/Context;)V

    .line 31
    return-void
.end method
