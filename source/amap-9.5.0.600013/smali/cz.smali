.class public abstract Lcz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz$c;,
        Lcz$b;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:Z

.field public static c:Ljava/text/SimpleDateFormat;

.field public static d:Z

.field public static e:Z

.field public static f:Z

.field public static g:Z

.field public static h:Z

.field public static i:Z

.field public static j:Ljava/lang/StringBuilder;

.field public static final k:Lcz$b;

.field public static l:Landroid/content/Context;

.field public static m:I

.field public static n:Lc80;

.field public static o:Ljava/util/Calendar;


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
    sput-object v0, Lcz;->c:Ljava/text/SimpleDateFormat;

    .line 10
    const/4 v0, 0x0

    .line 11
    sput-boolean v0, Lcz;->d:Z

    .line 13
    sput-boolean v0, Lcz;->e:Z

    .line 15
    sput-boolean v0, Lcz;->f:Z

    .line 17
    sput-boolean v0, Lcz;->g:Z

    .line 19
    sput-boolean v0, Lcz;->h:Z

    .line 21
    const/4 v0, 0x1

    .line 22
    sput-boolean v0, Lcz;->i:Z

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    sput-object v0, Lcz;->j:Ljava/lang/StringBuilder;

    .line 31
    new-instance v0, Lcz$b;

    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-direct {v0, v1}, Lcz$b;-><init>(Lcz$a;)V

    .line 37
    sput-object v0, Lcz;->k:Lcz$b;

    .line 39
    const/4 v0, -0x1

    .line 40
    sput v0, Lcz;->m:I

    .line 42
    sput-object v1, Lcz;->o:Ljava/util/Calendar;

    .line 44
    return-void
.end method

