.class public Lcom/autonavi/auto/remote/fill/UsbFillActivity$g;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/auto/remote/fill/UsbFillActivity;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/os/Handler;

.field public final synthetic b:Lcom/autonavi/auto/remote/fill/UsbFillActivity;


# direct methods
.method public constructor <init>(Lcom/autonavi/auto/remote/fill/UsbFillActivity;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity$g;->b:Lcom/autonavi/auto/remote/fill/UsbFillActivity;

    .line 3
    iput-object p2, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity$g;->a:Landroid/os/Handler;

    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/autonavi/common/tool/b;->U(Landroid/content/Context;)V

    .line 12
    invoke-static {}, Lr50;->d()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Ljava/io/File;

    .line 18
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    new-instance v0, Lcom/autonavi/auto/remote/fill/UsbFillActivity$g$a;

    .line 23
    invoke-direct {v0, p0}, Lcom/autonavi/auto/remote/fill/UsbFillActivity$g$a;-><init>(Lcom/autonavi/auto/remote/fill/UsbFillActivity$g;)V

    .line 26
    invoke-virtual {v1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 29
    move-result-object v0

    .line 30
    invoke-static {}, Lrv;->H()Lrv;

    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 37
    move-result-object v1

    .line 38
    const/4 v2, 0x1

    .line 39
    invoke-static {v1, v2, v2, v0}, Lcom/autonavi/common/tool/b;->f(Landroid/content/Context;ZZ[Ljava/io/File;)Z

    .line 42
    move-result v0

    .line 43
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 46
    move-result-object v1

    .line 47
    iput v0, v1, Landroid/os/Message;->what:I

    .line 49
    iget-object v0, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity$g;->a:Landroid/os/Handler;

    .line 51
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 54
    return-void
.end method
