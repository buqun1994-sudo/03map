.class public Lb20;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb20$c;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/util/TreeMap;

.field public c:Lgs;

.field public d:Lhs;

.field public e:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lb20;->a:Z

    .line 4
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lb20;->b:Ljava/util/TreeMap;

    .line 5
    new-instance v0, Lb20$a;

    invoke-direct {v0, p0}, Lb20$a;-><init>(Lb20;)V

    iput-object v0, p0, Lb20;->c:Lgs;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lb20;->d:Lhs;

    .line 7
    new-instance v0, Lb20$b;

    invoke-direct {v0, p0}, Lb20$b;-><init>(Lb20;)V

    iput-object v0, p0, Lb20;->e:Landroid/content/ServiceConnection;

    return-void
.end method

.method public synthetic constructor <init>(Lb20$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb20;-><init>()V

    return-void
.end method

.method public static synthetic a(Lb20;)Ljava/util/TreeMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lb20;->b:Ljava/util/TreeMap;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lb20;)Lhs;
    .locals 0

    .line 1
    iget-object p0, p0, Lb20;->d:Lhs;

    .line 3
    return-object p0
.end method

.method public static synthetic c(Lb20;Lhs;)Lhs;
    .locals 0

    .line 1
    iput-object p1, p0, Lb20;->d:Lhs;

    .line 3
    return-object p1
.end method

.method public static synthetic d(Lb20;)Lgs;
    .locals 0

    .line 1
    iget-object p0, p0, Lb20;->c:Lgs;

    .line 3
    return-object p0
.end method

.method public static g()Lb20;
    .locals 1

    .line 1
    invoke-static {}, Lb20$c;->a()Lb20;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public e(ILrt;)Lb20;
    .locals 2

    .line 1
    iget-object v0, p0, Lb20;->b:Ljava/util/TreeMap;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const/4 v0, 0x2

    .line 11
    new-array v0, v0, [Ljava/lang/Object;

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object p1

    .line 18
    aput-object p1, v0, v1

    .line 20
    const/4 p1, 0x1

    .line 21
    aput-object p2, v0, p1

    .line 23
    const-string p1, "MultiScreen:MultiScreenMotionHandler"

    .line 25
    const-string p2, "addTouchEventDelegateListener displayId:{?}, mTouchEventDelegateListener:{?}"

    .line 27
    invoke-static {p1, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    return-object p0
.end method

.method public f(Landroid/content/Context;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lb20;->a:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string v0, "MultiScreen:MultiScreenMotionHandler"

    .line 7
    const-string v1, "bindService"

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    new-instance v0, Landroid/content/Intent;

    .line 14
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 17
    const-string v1, "me.efficient.tool.baselib.services.MultiScreenMotionService"

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    const-string v2, "me.efficient.tool.virtualdisplay"

    .line 24
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    iget-object v1, p0, Lb20;->e:Landroid/content/ServiceConnection;

    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 36
    :cond_0
    return-void
.end method
