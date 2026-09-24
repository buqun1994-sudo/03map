.class public abstract Ldz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldz$a;,
        Ldz$b;
    }
.end annotation


# static fields
.field public static a:Ljava/text/SimpleDateFormat;

.field public static b:Z

.field public static c:Ldz$b;

.field public static d:Ljava/util/Calendar;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 3
    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Ldz;->a:Ljava/text/SimpleDateFormat;

    .line 10
    const/4 v0, 0x0

    .line 11
    sput-boolean v0, Ldz;->b:Z

    .line 13
    new-instance v0, Ldz$b;

    .line 15
    invoke-direct {v0}, Ldz$b;-><init>()V

    .line 18
    sput-object v0, Ldz;->c:Ldz$b;

    .line 20
    const/4 v0, 0x0

    .line 21
    sput-object v0, Ldz;->d:Ljava/util/Calendar;

    .line 23
    return-void
.end method

.method public static synthetic a()Z
    .locals 1

    .line 1
    sget-boolean v0, Ldz;->b:Z

    .line 3
    return v0
.end method

.method public static synthetic b(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Ldz;->h(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method public static synthetic c()Ldz$b;
    .locals 1

    .line 1
    sget-object v0, Ldz;->c:Ldz$b;

    .line 3
    return-object v0
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-boolean v0, Ldz;->b:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Ldz$a;->g()Ldz$a;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p0, p1, p2}, Ldz$a;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    :cond_0
    sget-boolean v0, Ldz;->b:Z

    .line 14
    if-eqz v0, :cond_1

    .line 16
    invoke-static {}, Ldz$a;->g()Ldz$a;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p0, p1, p2}, Ldz$a;->k(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    :cond_1
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-boolean v0, Ldz;->b:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Ldz$a;->g()Ldz$a;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p0, p1, p2, p3}, Ldz$a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 12
    :cond_0
    sget-boolean p2, Ldz;->b:Z

    .line 14
    if-eqz p2, :cond_1

    .line 16
    invoke-static {}, Ldz$a;->g()Ldz$a;

    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p2, p0, p1, p3}, Ldz$a;->k(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    :cond_1
    return-void
.end method

.method public static f()Z
    .locals 1

    .line 1
    sget-boolean v0, Ldz;->b:Z

    .line 3
    return v0
.end method

.method public static g(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Ldz;->i(Z)V

    .line 4
    return-void
.end method

.method public static varargs h(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    if-nez p2, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    return-void

    .line 10
    :cond_1
    const-string v0, "\\{\\?\\}"

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    array-length v0, p1

    .line 17
    array-length v1, p2

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_0
    if-ge v1, v0, :cond_2

    .line 25
    aget-object v2, p2, v1

    .line 27
    aget-object v3, p1, v1

    .line 29
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    :goto_1
    array-length p2, p1

    .line 39
    if-ge v0, p2, :cond_3

    .line 41
    aget-object p2, p1, v0

    .line 43
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    return-void
.end method

.method public static i(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Ldz;->b:Z

    .line 3
    sget-object p0, Ldz;->c:Ldz$b;

    .line 5
    invoke-virtual {p0}, Ldz$b;->c()V

    .line 8
    return-void
.end method
