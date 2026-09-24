.class public Lcom/iflytek/navigationservice/NavigationService$a;
.super Lg20$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/navigationservice/NavigationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/iflytek/navigationservice/NavigationService;


# direct methods
.method public constructor <init>(Lcom/iflytek/navigationservice/NavigationService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iflytek/navigationservice/NavigationService$a;->a:Lcom/iflytek/navigationservice/NavigationService;

    .line 3
    invoke-direct {p0}, Lg20$a;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public B(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 3
    const-string v1, "showOnMap"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lv20;->a()Lv20;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lv20;->b()Li20;

    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/iflytek/navigationservice/NavigationService;->e:Li20;

    .line 18
    if-eqz v0, :cond_0

    .line 20
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->e:Li20;

    .line 39
    invoke-interface {v0, p1}, Li20;->B(Ljava/lang/String;)Z

    .line 42
    move-result p1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    sget-object p1, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 46
    const-string v0, "showOnMap  naviClient is null"

    .line 48
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 p1, 0x1

    .line 52
    :goto_0
    return p1
.end method

.method public D(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 3
    const-string v1, "settingOption"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lv20;->a()Lv20;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lv20;->b()Li20;

    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/iflytek/navigationservice/NavigationService;->e:Li20;

    .line 18
    if-eqz v0, :cond_0

    .line 20
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->e:Li20;

    .line 39
    invoke-interface {v0, p1}, Li20;->D(Ljava/lang/String;)Z

    .line 42
    move-result p1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    sget-object p1, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 46
    const-string v0, "settingOption  naviClient is null"

    .line 48
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 p1, 0x1

    .line 52
    :goto_0
    return p1
.end method

.method public K0(Lm20;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "setNaviListener"

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    sput-object p1, Lcom/iflytek/navigationservice/NavigationService;->c:Lm20;

    .line 26
    iget-object p1, p0, Lcom/iflytek/navigationservice/NavigationService$a;->a:Lcom/iflytek/navigationservice/NavigationService;

    .line 28
    new-instance v0, Landroid/content/Intent;

    .line 30
    sget-object v1, Lcom/iflytek/navigationservice/NavigationService;->d:Ljava/lang/String;

    .line 32
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 38
    invoke-static {}, Lv20;->a()Lv20;

    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lv20;->b()Li20;

    .line 45
    move-result-object p1

    .line 46
    sput-object p1, Lcom/iflytek/navigationservice/NavigationService;->e:Li20;

    .line 48
    const/4 p1, 0x1

    .line 49
    return p1
.end method

.method public e(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 3
    const-string v1, "showTraffic"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lv20;->a()Lv20;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lv20;->b()Li20;

    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/iflytek/navigationservice/NavigationService;->e:Li20;

    .line 18
    if-eqz v0, :cond_0

    .line 20
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->e:Li20;

    .line 39
    invoke-interface {v0, p1}, Li20;->e(Ljava/lang/String;)Z

    .line 42
    move-result p1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    sget-object p1, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 46
    const-string v0, "showTraffic  naviClient is null"

    .line 48
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 p1, 0x1

    .line 52
    :goto_0
    return p1
.end method

.method public f(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 3
    const-string v1, "setAvoidPlace"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lv20;->a()Lv20;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lv20;->b()Li20;

    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/iflytek/navigationservice/NavigationService;->e:Li20;

    .line 18
    if-eqz v0, :cond_0

    .line 20
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->e:Li20;

    .line 39
    invoke-interface {v0, p1}, Li20;->f(Ljava/lang/String;)Z

    .line 42
    move-result p1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    sget-object p1, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 46
    const-string v0, "setAvoidPlace naviClient is null"

    .line 48
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 p1, 0x1

    .line 52
    :goto_0
    return p1
.end method

.method public g(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 3
    const-string v1, "searchPoiNearby"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lv20;->a()Lv20;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lv20;->b()Li20;

    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/iflytek/navigationservice/NavigationService;->e:Li20;

    .line 18
    if-eqz v0, :cond_0

    .line 20
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->e:Li20;

    .line 42
    invoke-interface {v0, p1, p2}, Li20;->g(Ljava/lang/String;I)Z

    .line 45
    move-result p1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    sget-object p1, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 49
    const-string p2, "searchPoiNearby  naviClient is null"

    .line 51
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 p1, 0x1

    .line 55
    :goto_0
    return p1
.end method

.method public h(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 3
    const-string v1, "navigate"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lv20;->a()Lv20;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lv20;->b()Li20;

    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/iflytek/navigationservice/NavigationService;->e:Li20;

    .line 18
    if-eqz v0, :cond_0

    .line 20
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->e:Li20;

    .line 45
    invoke-interface {v0, p1, p2, p3}, Li20;->h(Ljava/lang/String;ILjava/lang/String;)Z

    .line 48
    move-result p1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    sget-object p1, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 52
    const-string p2, "navigate  naviClient is null"

    .line 54
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 p1, 0x1

    .line 58
    :goto_0
    return p1
.end method

.method public i(Ljava/lang/String;II)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 3
    const-string v1, "generalNavigate"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lv20;->a()Lv20;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lv20;->b()Li20;

    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/iflytek/navigationservice/NavigationService;->e:Li20;

    .line 18
    if-eqz v0, :cond_0

    .line 20
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->e:Li20;

    .line 42
    invoke-interface {v0, p1, p2, p3}, Li20;->i(Ljava/lang/String;II)Z

    .line 45
    move-result p1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    sget-object p1, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 49
    const-string p2, "generalNavigate  naviClient is null"

    .line 51
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 p1, 0x1

    .line 55
    :goto_0
    return p1
.end method

.method public m(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 3
    const-string v1, "searchPoiAlongRoute"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lv20;->a()Lv20;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lv20;->b()Li20;

    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/iflytek/navigationservice/NavigationService;->e:Li20;

    .line 18
    if-eqz v0, :cond_0

    .line 20
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->e:Li20;

    .line 42
    invoke-interface {v0, p1, p2}, Li20;->m(Ljava/lang/String;I)Z

    .line 45
    move-result p1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    sget-object p1, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 49
    const-string p2, "searchPoiAlongRoute  naviClient is null"

    .line 51
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 p1, 0x1

    .line 55
    :goto_0
    return p1
.end method

.method public p(II)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 3
    const-string v1, "searchPoiFavorite"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lv20;->a()Lv20;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lv20;->b()Li20;

    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/iflytek/navigationservice/NavigationService;->e:Li20;

    .line 18
    if-eqz v0, :cond_0

    .line 20
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->e:Li20;

    .line 39
    invoke-interface {v0, p1, p2}, Li20;->p(II)Z

    .line 42
    move-result p1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    sget-object p1, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 46
    const-string p2, "searchPoiFavorite  naviClient is null"

    .line 48
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 p1, 0x1

    .line 52
    :goto_0
    return p1
.end method

.method public q(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 3
    const-string v1, "setPassPlace"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lv20;->a()Lv20;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lv20;->b()Li20;

    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/iflytek/navigationservice/NavigationService;->e:Li20;

    .line 18
    if-eqz v0, :cond_0

    .line 20
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->e:Li20;

    .line 39
    invoke-interface {v0, p1}, Li20;->q(Ljava/lang/String;)Z

    .line 42
    move-result p1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    sget-object p1, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 46
    const-string v0, "setPassPlace  naviClient is null"

    .line 48
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 p1, 0x1

    .line 52
    :goto_0
    return p1
.end method

.method public s(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 3
    const-string v1, "searchPoi"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lv20;->a()Lv20;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lv20;->b()Li20;

    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/iflytek/navigationservice/NavigationService;->e:Li20;

    .line 18
    if-eqz v0, :cond_0

    .line 20
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->e:Li20;

    .line 42
    invoke-interface {v0, p1, p2}, Li20;->s(Ljava/lang/String;I)Z

    .line 45
    move-result p1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    sget-object p1, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 49
    const-string p2, "searchPoi  naviClient is null"

    .line 51
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 p1, 0x1

    .line 55
    :goto_0
    return p1
.end method

.method public t(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 3
    const-string v1, "onGetMapShareState"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lv20;->a()Lv20;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lv20;->b()Li20;

    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/iflytek/navigationservice/NavigationService;->e:Li20;

    .line 18
    if-eqz v0, :cond_0

    .line 20
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->e:Li20;

    .line 27
    invoke-interface {v0, p1}, Li20;->t(I)V

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    sget-object p1, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 33
    const-string v0, "onGetMapShareState  naviClient is null"

    .line 35
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :goto_0
    return-void
.end method

.method public v()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 3
    const-string v1, "showLocation"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lv20;->a()Lv20;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lv20;->b()Li20;

    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/iflytek/navigationservice/NavigationService;->e:Li20;

    .line 18
    if-eqz v0, :cond_0

    .line 20
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->e:Li20;

    .line 27
    invoke-interface {v0}, Li20;->v()Z

    .line 30
    move-result v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 34
    const-string v1, "showLocation  naviClient is null"

    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v0, 0x1

    .line 40
    :goto_0
    return v0
.end method

.method public w()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 3
    const-string v1, "getLocation"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lv20;->a()Lv20;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lv20;->b()Li20;

    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/iflytek/navigationservice/NavigationService;->e:Li20;

    .line 18
    if-eqz v0, :cond_0

    .line 20
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->e:Li20;

    .line 27
    invoke-interface {v0}, Li20;->w()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 34
    const-string v1, "getLocation  naviClient is null"

    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v0, 0x0

    .line 40
    :goto_0
    return-object v0
.end method

.method public x(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 3
    const-string v1, "shareByMap"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lv20;->a()Lv20;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lv20;->b()Li20;

    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/iflytek/navigationservice/NavigationService;->e:Li20;

    .line 18
    if-eqz v0, :cond_0

    .line 20
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->e:Li20;

    .line 39
    invoke-interface {v0, p1}, Li20;->x(Ljava/lang/String;)Z

    .line 42
    move-result p1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    sget-object p1, Lcom/iflytek/navigationservice/NavigationService;->f:Ljava/lang/String;

    .line 46
    const-string v0, "shareByMap  naviClient is null"

    .line 48
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 p1, 0x1

    .line 52
    :goto_0
    return p1
.end method
