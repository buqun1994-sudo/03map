.class public Lla$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lla;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lla;


# direct methods
.method public constructor <init>(Lla;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lla$a;->a:Lla;

    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lla$a;->a:Lla;

    .line 3
    iget-object v1, v0, Lla;->a:Landroid/net/LocalServerSocket;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    const/16 v1, 0x20

    .line 10
    new-array v2, v1, [B

    .line 12
    :try_start_0
    new-instance v3, Landroid/net/LocalServerSocket;

    .line 14
    const-string v4, "com/autonavi/amapauto/localserver"

    .line 16
    invoke-direct {v3, v4}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    .line 19
    iput-object v3, v0, Lla;->a:Landroid/net/LocalServerSocket;

    .line 21
    iget-object v0, p0, Lla$a;->a:Lla;

    .line 23
    iget-object v0, v0, Lla;->a:Landroid/net/LocalServerSocket;

    .line 25
    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    .line 32
    move-result-object v0

    .line 33
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    .line 36
    move-result v3

    .line 37
    if-lez v3, :cond_1

    .line 39
    iget-object v4, p0, Lla$a;->a:Lla;

    .line 41
    new-instance v5, Ljava/lang/String;

    .line 43
    const/4 v6, 0x0

    .line 44
    invoke-direct {v5, v2, v6, v3}, Ljava/lang/String;-><init>([BII)V

    .line 47
    invoke-static {v4, v5}, Lla;->a(Lla;Ljava/lang/String;)V

    .line 50
    :cond_1
    new-array v2, v1, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_0

    .line 53
    :catch_0
    return-void
.end method
