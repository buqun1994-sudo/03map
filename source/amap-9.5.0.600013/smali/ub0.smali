.class public Lub0;
.super Lei;
.source "SourceFile"


# instance fields
.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lei;-><init>()V

    .line 4
    const-string v0, ""

    .line 6
    iput-object v0, p0, Lub0;->e:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public static e()Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    const-string v1, "/system/vendor/ramdisk/navi/serial.txt"

    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x1

    .line 13
    const-string v4, ""

    .line 15
    const/4 v5, 0x0

    .line 16
    const-string v6, "SanyInteractionImpl"

    .line 18
    if-nez v2, :cond_0

    .line 20
    new-array v0, v3, [Ljava/lang/Object;

    .line 22
    aput-object v1, v0, v5

    .line 24
    const-string v1, "readDeviceId, file not found:{?}"

    .line 26
    invoke-static {v6, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    return-object v4

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    .line 33
    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    .line 39
    move-result v0

    .line 40
    new-array v0, v0, [B

    .line 42
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 45
    move-result v1

    .line 46
    if-lez v1, :cond_1

    .line 48
    new-instance v1, Ljava/lang/String;

    .line 50
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 53
    move-object v4, v1

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const-string v0, "readDeviceId, is empty!!!"

    .line 57
    new-array v1, v5, [Ljava/lang/Object;

    .line 59
    invoke-static {v6, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :goto_0
    invoke-static {v2}, Lms;->a(Ljava/io/Closeable;)V

    .line 65
    goto :goto_2

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    move-object v1, v2

    .line 68
    goto :goto_3

    .line 69
    :catch_0
    move-exception v0

    .line 70
    move-object v1, v2

    .line 71
    goto :goto_1

    .line 72
    :catchall_1
    move-exception v0

    .line 73
    goto :goto_3

    .line 74
    :catch_1
    move-exception v0

    .line 75
    :goto_1
    :try_start_2
    const-string v2, "readDeviceId exception:"

    .line 77
    new-array v7, v5, [Ljava/lang/Object;

    .line 79
    invoke-static {v6, v2, v0, v7}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 82
    invoke-static {v1}, Lms;->a(Ljava/io/Closeable;)V

    .line 85
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 93
    new-array v1, v3, [Ljava/lang/Object;

    .line 95
    aput-object v0, v1, v5

    .line 97
    const-string v2, "readDeviceId deviceId:{?}"

    .line 99
    invoke-static {v6, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    return-object v0

    .line 103
    :goto_3
    invoke-static {v1}, Lms;->a(Ljava/io/Closeable;)V

    .line 106
    throw v0
.end method


# virtual methods
.method public f(Landroid/view/Window;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    .line 8
    move-result v0

    .line 9
    or-int/lit16 v0, v0, 0x400

    .line 11
    or-int/lit16 v0, v0, 0x100

    .line 13
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 20
    const/high16 v0, 0xc000000

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 25
    const/high16 v0, -0x80000000

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 30
    const/high16 v0, -0x1000000

    .line 32
    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 35
    return-void
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 1

    .line 1
    const v0, 0x9c43

    .line 4
    if-eq p1, v0, :cond_0

    .line 6
    invoke-super {p0, p1}, Lei;->getStringValue(I)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :cond_0
    iget-object p1, p0, Lub0;->e:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 19
    invoke-static {}, Lub0;->e()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lub0;->e:Ljava/lang/String;

    .line 25
    :cond_1
    iget-object p1, p0, Lub0;->e:Ljava/lang/String;

    .line 27
    return-object p1
.end method

.method public onActivityLifecycleChanged(Landroid/app/Activity;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lbc;->onActivityLifecycleChanged(Landroid/app/Activity;I)V

    .line 4
    const/4 v0, 0x1

    .line 5
    if-eq p2, v0, :cond_0

    .line 7
    const/4 v1, 0x3

    .line 8
    if-ne p2, v1, :cond_1

    .line 10
    :cond_0
    new-array p2, v0, [Ljava/lang/Object;

    .line 12
    const/4 v0, 0x0

    .line 13
    aput-object p1, p2, v0

    .line 15
    const-string v0, "SanyInteractionImpl"

    .line 17
    const-string v1, "setStatusBarColor activity:{?}"

    .line 19
    invoke-static {v0, v1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Lub0;->f(Landroid/view/Window;)V

    .line 29
    :cond_1
    return-void
.end method
