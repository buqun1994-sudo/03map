.class public Lo90;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lr90;

.field public b:Ljava/net/DatagramSocket;

.field public c:Ljava/net/MulticastSocket;

.field public d:Ljava/net/InetAddress;

.field public e:J

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:Ljava/util/Hashtable;

.field public k:Ljava/util/Hashtable;

.field public l:Z

.field public m:J


# direct methods
.method public constructor <init>(Lr90;Ljava/net/DatagramSocket;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lo90;->a:Lr90;

    .line 7
    iput-object v0, p0, Lo90;->b:Ljava/net/DatagramSocket;

    .line 9
    iput-object v0, p0, Lo90;->c:Ljava/net/MulticastSocket;

    .line 11
    iput-object v0, p0, Lo90;->d:Ljava/net/InetAddress;

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    move-result-wide v1

    .line 17
    iput-wide v1, p0, Lo90;->e:J

    .line 19
    const/4 v1, -0x1

    .line 20
    iput v1, p0, Lo90;->f:I

    .line 22
    const/16 v1, 0xc8

    .line 24
    iput v1, p0, Lo90;->g:I

    .line 26
    const/4 v1, 0x1

    .line 27
    iput v1, p0, Lo90;->h:I

    .line 29
    const/4 v2, 0x0

    .line 30
    iput-boolean v2, p0, Lo90;->i:Z

    .line 32
    iput-object v0, p0, Lo90;->j:Ljava/util/Hashtable;

    .line 34
    iput-object v0, p0, Lo90;->k:Ljava/util/Hashtable;

    .line 36
    iput-boolean v1, p0, Lo90;->l:Z

    .line 38
    const-wide/16 v0, -0x1

    .line 40
    iput-wide v0, p0, Lo90;->m:J

    .line 42
    iput-object p2, p0, Lo90;->b:Ljava/net/DatagramSocket;

    .line 44
    iput-object p1, p0, Lo90;->a:Lr90;

    .line 46
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo90;->a:Lr90;

    .line 3
    iget v0, v0, Lr90;->I:I

    .line 5
    if-eqz v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lo90;->b()V

    .line 11
    :goto_0
    return-void
.end method

.method public b()V
    .locals 14

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lo90;->a:Lr90;

    .line 7
    iget v3, v2, Lr90;->l:I

    .line 9
    const/16 v4, 0x3e8

    .line 11
    if-eqz v3, :cond_5

    .line 13
    iget-boolean v3, p0, Lo90;->l:Z

    .line 15
    if-nez v3, :cond_5

    .line 17
    iget-object v2, v2, Lr90;->p:Ll50;

    .line 19
    iget-object v2, v2, Ll50;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x4

    .line 26
    if-le v2, v3, :cond_5

    .line 28
    iget-object v2, p0, Lo90;->a:Lr90;

    .line 30
    iget-object v2, v2, Lr90;->k:Ljava/util/Random;

    .line 32
    const/16 v3, 0x2710

    .line 34
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    .line 37
    move-result v2

    .line 38
    add-int/lit16 v2, v2, -0x1388

    .line 40
    int-to-double v5, v2

    .line 41
    const-wide v7, 0x408f400000000000L    # 1000.0

    .line 46
    add-double/2addr v5, v7

    .line 47
    div-double/2addr v5, v7

    .line 48
    iget-object v3, p0, Lo90;->a:Lr90;

    .line 50
    iget-object v3, v3, Lr90;->p:Ll50;

    .line 52
    invoke-virtual {v3}, Ll50;->e()Ljava/util/Enumeration;

    .line 55
    move-result-object v3

    .line 56
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 59
    move-result v9

    .line 60
    if-eqz v9, :cond_1

    .line 62
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 65
    move-result-object v9

    .line 66
    check-cast v9, Lk50;

    .line 68
    iget-wide v9, v9, Lk50;->G:J

    .line 70
    iget-wide v11, p0, Lo90;->e:J

    .line 72
    cmp-long v13, v9, v11

    .line 74
    if-lez v13, :cond_0

    .line 76
    iget v9, p0, Lo90;->h:I

    .line 78
    add-int/lit8 v9, v9, 0x1

    .line 80
    iput v9, p0, Lo90;->h:I

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    iget-object v3, p0, Lo90;->a:Lr90;

    .line 85
    iget v9, v3, Lr90;->N:I

    .line 87
    const/4 v10, -0x1

    .line 88
    if-le v9, v10, :cond_2

    .line 90
    int-to-double v9, v9

    .line 91
    goto :goto_1

    .line 92
    :cond_2
    iget v9, v3, Lr90;->l:I

    .line 94
    int-to-double v9, v9

    .line 95
    const-wide v11, 0x3fa999999999999aL    # 0.05

    .line 100
    mul-double v9, v9, v11

    .line 102
    :goto_1
    iget v11, p0, Lo90;->h:I

    .line 104
    mul-int/lit8 v11, v11, 0x2

    .line 106
    iget-object v3, v3, Lr90;->p:Ll50;

    .line 108
    iget-object v3, v3, Ll50;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 110
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 113
    move-result v3

    .line 114
    if-le v11, v3, :cond_4

    .line 116
    iget-object v2, p0, Lo90;->a:Lr90;

    .line 118
    iget-wide v7, v2, Lr90;->g:J

    .line 120
    iget-wide v11, p0, Lo90;->e:J

    .line 122
    cmp-long v3, v7, v11

    .line 124
    if-lez v3, :cond_3

    .line 126
    iget v2, p0, Lo90;->g:I

    .line 128
    int-to-double v2, v2

    .line 129
    iget v7, p0, Lo90;->h:I

    .line 131
    int-to-double v7, v7

    .line 132
    mul-double v2, v2, v7

    .line 134
    const-wide/high16 v7, 0x3fd0000000000000L    # 0.25

    .line 136
    mul-double v9, v9, v7

    .line 138
    div-double/2addr v2, v9

    .line 139
    mul-double v2, v2, v5

    .line 141
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    .line 144
    move-result-wide v2

    .line 145
    long-to-int v3, v2

    .line 146
    iput v3, p0, Lo90;->f:I

    .line 148
    goto :goto_2

    .line 149
    :cond_3
    iget v3, p0, Lo90;->g:I

    .line 151
    int-to-double v7, v3

    .line 152
    iget-object v2, v2, Lr90;->p:Ll50;

    .line 154
    iget-object v2, v2, Ll50;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 156
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 159
    move-result v2

    .line 160
    int-to-double v2, v2

    .line 161
    mul-double v7, v7, v2

    .line 163
    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    .line 165
    mul-double v9, v9, v2

    .line 167
    div-double/2addr v7, v9

    .line 168
    mul-double v7, v7, v5

    .line 170
    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    .line 173
    move-result-wide v2

    .line 174
    long-to-int v3, v2

    .line 175
    iput v3, p0, Lo90;->f:I

    .line 177
    goto :goto_2

    .line 178
    :cond_4
    iget v3, p0, Lo90;->g:I

    .line 180
    int-to-double v5, v3

    .line 181
    iget-object v3, p0, Lo90;->a:Lr90;

    .line 183
    iget-object v3, v3, Lr90;->p:Ll50;

    .line 185
    iget-object v3, v3, Ll50;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 187
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 190
    move-result v3

    .line 191
    int-to-double v11, v3

    .line 192
    mul-double v5, v5, v11

    .line 194
    div-double/2addr v5, v9

    .line 195
    mul-double v5, v5, v7

    .line 197
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    .line 200
    move-result-wide v5

    .line 201
    long-to-int v3, v5

    .line 202
    add-int/2addr v2, v4

    .line 203
    mul-int v3, v3, v2

    .line 205
    iput v3, p0, Lo90;->f:I

    .line 207
    goto :goto_2

    .line 208
    :cond_5
    iget-object v2, p0, Lo90;->a:Lr90;

    .line 210
    iget-object v2, v2, Lr90;->k:Ljava/util/Random;

    .line 212
    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    .line 215
    move-result v2

    .line 216
    add-int/lit16 v2, v2, -0x1f4

    .line 218
    iget-boolean v3, p0, Lo90;->l:Z

    .line 220
    if-eqz v3, :cond_6

    .line 222
    add-int/lit16 v2, v2, 0xbb8

    .line 224
    iput v2, p0, Lo90;->f:I

    .line 226
    const/4 v2, 0x0

    .line 227
    iput-boolean v2, p0, Lo90;->l:Z

    .line 229
    goto :goto_2

    .line 230
    :cond_6
    add-int/lit16 v2, v2, 0x157c

    .line 232
    iput v2, p0, Lo90;->f:I

    .line 234
    :goto_2
    iget v2, p0, Lo90;->f:I

    .line 236
    if-ge v2, v4, :cond_7

    .line 238
    iget-object v2, p0, Lo90;->a:Lr90;

    .line 240
    iget-object v2, v2, Lr90;->k:Ljava/util/Random;

    .line 242
    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    .line 245
    :cond_7
    iput-wide v0, p0, Lo90;->e:J

    .line 247
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method
