.class public Ll50;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lr90;

.field public b:Ljava/util/LinkedList;

.field public c:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>(Lr90;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ll50;->a:Lr90;

    .line 7
    new-instance v0, Ljava/util/LinkedList;

    .line 9
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 12
    iput-object v0, p0, Ll50;->b:Ljava/util/LinkedList;

    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 19
    iput-object v0, p0, Ll50;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    iput-object p1, p0, Ll50;->a:Lr90;

    .line 23
    return-void
.end method


# virtual methods
.method public a(ILk50;)I
    .locals 1

    .line 1
    iget-object v0, p0, Ll50;->a:Lr90;

    .line 3
    iget-boolean v0, v0, Lr90;->d:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0, p1, p2}, Ll50;->b(ILk50;)I

    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    invoke-virtual {p0, p1, p2}, Ll50;->c(ILk50;)I

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public final b(ILk50;)I
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 3
    const/4 p1, -0x1

    .line 4
    return p1

    .line 5
    :cond_0
    iget-object p1, p0, Ll50;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    iget-wide v0, p2, Lk50;->f:J

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 19
    const/4 p1, -0x2

    .line 20
    return p1

    .line 21
    :cond_1
    iget-object p1, p0, Ll50;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    iget-wide v0, p2, Lk50;->f:J

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const/4 p1, 0x0

    .line 33
    return p1
.end method

