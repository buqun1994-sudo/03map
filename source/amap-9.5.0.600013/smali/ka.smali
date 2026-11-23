.class public abstract Lka;
.super Lkc;
.source "SourceFile"

# interfaces
.implements Lzr;


# instance fields
.field public C:Landroid/os/Bundle;

.field public D:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "com.autonavi.amapauto.AutoNativeActivity loader: "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-class v1, Lka;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    const-string v1, "Loader"

    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lkc;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lka;->D:Z

    .line 7
    return-void
.end method


# virtual methods
.method public final E()Z
    .locals 4

    .line 1
    const-string v0, "ro.product.device"

    .line 3
    invoke-static {v0}, Luf0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "ro.product.manufacturer"

    .line 9
    invoke-static {v1}, Luf0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    const/16 v3, 0x17

    .line 17
    if-gt v2, v3, :cond_0

    .line 19
    if-eqz v0, :cond_0

    .line 21
    if-eqz v1, :cond_0

    .line 23
    const-string v2, "evb3561sv_w_65_m0"

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 31
    const-string v0, "alps"

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 39
    const-string v0, "Activity"

    .line 41
    const-string v1, "need finish"

    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v0, 0x1

    .line 47
    return v0

    .line 48
    :cond_0
    const/4 v0, 0x0

    .line 49
    return v0
.end method

.method public final F()V
    .locals 1

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->y()Landroid/app/Application;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lpa;->h(Landroid/content/Context;)I

    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeSetNetWorkState(I)V

    .line 16
    return-void
.end method

