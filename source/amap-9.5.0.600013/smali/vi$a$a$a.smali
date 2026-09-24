.class public Lvi$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvi$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lvi$a$a;


# direct methods
.method public constructor <init>(Lvi$a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvi$a$a$a;->a:Lvi$a$a;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    const/4 p1, 0x1

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    aput-object v0, p1, v1

    .line 11
    const-string v0, "DeviceInfoCollectionManager"

    .line 13
    const-string v1, "getGlMsg. uncaughtException = {?}"

    .line 15
    invoke-static {v0, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-object p1, p0, Lvi$a$a$a;->a:Lvi$a$a;

    .line 20
    iget-object p1, p1, Lvi$a$a;->a:Lvi$a;

    .line 22
    iget-object p1, p1, Lvi$a;->a:Lvi;

    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-static {p1, v0}, Lvi;->d(Lvi;Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView;

    .line 28
    iget-object p1, p0, Lvi$a$a$a;->a:Lvi$a$a;

    .line 30
    iget-object p1, p1, Lvi$a$a;->a:Lvi$a;

    .line 32
    iget-object p1, p1, Lvi$a;->a:Lvi;

    .line 34
    invoke-static {p1, v0}, Lvi;->f(Lvi;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 37
    invoke-static {}, Lvi;->q()Lvi;

    .line 40
    move-result-object p1

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    const-string v1, "exception:"

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p2

    .line 62
    const-string v0, ""

    .line 64
    invoke-virtual {p1, p2, v0, v0}, Lvi;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lvi;->q()Lvi;

    .line 70
    move-result-object p1

    .line 71
    invoke-static {p1}, Lvi;->g(Lvi;)V

    .line 74
    return-void
.end method
