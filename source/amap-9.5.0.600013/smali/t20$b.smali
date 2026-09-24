.class public Lt20$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls20;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt20;->o(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lt20;


# direct methods
.method public constructor <init>(Lt20;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt20$b;->a:Lt20;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 7

    .line 1
    const-string v0, ""

    .line 3
    const-string v1, "TAG_ADAPTER"

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    :try_start_0
    const-string v4, "navivoice returnShareState"

    .line 9
    new-array v5, v3, [Ljava/lang/Object;

    .line 11
    invoke-static {v1, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    const-string v4, " [VoiceRecognition] NaviVoiceClient init AmapAutoAdapter.getInstance().setVoiceCallback returnShareState requestCode = {?} resultCode = {?}"

    .line 16
    const/4 v5, 0x2

    .line 17
    new-array v5, v5, [Ljava/lang/Object;

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v6

    .line 23
    aput-object v6, v5, v3

    .line 25
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v6

    .line 29
    aput-object v6, v5, v2

    .line 31
    invoke-static {v0, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    sget-object v4, Lcom/iflytek/navigationservice/NavigationService;->c:Lm20;

    .line 36
    invoke-interface {v4, p1, p2}, Lm20;->n1(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p1

    .line 41
    new-instance p2, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    const-string v4, "navivoice returnShareState e = "

    .line 48
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p2

    .line 62
    new-array v4, v3, [Ljava/lang/Object;

    .line 64
    invoke-static {v1, p2, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    new-array p2, v2, [Ljava/lang/Object;

    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    aput-object v1, p2, v3

    .line 75
    const-string v1, " [VoiceRecognition] NaviVoiceClient init AmapAutoAdapter.getInstance().setVoiceCallback returnShareState RemoteException = {?}"

    .line 77
    invoke-static {v0, v1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    :goto_0
    return-void
.end method

.method public b(Ljava/util/List;Z)V
    .locals 0

    .line 1
    invoke-static {}, Lvd;->d()Lvd;

    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2, p1}, Lvd;->g(Ljava/util/List;)I

    .line 8
    return-void
.end method

.method public c(IILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lt20$b;->a:Lt20;

    .line 3
    const/4 p2, -0x4

    .line 4
    invoke-virtual {p1, p2, p3}, Lt20;->y(ILjava/lang/String;)V

    .line 7
    return-void
.end method

.method public initWakeUp()V
    .locals 3

    .line 1
    invoke-static {}, Lvd;->d()Lvd;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lrv;->H()Lrv;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lt20$b;->a:Lt20;

    .line 15
    invoke-static {v2}, Lt20;->a(Lt20;)Lrr;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v1, v2}, Lvd;->e(Landroid/content/Context;Lrr;)V

    .line 22
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    invoke-static {}, Lvd;->d()Lvd;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lvd;->f()V

    .line 8
    return-void
.end method

.method public stopWakeUp()V
    .locals 1

    .line 1
    invoke-static {}, Lvd;->d()Lvd;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lvd;->h()V

    .line 8
    return-void
.end method
