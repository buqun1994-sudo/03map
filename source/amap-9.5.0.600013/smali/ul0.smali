.class public Lul0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lul0$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0x118

    .line 6
    invoke-static {p1, v0}, Lgb;->a(Landroid/content/Context;I)I

    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lul0;->a:I

    .line 12
    const/4 v0, 0x6

    .line 13
    invoke-static {p1, v0}, Lgb;->a(Landroid/content/Context;I)I

    .line 16
    move-result p1

    .line 17
    iput p1, p0, Lul0;->b:I

    .line 19
    return-void
.end method

.method public static synthetic a(Lul0;)I
    .locals 0

    .line 1
    iget p0, p0, Lul0;->a:I

    .line 3
    return p0
.end method

.method public static synthetic b(Lul0;)I
    .locals 0

    .line 1
    iget p0, p0, Lul0;->b:I

    .line 3
    return p0
.end method


# virtual methods
.method public c(Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;Lem0$b;)V
    .locals 3

    .line 1
    new-instance v0, Lul0$a;

    .line 3
    invoke-direct {v0, p0, p2, p1}, Lul0$a;-><init>(Lul0;Lem0$b;Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;)V

    .line 6
    const/4 v1, 0x0

    .line 7
    new-array v2, v1, [Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;

    .line 9
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 12
    const/4 v0, 0x2

    .line 13
    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    aput-object p1, v0, v1

    .line 17
    const/4 p1, 0x1

    .line 18
    aput-object p2, v0, p1

    .line 20
    const-string p1, "WidgetAsyncTrafficBarLoader"

    .line 22
    const-string p2, "load execute homeCompanyDispatchData:{?} trafficBarLoaderCallback:{?}"

    .line 24
    invoke-static {p1, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    return-void
.end method
