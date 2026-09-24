.class public Lcom/autonavi/amapauto/adapter/internal/AmapAutoService$a;
.super Ljt$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService$a;->a:Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;

    .line 3
    invoke-direct {p0}, Ljt$a;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public d(I)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public h0(I[I)V
    .locals 0

    .line 1
    return-void
.end method

.method public k0(ILjava/lang/String;)V
    .locals 3

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 4
    :pswitch_0
    goto :goto_0

    .line 5
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    move-result-wide v0

    .line 9
    invoke-static {}, Lbk;->m()Lbk;

    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2, p1, p2}, Lbk;->x(ILjava/lang/String;)V

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    move-result-wide p1

    .line 20
    sub-long/2addr p1, v0

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    const-string v1, "processDrData cost "

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    const/4 p2, 0x0

    .line 39
    new-array p2, p2, [Ljava/lang/Object;

    .line 41
    const-string v0, "Location&DR"

    .line 43
    invoke-static {v0, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    :goto_0
    return-void

    .line 47
    :pswitch_data_0
    .packed-switch 0x40000005
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setBoolean(IZ)V
    .locals 1

    .line 1
    const v0, 0x3000000c

    .line 4
    if-eq p1, v0, :cond_0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->a()Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;

    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_1

    .line 13
    if-eqz p2, :cond_1

    .line 15
    iget-object p1, p0, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService$a;->a:Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;

    .line 17
    invoke-static {p1}, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->b(Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;)V

    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method public setFloat(IF)V
    .locals 0

    return-void
.end method

.method public setInt(II)V
    .locals 0

    return-void
.end method

.method public y0(I[F)V
    .locals 0

    .line 1
    return-void
.end method
