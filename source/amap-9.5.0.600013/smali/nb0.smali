.class public Lnb0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnb0$a;
    }
.end annotation


# instance fields
.field public a:Landroid/os/HandlerThread;

.field public b:Lnb0$a;

.field public c:Z


# direct methods
.method public constructor <init>(Lpr;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lnb0;->c:Z

    .line 7
    sget-object v0, Ljf;->a:Landroid/os/HandlerThread;

    .line 9
    iput-object v0, p0, Lnb0;->a:Landroid/os/HandlerThread;

    .line 11
    new-instance v0, Lnb0$a;

    .line 13
    iget-object v1, p0, Lnb0;->a:Landroid/os/HandlerThread;

    .line 15
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1, p1}, Lnb0$a;-><init>(Landroid/os/Looper;Lpr;)V

    .line 22
    iput-object v0, p0, Lnb0;->b:Lnb0$a;

    .line 24
    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 4

    .line 1
    sget-boolean v0, Lxj0;->a:Z

    .line 3
    const-string v1, "RtpSessionManager"

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    const-string v3, " Communication sendData  data.length = "

    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    if-eqz p1, :cond_0

    .line 20
    array-length v3, p1

    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string v3, "0"

    .line 28
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    const-string v3, " data[] = "

    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-static {p1, v2}, Luo;->e([BI)Ljava/lang/String;

    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    new-array v3, v2, [Ljava/lang/Object;

    .line 49
    invoke-static {v1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    :cond_1
    iget-object v0, p0, Lnb0;->b:Lnb0$a;

    .line 54
    if-eqz v0, :cond_3

    .line 56
    if-eqz p1, :cond_3

    .line 58
    array-length v0, p1

    .line 59
    if-lez v0, :cond_3

    .line 61
    sget-boolean v0, Lxj0;->a:Z

    .line 63
    if-eqz v0, :cond_2

    .line 65
    const-string v0, " Communication sendData  rtpHandler!=null && data!=null && data.length>0"

    .line 67
    new-array v2, v2, [Ljava/lang/Object;

    .line 69
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    :cond_2
    invoke-static {p1}, Llb0;->a([B)V

    .line 75
    iget-object p1, p0, Lnb0;->b:Lnb0$a;

    .line 77
    const/4 v0, 0x1

    .line 78
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 81
    :cond_3
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnb0;->b:Lnb0$a;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 9
    :cond_0
    return-void
.end method