.method public final c(ILk50;)I
    .locals 7

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-nez p1, :cond_3

    .line 6
    iget-object p1, p0, Ll50;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->elements()Ljava/util/Enumeration;

    .line 11
    move-result-object p1

    .line 12
    const/4 v3, 0x1

    .line 13
    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    .line 15
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_2

    .line 21
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Lk50;

    .line 27
    iget-boolean v5, v4, Lk50;->a:Z

    .line 29
    if-eqz v5, :cond_0

    .line 31
    iget-object v5, v4, Lk50;->e:Ljava/net/InetSocketAddress;

    .line 33
    iget-object v6, v4, Lk50;->c:Ljava/net/InetSocketAddress;

    .line 35
    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 38
    move-result-object v6

    .line 39
    invoke-virtual {v5, v6}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v5

    .line 43
    if-nez v5, :cond_1

    .line 45
    iget-object v5, v4, Lk50;->d:Ljava/net/InetSocketAddress;

    .line 47
    iget-object v6, v4, Lk50;->b:Ljava/net/InetSocketAddress;

    .line 49
    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {v5, v6}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_0

    .line 59
    :cond_1
    iget-object v3, p2, Lk50;->b:Ljava/net/InetSocketAddress;

    .line 61
    iput-object v3, v4, Lk50;->b:Ljava/net/InetSocketAddress;

    .line 63
    iget-object p2, p2, Lk50;->c:Ljava/net/InetSocketAddress;

    .line 65
    iput-object p2, v4, Lk50;->c:Ljava/net/InetSocketAddress;

    .line 67
    iput-boolean v2, v4, Lk50;->a:Z

    .line 69
    new-array p2, v1, [Lk50;

    .line 71
    aput-object v4, p2, v2

    .line 73
    iget-object v3, p0, Ll50;->a:Lr90;

    .line 75
    iget-object v3, v3, Lr90;->q:Lp90;

    .line 77
    invoke-interface {v3, v0, p2}, Lp90;->c(I[Lk50;)V

    .line 80
    move-object p2, v4

    .line 81
    const/4 v3, 0x0

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    iget-object p1, p0, Ll50;->b:Ljava/util/LinkedList;

    .line 85
    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 88
    return v2

    .line 89
    :cond_3
    iget-object v3, p0, Ll50;->b:Ljava/util/LinkedList;

    .line 91
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 94
    move-result-object v3

    .line 95
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_7

    .line 101
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    move-result-object v4

    .line 105
    check-cast v4, Lk50;

    .line 107
    if-ne p1, v1, :cond_5

    .line 109
    iget-object v5, p2, Lk50;->d:Ljava/net/InetSocketAddress;

    .line 111
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 114
    move-result-object v5

    .line 115
    iget-object v6, v4, Lk50;->b:Ljava/net/InetSocketAddress;

    .line 117
    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 120
    move-result-object v6

    .line 121
    invoke-virtual {v5, v6}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    .line 124
    move-result v5

    .line 125
    if-nez v5, :cond_6

    .line 127
    :cond_5
    const/4 v5, 0x2

    .line 128
    if-ne p1, v5, :cond_4

    .line 130
    iget-object v5, p2, Lk50;->e:Ljava/net/InetSocketAddress;

    .line 132
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 135
    move-result-object v5

    .line 136
    iget-object v6, v4, Lk50;->c:Ljava/net/InetSocketAddress;

    .line 138
    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 141
    move-result-object v6

    .line 142
    invoke-virtual {v5, v6}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    .line 145
    move-result v5

    .line 146
    if-eqz v5, :cond_4

    .line 148
    :cond_6
    iget-object p1, p2, Lk50;->d:Ljava/net/InetSocketAddress;

    .line 150
    iput-object p1, v4, Lk50;->d:Ljava/net/InetSocketAddress;

    .line 152
    iget-object p1, p2, Lk50;->e:Ljava/net/InetSocketAddress;

    .line 154
    iput-object p1, v4, Lk50;->e:Ljava/net/InetSocketAddress;

    .line 156
    iget-wide v5, p2, Lk50;->f:J

    .line 158
    iput-wide v5, v4, Lk50;->f:J

    .line 160
    iget-object p1, p2, Lk50;->g:Ljava/lang/String;

    .line 162
    iput-object p1, v4, Lk50;->g:Ljava/lang/String;

    .line 164
    iget-object p1, p2, Lk50;->h:Ljava/lang/String;

    .line 166
    iput-object p1, v4, Lk50;->h:Ljava/lang/String;

    .line 168
    iget-object p1, p2, Lk50;->k:Ljava/lang/String;

    .line 170
    iput-object p1, v4, Lk50;->k:Ljava/lang/String;

    .line 172
    iget-object p1, p2, Lk50;->j:Ljava/lang/String;

    .line 174
    iput-object p1, v4, Lk50;->j:Ljava/lang/String;

    .line 176
    iget-object p1, p2, Lk50;->i:Ljava/lang/String;

    .line 178
    iput-object p1, v4, Lk50;->i:Ljava/lang/String;

    .line 180
    iget-object p1, p2, Lk50;->m:Ljava/lang/String;

    .line 182
    iput-object p1, v4, Lk50;->m:Ljava/lang/String;

    .line 184
    iget-object p1, p2, Lk50;->l:Ljava/lang/String;

    .line 186
    iput-object p1, v4, Lk50;->l:Ljava/lang/String;

    .line 188
    iget-object p1, p2, Lk50;->n:Ljava/lang/String;

    .line 190
    iput-object p1, v4, Lk50;->n:Ljava/lang/String;

    .line 192
    iget-object p1, p0, Ll50;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 194
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 197
    move-result-object p2

    .line 198
    invoke-virtual {p1, p2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    new-array p1, v1, [Lk50;

    .line 203
    aput-object v4, p1, v2

    .line 205
    iget-object p2, p0, Ll50;->a:Lr90;

    .line 207
    iget-object p2, p2, Lr90;->q:Lp90;

    .line 209
    invoke-interface {p2, v0, p1}, Lp90;->c(I[Lk50;)V

    .line 212
    return v2

    .line 213
    :cond_7
    iget-object p1, p0, Ll50;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 215
    iget-wide v0, p2, Lk50;->f:J

    .line 217
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    return v2
.end method

.method public d(J)Lk50;
    .locals 1

    .line 1
    iget-object v0, p0, Ll50;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lk50;

    .line 13
    return-object p1
.end method

.method public e()Ljava/util/Enumeration;
    .locals 1

    .line 1
    iget-object v0, p0, Ll50;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->elements()Ljava/util/Enumeration;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public f()Ljava/util/Iterator;
    .locals 1

    .line 1
    iget-object v0, p0, Ll50;->a:Lr90;

    .line 3
    iget-boolean v0, v0, Lr90;->d:Z

    .line 5
    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Ll50;->b:Ljava/util/LinkedList;

    .line 9
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method
