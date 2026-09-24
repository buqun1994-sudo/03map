.class public Lsf0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsf0;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lsf0;


# direct methods
.method public constructor <init>(Lsf0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsf0$b;->a:Lsf0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lsf0$b;->a:Lsf0;

    .line 3
    invoke-static {v0}, Lsf0;->w(Lsf0;)Lkf0;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lsf0$b;->a:Lsf0;

    .line 11
    invoke-virtual {v0}, Lhl;->h()Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x2

    .line 16
    new-array v1, v1, [Ljava/lang/Object;

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x1

    .line 20
    if-nez v0, :cond_0

    .line 22
    const/4 v4, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v4, 0x0

    .line 25
    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    move-result-object v4

    .line 29
    aput-object v4, v1, v2

    .line 31
    iget-object v2, p0, Lsf0$b;->a:Lsf0;

    .line 33
    invoke-static {v2}, Lsf0;->B(Lsf0;)Z

    .line 36
    move-result v2

    .line 37
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    move-result-object v2

    .line 41
    aput-object v2, v1, v3

    .line 43
    const-string v2, "SystemPresentationScreen"

    .line 45
    const-string v4, "SurfaceViewPresentation dismiss.viewinfo null:{?}.mlastStopFlag:{?}"

    .line 47
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    iget-object v1, p0, Lsf0$b;->a:Lsf0;

    .line 52
    invoke-static {v1}, Lsf0;->w(Lsf0;)Lkf0;

    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 59
    iget-object v1, p0, Lsf0$b;->a:Lsf0;

    .line 61
    invoke-static {v1}, Lsf0;->B(Lsf0;)Z

    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_1

    .line 67
    if-eqz v0, :cond_1

    .line 69
    iget v0, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->k:I

    .line 71
    if-ne v0, v3, :cond_1

    .line 73
    iget-object v0, p0, Lsf0$b;->a:Lsf0;

    .line 75
    invoke-static {v0}, Lsf0;->C(Lsf0;)V

    .line 78
    :cond_1
    return-void
.end method
