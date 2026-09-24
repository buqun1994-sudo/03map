.class public Lri;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lri$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "getUUIDMode"

    .line 6
    iput-object v0, p0, Lri;->a:Ljava/lang/String;

    .line 8
    const-string v0, "key_uuid"

    .line 10
    iput-object v0, p0, Lri;->b:Ljava/lang/String;

    .line 12
    const-string v0, "sys.special.uuid"

    .line 14
    iput-object v0, p0, Lri;->c:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static b()Lri;
    .locals 1

    .line 1
    invoke-static {}, Lri$a;->a()Lri;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Lib;->a()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x1d6

    .line 7
    const/4 v2, 0x0

    .line 8
    if-ge v0, v1, :cond_0

    .line 10
    return-object v2

    .line 11
    :cond_0
    invoke-static {}, Lzm;->d()Lzm;

    .line 14
    move-result-object v0

    .line 15
    const-string v1, "getUUIDMode"

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v0, v1, v3}, Lzm;->e(Ljava/lang/String;I)I

    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x1

    .line 23
    new-array v1, v1, [Ljava/lang/Object;

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v4

    .line 29
    aput-object v4, v1, v3

    .line 31
    const-string v3, "DeviceIdMethods"

    .line 33
    const-string v4, "getDefaultUUID: uuidMethod = {?}"

    .line 35
    invoke-static {v3, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    if-nez v0, :cond_1

    .line 40
    return-object v2

    .line 41
    :cond_1
    invoke-virtual {p0, v0}, Lri;->c(I)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method

.method public final c(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_3

    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_2

    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p1, v0, :cond_1

    .line 10
    const/4 v0, 0x4

    .line 11
    if-eq p1, v0, :cond_0

    .line 13
    const/4 p1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lri;->g()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p0}, Lri;->f()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    goto :goto_0

    .line 25
    :cond_2
    invoke-virtual {p0}, Lri;->e()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    goto :goto_0

    .line 30
    :cond_3
    invoke-virtual {p0}, Lri;->d()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    :goto_0
    return-object p1
.end method

.method public final d()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "key_uuid"

    .line 15
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x1

    .line 20
    new-array v1, v1, [Ljava/lang/Object;

    .line 22
    const/4 v2, 0x0

    .line 23
    aput-object v0, v1, v2

    .line 25
    const-string v2, "DeviceIdMethods"

    .line 27
    const-string v3, "getUUIDMethod1: uuid = {?}"

    .line 29
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "sys.special.uuid"

    .line 3
    invoke-static {v0}, Luf0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v0, v1, v2

    .line 13
    const-string v2, "DeviceIdMethods"

    .line 15
    const-string v3, "getUUIDMethod3 uuid:{?}"

    .line 17
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lf30;->r()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v0, v1, v2

    .line 11
    const-string v2, "DeviceIdMethods"

    .line 13
    const-string v3, "getUUIDMethod4 imei={?}"

    .line 15
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    return-object v0
.end method
