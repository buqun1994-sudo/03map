.class public Ldd0$g$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldd0$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ldd0$g;


# direct methods
.method public constructor <init>(Ldd0$g;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldd0$g$a;->a:Ldd0$g;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 4
    iget p1, p1, Landroid/os/Message;->what:I

    .line 6
    const/4 v0, 0x1

    .line 7
    if-eq p1, v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Ldd0$g$a;->a:Ldd0$g;

    .line 12
    invoke-virtual {p1}, Ldd0$g;->h()I

    .line 15
    move-result p1

    .line 16
    const/4 v1, 0x0

    .line 17
    if-ne p1, v0, :cond_1

    .line 19
    invoke-static {v1, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->setHeadLampStatus(II)V

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    if-nez p1, :cond_2

    .line 25
    invoke-static {v1, v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->setHeadLampStatus(II)V

    .line 28
    :cond_2
    :goto_0
    return-void
.end method
