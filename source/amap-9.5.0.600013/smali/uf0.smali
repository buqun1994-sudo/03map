.class public abstract Luf0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/Class;

.field public static b:Ljava/lang/reflect/Method;

.field public static c:Ljava/lang/reflect/Method;

.field public static d:Ljava/lang/reflect/Method;

.field public static e:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Luf0;->c()V

    .line 4
    :try_start_0
    sget-object v0, Luf0;->b:Ljava/lang/reflect/Method;

    .line 6
    sget-object v1, Luf0;->a:Ljava/lang/Class;

    .line 8
    const/4 v2, 0x1

    .line 9
    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    const/4 v3, 0x0

    .line 12
    aput-object p0, v2, v3

    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    const/4 p0, 0x0

    .line 26
    :goto_0
    return-object p0
.end method

.method public static b(Ljava/lang/String;Z)Z
    .locals 4

    .line 1
    invoke-static {}, Luf0;->c()V

    .line 4
    :try_start_0
    sget-object v0, Luf0;->d:Ljava/lang/reflect/Method;

    .line 6
    sget-object v1, Luf0;->a:Ljava/lang/Class;

    .line 8
    const/4 v2, 0x2

    .line 9
    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    const/4 v3, 0x0

    .line 12
    aput-object p0, v2, v3

    .line 14
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    move-result-object p0

    .line 18
    const/4 v3, 0x1

    .line 19
    aput-object p0, v2, v3

    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Ljava/lang/Boolean;

    .line 27
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    :goto_0
    return p1
.end method

.method public static c()V
    .locals 8

    .line 1
    const-class v0, Ljava/lang/String;

    .line 3
    :try_start_0
    sget-object v1, Luf0;->a:Ljava/lang/Class;

    .line 5
    if-nez v1, :cond_0

    .line 7
    const-string v1, "android.os.SystemProperties"

    .line 9
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 12
    move-result-object v1

    .line 13
    sput-object v1, Luf0;->a:Ljava/lang/Class;

    .line 15
    const-string v2, "get"

    .line 17
    const/4 v3, 0x1

    .line 18
    new-array v4, v3, [Ljava/lang/Class;

    .line 20
    const/4 v5, 0x0

    .line 21
    aput-object v0, v4, v5

    .line 23
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 26
    move-result-object v1

    .line 27
    sput-object v1, Luf0;->b:Ljava/lang/reflect/Method;

    .line 29
    sget-object v1, Luf0;->a:Ljava/lang/Class;

    .line 31
    const-string v2, "getInt"

    .line 33
    const/4 v4, 0x2

    .line 34
    new-array v6, v4, [Ljava/lang/Class;

    .line 36
    aput-object v0, v6, v5

    .line 38
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 40
    aput-object v7, v6, v3

    .line 42
    invoke-virtual {v1, v2, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 45
    move-result-object v1

    .line 46
    sput-object v1, Luf0;->c:Ljava/lang/reflect/Method;

    .line 48
    sget-object v1, Luf0;->a:Ljava/lang/Class;

    .line 50
    const-string v2, "getBoolean"

    .line 52
    new-array v6, v4, [Ljava/lang/Class;

    .line 54
    aput-object v0, v6, v5

    .line 56
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 58
    aput-object v7, v6, v3

    .line 60
    invoke-virtual {v1, v2, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 63
    move-result-object v1

    .line 64
    sput-object v1, Luf0;->d:Ljava/lang/reflect/Method;

    .line 66
    sget-object v1, Luf0;->a:Ljava/lang/Class;

    .line 68
    const-string v2, "set"

    .line 70
    new-array v4, v4, [Ljava/lang/Class;

    .line 72
    aput-object v0, v4, v5

    .line 74
    aput-object v0, v4, v3

    .line 76
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 79
    move-result-object v0

    .line 80
    sput-object v0, Luf0;->e:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 87
    :cond_0
    :goto_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Luf0;->c()V

    .line 4
    :try_start_0
    sget-object v0, Luf0;->e:Ljava/lang/reflect/Method;

    .line 6
    sget-object v1, Luf0;->a:Ljava/lang/Class;

    .line 8
    const/4 v2, 0x2

    .line 9
    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    const/4 v3, 0x0

    .line 12
    aput-object p0, v2, v3

    .line 14
    const/4 p0, 0x1

    .line 15
    aput-object p1, v2, p0

    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    :goto_0
    return-void
.end method
