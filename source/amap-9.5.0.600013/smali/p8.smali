.class public Lp8;
.super Lfi;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lfi;-><init>()V

    .line 4
    invoke-static {}, Lrv;->H()Lrv;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lrv;->y()Landroid/app/Application;

    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lsi;->u(Landroid/content/Context;)Lsi;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lsi;->I()I

    .line 19
    move-result v0

    .line 20
    const/16 v1, 0x640

    .line 22
    if-ne v0, v1, :cond_0

    .line 24
    invoke-static {}, Lrv;->H()Lrv;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lrv;->y()Landroid/app/Application;

    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lsi;->u(Landroid/content/Context;)Lsi;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lsi;->H()I

    .line 39
    move-result v0

    .line 40
    const/16 v1, 0x190

    .line 42
    if-ne v0, v1, :cond_0

    .line 44
    const/16 v0, 0xc8

    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-virtual {p0, v0, v1, v0, v1}, Lac;->d(IIII)V

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public createRealChannelImpl()Leq;
    .locals 1

    .line 1
    const/16 v0, 0x3b07

    .line 3
    invoke-virtual {p0, v0}, Lp8;->getStringValue(I)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p0}, Lre;->a(Ljava/lang/String;Leq;)Leq;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 3

    .line 1
    const/16 v0, 0x3b07

    .line 3
    if-eq p1, v0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "ro.ota.typeid"

    .line 8
    invoke-static {v0}, Lvf0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 18
    :try_start_0
    const-string v1, "_"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 35
    const-string v1, "pufangda.properties"

    .line 37
    invoke-static {}, Lrv;->H()Lrv;

    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Lrv;->y()Landroid/app/Application;

    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {p0, v1, v2}, Lac;->initProperties(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Properties;

    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_1

    .line 51
    invoke-virtual {v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    move-result v1
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    if-nez v1, :cond_1

    .line 61
    return-object v0

    .line 62
    :catch_0
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lac;->getStringValue(I)Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    return-object p1
.end method
