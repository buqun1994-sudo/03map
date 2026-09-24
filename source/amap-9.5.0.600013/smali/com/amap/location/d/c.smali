.class public Lcom/amap/location/d/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/device/IDeviceInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/d/c$a;
    }
.end annotation


# static fields
.field private static a:Lcom/amap/location/support/storage/KeyValueStorer;


# instance fields
.field private b:Lcom/amap/location/d/c$a;


# direct methods
.method public constructor <init>(Lcom/amap/location/d/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lcom/amap/location/d/c$a;

    .line 8
    invoke-direct {p1}, Lcom/amap/location/d/c$a;-><init>()V

    .line 11
    :cond_0
    iput-object p1, p0, Lcom/amap/location/d/c;->b:Lcom/amap/location/d/c$a;

    .line 13
    return-void
.end method

.method private static a()Lcom/amap/location/support/storage/KeyValueStorer;
    .locals 2

    .line 1
    sget-object v0, Lcom/amap/location/d/c;->a:Lcom/amap/location/support/storage/KeyValueStorer;

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getKeyValueStorerManager()Lcom/amap/location/support/storage/IKeyValueStorerManager;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "sp_common"

    .line 11
    invoke-interface {v0, v1}, Lcom/amap/location/support/storage/IKeyValueStorerManager;->create(Ljava/lang/String;)Lcom/amap/location/support/storage/KeyValueStorer;

    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/amap/location/d/c;->a:Lcom/amap/location/support/storage/KeyValueStorer;

    .line 17
    :cond_0
    sget-object v0, Lcom/amap/location/d/c;->a:Lcom/amap/location/support/storage/KeyValueStorer;

    .line 19
    return-object v0
.end method


# virtual methods
.method public getAdCode()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/location/d/c;->a()Lcom/amap/location/support/storage/KeyValueStorer;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "adcode"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2}, Lcom/amap/location/support/storage/KeyValueStorer;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/amap/location/support/util/SecurityUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return-object v0

    .line 17
    :catch_0
    const-string v0, ""

    .line 19
    return-object v0
.end method

.method public getAdiu()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/location/d/c;->a()Lcom/amap/location/support/storage/KeyValueStorer;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "adiu"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2}, Lcom/amap/location/support/storage/KeyValueStorer;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/amap/location/support/util/SecurityUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return-object v0

    .line 17
    :catch_0
    const-string v0, ""

    .line 19
    return-object v0
.end method

.method public getAppInfo()[Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/amap/location/d/a;->a()[Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string v0, ""

    .line 7
    :cond_0
    return-object v0
.end method

.method public getDeviceMacLong()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDeviceMacString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getDeviceMode()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string v0, ""

    .line 7
    :cond_0
    return-object v0
.end method

.method public getDiu()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string v0, ""

    .line 7
    :cond_0
    return-object v0
.end method

.method public getOaid()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/location/d/c;->a()Lcom/amap/location/support/storage/KeyValueStorer;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "oaid"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2}, Lcom/amap/location/support/storage/KeyValueStorer;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/amap/location/support/util/SecurityUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return-object v0

    .line 17
    :catch_0
    const-string v0, ""

    .line 19
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/location/d/d;->a()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object v0

    .line 10
    :catch_0
    const-string v0, ""

    .line 12
    return-object v0
.end method

.method public getSerialNum()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getSystemVersionInt()I
    .locals 1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    return v0
.end method

.method public getSystemVersionString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getTid()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/location/d/c;->b:Lcom/amap/location/d/c$a;

    .line 3
    iget-boolean v0, v0, Lcom/amap/location/d/c$a;->a:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    :try_start_0
    invoke-static {}, Lcom/amap/location/d/c;->a()Lcom/amap/location/support/storage/KeyValueStorer;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "tid"

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-interface {v0, v1, v2}, Lcom/amap/location/support/storage/KeyValueStorer;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/amap/location/support/util/SecurityUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return-object v0

    .line 23
    :catch_0
    :cond_0
    const-string v0, ""

    .line 25
    return-object v0
.end method

.method public setAdCode(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    :try_start_0
    invoke-static {}, Lcom/amap/location/d/c;->a()Lcom/amap/location/support/storage/KeyValueStorer;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "adcode"

    .line 13
    invoke-static {p1}, Lcom/amap/location/support/util/SecurityUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    invoke-interface {v0, v1, p1}, Lcom/amap/location/support/storage/KeyValueStorer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/amap/location/d/c;->a()Lcom/amap/location/support/storage/KeyValueStorer;

    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p1}, Lcom/amap/location/support/storage/KeyValueStorer;->save()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :catch_0
    :cond_0
    return-void
.end method

.method public setAdiu(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    :try_start_0
    invoke-static {}, Lcom/amap/location/d/c;->a()Lcom/amap/location/support/storage/KeyValueStorer;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "adiu"

    .line 13
    invoke-static {p1}, Lcom/amap/location/support/util/SecurityUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    invoke-interface {v0, v1, p1}, Lcom/amap/location/support/storage/KeyValueStorer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/amap/location/d/c;->a()Lcom/amap/location/support/storage/KeyValueStorer;

    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p1}, Lcom/amap/location/support/storage/KeyValueStorer;->save()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :catch_0
    :cond_0
    return-void
.end method

.method public setDiu(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setOaid(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    :try_start_0
    invoke-static {}, Lcom/amap/location/d/c;->a()Lcom/amap/location/support/storage/KeyValueStorer;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "oaid"

    .line 13
    invoke-static {p1}, Lcom/amap/location/support/util/SecurityUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    invoke-interface {v0, v1, p1}, Lcom/amap/location/support/storage/KeyValueStorer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/amap/location/d/c;->a()Lcom/amap/location/support/storage/KeyValueStorer;

    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p1}, Lcom/amap/location/support/storage/KeyValueStorer;->save()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :catch_0
    :cond_0
    return-void
.end method

.method public setTid(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    :try_start_0
    invoke-static {}, Lcom/amap/location/d/c;->a()Lcom/amap/location/support/storage/KeyValueStorer;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "tid"

    .line 13
    invoke-static {p1}, Lcom/amap/location/support/util/SecurityUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    invoke-interface {v0, v1, p1}, Lcom/amap/location/support/storage/KeyValueStorer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/amap/location/d/c;->a()Lcom/amap/location/support/storage/KeyValueStorer;

    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p1}, Lcom/amap/location/support/storage/KeyValueStorer;->save()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :catch_0
    :cond_0
    return-void
.end method