.method public static A(Z)V
    .locals 3

    .line 1
    sput-boolean p0, Lcz;->e:Z

    .line 3
    if-eqz p0, :cond_0

    .line 5
    const/4 p0, 0x1

    .line 6
    new-array p0, p0, [Ljava/lang/Object;

    .line 8
    const/4 v0, 0x0

    .line 9
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    aput-object v1, p0, v0

    .line 13
    const-string v0, "LoggerTracer"

    .line 15
    const-string v1, "setIsALCInit:{?}"

    .line 17
    invoke-static {v0, v1, p0}, Lcz;->x(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-static {}, Lvo;->c()Landroid/os/Handler;

    .line 23
    move-result-object p0

    .line 24
    new-instance v0, Lcz$a;

    .line 26
    invoke-direct {v0}, Lcz$a;-><init>()V

    .line 29
    const-wide/16 v1, 0x64

    .line 31
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 34
    :cond_0
    return-void
.end method

.method public static B(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcz;->i:Z

    .line 3
    return-void
.end method

.method public static C(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcz;->h:Z

    .line 3
    return-void
.end method

.method public static D(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcz;->f:Z

    .line 3
    return-void
.end method

.method public static E(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcz;->g:Z

    .line 3
    return-void
.end method

.method public static F(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcz;->d:Z

    .line 3
    invoke-static {p0}, Lf;->p(Z)V

    .line 6
    return-void
.end method

.method public static G(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const-string v1, "{?}"

    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    :goto_0
    if-ltz v2, :cond_0

    .line 16
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    add-int/lit8 v4, v2, 0x3

    .line 25
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 28
    move-result v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 33
    move-result v1

    .line 34
    add-int/lit8 v1, v1, -0x1

    .line 36
    if-ge v4, v1, :cond_1

    .line 38
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_1
    new-array p0, v3, [Ljava/lang/String;

    .line 47
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 50
    move-result-object p0

    .line 51
    check-cast p0, [Ljava/lang/String;

    .line 53
    return-object p0
.end method

.method public static varargs H([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4

    .line 1
    if-eqz p0, :cond_0

    .line 3
    array-length v0, p0

    .line 4
    if-lez v0, :cond_0

    .line 6
    array-length v0, p0

    .line 7
    new-array v1, v0, [Ljava/lang/Object;

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v0, :cond_1

    .line 12
    aget-object v3, p0, v2

    .line 14
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    move-result-object v3

    .line 18
    aput-object v3, v1, v2

    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :cond_1
    return-object v1
.end method

.method public static varargs I(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lse;->isLogOutputToLogcat()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_4

    .line 11
    sget-boolean v0, Lcz;->b:Z

    .line 13
    if-eqz v0, :cond_0

    .line 15
    goto/16 :goto_1

    .line 17
    :cond_0
    sget-object v0, Lcz;->k:Lcz$b;

    .line 19
    invoke-virtual {v0}, Lcz$b;->f()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_5

    .line 25
    sget v0, Lcz;->a:I

    .line 27
    const/4 v1, 0x4

    .line 28
    invoke-static {v0, v1}, Lcz;->s(II)Z

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_3

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    move-result-wide v1

    .line 43
    invoke-static {v0, v1, v2}, Lcz;->n(Ljava/lang/StringBuilder;J)V

    .line 46
    const-string v1, "##"

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, "/"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string p0, ":"

    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string p0, "["

    .line 66
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string p0, "]"

    .line 82
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-static {v0, p1, p2}, Lcz;->z(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    const-string p0, "\r\n"

    .line 90
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 100
    move-result-object p0

    .line 101
    array-length p1, p0

    .line 102
    const/16 p2, 0x400

    .line 104
    const-string v1, "[AMAP]"

    .line 106
    const-string v2, "(1/1/1)[AMAP]_#_"

    .line 108
    if-le p1, p2, :cond_1

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object p0

    .line 114
    const-string p1, "\n"

    .line 116
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 119
    move-result-object p0

    .line 120
    array-length p1, p0

    .line 121
    const/4 p2, 0x0

    .line 122
    :goto_0
    if-ge p2, p1, :cond_2

    .line 124
    aget-object v0, p0, p2

    .line 126
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 129
    move-result-object v0

    .line 130
    invoke-static {v0}, Lyy;->a([B)Ljava/lang/String;

    .line 133
    move-result-object v0

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    .line 136
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object v0

    .line 149
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    add-int/lit8 p2, p2, 0x1

    .line 154
    goto :goto_0

    .line 155
    :cond_1
    invoke-static {p0}, Lyy;->a([B)Ljava/lang/String;

    .line 158
    move-result-object p0

    .line 159
    new-instance p1, Ljava/lang/StringBuilder;

    .line 161
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    move-result-object p0

    .line 174
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_2
    return-void

    .line 178
    :cond_3
    invoke-static {}, Lcz$c;->a()Lcz$c;

    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v0, p0, p1, p2}, Lcz$c;->p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    goto :goto_2

    .line 186
    :cond_4
    :goto_1
    sget-boolean v0, Lcz;->d:Z

    .line 188
    if-nez v0, :cond_5

    .line 190
    invoke-static {}, Lcz$c;->a()Lcz$c;

    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v0, p0, p1, p2}, Lcz$c;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    :cond_5
    :goto_2
    return-void
.end method

.method public static varargs J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .line 1
    invoke-static {}, Lcz;->v()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-static {p3}, Lcz;->H([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 10
    move-result-object p3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p3, 0x0

    .line 13
    :goto_0
    move-object v5, p3

    .line 14
    sget-boolean p3, Lcz;->d:Z

    .line 16
    if-eqz p3, :cond_1

    .line 18
    invoke-static {}, Lcz$c;->a()Lcz$c;

    .line 21
    move-result-object p3

    .line 22
    invoke-virtual {p3, p1, p2, v5}, Lcz$c;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    :cond_1
    sget-boolean p3, Lcz;->e:Z

    .line 27
    if-eqz p3, :cond_4

    .line 29
    sget-boolean p3, Lcz;->h:Z

    .line 31
    if-nez p3, :cond_3

    .line 33
    sget-boolean p3, Lcz;->f:Z

    .line 35
    if-eqz p3, :cond_2

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    invoke-static {p1, p2, v5}, Lcz;->I(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    goto :goto_2

    .line 42
    :cond_3
    :goto_1
    invoke-static {}, Lcz$c;->a()Lcz$c;

    .line 45
    move-result-object v0

    .line 46
    const/4 v2, 0x1

    .line 47
    move-object v1, p0

    .line 48
    move-object v3, p1

    .line 49
    move-object v4, p2

    .line 50
    invoke-virtual/range {v0 .. v5}, Lcz$c;->q(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    goto :goto_2

    .line 54
    :cond_4
    invoke-static {p1, p2, v5}, Lcz;->I(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    :goto_2
    return-void
.end method

.method public static varargs K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 6

    .line 1
    const-string v0, ""

    .line 3
    if-nez p2, :cond_0

    .line 5
    move-object p2, v0

    .line 6
    :cond_0
    invoke-static {}, Lcz;->v()Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_2

    .line 12
    invoke-static {p4}, Lcz;->H([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 15
    move-result-object p4

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    if-nez p3, :cond_1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p2

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    const/4 p4, 0x0

    .line 40
    :goto_1
    move-object v4, p2

    .line 41
    move-object v5, p4

    .line 42
    sget-boolean p2, Lcz;->d:Z

    .line 44
    if-eqz p2, :cond_3

    .line 46
    invoke-static {}, Lcz$c;->a()Lcz$c;

    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p2, p1, v4, v5}, Lcz$c;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    :cond_3
    sget-boolean p2, Lcz;->e:Z

    .line 55
    if-eqz p2, :cond_6

    .line 57
    sget-boolean p2, Lcz;->h:Z

    .line 59
    if-nez p2, :cond_5

    .line 61
    sget-boolean p2, Lcz;->f:Z

    .line 63
    if-eqz p2, :cond_4

    .line 65
    goto :goto_2

    .line 66
    :cond_4
    invoke-static {p1, v4, v5}, Lcz;->I(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    goto :goto_3

    .line 70
    :cond_5
    :goto_2
    invoke-static {}, Lcz$c;->a()Lcz$c;

    .line 73
    move-result-object v0

    .line 74
    const/4 v2, 0x2

    .line 75
    move-object v1, p0

    .line 76
    move-object v3, p1

    .line 77
    invoke-virtual/range {v0 .. v5}, Lcz$c;->q(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    goto :goto_3

    .line 81
    :cond_6
    invoke-static {p1, v4, v5}, Lcz;->I(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    :goto_3
    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string v0, "tag_auto"

    .line 3
    invoke-static {v0, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public static varargs b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string v0, "tag_auto"

    .line 3
    invoke-static {v0, p0, p1, p2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public static synthetic c()Lc80;
    .locals 1

    .line 1
    invoke-static {}, Lcz;->r()Lc80;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic d()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcz;->l:Landroid/content/Context;

    .line 3
    return-object v0
.end method

.method public static synthetic e(Ljava/lang/StringBuilder;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcz;->n(Ljava/lang/StringBuilder;J)V

    .line 4
    return-void
.end method

.method public static synthetic f(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcz;->z(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method public static synthetic g()Lcz$b;
    .locals 1

    .line 1
    sget-object v0, Lcz;->k:Lcz$b;

    .line 3
    return-object v0
.end method

.method public static synthetic h()I
    .locals 1

    .line 1
    sget v0, Lcz;->a:I

    .line 3
    return v0
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 6

    .line 1
    const-string v0, ""

    .line 3
    if-nez p2, :cond_0

    .line 5
    move-object p2, v0

    .line 6
    :cond_0
    invoke-static {}, Lcz;->v()Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_2

    .line 12
    invoke-static {p4}, Lcz;->H([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 15
    move-result-object p4

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    if-nez p3, :cond_1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p2

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    const/4 p4, 0x0

    .line 40
    :goto_1
    move-object v4, p2

    .line 41
    move-object v5, p4

    .line 42
    sget-boolean p2, Lcz;->d:Z

    .line 44
    if-eqz p2, :cond_3

    .line 46
    invoke-static {}, Lcz$c;->a()Lcz$c;

    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p2, p1, v4, v5}, Lcz$c;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    :cond_3
    sget-boolean p2, Lcz;->e:Z

    .line 55
    if-eqz p2, :cond_6

    .line 57
    sget-boolean p2, Lcz;->h:Z

    .line 59
    if-nez p2, :cond_5

    .line 61
    invoke-static {p0}, Lcz;->o(Ljava/lang/String;)Z

    .line 64
    move-result p2

    .line 65
    if-eqz p2, :cond_4

    .line 67
    goto :goto_2

    .line 68
    :cond_4
    invoke-static {p1, v4, v5}, Lcz;->I(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    goto :goto_3

    .line 72
    :cond_5
    :goto_2
    invoke-static {}, Lcz$c;->a()Lcz$c;

    .line 75
    move-result-object v0

    .line 76
    const/4 v2, 0x2

    .line 77
    move-object v1, p0

    .line 78
    move-object v3, p1

    .line 79
    invoke-virtual/range {v0 .. v5}, Lcz$c;->q(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    goto :goto_3

    .line 83
    :cond_6
    invoke-static {p1, v4, v5}, Lcz;->I(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    :goto_3
    return-void
.end method

.method public static j()V
    .locals 1

    .line 1
    sget-object v0, Lcz;->k:Lcz$b;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0}, Lcz$b;->b(Lcz$b;)V

    .line 8
    :cond_0
    return-void
.end method

.method public static k()Z
    .locals 2

    .line 1
    sget-object v0, Lcz;->l:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lcz;->q(Landroid/content/Context;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/io/File;

    .line 9
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 24
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 27
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 30
    sget-object v0, Lcz;->k:Lcz$b;

    .line 32
    if-eqz v0, :cond_1

    .line 34
    const/4 v1, 0x0

    .line 35
    iput-boolean v1, v0, Lcz$b;->b:Z

    .line 37
    :cond_1
    const/4 v0, 0x1

    .line 38
    return v0
.end method

.method public static varargs l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p0, p1, p2}, Lcz;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    return-void
.end method

.method public static varargs m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p0, p1, p2, p3}, Lcz;->K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 5
    return-void
.end method

.method public static n(Ljava/lang/StringBuilder;J)V
    .locals 2

    .line 1
    sget-object v0, Lcz;->o:Ljava/util/Calendar;

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcz;->o:Ljava/util/Calendar;

    .line 11
    :cond_0
    sget-object v0, Lcz;->o:Ljava/util/Calendar;

    .line 13
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 16
    sget-object p1, Lcz;->o:Ljava/util/Calendar;

    .line 18
    const/4 p2, 0x1

    .line 19
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    .line 22
    move-result p1

    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string p1, "-"

    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    sget-object v0, Lcz;->o:Ljava/util/Calendar;

    .line 33
    const/4 v1, 0x2

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 37
    move-result v0

    .line 38
    add-int/2addr v0, p2

    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    sget-object p1, Lcz;->o:Ljava/util/Calendar;

    .line 47
    const/4 p2, 0x5

    .line 48
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    .line 51
    move-result p1

    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    const-string p1, " "

    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    sget-object p2, Lcz;->o:Ljava/util/Calendar;

    .line 62
    const/16 v0, 0xb

    .line 64
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 67
    move-result p2

    .line 68
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    const-string p2, ":"

    .line 73
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    sget-object v0, Lcz;->o:Ljava/util/Calendar;

    .line 78
    const/16 v1, 0xc

    .line 80
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 83
    move-result v0

    .line 84
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    sget-object p2, Lcz;->o:Ljava/util/Calendar;

    .line 92
    const/16 v0, 0xd

    .line 94
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 97
    move-result p2

    .line 98
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    const-string p2, "."

    .line 103
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    sget-object p2, Lcz;->o:Ljava/util/Calendar;

    .line 108
    const/16 v0, 0xe

    .line 110
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 113
    move-result p2

    .line 114
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    return-void
.end method

.method public static o(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Ls7;->k()Ls7;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-string v0, "isstts"

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_0

    .line 16
    invoke-static {}, Ls7;->k()Ls7;

    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Ls7;->g()Z

    .line 23
    move-result p0

    .line 24
    return p0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method public static p()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcz;->i:Z

    .line 3
    return v0
.end method

.method public static q(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {}, Lr50;->e()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v0, "/autolog/"

    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static declared-synchronized r()Lc80;
    .locals 2

    .line 1
    const-class v0, Lcz;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcz;->n:Lc80;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Lc80;->isShutdown()Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 14
    :cond_0
    new-instance v1, Lc80;

    .line 16
    invoke-direct {v1}, Lc80;-><init>()V

    .line 19
    sput-object v1, Lcz;->n:Lc80;

    .line 21
    :cond_1
    sget-object v1, Lcz;->n:Lc80;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit v0

    .line 24
    return-object v1

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0

    .line 27
    throw v1
.end method

.method public static s(II)Z
    .locals 0

    .line 1
    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static t(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcz;->l:Landroid/content/Context;

    .line 7
    invoke-static {p0}, Lf;->k(Landroid/content/Context;)V

    .line 10
    return-void
.end method

.method public static u(Landroid/content/Context;I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "init flags "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "LoggerTracer"

    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    sput p1, Lcz;->a:I

    .line 25
    invoke-static {}, Lrv;->H()Lrv;

    .line 28
    move-result-object p1

    .line 29
    const-string v0, "IS_LOG_OUTPUT_LOGCAT"

    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {p1, v0, v2}, Lrv;->E(Ljava/lang/String;I)I

    .line 35
    move-result p1

    .line 36
    const/4 v0, 0x1

    .line 37
    if-ne p1, v0, :cond_0

    .line 39
    const/4 v2, 0x1

    .line 40
    :cond_0
    sput-boolean v2, Lcz;->b:Z

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    invoke-static {}, Lr50;->d()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v0, "logcat_not_encode_always.txt"

    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    new-instance v0, Ljava/io/File;

    .line 65
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_1

    .line 74
    sget p1, Lcz;->a:I

    .line 76
    and-int/lit8 p1, p1, -0x5

    .line 78
    sput p1, Lcz;->a:I

    .line 80
    const-string p1, "exists logcat_not_encode_always.txt,flag reset 0"

    .line 82
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_1
    sget p1, Lcz;->a:I

    .line 87
    const/4 v0, 0x3

    .line 88
    invoke-static {p1, v0}, Lcz;->s(II)Z

    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_2

    .line 94
    invoke-static {}, Lcz$c;->a()Lcz$c;

    .line 97
    move-result-object p1

    .line 98
    invoke-static {}, Lcz$c;->a()Lcz$c;

    .line 101
    move-result-object v0

    .line 102
    invoke-static {v0}, Lcz$c;->h(Lcz$c;)Lcz$c$g;

    .line 105
    move-result-object v0

    .line 106
    invoke-static {p1, v0}, Lcz$c;->g(Lcz$c;Lcz$c$g;)Lcz$c$g;

    .line 109
    :cond_2
    invoke-static {p0}, Lcz;->t(Landroid/content/Context;)V

    .line 112
    return-void
.end method

.method public static v()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcz;->d:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    sget-object v0, Lcz;->k:Lcz$b;

    .line 7
    invoke-virtual {v0}, Lcz$b;->f()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 13
    sget-boolean v0, Lcz;->g:Z

    .line 15
    if-nez v0, :cond_1

    .line 17
    sget-boolean v0, Lcz;->f:Z

    .line 19
    if-nez v0, :cond_1

    .line 21
    sget-boolean v0, Lcz;->h:Z

    .line 23
    if-nez v0, :cond_1

    .line 25
    invoke-static {}, Lse;->c()Lse;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lse;->isLogOutputToLogcat()Z

    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 35
    sget-boolean v0, Lcz;->b:Z

    .line 37
    if-eqz v0, :cond_0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 43
    :goto_1
    return v0
.end method

.method public static w()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcz;->d:Z

    .line 3
    return v0
.end method

.method public static varargs x(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {p0, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    sget-boolean v0, Lcz;->d:Z

    .line 6
    if-nez v0, :cond_0

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    invoke-static {v0, p1, p2}, Lcz;->z(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_0
    return-void
.end method

.method public static varargs y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 4
    sget-boolean v0, Lcz;->d:Z

    .line 6
    if-nez v0, :cond_0

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    invoke-static {v0, p1, p3}, Lcz;->z(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    :cond_0
    return-void
.end method

.method public static varargs z(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    if-nez p2, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    return-void

    .line 10
    :cond_1
    invoke-static {p1}, Lcz;->G(Ljava/lang/String;)[Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    array-length v0, p1

    .line 15
    array-length v1, p2

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-ge v1, v0, :cond_2

    .line 23
    aget-object v2, p2, v1

    .line 25
    aget-object v3, p1, v1

    .line 27
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    :goto_1
    array-length p2, p1

    .line 37
    if-ge v0, p2, :cond_3

    .line 39
    aget-object p2, p1, v0

    .line 41
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 46
    goto :goto_1

    .line 47
    :cond_3
    return-void
.end method
