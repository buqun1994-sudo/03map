.class public Lve$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lve;


# direct methods
.method public constructor <init>(Lve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lve$b;->a:Lve;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lve$b;->a:Lve;

    .line 3
    invoke-static {p1}, Lve;->m(Lve;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x1

    .line 8
    new-array v1, v0, [Ljava/lang/Object;

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object p2, v1, v2

    .line 13
    const-string v3, "onServiceConnected: service = {?}"

    .line 15
    invoke-static {p1, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-object p1, p0, Lve$b;->a:Lve;

    .line 20
    invoke-static {p1, v0}, Lve;->p(Lve;Z)Z

    .line 23
    iget-object p1, p0, Lve$b;->a:Lve;

    .line 25
    invoke-static {p2}, Lae$a;->t1(Landroid/os/IBinder;)Lae;

    .line 28
    move-result-object p2

    .line 29
    invoke-static {p1, p2}, Lve;->r(Lve;Lae;)Lae;

    .line 32
    :try_start_0
    iget-object p1, p0, Lve$b;->a:Lve;

    .line 34
    invoke-static {p1}, Lve;->q(Lve;)Lae;

    .line 37
    move-result-object p1

    .line 38
    iget-object p2, p0, Lve$b;->a:Lve;

    .line 40
    iget v1, p2, Lve;->i:I

    .line 42
    iget-object v3, p2, Lve;->h:Lcom/autonavi/amapauto/ar/camera/ArCameraParam;

    .line 44
    iget v4, v3, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->width:I

    .line 46
    iget v3, v3, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->height:I

    .line 48
    invoke-static {p2}, Lve;->s(Lve;)Lbe;

    .line 51
    move-result-object p2

    .line 52
    invoke-interface {p1, v1, v4, v3, p2}, Lae;->r0(IIILbe;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception p1

    .line 57
    iget-object p2, p0, Lve$b;->a:Lve;

    .line 59
    invoke-static {p2}, Lve;->m(Lve;)Ljava/lang/String;

    .line 62
    move-result-object p2

    .line 63
    new-array v0, v0, [Ljava/lang/Object;

    .line 65
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    aput-object p1, v0, v2

    .line 71
    const-string p1, "onServiceConnected: excetion:{?}"

    .line 73
    invoke-static {p2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lve$b;->a:Lve;

    .line 3
    invoke-static {v0}, Lve;->m(Lve;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object p1, v1, v2

    .line 13
    const-string p1, "onServiceDisconnected: className = {?}"

    .line 15
    invoke-static {v0, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-object p1, p0, Lve$b;->a:Lve;

    .line 20
    invoke-static {p1, v2}, Lve;->p(Lve;Z)Z

    .line 23
    iget-object p1, p0, Lve$b;->a:Lve;

    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-static {p1, v0}, Lve;->r(Lve;Lae;)Lae;

    .line 29
    return-void
.end method
