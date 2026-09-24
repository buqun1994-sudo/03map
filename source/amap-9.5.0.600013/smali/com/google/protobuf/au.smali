.class final Lcom/google/protobuf/au;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/au$a;,
        Lcom/google/protobuf/au$b;
    }
.end annotation


# static fields
.field static final a:J

.field static final b:Z

.field private static final c:Ljava/util/logging/Logger;

.field private static final d:Lsun/misc/Unsafe;

.field private static final e:Lcom/google/protobuf/au$b;

.field private static final f:Z

.field private static final g:Z

.field private static final h:J

.field private static final i:J

.field private static final j:J

.field private static final k:J

.field private static final l:J

.field private static final m:J

.field private static final n:J

.field private static final o:J

.field private static final p:J

.field private static final q:J

.field private static final r:J

.field private static final s:J

.field private static final t:J

.field private static final u:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Lcom/google/protobuf/au;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/google/protobuf/au;->c:Ljava/util/logging/Logger;

    .line 13
    invoke-static {}, Lcom/google/protobuf/au;->c()Lsun/misc/Unsafe;

    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/google/protobuf/au;->d:Lsun/misc/Unsafe;

    .line 19
    invoke-static {}, Lcom/google/protobuf/au;->d()Lcom/google/protobuf/au$b;

    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/google/protobuf/au;->e:Lcom/google/protobuf/au$b;

    .line 25
    invoke-static {}, Lcom/google/protobuf/au;->f()Z

    .line 28
    move-result v0

    .line 29
    sput-boolean v0, Lcom/google/protobuf/au;->f:Z

    .line 31
    invoke-static {}, Lcom/google/protobuf/au;->e()Z

    .line 34
    move-result v0

    .line 35
    sput-boolean v0, Lcom/google/protobuf/au;->g:Z

    .line 37
    const-class v0, [B

    .line 39
    invoke-static {v0}, Lcom/google/protobuf/au;->b(Ljava/lang/Class;)I

    .line 42
    move-result v0

    .line 43
    int-to-long v0, v0

    .line 44
    sput-wide v0, Lcom/google/protobuf/au;->a:J

    .line 46
    const-class v2, [Z

    .line 48
    invoke-static {v2}, Lcom/google/protobuf/au;->b(Ljava/lang/Class;)I

    .line 51
    move-result v3

    .line 52
    int-to-long v3, v3

    .line 53
    sput-wide v3, Lcom/google/protobuf/au;->h:J

    .line 55
    invoke-static {v2}, Lcom/google/protobuf/au;->c(Ljava/lang/Class;)I

    .line 58
    move-result v2

    .line 59
    int-to-long v2, v2

    .line 60
    sput-wide v2, Lcom/google/protobuf/au;->i:J

    .line 62
    const-class v2, [I

    .line 64
    invoke-static {v2}, Lcom/google/protobuf/au;->b(Ljava/lang/Class;)I

    .line 67
    move-result v3

    .line 68
    int-to-long v3, v3

    .line 69
    sput-wide v3, Lcom/google/protobuf/au;->j:J

    .line 71
    invoke-static {v2}, Lcom/google/protobuf/au;->c(Ljava/lang/Class;)I

    .line 74
    move-result v2

    .line 75
    int-to-long v2, v2

    .line 76
    sput-wide v2, Lcom/google/protobuf/au;->k:J

    .line 78
    const-class v2, [J

    .line 80
    invoke-static {v2}, Lcom/google/protobuf/au;->b(Ljava/lang/Class;)I

    .line 83
    move-result v3

    .line 84
    int-to-long v3, v3

    .line 85
    sput-wide v3, Lcom/google/protobuf/au;->l:J

    .line 87
    invoke-static {v2}, Lcom/google/protobuf/au;->c(Ljava/lang/Class;)I

    .line 90
    move-result v2

    .line 91
    int-to-long v2, v2

    .line 92
    sput-wide v2, Lcom/google/protobuf/au;->m:J

    .line 94
    const-class v2, [F

    .line 96
    invoke-static {v2}, Lcom/google/protobuf/au;->b(Ljava/lang/Class;)I

    .line 99
    move-result v3

    .line 100
    int-to-long v3, v3

    .line 101
    sput-wide v3, Lcom/google/protobuf/au;->n:J

    .line 103
    invoke-static {v2}, Lcom/google/protobuf/au;->c(Ljava/lang/Class;)I

    .line 106
    move-result v2

    .line 107
    int-to-long v2, v2

    .line 108
    sput-wide v2, Lcom/google/protobuf/au;->o:J

    .line 110
    const-class v2, [D

    .line 112
    invoke-static {v2}, Lcom/google/protobuf/au;->b(Ljava/lang/Class;)I

    .line 115
    move-result v3

    .line 116
    int-to-long v3, v3

    .line 117
    sput-wide v3, Lcom/google/protobuf/au;->p:J

    .line 119
    invoke-static {v2}, Lcom/google/protobuf/au;->c(Ljava/lang/Class;)I

    .line 122
    move-result v2

    .line 123
    int-to-long v2, v2

    .line 124
    sput-wide v2, Lcom/google/protobuf/au;->q:J

    .line 126
    const-class v2, [Ljava/lang/Object;

    .line 128
    invoke-static {v2}, Lcom/google/protobuf/au;->b(Ljava/lang/Class;)I

    .line 131
    move-result v3

    .line 132
    int-to-long v3, v3

    .line 133
    sput-wide v3, Lcom/google/protobuf/au;->r:J

    .line 135
    invoke-static {v2}, Lcom/google/protobuf/au;->c(Ljava/lang/Class;)I

    .line 138
    move-result v2

    .line 139
    int-to-long v2, v2

    .line 140
    sput-wide v2, Lcom/google/protobuf/au;->s:J

    .line 142
    invoke-static {}, Lcom/google/protobuf/au;->g()Ljava/lang/reflect/Field;

    .line 145
    move-result-object v2

    .line 146
    invoke-static {v2}, Lcom/google/protobuf/au;->b(Ljava/lang/reflect/Field;)J

    .line 149
    move-result-wide v2

    .line 150
    sput-wide v2, Lcom/google/protobuf/au;->t:J

    .line 152
    const-wide/16 v2, 0x7

    .line 154
    and-long/2addr v0, v2

    .line 155
    long-to-int v1, v0

    .line 156
    sput v1, Lcom/google/protobuf/au;->u:I

    .line 158
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 161
    move-result-object v0

    .line 162
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 164
    if-ne v0, v1, :cond_0

    .line 166
    const/4 v0, 0x1

    .line 167
    goto :goto_0

    .line 168
    :cond_0
    const/4 v0, 0x0

    .line 169
    :goto_0
    sput-boolean v0, Lcom/google/protobuf/au;->b:Z

    .line 171
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)B
    .locals 1

    .line 16
    sget-object v0, Lcom/google/protobuf/au;->e:Lcom/google/protobuf/au$b;

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/au$b;->a(J)B

    move-result p0

    return p0
.end method

.method public static a([BJ)B
    .locals 3

    .line 12
    sget-object v0, Lcom/google/protobuf/au;->e:Lcom/google/protobuf/au$b;

    sget-wide v1, Lcom/google/protobuf/au;->a:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/protobuf/au$b;->a(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/Object;J)I
    .locals 1

    .line 5
    sget-object v0, Lcom/google/protobuf/au;->e:Lcom/google/protobuf/au$b;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/au$b;->e(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/reflect/Field;)J
    .locals 2

    .line 4
    sget-object v0, Lcom/google/protobuf/au;->e:Lcom/google/protobuf/au$b;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/au$b;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Ljava/nio/ByteBuffer;)J
    .locals 3

    .line 18
    sget-object v0, Lcom/google/protobuf/au;->e:Lcom/google/protobuf/au$b;

    sget-wide v1, Lcom/google/protobuf/au;->t:J

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/protobuf/au$b;->f(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2
    :try_start_0
    sget-object v0, Lcom/google/protobuf/au;->d:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 19
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static a(JB)V
    .locals 1

    .line 17
    sget-object v0, Lcom/google/protobuf/au;->e:Lcom/google/protobuf/au$b;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/au$b;->a(JB)V

    return-void
.end method

.method public static a(J[BJJ)V
    .locals 8

    .line 15
    sget-object v0, Lcom/google/protobuf/au;->e:Lcom/google/protobuf/au$b;

    move-wide v1, p0

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/google/protobuf/au$b;->a(J[BJJ)V

    return-void
.end method

.method public static a(Ljava/lang/Object;JD)V
    .locals 6

    .line 10
    sget-object v0, Lcom/google/protobuf/au;->e:Lcom/google/protobuf/au$b;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/au$b;->a(Ljava/lang/Object;JD)V

    return-void
.end method

.method public static a(Ljava/lang/Object;JF)V
    .locals 1

    .line 9
    sget-object v0, Lcom/google/protobuf/au;->e:Lcom/google/protobuf/au$b;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/protobuf/au$b;->a(Ljava/lang/Object;JF)V

    return-void
.end method

.method public static a(Ljava/lang/Object;JI)V
    .locals 1

    .line 6
    sget-object v0, Lcom/google/protobuf/au;->e:Lcom/google/protobuf/au$b;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/protobuf/au$b;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static a(Ljava/lang/Object;JJ)V
    .locals 6

    .line 7
    sget-object v0, Lcom/google/protobuf/au;->e:Lcom/google/protobuf/au$b;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/au$b;->a(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public static a(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    .line 11
    sget-object v0, Lcom/google/protobuf/au;->e:Lcom/google/protobuf/au$b;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/protobuf/au$b;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/lang/Object;JZ)V
    .locals 1

    .line 8
    sget-object v0, Lcom/google/protobuf/au;->e:Lcom/google/protobuf/au$b;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/protobuf/au$b;->a(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public static a([BJB)V
    .locals 3

    .line 13
    sget-object v0, Lcom/google/protobuf/au;->e:Lcom/google/protobuf/au$b;

    sget-wide v1, Lcom/google/protobuf/au;->a:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/google/protobuf/au$b;->a(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static a([BJJJ)V
    .locals 8

    .line 14
    sget-object v0, Lcom/google/protobuf/au;->e:Lcom/google/protobuf/au$b;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/google/protobuf/au$b;->a([BJJJ)V

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/au;->g:Z

    return v0
.end method

.method private static b(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 2
    sget-boolean v0, Lcom/google/protobuf/au;->g:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/protobuf/au;->e:Lcom/google/protobuf/au$b;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/au$b;->a(Ljava/lang/Class;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static b(J)J
    .locals 1

    .line 4
    sget-object v0, Lcom/google/protobuf/au;->e:Lcom/google/protobuf/au$b;

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/au$b;->b(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static b(Ljava/lang/Object;J)J
    .locals 1

    .line 3
    sget-object v0, Lcom/google/protobuf/au;->e:Lcom/google/protobuf/au$b;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/au$b;->f(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static b(Ljava/lang/reflect/Field;)J
    .locals 2

    if-eqz p0, :cond_1

    .line 5
    sget-object v0, Lcom/google/protobuf/au;->e:Lcom/google/protobuf/au$b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/google/protobuf/au$b;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    :goto_1
    return-wide v0
.end method

.method public static b()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/au;->f:Z

    return v0
.end method

.method private static c(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/google/protobuf/au;->g:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/protobuf/au;->e:Lcom/google/protobuf/au$b;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/au$b;->b(Ljava/lang/Class;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static c()Lsun/misc/Unsafe;
    .locals 1

    .line 3
    :try_start_0
    new-instance v0, Lcom/google/protobuf/au$1;

    invoke-direct {v0}, Lcom/google/protobuf/au$1;-><init>()V

    .line 4
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static c(Ljava/lang/Object;J)Z
    .locals 1

    .line 2
    sget-object v0, Lcom/google/protobuf/au;->e:Lcom/google/protobuf/au$b;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/au$b;->b(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/Object;J)F
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/au;->e:Lcom/google/protobuf/au$b;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/au$b;->c(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method private static d()Lcom/google/protobuf/au$b;
    .locals 2

    .line 2
    sget-object v0, Lcom/google/protobuf/au;->d:Lsun/misc/Unsafe;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Lcom/google/protobuf/au$a;

    invoke-direct {v1, v0}, Lcom/google/protobuf/au$a;-><init>(Lsun/misc/Unsafe;)V

    return-object v1
.end method

.method public static e(Ljava/lang/Object;J)D
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/au;->e:Lcom/google/protobuf/au$b;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/au$b;->d(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method private static e()Z
    .locals 10

    .line 2
    const-class v0, Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    sget-object v2, Lcom/google/protobuf/au;->d:Lsun/misc/Unsafe;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "objectFieldOffset"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    .line 4
    const-class v7, Ljava/lang/reflect/Field;

    aput-object v7, v6, v3

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v4, "arrayBaseOffset"

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v0, v6, v3

    .line 5
    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v4, "arrayIndexScale"

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v0, v6, v3

    .line 6
    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "getInt"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Class;

    aput-object v1, v6, v3

    .line 7
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    invoke-virtual {v2, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "putInt"

    const/4 v6, 0x3

    new-array v8, v6, [Ljava/lang/Class;

    aput-object v1, v8, v3

    aput-object v7, v8, v5

    .line 8
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    invoke-virtual {v2, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "getLong"

    new-array v8, v4, [Ljava/lang/Class;

    aput-object v1, v8, v3

    aput-object v7, v8, v5

    .line 9
    invoke-virtual {v2, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "putLong"

    new-array v8, v6, [Ljava/lang/Class;

    aput-object v1, v8, v3

    aput-object v7, v8, v5

    aput-object v7, v8, v4

    .line 10
    invoke-virtual {v2, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "getObject"

    new-array v8, v4, [Ljava/lang/Class;

    aput-object v1, v8, v3

    aput-object v7, v8, v5

    .line 11
    invoke-virtual {v2, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "putObject"

    new-array v8, v6, [Ljava/lang/Class;

    aput-object v1, v8, v3

    aput-object v7, v8, v5

    aput-object v1, v8, v4

    .line 12
    invoke-virtual {v2, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "getByte"

    new-array v8, v4, [Ljava/lang/Class;

    aput-object v1, v8, v3

    aput-object v7, v8, v5

    .line 13
    invoke-virtual {v2, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "putByte"

    new-array v8, v6, [Ljava/lang/Class;

    aput-object v1, v8, v3

    aput-object v7, v8, v5

    .line 14
    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    invoke-virtual {v2, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "getBoolean"

    new-array v8, v4, [Ljava/lang/Class;

    aput-object v1, v8, v3

    aput-object v7, v8, v5

    .line 15
    invoke-virtual {v2, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "putBoolean"

    new-array v8, v6, [Ljava/lang/Class;

    aput-object v1, v8, v3

    aput-object v7, v8, v5

    .line 16
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    invoke-virtual {v2, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "getFloat"

    new-array v8, v4, [Ljava/lang/Class;

    aput-object v1, v8, v3

    aput-object v7, v8, v5

    .line 17
    invoke-virtual {v2, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "putFloat"

    new-array v8, v6, [Ljava/lang/Class;

    aput-object v1, v8, v3

    aput-object v7, v8, v5

    .line 18
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    invoke-virtual {v2, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "getDouble"

    new-array v8, v4, [Ljava/lang/Class;

    aput-object v1, v8, v3

    aput-object v7, v8, v5

    .line 19
    invoke-virtual {v2, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "putDouble"

    new-array v6, v6, [Ljava/lang/Class;

    aput-object v1, v6, v3

    aput-object v7, v6, v5

    .line 20
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v1, v6, v4

    invoke-virtual {v2, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v5

    :catchall_0
    move-exception v0

    .line 21
    sget-object v1, Lcom/google/protobuf/au;->c:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return v3
.end method

.method public static f(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/au;->e:Lcom/google/protobuf/au$b;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/au$b;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static f()Z
    .locals 11

    const-string v0, "copyMemory"

    const-string v1, "getLong"

    .line 2
    const-class v2, Ljava/lang/Object;

    sget-object v3, Lcom/google/protobuf/au;->d:Lsun/misc/Unsafe;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "objectFieldOffset"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    .line 4
    const-class v8, Ljava/lang/reflect/Field;

    aput-object v8, v7, v4

    invoke-virtual {v3, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/Class;

    aput-object v2, v7, v4

    .line 5
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v6

    invoke-virtual {v3, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 6
    invoke-static {}, Lcom/google/protobuf/au;->g()Ljava/lang/reflect/Field;

    move-result-object v7

    if-nez v7, :cond_1

    return v4

    :cond_1
    const-string v7, "getByte"

    new-array v9, v6, [Ljava/lang/Class;

    aput-object v8, v9, v4

    .line 7
    invoke-virtual {v3, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v7, "putByte"

    new-array v9, v5, [Ljava/lang/Class;

    aput-object v8, v9, v4

    .line 8
    sget-object v10, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v6

    invoke-virtual {v3, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v7, "getInt"

    new-array v9, v6, [Ljava/lang/Class;

    aput-object v8, v9, v4

    .line 9
    invoke-virtual {v3, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v7, "putInt"

    new-array v9, v5, [Ljava/lang/Class;

    aput-object v8, v9, v4

    .line 10
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v6

    invoke-virtual {v3, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v8, v7, v4

    .line 11
    invoke-virtual {v3, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "putLong"

    new-array v7, v5, [Ljava/lang/Class;

    aput-object v8, v7, v4

    aput-object v8, v7, v6

    .line 12
    invoke-virtual {v3, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v7, v1, [Ljava/lang/Class;

    aput-object v8, v7, v4

    aput-object v8, v7, v6

    aput-object v8, v7, v5

    .line 13
    invoke-virtual {v3, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Class;

    aput-object v2, v7, v4

    aput-object v8, v7, v6

    aput-object v2, v7, v5

    aput-object v8, v7, v1

    const/4 v1, 0x4

    aput-object v8, v7, v1

    .line 14
    invoke-virtual {v3, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v6

    :catchall_0
    move-exception v0

    .line 15
    sget-object v1, Lcom/google/protobuf/au;->c:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return v4
.end method

.method private static g()Ljava/lang/reflect/Field;
    .locals 3

    .line 1
    const-class v0, Ljava/nio/Buffer;

    .line 3
    const-string v1, "address"

    .line 5
    invoke-static {v0, v1}, Lcom/google/protobuf/au;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 14
    move-result-object v1

    .line 15
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 17
    if-ne v1, v2, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    return-object v0
.end method
