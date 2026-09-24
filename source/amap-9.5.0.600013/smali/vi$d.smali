.class public Lvi$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lvi;


# direct methods
.method public constructor <init>(Lvi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvi$d;->a:Lvi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lvi;Lvi$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lvi$d;-><init>(Lvi;)V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    .line 1
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 4

    .line 1
    const/16 p2, 0x1f01

    .line 3
    invoke-interface {p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    .line 6
    move-result-object p2

    .line 7
    const/16 v0, 0x1f00

    .line 9
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    const/16 v1, 0x1f02

    .line 15
    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    const/4 v1, 0x3

    .line 20
    new-array v1, v1, [Ljava/lang/Object;

    .line 22
    const/4 v2, 0x0

    .line 23
    aput-object p2, v1, v2

    .line 25
    const/4 v2, 0x1

    .line 26
    aput-object v0, v1, v2

    .line 28
    const/4 v2, 0x2

    .line 29
    aput-object p1, v1, v2

    .line 31
    const-string v2, "DeviceInfoCollectionManager"

    .line 33
    const-string v3, "onGLInfoGot. glRenderer={?}, glVendor={?}, glVersion={?}"

    .line 35
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    invoke-static {}, Lvi;->q()Lvi;

    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1, p2, v0, p1}, Lvi;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lvi;->q()Lvi;

    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Lvi;->g(Lvi;)V

    .line 52
    iget-object p1, p0, Lvi$d;->a:Lvi;

    .line 54
    invoke-static {p1}, Lvi;->b(Lvi;)V

    .line 57
    return-void
.end method
