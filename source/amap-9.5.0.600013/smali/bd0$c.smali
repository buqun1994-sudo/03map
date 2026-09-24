.class public Lbd0$c;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbd0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lbd0;


# direct methods
.method public constructor <init>(Lbd0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbd0$c;->b:Lbd0;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lbd0$c;->a:Z

    return-void
.end method

.method public synthetic constructor <init>(Lbd0;Lbd0$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lbd0$c;-><init>(Lbd0;)V

    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lbd0$c;->a:Z

    .line 4
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 7
    return-void
.end method

.method public run()V
    .locals 6

    .line 1
    const-string v0, " receive broadcast --> end--> "

    .line 3
    :goto_0
    iget-boolean v1, p0, Lbd0$c;->a:Z

    .line 5
    if-eqz v1, :cond_3

    .line 7
    :try_start_0
    invoke-static {}, Lbd0;->a()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    const-string v2, " receive broadcast --> begin--> "

    .line 13
    const/4 v3, 0x0

    .line 14
    new-array v4, v3, [Ljava/lang/Object;

    .line 16
    invoke-static {v1, v2, v4}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    iget-object v1, p0, Lbd0$c;->b:Lbd0;

    .line 21
    invoke-static {v1}, Lbd0;->c(Lbd0;)Ljava/net/DatagramSocket;

    .line 24
    move-result-object v1

    .line 25
    iget-object v2, p0, Lbd0$c;->b:Lbd0;

    .line 27
    invoke-static {v2}, Lbd0;->b(Lbd0;)Ljava/net/DatagramPacket;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 34
    invoke-static {}, Lbd0;->a()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    new-array v2, v3, [Ljava/lang/Object;

    .line 40
    invoke-static {v1, v0, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iget-object v1, p0, Lbd0$c;->b:Lbd0;

    .line 45
    invoke-static {v1}, Lbd0;->b(Lbd0;)Ljava/net/DatagramPacket;

    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getData()[B

    .line 52
    move-result-object v1

    .line 53
    invoke-static {}, Lbd0;->a()Ljava/lang/String;

    .line 56
    move-result-object v2

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v4

    .line 72
    new-array v5, v3, [Ljava/lang/Object;

    .line 74
    invoke-static {v2, v4, v5}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    if-eqz v1, :cond_2

    .line 79
    array-length v2, v1

    .line 80
    if-lez v2, :cond_2

    .line 82
    invoke-static {}, Lbd0;->a()Ljava/lang/String;

    .line 85
    move-result-object v2

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    .line 88
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    const-string v5, " receive broadcast --> end--> recData bu wei null---> "

    .line 93
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    array-length v5, v1

    .line 97
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object v4

    .line 104
    new-array v3, v3, [Ljava/lang/Object;

    .line 106
    invoke-static {v2, v4, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 111
    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 114
    invoke-static {v2}, Lnw;->a(Ljava/io/InputStream;)Loj;

    .line 117
    move-result-object v1

    .line 118
    iget-object v2, p0, Lbd0$c;->b:Lbd0;

    .line 120
    invoke-static {v2}, Lbd0;->b(Lbd0;)Ljava/net/DatagramPacket;

    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 131
    move-result-object v2

    .line 132
    iput-object v2, v1, Loj;->d:Ljava/lang/String;

    .line 134
    iget-object v2, p0, Lbd0$c;->b:Lbd0;

    .line 136
    invoke-static {v2}, Lbd0;->d(Lbd0;)Ljava/util/List;

    .line 139
    move-result-object v2

    .line 140
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 143
    move-result-object v2

    .line 144
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    move-result v3

    .line 148
    if-eqz v3, :cond_1

    .line 150
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    move-result-object v3

    .line 154
    check-cast v3, Loj;

    .line 156
    iget-object v4, v1, Loj;->d:Ljava/lang/String;

    .line 158
    iget-object v5, v3, Loj;->d:Ljava/lang/String;

    .line 160
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    move-result v4

    .line 164
    if-eqz v4, :cond_0

    .line 166
    invoke-virtual {v3, v1}, Loj;->a(Loj;)V

    .line 169
    goto :goto_1

    .line 170
    :cond_1
    iget-object v1, p0, Lbd0$c;->b:Lbd0;

    .line 172
    invoke-static {v1}, Lbd0;->e(Lbd0;)Lbd0$b;

    .line 175
    move-result-object v1

    .line 176
    if-eqz v1, :cond_2

    .line 178
    iget-object v1, p0, Lbd0$c;->b:Lbd0;

    .line 180
    invoke-static {v1}, Lbd0;->e(Lbd0;)Lbd0$b;

    .line 183
    move-result-object v1

    .line 184
    iget-object v2, p0, Lbd0$c;->b:Lbd0;

    .line 186
    invoke-static {v2}, Lbd0;->d(Lbd0;)Ljava/util/List;

    .line 189
    move-result-object v2

    .line 190
    invoke-interface {v1, v2}, Lbd0$b;->a(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 193
    goto :goto_2

    .line 194
    :catch_0
    nop

    .line 195
    goto/16 :goto_0

    .line 197
    :catch_1
    :cond_2
    :goto_2
    const-wide/16 v1, 0x1f4

    .line 199
    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 202
    goto/16 :goto_0

    .line 204
    :catch_2
    :cond_3
    return-void
.end method
