.class public Lcom/autonavi/amapauto/vr/WakeUp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "WakeUp"

.field private static sType:I = -0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startWakeUp(Ljava/lang/Object;I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v1, v0, v2

    .line 11
    const-string v1, "WakeUp"

    .line 13
    const-string v3, "startWakeUp type ={?}"

    .line 15
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    sput p1, Lcom/autonavi/amapauto/vr/WakeUp;->sType:I

    .line 20
    check-cast p0, Lcom/autonavi/amapauto/vr/KeyWords;

    .line 22
    if-nez p0, :cond_0

    .line 24
    const-string p0, "startWakeUp ky == null"

    .line 26
    new-array p1, v2, [Ljava/lang/Object;

    .line 28
    invoke-static {v1, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    return-void

    .line 32
    :cond_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lrv;->K()Ls20;

    .line 39
    move-result-object p1

    .line 40
    iget-object p0, p0, Lcom/autonavi/amapauto/vr/KeyWords;->keywords:Ljava/util/List;

    .line 42
    invoke-interface {p1, p0, v2}, Ls20;->b(Ljava/util/List;Z)V

    .line 45
    return-void
.end method

.method public static wakeUpResult(I)V
    .locals 1

    .line 1
    sget v0, Lcom/autonavi/amapauto/vr/WakeUp;->sType:I

    invoke-static {v0, p0}, Lcom/autonavi/amapauto/vr/WakeUp;->wakeUpResult(II)V

    return-void
.end method

.method public static native wakeUpResult(II)V
.end method
