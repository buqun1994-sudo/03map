.class public abstract Lac;
.super Lbc;
.source "SourceFile"

# interfaces
.implements Lgq;
.implements Lkr;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lrk;

.field public c:Lrk;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lbc;-><init>()V

    .line 4
    invoke-static {}, Lrv;->H()Lrv;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lac;->a:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "/system/etc/AutoAdapterInfo"

    return-object v0
.end method

.method public final c(Ll6;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ll6;->b()Lrk;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Lrk;

    .line 11
    invoke-virtual {p1}, Ll6;->b()Lrk;

    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v0, p1}, Lrk;-><init>(Lrk;)V

    .line 18
    iput-object v0, p0, Lac;->b:Lrk;

    .line 20
    :cond_0
    return-void
.end method

.method public createRealChannelImpl()Leq;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final d(IIII)V
    .locals 1

    .line 1
    if-gtz p1, :cond_0

    .line 3
    if-gtz p2, :cond_0

    .line 5
    if-gtz p3, :cond_0

    .line 7
    if-lez p4, :cond_1

    .line 9
    :cond_0
    new-instance v0, Lrk;

    .line 11
    invoke-direct {v0, p1, p2, p3, p4}, Lrk;-><init>(IIII)V

    .line 14
    iput-object v0, p0, Lac;->c:Lrk;

    .line 16
    :cond_1
    return-void
.end method

.method public getBooleanValue(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x272b

    .line 3
    if-eq p1, v0, :cond_0

    .line 5
    invoke-super {p0, p1}, Lbc;->getBooleanValue(I)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public getDeviceCustomer(Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    move-result-object v0

    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p4, v0}, Lac;->initProperties(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Properties;

    move-result-object p4

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lac;->getDeviceCustomer(Ljava/lang/String;CILjava/util/Properties;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDeviceCustomer(Ljava/lang/String;CILjava/util/Properties;)Ljava/lang/String;
    .locals 6

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 5
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_3

    .line 6
    aget-char v5, v0, v2

    if-ne v5, p2, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v5, p3, 0x1

    if-ne v3, v5, :cond_1

    if-nez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v5, p3, 0x2

    if-ne v3, v5, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    if-ge v4, v2, :cond_4

    const/4 p2, 0x1

    add-int/2addr v4, p2

    .line 7
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p3, "junzhou"

    const-string v0, "getDeviceCustomer:{?}"

    .line 8
    invoke-static {p3, v0, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p4, :cond_4

    .line 9
    invoke-virtual {p4, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFloatValue(I)F
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ldi;->getFloatValue(I)F

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getIntValue(I)I
    .locals 3

    .line 1
    const/16 v0, 0x271b

    .line 3
    if-eq p1, v0, :cond_4

    .line 5
    packed-switch p1, :pswitch_data_0

    .line 8
    invoke-super {p0, p1}, Lbc;->getIntValue(I)I

    .line 11
    move-result p1

    .line 12
    return p1

    .line 13
    :pswitch_0
    iget-object p1, p0, Lac;->c:Lrk;

    .line 15
    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p1}, Lrk;->a()I

    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    :cond_0
    const/16 p1, 0x7534

    .line 24
    invoke-super {p0, p1}, Lbc;->getIntValue(I)I

    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :pswitch_1
    iget-object p1, p0, Lac;->c:Lrk;

    .line 31
    if-eqz p1, :cond_1

    .line 33
    invoke-virtual {p1}, Lrk;->c()I

    .line 36
    move-result p1

    .line 37
    return p1

    .line 38
    :cond_1
    const/16 p1, 0x7533

    .line 40
    invoke-super {p0, p1}, Lbc;->getIntValue(I)I

    .line 43
    move-result p1

    .line 44
    return p1

    .line 45
    :pswitch_2
    iget-object p1, p0, Lac;->c:Lrk;

    .line 47
    if-eqz p1, :cond_2

    .line 49
    invoke-virtual {p1}, Lrk;->d()I

    .line 52
    move-result p1

    .line 53
    return p1

    .line 54
    :cond_2
    const/16 p1, 0x7532

    .line 56
    invoke-super {p0, p1}, Lbc;->getIntValue(I)I

    .line 59
    move-result p1

    .line 60
    return p1

    .line 61
    :pswitch_3
    iget-object p1, p0, Lac;->c:Lrk;

    .line 63
    if-eqz p1, :cond_3

    .line 65
    invoke-virtual {p1}, Lrk;->b()I

    .line 68
    move-result p1

    .line 69
    return p1

    .line 70
    :cond_3
    const/16 p1, 0x7531

    .line 72
    invoke-super {p0, p1}, Lbc;->getIntValue(I)I

    .line 75
    move-result p1

    .line 76
    return p1

    .line 77
    :cond_4
    const/4 p1, 0x1

    .line 78
    new-array p1, p1, [Ljava/lang/Object;

    .line 80
    const/4 v0, 0x0

    .line 81
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    move-result-object v1

    .line 85
    aput-object v1, p1, v0

    .line 87
    const-string v1, "BaseAfterAssembleDelegateImpl"

    .line 89
    const-string v2, "[BaseAfterAssembleDelegateImpl]IS_NEED_OPEN_AGROUP:{?}"

    .line 91
    invoke-static {v1, v2, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    return v0

    .line 95
    :pswitch_data_0
    .packed-switch 0x7531
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSocolEnabled()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "BaseAfterAssembleDelegateImpl"

    .line 6
    const-string v3, "BaseAfterAssembleDelegateImpl getSocolEnabled"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    return v0
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ldi;->getStringValue(I)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final getSuperCustomID()Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x3b07

    .line 3
    invoke-super {p0, v0}, Ldi;->getStringValue(I)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSystemDysmorphismInfo()Lrk;
    .locals 1

    .line 1
    iget-object v0, p0, Lac;->b:Lrk;

    .line 3
    return-object v0
.end method

.method public initProperties(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Properties;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 5
    move-result-object p2

    .line 6
    invoke-virtual {p2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 9
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-eqz p1, :cond_0

    .line 12
    :try_start_1
    new-instance p2, Ljava/util/Properties;

    .line 14
    invoke-direct {p2}, Ljava/util/Properties;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17
    :try_start_2
    invoke-virtual {p2, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 20
    move-object v0, p2

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    :catch_1
    move-exception p2

    .line 25
    move-object v1, v0

    .line 26
    move-object v0, p2

    .line 27
    move-object p2, v1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    invoke-static {p1}, Lns;->a(Ljava/io/Closeable;)V

    .line 32
    goto :goto_2

    .line 33
    :catchall_0
    move-exception p2

    .line 34
    goto :goto_3

    .line 35
    :catch_2
    move-exception p1

    .line 36
    move-object p2, v0

    .line 37
    move-object v0, p1

    .line 38
    move-object p1, p2

    .line 39
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 42
    invoke-static {p1}, Lns;->a(Ljava/io/Closeable;)V

    .line 45
    move-object v0, p2

    .line 46
    :goto_2
    return-object v0

    .line 47
    :catchall_1
    move-exception p2

    .line 48
    move-object v0, p1

    .line 49
    :goto_3
    invoke-static {v0}, Lns;->a(Ljava/io/Closeable;)V

    .line 52
    throw p2
.end method
