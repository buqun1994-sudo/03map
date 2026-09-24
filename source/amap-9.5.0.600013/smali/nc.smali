.class public abstract Lnc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1;


# instance fields
.field public a:Loc;

.field public b:Ljava/lang/Object;

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

.field public j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lnc;->e:I

    .line 7
    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lnc;->f:I

    .line 10
    iput-boolean v0, p0, Lnc;->h:Z

    .line 12
    new-instance v0, Lnc$a;

    .line 14
    invoke-direct {v0, p0}, Lnc$a;-><init>(Lnc;)V

    .line 17
    iput-object v0, p0, Lnc;->j:Ljava/lang/Runnable;

    .line 19
    return-void
.end method


# virtual methods
.method public a(Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 3
    if-eqz v0, :cond_1

    .line 5
    iput-object p1, p0, Lnc;->i:Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 7
    iget-boolean v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0}, Lnc;->f()V

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget p1, p1, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->resultCode:I

    .line 17
    invoke-virtual {p0, p1}, Lnc;->e(I)V

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/16 p1, 0x2730

    .line 23
    invoke-virtual {p0, p1}, Lnc;->e(I)V

    .line 26
    :goto_0
    return-void
.end method

.method public abstract d()V
.end method

.method public e(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnc;->o()V

    .line 4
    invoke-static {}, Ll30;->g()Ll30;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Ll30;->m(Lnc;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lnc;->c:Z

    .line 14
    iput p1, p0, Lnc;->d:I

    .line 16
    iget-object p1, p0, Lnc;->a:Loc;

    .line 18
    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p1, p0}, Loc;->l(Lnc;)V

    .line 23
    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnc;->o()V

    .line 4
    invoke-static {}, Ll30;->g()Ll30;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Ll30;->m(Lnc;)V

    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lnc;->c:Z

    .line 14
    const/16 v0, 0x2710

    .line 16
    iput v0, p0, Lnc;->d:I

    .line 18
    iget-object v0, p0, Lnc;->a:Loc;

    .line 20
    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0, p0}, Loc;->l(Lnc;)V

    .line 25
    :cond_0
    return-void
.end method

.method public g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lnc;->b:Ljava/lang/Object;

    .line 3
    instance-of v1, v0, Li2$a;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    check-cast v0, Li2$a;

    .line 9
    invoke-virtual {p0}, Lnc;->i()I

    .line 12
    move-result p1

    .line 13
    invoke-virtual {p0}, Lnc;->m()Z

    .line 16
    move-result v1

    .line 17
    invoke-static {v0, p1, v1}, Lew;->d(Li2$a;IZ)Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;

    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    if-eqz p1, :cond_1

    .line 24
    invoke-virtual {p0}, Lnc;->i()I

    .line 27
    move-result v0

    .line 28
    invoke-virtual {p0}, Lnc;->m()Z

    .line 31
    move-result v1

    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-static {v2, p1, v0, v1}, Lew;->b(ILcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;IZ)Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;

    .line 36
    move-result-object p1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 p1, 0x0

    .line 39
    :goto_0
    invoke-static {}, Lv70;->f()Lv70;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0, p1}, Lv70;->h(Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;)V

    .line 46
    return-void
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lnc;->f:I

    .line 3
    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lnc;->e:I

    .line 3
    return v0
.end method

.method public j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;
    .locals 1

    .line 1
    iget-object v0, p0, Lnc;->i:Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 3
    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnc;->g:Z

    .line 3
    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnc;->h:Z

    .line 3
    return v0
.end method

.method public n(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p2, v0, v1

    .line 7
    const/4 v1, 0x1

    .line 8
    aput-object p3, v0, v1

    .line 10
    const-string v1, "BaseProcotolAction"

    .line 12
    const-string v2, "parseToSimulateIntent simulateIntentString = {?} version = {?}"

    .line 14
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    new-instance v0, Lcv$b;

    .line 19
    invoke-direct {v0}, Lcv$b;-><init>()V

    .line 22
    invoke-static {p2, p3}, Ljd;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {v0, p1}, Lcv$b;->a(Ljava/util/HashMap;)Lcv$b;

    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1, p2}, Lcv$b;->c(Ljava/util/ArrayList;)Lcv$b;

    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcv$b;->d()Landroid/content/Intent;

    .line 37
    move-result-object p1

    .line 38
    return-object p1
.end method

.method public o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnc;->j:Ljava/lang/Runnable;

    .line 3
    invoke-static {v0}, Lbg0;->e(Ljava/lang/Runnable;)V

    .line 6
    return-void
.end method

.method public p()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "BaseProcotolAction"

    .line 6
    const-string v2, "BackgroudService removeAutoStartDelay"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lnc;->o()V

    .line 14
    return-void
.end method

.method public q(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnc;->g:Z

    .line 3
    return-void
.end method

.method public r(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnc;->h:Z

    .line 3
    return-void
.end method

.method public s(Loc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnc;->a:Loc;

    .line 3
    return-void
.end method

.method public t(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnc;->f:I

    .line 3
    return-void
.end method

.method public u(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnc;->e:I

    .line 3
    return-void
.end method

.method public v()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "BaseProcotolAction"

    .line 6
    const-string v2, "BackgroudService startAutoStartDelay"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lnc;->j:Ljava/lang/Runnable;

    .line 13
    const-wide/16 v1, 0x7530

    .line 15
    invoke-static {v0, v1, v2}, Lbg0;->d(Ljava/lang/Runnable;J)V

    .line 18
    return-void
.end method

.method public w()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "BaseProcotolAction"

    .line 6
    const-string v2, "startDelayDestory"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lnc;->j:Ljava/lang/Runnable;

    .line 13
    const-wide/32 v1, 0x75300

    .line 16
    invoke-static {v0, v1, v2}, Lbg0;->d(Ljava/lang/Runnable;J)V

    .line 19
    return-void
.end method
