.class public Lbd0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbd0$b;,
        Lbd0$d;,
        Lbd0$c;
    }
.end annotation


# static fields
.field public static final i:Ljava/lang/String; = "bd0"


# instance fields
.field public a:Ljava/net/MulticastSocket;

.field public b:Ljava/net/DatagramSocket;

.field public c:Ljava/net/DatagramPacket;

.field public d:Ljava/net/InetAddress;

.field public e:Lbd0$d;

.field public f:Lbd0$c;

.field public g:Ljava/util/List;

.field public h:Lbd0$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lbd0;->b:Ljava/net/DatagramSocket;

    .line 7
    iput-object v0, p0, Lbd0;->g:Ljava/util/List;

    .line 9
    invoke-virtual {p0}, Lbd0;->i()V

    .line 12
    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lbd0;->i:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static synthetic b(Lbd0;)Ljava/net/DatagramPacket;
    .locals 0

    .line 1
    iget-object p0, p0, Lbd0;->c:Ljava/net/DatagramPacket;

    .line 3
    return-object p0
.end method

.method public static synthetic c(Lbd0;)Ljava/net/DatagramSocket;
    .locals 0

    .line 1
    iget-object p0, p0, Lbd0;->b:Ljava/net/DatagramSocket;

    .line 3
    return-object p0
.end method

.method public static synthetic d(Lbd0;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lbd0;->g:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic e(Lbd0;)Lbd0$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lbd0;->h:Lbd0$b;

    .line 3
    return-object p0
.end method

.method public static synthetic f(Lbd0;)Ljava/net/MulticastSocket;
    .locals 0

    .line 1
    iget-object p0, p0, Lbd0;->a:Ljava/net/MulticastSocket;

    .line 3
    return-object p0
.end method

.method public static synthetic g(Lbd0;)Ljava/net/InetAddress;
    .locals 0

    .line 1
    iget-object p0, p0, Lbd0;->d:Ljava/net/InetAddress;

    .line 3
    return-object p0
.end method

.method public static synthetic h(Lbd0;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 0

    .line 1
    iput-object p1, p0, Lbd0;->d:Ljava/net/InetAddress;

    .line 3
    return-object p1
.end method


# virtual methods
.method public final i()V
    .locals 3

    .line 1
    const/16 v0, 0x800

    .line 3
    new-array v1, v0, [B

    .line 5
    new-instance v2, Ljava/net/DatagramPacket;

    .line 7
    invoke-direct {v2, v1, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 10
    iput-object v2, p0, Lbd0;->c:Ljava/net/DatagramPacket;

    .line 12
    new-instance v0, Ljava/net/MulticastSocket;

    .line 14
    invoke-direct {v0}, Ljava/net/MulticastSocket;-><init>()V

    .line 17
    iput-object v0, p0, Lbd0;->a:Ljava/net/MulticastSocket;

    .line 19
    const/4 v1, 0x4

    .line 20
    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    .line 23
    iget-object v0, p0, Lbd0;->a:Ljava/net/MulticastSocket;

    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->setLoopbackMode(Z)V

    .line 29
    return-void
.end method

.method public j(Lbd0$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbd0;->h:Lbd0$b;

    .line 3
    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbd0;->a:Ljava/net/MulticastSocket;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 11
    :cond_0
    invoke-virtual {p0}, Lbd0;->i()V

    .line 14
    :cond_1
    iget-object v0, p0, Lbd0;->b:Ljava/net/DatagramSocket;

    .line 16
    if-nez v0, :cond_2

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iput-object v0, p0, Lbd0;->g:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/net/DatagramSocket;

    .line 27
    const/16 v1, 0x26b8

    .line 29
    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(I)V

    .line 32
    iput-object v0, p0, Lbd0;->b:Ljava/net/DatagramSocket;

    .line 34
    new-instance v0, Lbd0$d;

    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-direct {v0, p0, v1}, Lbd0$d;-><init>(Lbd0;Lbd0$a;)V

    .line 40
    iput-object v0, p0, Lbd0;->e:Lbd0$d;

    .line 42
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 45
    new-instance v0, Lbd0$c;

    .line 47
    invoke-direct {v0, p0, v1}, Lbd0$c;-><init>(Lbd0;Lbd0$a;)V

    .line 50
    iput-object v0, p0, Lbd0;->f:Lbd0$c;

    .line 52
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 55
    :cond_2
    return-void
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lbd0;->g:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lbd0;->g:Ljava/util/List;

    .line 13
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 16
    :cond_0
    iget-object v0, p0, Lbd0;->e:Lbd0$d;

    .line 18
    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {v0}, Lbd0$d;->interrupt()V

    .line 23
    :cond_1
    iget-object v0, p0, Lbd0;->f:Lbd0$c;

    .line 25
    if-eqz v0, :cond_2

    .line 27
    invoke-virtual {v0}, Lbd0$c;->interrupt()V

    .line 30
    :cond_2
    iget-object v0, p0, Lbd0;->b:Ljava/net/DatagramSocket;

    .line 32
    if-eqz v0, :cond_3

    .line 34
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_3

    .line 40
    iget-object v0, p0, Lbd0;->b:Ljava/net/DatagramSocket;

    .line 42
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 45
    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lbd0;->b:Ljava/net/DatagramSocket;

    .line 48
    :cond_3
    return-void
.end method
