.class public Lue;
.super Lei;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lei;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getStringValue(I)Ljava/lang/String;
    .locals 6

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_1

    .line 5
    :pswitch_0
    new-instance v0, Ljava/io/File;

    .line 7
    const-string v1, "/storage/extsd/amapauto/data/route"

    .line 9
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    const-string v1, "/storage/extsd"

    .line 14
    invoke-static {v1}, Ls1;->B(Ljava/lang/String;)Z

    .line 17
    move-result v2

    .line 18
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 21
    move-result v3

    .line 22
    if-eqz v2, :cond_1

    .line 24
    if-eqz v3, :cond_1

    .line 26
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_1

    .line 32
    const/4 v3, 0x0

    .line 33
    :goto_0
    array-length v4, v2

    .line 34
    if-ge v3, v4, :cond_1

    .line 36
    const-string v4, "."

    .line 38
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v4

    .line 46
    if-nez v4, :cond_0

    .line 48
    const-string v4, ".."

    .line 50
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v4

    .line 58
    if-nez v4, :cond_0

    .line 60
    return-object v1

    .line 61
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lei;->getStringValue(I)Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    return-object p1

    .line 69
    :pswitch_data_0
    .packed-switch 0x9c44
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public notifyAmapAutoState(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lbc;->notifyAmapAutoState(I)V

    .line 4
    const/4 v0, 0x3

    .line 5
    if-ne p1, v0, :cond_0

    .line 7
    invoke-static {}, Lrv;->H()Lrv;

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lrv;->y()Landroid/app/Application;

    .line 14
    move-result-object p1

    .line 15
    new-instance v0, Landroid/content/Intent;

    .line 17
    const-string v1, "com.autolink.navi.enter"

    .line 19
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 25
    :cond_0
    return-void
.end method
