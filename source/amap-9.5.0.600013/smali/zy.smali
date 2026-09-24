.class public abstract Lzy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzy$b;,
        Lzy$c;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static b:Ljava/text/SimpleDateFormat;

.field public static c:Z

.field public static d:Lzy$b;

.field public static e:Landroid/content/Context;

.field public static f:Ljava/util/Calendar;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, "/amapauto9/"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lzy;->a:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 30
    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 32
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 35
    sput-object v0, Lzy;->b:Ljava/text/SimpleDateFormat;

    .line 37
    const/4 v0, 0x0

    .line 38
    sput-boolean v0, Lzy;->c:Z

    .line 40
    new-instance v0, Lzy$b;

    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-direct {v0, v1}, Lzy$b;-><init>(Lzy$a;)V

    .line 46
    sput-object v0, Lzy;->d:Lzy$b;

    .line 48
    sput-object v1, Lzy;->f:Ljava/util/Calendar;

    .line 50
    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string v0, "tag_auto"

    .line 3
    invoke-static {v0, p0, p1}, Lzy;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public static synthetic b()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lzy;->e:Landroid/content/Context;

    .line 3
    return-object v0
.end method

.method public static synthetic c(Ljava/lang/StringBuffer;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lzy;->g(Ljava/lang/StringBuffer;J)V

    .line 4
    return-void
.end method

.method public static synthetic d(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lzy;->k(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method public static synthetic e()Lzy$b;
    .locals 1

    .line 1
    sget-object v0, Lzy;->d:Lzy$b;

    .line 3
    return-object v0
.end method

.method public static varargs f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {}, Lzy;->j()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-static {p2}, Lzy;->n([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 10
    move-result-object p2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p2, 0x0

    .line 13
    :goto_0
    sget-boolean v0, Lzy;->c:Z

    .line 15
    if-eqz v0, :cond_1

    .line 17
    invoke-static {}, Lzy$c;->a()Lzy$c;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, p0, p1, p2}, Lzy$c;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    :cond_1
    sget-object v0, Lzy;->d:Lzy$b;

    .line 26
    invoke-virtual {v0}, Lzy$b;->d()Z

    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 32
    invoke-static {}, Lzy$c;->a()Lzy$c;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0, p0, p1, p2}, Lzy$c;->k(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    :cond_2
    return-void
.end method

.method public static g(Ljava/lang/StringBuffer;J)V
    .locals 2

    .line 1
    sget-object v0, Lzy;->f:Ljava/util/Calendar;

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lzy;->f:Ljava/util/Calendar;

    .line 11
    :cond_0
    sget-object v0, Lzy;->f:Ljava/util/Calendar;

    .line 13
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 16
    sget-object p1, Lzy;->f:Ljava/util/Calendar;

    .line 18
    const/4 p2, 0x1

    .line 19
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    .line 22
    move-result p1

    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 26
    const-string p1, "-"

    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    sget-object v0, Lzy;->f:Ljava/util/Calendar;

    .line 33
    const/4 v1, 0x2

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 37
    move-result v0

    .line 38
    add-int/2addr v0, p2

    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 42
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    sget-object p1, Lzy;->f:Ljava/util/Calendar;

    .line 47
    const/4 p2, 0x5

    .line 48
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    .line 51
    move-result p1

    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 55
    const-string p1, " "

    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    sget-object p2, Lzy;->f:Ljava/util/Calendar;

    .line 62
    const/16 v0, 0xb

    .line 64
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 67
    move-result p2

    .line 68
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 71
    const-string p2, ":"

    .line 73
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    sget-object v0, Lzy;->f:Ljava/util/Calendar;

    .line 78
    const/16 v1, 0xc

    .line 80
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 83
    move-result v0

    .line 84
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 87
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    sget-object p2, Lzy;->f:Ljava/util/Calendar;

    .line 92
    const/16 v0, 0xd

    .line 94
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 97
    move-result p2

    .line 98
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 101
    const-string p2, "."

    .line 103
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    sget-object p2, Lzy;->f:Ljava/util/Calendar;

    .line 108
    const/16 v0, 0xe

    .line 110
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 113
    move-result p2

    .line 114
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 117
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    return-void
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    sget-object v0, Lzy;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v0, "/Log/autolog/"

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static i(Landroid/content/Context;)V
    .locals 0

    .line 1
    sput-object p0, Lzy;->e:Landroid/content/Context;

    .line 3
    return-void
.end method

.method public static j()Z
    .locals 1

    .line 1
    sget-boolean v0, Lzy;->c:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    sget-object v0, Lzy;->d:Lzy$b;

    .line 7
    invoke-virtual {v0}, Lzy$b;->d()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method public static varargs k(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V
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

.method public static l(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lzy;->c:Z

    .line 3
    return-void
.end method

.method public static m(Z)V
    .locals 1

    .line 1
    sget-object v0, Lzy;->d:Lzy$b;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    sput-boolean p0, Lzy$b;->j:Z

    .line 7
    :cond_0
    return-void
.end method

.method public static varargs n([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6

    .line 1
    if-eqz p0, :cond_0

    .line 3
    array-length v0, p0

    .line 4
    if-lez v0, :cond_0

    .line 6
    array-length v0, p0

    .line 7
    new-array v0, v0, [Ljava/lang/Object;

    .line 9
    array-length v1, p0

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_1

    .line 14
    aget-object v4, p0, v2

    .line 16
    add-int/lit8 v5, v3, 0x1

    .line 18
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    move-result-object v4

    .line 22
    aput-object v4, v0, v3

    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 26
    move v3, v5

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :cond_1
    return-object v0
.end method
