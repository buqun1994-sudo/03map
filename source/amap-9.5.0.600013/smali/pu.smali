.class public Lpu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp90;
.implements Lxe;


# static fields
.field public static a:Lr90;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lpr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lpu;->e(Lpr;)V

    .line 7
    return-void
.end method


# virtual methods
.method public a(Lth;Lk50;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lth;->a()[B

    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 10
    sget-boolean p1, Lxj0;->a:Z

    .line 12
    if-eqz p1, :cond_0

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    const-string v1, "\u63a5\u6536\u5230\u6570\u636e: "

    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string v0, " , \u53c2\u4e0e\u8005CNAME\uff1a "

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p2}, Lk50;->a()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v0, "\u540c\u6b65\u6e90\u6807\u8bc6\u7b26("

    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p2}, Lk50;->b()J

    .line 47
    move-result-wide v0

    .line 48
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    const-string p2, ")"

    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    const/4 p2, 0x0

    .line 61
    new-array p2, p2, [Ljava/lang/Object;

    .line 63
    const-string v0, "InitSession"

    .line 65
    invoke-static {v0, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    :cond_0
    return-void
.end method

.method public b(I)I
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public c(I[Lk50;)V
    .locals 0

    .line 1
    return-void
.end method

.method public d()Z
    .locals 4

    .line 1
    sget-boolean v0, Lxj0;->a:Z

    .line 3
    const-string v1, "InitSession"

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    const-string v0, "onStartSendPackage"

    .line 10
    new-array v3, v2, [Ljava/lang/Object;

    .line 12
    invoke-static {v1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    :cond_0
    sget-object v0, Lpu;->a:Lr90;

    .line 17
    if-eqz v0, :cond_2

    .line 19
    sget-boolean v0, Lxj0;->a:Z

    .line 21
    if-eqz v0, :cond_1

    .line 23
    const-string v0, "onStartSendPackage rtpSession!=null"

    .line 25
    new-array v3, v2, [Ljava/lang/Object;

    .line 27
    invoke-static {v1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    :cond_1
    sget-object v0, Lpu;->a:Lr90;

    .line 32
    invoke-virtual {v0, v2}, Lr90;->m(I)V

    .line 35
    const/4 v0, 0x1

    .line 36
    return v0

    .line 37
    :cond_2
    return v2
.end method

.method public e(Lpr;)V
    .locals 8

    .line 1
    const-string v0, "InitSession.rzc"

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    :try_start_0
    new-instance v3, Ljava/net/DatagramSocket;

    .line 7
    invoke-interface {p1}, Lpr;->b()I

    .line 10
    move-result v4

    .line 11
    invoke-direct {v3, v4}, Ljava/net/DatagramSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 14
    const/4 v4, 0x1

    .line 15
    :try_start_1
    invoke-virtual {v3, v4}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 18
    new-instance v5, Ljava/net/DatagramSocket;

    .line 20
    invoke-interface {p1}, Lpr;->a()I

    .line 23
    move-result v6

    .line 24
    invoke-direct {v5, v6}, Ljava/net/DatagramSocket;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 27
    :try_start_2
    invoke-virtual {v5, v4}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 30
    goto :goto_1

    .line 31
    :catch_0
    move-exception v4

    .line 32
    goto :goto_0

    .line 33
    :catch_1
    move-exception v4

    .line 34
    move-object v5, v2

    .line 35
    goto :goto_0

    .line 36
    :catch_2
    move-exception v4

    .line 37
    move-object v3, v2

    .line 38
    move-object v5, v3

    .line 39
    :goto_0
    sget-boolean v6, Lxj0;->a:Z

    .line 41
    if-eqz v6, :cond_0

    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    const-string v7, "\u53d1\u9001\u521b\u5efa\u4f1a\u8bdd\u5f02\u5e38\u629b\u51fa:"

    .line 50
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v4

    .line 64
    new-array v6, v1, [Ljava/lang/Object;

    .line 66
    invoke-static {v0, v4, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    :cond_0
    :goto_1
    new-instance v4, Lr90;

    .line 71
    invoke-direct {v4, v3, v5}, Lr90;-><init>(Ljava/net/DatagramSocket;Ljava/net/DatagramSocket;)V

    .line 74
    sput-object v4, Lpu;->a:Lr90;

    .line 76
    sget-boolean v3, Lxj0;->a:Z

    .line 78
    if-eqz v3, :cond_1

    .line 80
    const-string v3, "RTPSession rtpSession != null"

    .line 82
    new-array v1, v1, [Ljava/lang/Object;

    .line 84
    invoke-static {v0, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    :cond_1
    sget-object v0, Lpu;->a:Lr90;

    .line 89
    invoke-virtual {v0, p0, v2, v2}, Lr90;->a(Lp90;Ln90;Lzh;)I

    .line 92
    new-instance v0, Lk50;

    .line 94
    invoke-interface {p1}, Lpr;->c()Ljava/lang/String;

    .line 97
    move-result-object v1

    .line 98
    invoke-interface {p1}, Lpr;->b()I

    .line 101
    move-result v2

    .line 102
    invoke-interface {p1}, Lpr;->a()I

    .line 105
    move-result p1

    .line 106
    invoke-direct {v0, v1, v2, p1}, Lk50;-><init>(Ljava/lang/String;II)V

    .line 109
    sget-object p1, Lpu;->a:Lr90;

    .line 111
    invoke-virtual {p1, v0}, Lr90;->b(Lk50;)I

    .line 114
    invoke-static {p0}, Lye;->a(Lxe;)V

    .line 117
    invoke-static {p0}, Lzg;->b(Lxe;)V

    .line 120
    return-void
.end method
