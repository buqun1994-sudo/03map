.class public Ldd0$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldk0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldd0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Landroid/net/Uri;

.field public c:Z

.field public final d:Landroid/os/Handler;

.field public e:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "content://com.neusoft.ext.providers/car_status"

    .line 6
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Ldd0$g;->a:Landroid/net/Uri;

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string v0, "/"

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    const-string v0, "light_switch"

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Ldd0$g;->b:Landroid/net/Uri;

    .line 44
    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Ldd0$g;->c:Z

    .line 47
    new-instance v0, Ldd0$g$a;

    .line 49
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 52
    move-result-object v1

    .line 53
    invoke-direct {v0, p0, v1}, Ldd0$g$a;-><init>(Ldd0$g;Landroid/os/Looper;)V

    .line 56
    iput-object v0, p0, Ldd0$g;->d:Landroid/os/Handler;

    .line 58
    new-instance v0, Ldd0$g$b;

    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-direct {v0, p0, v1}, Ldd0$g$b;-><init>(Ldd0$g;Landroid/os/Handler;)V

    .line 64
    iput-object v0, p0, Ldd0$g;->e:Landroid/database/ContentObserver;

    .line 66
    return-void
.end method

.method public static synthetic q(Ldd0$g;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Ldd0$g;->b:Landroid/net/Uri;

    .line 3
    return-object p0
.end method

.method public static synthetic r(Ldd0$g;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Ldd0$g;->d:Landroid/os/Handler;

    .line 3
    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public g()Ljava/util/List;
    .locals 4

    .line 1
    iget-boolean v0, p0, Ldd0$g;->c:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Ldd0$g;->c:Z

    .line 8
    invoke-static {}, Ldd0;->a()Landroid/content/Context;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Ldd0$g;->a:Landroid/net/Uri;

    .line 18
    iget-object v3, p0, Ldd0$g;->e:Landroid/database/ContentObserver;

    .line 20
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    return-object v0
.end method

.method public h()I
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Ldd0;->a()Landroid/content/Context;

    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Ldd0$g;->a:Landroid/net/Uri;

    .line 13
    const-string v4, "light_switch"

    .line 15
    invoke-static {v2, v3, v4}, Lrg;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    invoke-static {}, Ldd0;->b()Ljava/lang/String;

    .line 22
    move-result-object v3

    .line 23
    const-string v4, "QiruiT15_InteractionImpl getHeadLampStatus isOnString= {?}"

    .line 25
    const/4 v5, 0x1

    .line 26
    new-array v5, v5, [Ljava/lang/Object;

    .line 28
    aput-object v2, v5, v1

    .line 30
    invoke-static {v3, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_0

    .line 39
    return v0

    .line 40
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    const-string v3, "on"

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return v0

    .line 51
    :catch_0
    move-exception v2

    .line 52
    invoke-static {}, Ldd0;->b()Ljava/lang/String;

    .line 55
    move-result-object v3

    .line 56
    const-string v4, "getHeadLampStatus:"

    .line 58
    new-array v1, v1, [Ljava/lang/Object;

    .line 60
    invoke-static {v3, v4, v2, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 63
    return v0
.end method

.method public j(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method
