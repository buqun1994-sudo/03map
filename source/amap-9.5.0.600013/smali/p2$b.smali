.class public Lp2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhl$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp2;


# direct methods
.method public constructor <init>(Lp2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp2$b;->a:Lp2;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 11
    const-string v2, "AidlWidgetExternalScreen"

    .line 13
    const-string v4, "onOperationFinished(). shouldDelay = {?}"

    .line 15
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-object v1, p0, Lp2$b;->a:Lp2;

    .line 20
    invoke-static {v1}, Lp2;->y(Lp2;)I

    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 26
    const/4 v1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v1, p0, Lp2$b;->a:Lp2;

    .line 30
    invoke-static {v1}, Lp2;->y(Lp2;)I

    .line 33
    move-result v1

    .line 34
    :goto_0
    if-eqz p1, :cond_1

    .line 36
    new-instance p1, Lp2$b$a;

    .line 38
    invoke-direct {p1, p0, v1}, Lp2$b$a;-><init>(Lp2$b;I)V

    .line 41
    const-wide/16 v0, 0x64

    .line 43
    invoke-static {p1, v0, v1}, Lbg0;->d(Ljava/lang/Runnable;J)V

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/4 p1, 0x4

    .line 48
    new-array p1, p1, [Ljava/lang/Object;

    .line 50
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v4

    .line 54
    aput-object v4, p1, v3

    .line 56
    iget-object v4, p0, Lp2$b;->a:Lp2;

    .line 58
    invoke-static {v4}, Lp2;->B(Lp2;)I

    .line 61
    move-result v4

    .line 62
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object v4

    .line 66
    aput-object v4, p1, v0

    .line 68
    iget-object v0, p0, Lp2$b;->a:Lp2;

    .line 70
    invoke-static {v0}, Lp2;->y(Lp2;)I

    .line 73
    move-result v0

    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    move-result-object v0

    .line 78
    const/4 v4, 0x2

    .line 79
    aput-object v0, p1, v4

    .line 81
    const/4 v0, 0x3

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    move-result-object v4

    .line 86
    aput-object v4, p1, v0

    .line 88
    const-string v0, "excute === operateType={?}, screenWindow={?}, screenMode={?}, mode = {?}"

    .line 90
    invoke-static {v2, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget-object p1, p0, Lp2$b;->a:Lp2;

    .line 95
    invoke-static {p1}, Lp2;->C(Lp2;)I

    .line 98
    move-result p1

    .line 99
    invoke-static {v3, p1, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->onOperateExscreenNotified(III)V

    .line 102
    :goto_1
    return-void
.end method
