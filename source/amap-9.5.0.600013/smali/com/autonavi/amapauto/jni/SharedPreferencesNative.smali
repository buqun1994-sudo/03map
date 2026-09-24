.class public Lcom/autonavi/amapauto/jni/SharedPreferencesNative;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String; = "SharedPreferencesNative"

.field private static util:Lsd0;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contains(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/jni/SharedPreferencesNative;->util:Lsd0;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p0}, Lsd0;->b(Ljava/lang/String;)Z

    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/jni/SharedPreferencesNative;->util:Lsd0;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p0, p1}, Lsd0;->c(Ljava/lang/String;Z)Z

    .line 8
    move-result v0

    .line 9
    sget-object v1, Lcom/autonavi/amapauto/jni/SharedPreferencesNative;->TAG:Ljava/lang/String;

    .line 11
    const/4 v2, 0x3

    .line 12
    new-array v2, v2, [Ljava/lang/Object;

    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object p0, v2, v3

    .line 17
    const/4 p0, 0x1

    .line 18
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    move-result-object p1

    .line 22
    aput-object p1, v2, p0

    .line 24
    const/4 p0, 0x2

    .line 25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    move-result-object p1

    .line 29
    aput-object p1, v2, p0

    .line 31
    const-string p0, "getBoolean key={?}, defValue={?}, value={?}"

    .line 33
    invoke-static {v1, p0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    return v0

    .line 37
    :cond_0
    return p1
.end method

.method public static getFloat(Ljava/lang/String;F)F
    .locals 4

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/jni/SharedPreferencesNative;->util:Lsd0;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p0, p1}, Lsd0;->d(Ljava/lang/String;F)F

    .line 8
    move-result v0

    .line 9
    sget-object v1, Lcom/autonavi/amapauto/jni/SharedPreferencesNative;->TAG:Ljava/lang/String;

    .line 11
    const/4 v2, 0x3

    .line 12
    new-array v2, v2, [Ljava/lang/Object;

    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object p0, v2, v3

    .line 17
    const/4 p0, 0x1

    .line 18
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 21
    move-result-object p1

    .line 22
    aput-object p1, v2, p0

    .line 24
    const/4 p0, 0x2

    .line 25
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 28
    move-result-object p1

    .line 29
    aput-object p1, v2, p0

    .line 31
    const-string p0, "getFloat key={?}, defValue={?}, value={?}"

    .line 33
    invoke-static {v1, p0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    return v0

    .line 37
    :cond_0
    return p1
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 4

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/jni/SharedPreferencesNative;->util:Lsd0;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p0, p1}, Lsd0;->e(Ljava/lang/String;I)I

    .line 8
    move-result v0

    .line 9
    sget-object v1, Lcom/autonavi/amapauto/jni/SharedPreferencesNative;->TAG:Ljava/lang/String;

    .line 11
    const/4 v2, 0x3

    .line 12
    new-array v2, v2, [Ljava/lang/Object;

    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object p0, v2, v3

    .line 17
    const/4 p0, 0x1

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object p1

    .line 22
    aput-object p1, v2, p0

    .line 24
    const/4 p0, 0x2

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object p1

    .line 29
    aput-object p1, v2, p0

    .line 31
    const-string p0, "getInt key={?}, defValue={?}, value={?}"

    .line 33
    invoke-static {v1, p0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    return v0

    .line 37
    :cond_0
    return p1
.end method

.method public static getLong(Ljava/lang/String;J)J
    .locals 5

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/jni/SharedPreferencesNative;->util:Lsd0;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p0, p1, p2}, Lsd0;->f(Ljava/lang/String;J)J

    .line 8
    move-result-wide v0

    .line 9
    sget-object v2, Lcom/autonavi/amapauto/jni/SharedPreferencesNative;->TAG:Ljava/lang/String;

    .line 11
    const/4 v3, 0x3

    .line 12
    new-array v3, v3, [Ljava/lang/Object;

    .line 14
    const/4 v4, 0x0

    .line 15
    aput-object p0, v3, v4

    .line 17
    const/4 p0, 0x1

    .line 18
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    move-result-object p1

    .line 22
    aput-object p1, v3, p0

    .line 24
    const/4 p0, 0x2

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    move-result-object p1

    .line 29
    aput-object p1, v3, p0

    .line 31
    const-string p0, "getLong key={?}, defValue={?}, value={?}"

    .line 33
    invoke-static {v2, p0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    return-wide v0

    .line 37
    :cond_0
    return-wide p1
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/jni/SharedPreferencesNative;->util:Lsd0;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p0, p1}, Lsd0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/autonavi/amapauto/jni/SharedPreferencesNative;->TAG:Ljava/lang/String;

    .line 11
    const/4 v2, 0x3

    .line 12
    new-array v2, v2, [Ljava/lang/Object;

    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object p0, v2, v3

    .line 17
    const/4 p0, 0x1

    .line 18
    aput-object p1, v2, p0

    .line 20
    const/4 p0, 0x2

    .line 21
    aput-object v0, v2, p0

    .line 23
    const-string p0, "getString key={?}, defValue={?}, value={?}"

    .line 25
    invoke-static {v1, p0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    return-object v0

    .line 29
    :cond_0
    return-object p1
.end method

.method public static openSharedPreferences(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lsd0;

    .line 3
    invoke-direct {v0, p0}, Lsd0;-><init>(Ljava/lang/String;)V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/jni/SharedPreferencesNative;->util:Lsd0;

    .line 8
    sget-object v0, Lcom/autonavi/amapauto/jni/SharedPreferencesNative;->TAG:Ljava/lang/String;

    .line 10
    const/4 v1, 0x1

    .line 11
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    const/4 v2, 0x0

    .line 14
    aput-object p0, v1, v2

    .line 16
    const-string p0, "openSharedPreferences name={?}"

    .line 18
    invoke-static {v0, p0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    return-void
.end method
