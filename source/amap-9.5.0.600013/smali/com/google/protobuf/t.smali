.class final Lcom/google/protobuf/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/ao;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/t$a;
    }
.end annotation


# static fields
.field private static final b:Lcom/google/protobuf/y;


# instance fields
.field private final a:Lcom/google/protobuf/y;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/t$1;

    .line 3
    invoke-direct {v0}, Lcom/google/protobuf/t$1;-><init>()V

    .line 6
    sput-object v0, Lcom/google/protobuf/t;->b:Lcom/google/protobuf/y;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/t;->a()Lcom/google/protobuf/y;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/t;-><init>(Lcom/google/protobuf/y;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/y;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    .line 3
    invoke-static {p1, v0}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/y;

    iput-object p1, p0, Lcom/google/protobuf/t;->a:Lcom/google/protobuf/y;

    return-void
.end method

.method private static a(Ljava/lang/Class;Lcom/google/protobuf/x;)Lcom/google/protobuf/an;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/protobuf/x;",
            ")",
            "Lcom/google/protobuf/an<",
            "TT;>;"
        }
    .end annotation

    .line 14
    const-class v0, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    invoke-static {p1}, Lcom/google/protobuf/t;->a(Lcom/google/protobuf/x;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-static {}, Lcom/google/protobuf/ae;->b()Lcom/google/protobuf/ac;

    move-result-object v3

    .line 17
    invoke-static {}, Lcom/google/protobuf/r;->b()Lcom/google/protobuf/r;

    move-result-object v4

    .line 18
    invoke-static {}, Lcom/google/protobuf/ap;->c()Lcom/google/protobuf/as;

    move-result-object v5

    .line 19
    invoke-static {}, Lcom/google/protobuf/m;->a()Lcom/google/protobuf/k;

    move-result-object v6

    .line 20
    invoke-static {}, Lcom/google/protobuf/w;->b()Lcom/google/protobuf/u;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    .line 21
    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/aa;->a(Ljava/lang/Class;Lcom/google/protobuf/x;Lcom/google/protobuf/ac;Lcom/google/protobuf/r;Lcom/google/protobuf/as;Lcom/google/protobuf/k;Lcom/google/protobuf/u;)Lcom/google/protobuf/aa;

    move-result-object p0

    goto :goto_0

    .line 22
    :cond_0
    invoke-static {}, Lcom/google/protobuf/ae;->b()Lcom/google/protobuf/ac;

    move-result-object v2

    .line 23
    invoke-static {}, Lcom/google/protobuf/r;->b()Lcom/google/protobuf/r;

    move-result-object v3

    .line 24
    invoke-static {}, Lcom/google/protobuf/ap;->c()Lcom/google/protobuf/as;

    move-result-object v4

    const/4 v5, 0x0

    .line 25
    invoke-static {}, Lcom/google/protobuf/w;->b()Lcom/google/protobuf/u;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    .line 26
    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/aa;->a(Ljava/lang/Class;Lcom/google/protobuf/x;Lcom/google/protobuf/ac;Lcom/google/protobuf/r;Lcom/google/protobuf/as;Lcom/google/protobuf/k;Lcom/google/protobuf/u;)Lcom/google/protobuf/aa;

    move-result-object p0

    :goto_0
    return-object p0

    .line 27
    :cond_1
    invoke-static {p1}, Lcom/google/protobuf/t;->a(Lcom/google/protobuf/x;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28
    invoke-static {}, Lcom/google/protobuf/ae;->a()Lcom/google/protobuf/ac;

    move-result-object v3

    .line 29
    invoke-static {}, Lcom/google/protobuf/r;->a()Lcom/google/protobuf/r;

    move-result-object v4

    .line 30
    invoke-static {}, Lcom/google/protobuf/ap;->a()Lcom/google/protobuf/as;

    move-result-object v5

    .line 31
    invoke-static {}, Lcom/google/protobuf/m;->b()Lcom/google/protobuf/k;

    move-result-object v6

    .line 32
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/u;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    .line 33
    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/aa;->a(Ljava/lang/Class;Lcom/google/protobuf/x;Lcom/google/protobuf/ac;Lcom/google/protobuf/r;Lcom/google/protobuf/as;Lcom/google/protobuf/k;Lcom/google/protobuf/u;)Lcom/google/protobuf/aa;

    move-result-object p0

    goto :goto_1

    .line 34
    :cond_2
    invoke-static {}, Lcom/google/protobuf/ae;->a()Lcom/google/protobuf/ac;

    move-result-object v2

    .line 35
    invoke-static {}, Lcom/google/protobuf/r;->a()Lcom/google/protobuf/r;

    move-result-object v3

    .line 36
    invoke-static {}, Lcom/google/protobuf/ap;->b()Lcom/google/protobuf/as;

    move-result-object v4

    const/4 v5, 0x0

    .line 37
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/u;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    .line 38
    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/aa;->a(Ljava/lang/Class;Lcom/google/protobuf/x;Lcom/google/protobuf/ac;Lcom/google/protobuf/r;Lcom/google/protobuf/as;Lcom/google/protobuf/k;Lcom/google/protobuf/u;)Lcom/google/protobuf/aa;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private static a()Lcom/google/protobuf/y;
    .locals 4

    .line 40
    new-instance v0, Lcom/google/protobuf/t$a;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/protobuf/y;

    const/4 v2, 0x0

    .line 41
    invoke-static {}, Lcom/google/protobuf/o;->a()Lcom/google/protobuf/o;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/google/protobuf/t;->b()Lcom/google/protobuf/y;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/google/protobuf/t$a;-><init>([Lcom/google/protobuf/y;)V

    return-object v0
.end method

.method private static a(Lcom/google/protobuf/x;)Z
    .locals 1

    .line 39
    invoke-interface {p0}, Lcom/google/protobuf/x;->a()Lcom/google/protobuf/ProtoSyntax;

    move-result-object p0

    sget-object v0, Lcom/google/protobuf/ProtoSyntax;->PROTO2:Lcom/google/protobuf/ProtoSyntax;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static b()Lcom/google/protobuf/y;
    .locals 4

    .line 1
    :try_start_0
    const-string v0, "com.google.protobuf.DescriptorMessageInfoFactory"

    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getInstance"

    .line 9
    const/4 v2, 0x0

    .line 10
    new-array v3, v2, [Ljava/lang/Class;

    .line 12
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 15
    move-result-object v0

    .line 16
    new-array v1, v2, [Ljava/lang/Object;

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/google/protobuf/y;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    return-object v0

    .line 26
    :catch_0
    sget-object v0, Lcom/google/protobuf/t;->b:Lcom/google/protobuf/y;

    .line 28
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/google/protobuf/an;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/protobuf/an<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/ap;->a(Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/t;->a:Lcom/google/protobuf/y;

    invoke-interface {v0, p1}, Lcom/google/protobuf/y;->b(Ljava/lang/Class;)Lcom/google/protobuf/x;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lcom/google/protobuf/x;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    const-class v1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {}, Lcom/google/protobuf/ap;->c()Lcom/google/protobuf/as;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/google/protobuf/m;->a()Lcom/google/protobuf/k;

    move-result-object v1

    .line 7
    invoke-interface {v0}, Lcom/google/protobuf/x;->c()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    .line 8
    invoke-static {p1, v1, v0}, Lcom/google/protobuf/ab;->a(Lcom/google/protobuf/as;Lcom/google/protobuf/k;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/ab;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-static {}, Lcom/google/protobuf/ap;->a()Lcom/google/protobuf/as;

    move-result-object p1

    .line 10
    invoke-static {}, Lcom/google/protobuf/m;->b()Lcom/google/protobuf/k;

    move-result-object v1

    .line 11
    invoke-interface {v0}, Lcom/google/protobuf/x;->c()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    .line 12
    invoke-static {p1, v1, v0}, Lcom/google/protobuf/ab;->a(Lcom/google/protobuf/as;Lcom/google/protobuf/k;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/ab;

    move-result-object p1

    return-object p1

    .line 13
    :cond_1
    invoke-static {p1, v0}, Lcom/google/protobuf/t;->a(Ljava/lang/Class;Lcom/google/protobuf/x;)Lcom/google/protobuf/an;

    move-result-object p1

    return-object p1
.end method