.method public G()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {}, Lp7;->e()Z

    .line 7
    move-result v2

    .line 8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v2, v1, v3

    .line 15
    const-string v2, "AutoNativeActivity"

    .line 17
    const-string v4, "requestPermissions, isNeedShowPermission={?}"

    .line 19
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    invoke-static {}, Lp7;->e()Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_3

    .line 28
    invoke-static {}, Lrv;->H()Lrv;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lrv;->y()Landroid/app/Application;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 39
    move-result-object v1

    .line 40
    invoke-static {v1}, Lu50;->d(Landroid/content/Context;)Ljava/util/Map;

    .line 43
    move-result-object v1

    .line 44
    new-array v4, v0, [Ljava/lang/Object;

    .line 46
    if-eqz v1, :cond_0

    .line 48
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 51
    move-result v5

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 v5, 0x0

    .line 54
    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    move-result-object v5

    .line 58
    aput-object v5, v4, v3

    .line 60
    const-string v5, "requestPermissions, lackOfPermissions size={?}"

    .line 62
    invoke-static {v2, v5, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    if-eqz v1, :cond_2

    .line 67
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 70
    move-result v4

    .line 71
    if-lez v4, :cond_2

    .line 73
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 75
    const/16 v5, 0x17

    .line 77
    if-lt v4, v5, :cond_2

    .line 79
    invoke-static {}, Lzm;->d()Lzm;

    .line 82
    move-result-object v4

    .line 83
    const-string v5, "isNeedFrontMemory"

    .line 85
    invoke-virtual {v4, v5, v0}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 88
    move-result v4

    .line 89
    new-array v5, v0, [Ljava/lang/Object;

    .line 91
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 94
    move-result-object v6

    .line 95
    aput-object v6, v5, v3

    .line 97
    const-string v6, "isNeedFrontMemory ={?}"

    .line 99
    invoke-static {v2, v6, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 105
    move-result-object v1

    .line 106
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 108
    invoke-interface {v1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_1

    .line 114
    if-eqz v4, :cond_1

    .line 116
    filled-new-array {v2}, [Ljava/lang/String;

    .line 119
    move-result-object v1

    .line 120
    iput-boolean v0, p0, Lka;->D:Z

    .line 122
    invoke-static {p0, v1, v0}, Lja;->a(Lka;[Ljava/lang/String;I)V

    .line 125
    goto :goto_1

    .line 126
    :cond_1
    invoke-static {v3}, Lp7;->l(Z)V

    .line 129
    goto :goto_1

    .line 130
    :cond_2
    invoke-static {v3}, Lp7;->l(Z)V

    .line 133
    iget-object v0, p0, Lka;->C:Landroid/os/Bundle;

    .line 135
    invoke-super {p0, v0}, Lkc;->u(Landroid/os/Bundle;)V

    .line 138
    goto :goto_1

    .line 139
    :cond_3
    iget-object v0, p0, Lka;->C:Landroid/os/Bundle;

    .line 141
    invoke-super {p0, v0}, Lkc;->u(Landroid/os/Bundle;)V

    .line 144
    :goto_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-static {p0, p1, p2, p3}, Lcom/autonavi/amapauto/content/ContentRuntime;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v0

    .line 4
    const/4 v0, 0x3

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    aput-object v1, v0, v2

    .line 14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v1

    .line 18
    const/4 v3, 0x1

    .line 19
    aput-object v1, v0, v3

    .line 21
    const/4 v1, 0x2

    .line 22
    aput-object p3, v0, v1

    .line 24
    const-string v1, "AutoNativeActivity"

    .line 26
    const-string v4, "requestCode:{?},resultCode:{?},data:{?}"

    .line 28
    invoke-static {v1, v4, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    const/16 v0, 0x3e8

    .line 33
    if-ne p1, v0, :cond_0

    .line 35
    const/4 v0, -0x1

    .line 36
    if-ne p2, v0, :cond_0

    .line 38
    if-eqz p3, :cond_0

    .line 40
    const-string v0, "android.speech.extra.RESULTS"

    .line 42
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 45
    move-result-object p3

    .line 46
    if-eqz p3, :cond_0

    .line 48
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 51
    move-result v0

    .line 52
    if-lez v0, :cond_0

    .line 54
    new-array v0, v3, [Ljava/lang/Object;

    .line 56
    aput-object p3, v0, v2

    .line 58
    const-string v3, "result:{?}"

    .line 60
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    new-instance v0, Landroid/os/Bundle;

    .line 65
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 68
    const-string v1, "RecognizerIntent_Bundle_requestCode"

    .line 70
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 73
    const-string p1, "RecognizerIntent_Bundle_resultCode"

    .line 75
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 78
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Ljava/lang/String;

    .line 84
    const-string p2, "RecognizerIntent_Bundle_resultText"

    .line 86
    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string p1, "RecognizerIntent_Action"

    .line 91
    invoke-static {p1, v0}, Lcom/autonavi/amapauto/alpack/d;->g(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 94
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    new-instance v0, Lch0;

    .line 3
    const-string v1, "onCreate"

    .line 5
    const-string v2, "AutoNativeActivity"

    .line 7
    invoke-direct {v0, v2, p0, v1}, Lch0;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    const/4 v1, 0x0

    .line 11
    new-array v3, v1, [Ljava/lang/Object;

    .line 13
    const-string v4, "AutoNativeActivity onCreate"

    .line 15
    invoke-static {v2, v4, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    sget-boolean v2, Lyg0;->a:Z

    .line 20
    if-nez v2, :cond_0

    .line 22
    invoke-static {}, Lp7;->f()Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 28
    invoke-super {p0, p1}, Lkc;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-static {v1}, Lp7;->k(Z)V

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 37
    return-void

    .line 38
    :cond_0
    sget-boolean v1, Lyg0;->a:Z

    .line 40
    const/4 v2, 0x1

    .line 41
    if-nez v1, :cond_1

    .line 43
    invoke-static {v2}, Lte0;->f(Z)V

    .line 46
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    const-string v3, "taskId = "

    .line 53
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    .line 59
    move-result v3

    .line 60
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Lch0;->b(Ljava/lang/String;)V

    .line 70
    const-string v1, "AutoNativeActivity onCreate begin"

    .line 72
    invoke-static {v1}, Lcom/autonavi/amapauto/Hook;->a(Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/autonavi/amapauto/MapApplication;->i()Landroid/os/Handler;

    .line 78
    move-result-object v1

    .line 79
    if-nez v1, :cond_2

    .line 81
    invoke-super {p0, p1}, Lkc;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 87
    return-void

    .line 88
    :cond_2
    const-string v1, "AutoNativeActivity onCreate begin code"

    .line 90
    invoke-static {v1}, Lcom/autonavi/amapauto/Hook;->a(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lte0;->a()I

    .line 96
    move-result v1

    .line 97
    int-to-long v3, v1

    .line 98
    sget-boolean v1, Lyg0;->a:Z

    .line 100
    if-nez v1, :cond_3

    .line 102
    const-wide/16 v5, 0x1

    .line 104
    cmp-long v1, v3, v5

    .line 106
    if-eqz v1, :cond_3

    .line 108
    new-instance v1, Landroid/content/Intent;

    .line 110
    const-class v2, Lcom/autonavi/amapauto/MainMapActivity;

    .line 112
    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    const/high16 v2, 0x400000

    .line 117
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 123
    invoke-super {p0, p1}, Lkc;->onCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 129
    const-string p1, "brought to front"

    .line 131
    invoke-virtual {v0, p1}, Lch0;->d(Ljava/lang/String;)V

    .line 134
    return-void

    .line 135
    :cond_3
    const-string v1, "AutoNativeActivity onCreate begin state"

    .line 137
    invoke-static {v1}, Lcom/autonavi/amapauto/Hook;->a(Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lze0;->h()Lze0;

    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v1}, Lze0;->p()Z

    .line 147
    move-result v1

    .line 148
    if-eqz v1, :cond_4

    .line 150
    invoke-virtual {p0}, Lka;->E()Z

    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_4

    .line 156
    invoke-super {p0, p1}, Lkc;->onCreate(Landroid/os/Bundle;)V

    .line 159
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 162
    return-void

    .line 163
    :cond_4
    const-string v1, "AutoNativeActivity onCreate begin call super"

    .line 165
    invoke-static {v1}, Lcom/autonavi/amapauto/Hook;->a(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lka;->C:Landroid/os/Bundle;

    .line 170
    invoke-super {p0, v1}, Lkc;->onCreate(Landroid/os/Bundle;)V

    .line 173
    iput-object p1, p0, Lka;->C:Landroid/os/Bundle;

    .line 175
    invoke-virtual {p0}, Lka;->G()V

    .line 178
    invoke-static {}, Lod;->a()Z

    .line 181
    move-result p1

    .line 182
    if-eqz p1, :cond_5

    .line 184
    invoke-static {}, La7;->c()La7;

    .line 187
    move-result-object p1

    .line 188
    invoke-virtual {p1, p0, v2}, La7;->i(Landroid/content/Context;Z)V

    .line 191
    :cond_5
    const-string p1, "AutoNativeActivity onCreate end"

    .line 193
    invoke-static {p1}, Lcom/autonavi/amapauto/Hook;->a(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0}, Lch0;->c()V

    .line 199
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    new-instance v0, Lch0;

    .line 3
    const-string v1, "AutoNativeActivity"

    .line 5
    const-string v2, "onDestroy"

    .line 7
    invoke-direct {v0, v1, p0, v2}, Lch0;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lch0;->a()V

    .line 13
    sget-boolean v1, Lyg0;->a:Z

    .line 15
    if-nez v1, :cond_0

    .line 17
    invoke-static {}, Lod;->a()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 23
    invoke-static {p0}, Lcom/autonavi/amapauto/background/AutoBackgroundService;->i(Landroid/content/Context;)V

    .line 26
    :cond_0
    :try_start_0
    invoke-super {p0}, Lkc;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v1

    .line 31
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    :goto_0
    invoke-virtual {v0}, Lch0;->c()V

    .line 37
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v1, v0, [Ljava/lang/Object;

    .line 7
    array-length v2, p3

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v2, v1, v3

    .line 15
    const-string v2, "AutoNativeActivity"

    .line 17
    const-string v4, "grantResults={?}"

    .line 19
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    iput-boolean v3, p0, Lka;->D:Z

    .line 24
    if-eqz p2, :cond_0

    .line 26
    array-length v1, p2

    .line 27
    if-lez v1, :cond_0

    .line 29
    if-ne p1, v0, :cond_2

    .line 31
    invoke-virtual {p0}, Lka;->F()V

    .line 34
    iget-object v0, p0, Lka;->C:Landroid/os/Bundle;

    .line 36
    invoke-super {p0, v0}, Lkc;->u(Landroid/os/Bundle;)V

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const-string v1, "AutoNativeActivity onRequestPermissionsResult requesPermissions"

    .line 42
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-boolean v1, p0, Lkc;->t:Z

    .line 47
    if-nez v1, :cond_1

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    const-string v3, "AutoNativeActivity onRequestPermissionsResult requesPermissions "

    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-boolean v3, p0, Lkc;->t:Z

    .line 61
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 68
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iput-boolean v0, p0, Lkc;->t:Z

    .line 73
    invoke-virtual {p0}, Lka;->G()V

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    if-ne p1, v0, :cond_2

    .line 79
    invoke-virtual {p0}, Lka;->F()V

    .line 82
    iget-object v0, p0, Lka;->C:Landroid/os/Bundle;

    .line 84
    invoke-super {p0, v0}, Lkc;->u(Landroid/os/Bundle;)V

    .line 87
    :cond_2
    :goto_0
    const/4 v0, 0x2

    .line 88
    if-ne p1, v0, :cond_3

    .line 90
    invoke-static {}, Lse;->c()Lse;

    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1, p2, p3}, Lse;->requestPermissionsResult([Ljava/lang/String;[I)V

    .line 97
    :cond_3
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    const/4 v1, 0x0

    .line 8
    aput-object p1, v0, v1

    .line 10
    const-string p1, "AutoNativeActivity"

    .line 12
    const-string v1, "onRestoreInstanceState savedInstanceState:{?}"

    .line 14
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    const v1, 0xea61

    .line 8
    invoke-virtual {v0, v1}, Lse;->getOptionalValue(I)Leq$a;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Leq$a;->b()Z

    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-eqz v0, :cond_0

    .line 19
    sput-boolean v1, Lyg0;->a:Z

    .line 21
    :cond_0
    invoke-super {p0, p1}, Lkc;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 24
    new-array v0, v1, [Ljava/lang/Object;

    .line 26
    const/4 v1, 0x0

    .line 27
    aput-object p1, v0, v1

    .line 29
    const-string p1, "AutoNativeActivity"

    .line 31
    const-string v1, "onSaveInstanceState outState:{?}"

    .line 33
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Lkc;->onStop()V

    .line 4
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lkc;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 4
    return-void
.end method
