.class public Luw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luw0$a;
    }
.end annotation


# static fields
.field public static d:I = 0x3

.field public static e:I = 0x3

.field public static f:I = 0xf0


# instance fields
.field public a:Ljava/util/LinkedList;

.field public b:Ljava/util/LinkedList;

.field public c:I


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
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Luw0;->c:I

    .line 7
    new-instance v0, Ljava/util/LinkedList;

    .line 9
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 12
    iput-object v0, p0, Luw0;->a:Ljava/util/LinkedList;

    .line 14
    new-instance v0, Ljava/util/LinkedList;

    .line 16
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 19
    iput-object v0, p0, Luw0;->b:Ljava/util/LinkedList;

    .line 21
    return-void
.end method

.method public static synthetic a(Luw0;)Ljava/util/LinkedList;
    .locals 0

    .line 1
    iget-object p0, p0, Luw0;->a:Ljava/util/LinkedList;

    .line 3
    return-object p0
.end method

.method public static synthetic d(Luw0;)Ljava/util/LinkedList;
    .locals 0

    .line 1
    iget-object p0, p0, Luw0;->b:Ljava/util/LinkedList;

    .line 3
    return-object p0
.end method


# virtual methods
.method public final b()V
    .locals 8

    .line 1
    iget v0, p0, Luw0;->c:I

    .line 3
    if-gez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    :goto_0
    iget-object v0, p0, Luw0;->a:Ljava/util/LinkedList;

    .line 8
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 14
    iget v0, p0, Luw0;->c:I

    .line 16
    iget-object v1, p0, Luw0;->a:Ljava/util/LinkedList;

    .line 18
    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lbx0;

    .line 24
    invoke-virtual {v1}, Lbx0;->c()I

    .line 27
    move-result v1

    .line 28
    sub-int/2addr v0, v1

    .line 29
    sget v1, Luw0;->f:I

    .line 31
    if-le v0, v1, :cond_1

    .line 33
    iget-object v0, p0, Luw0;->a:Ljava/util/LinkedList;

    .line 35
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    :goto_1
    iget-object v0, p0, Luw0;->b:Ljava/util/LinkedList;

    .line 41
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_2

    .line 47
    iget v0, p0, Luw0;->c:I

    .line 49
    iget-object v1, p0, Luw0;->b:Ljava/util/LinkedList;

    .line 51
    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lbx0;

    .line 57
    invoke-virtual {v1}, Lbx0;->c()I

    .line 60
    move-result v1

    .line 61
    sub-int/2addr v0, v1

    .line 62
    sget v1, Luw0;->f:I

    .line 64
    if-le v0, v1, :cond_2

    .line 66
    iget-object v0, p0, Luw0;->b:Ljava/util/LinkedList;

    .line 68
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    new-instance v0, Ljava/util/LinkedList;

    .line 74
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 77
    :cond_3
    :goto_2
    iget-object v1, p0, Luw0;->b:Ljava/util/LinkedList;

    .line 79
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 82
    move-result v1

    .line 83
    const/16 v2, 0x3c

    .line 85
    if-nez v1, :cond_7

    .line 87
    iget v1, p0, Luw0;->c:I

    .line 89
    iget-object v3, p0, Luw0;->b:Ljava/util/LinkedList;

    .line 91
    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    .line 94
    move-result-object v3

    .line 95
    check-cast v3, Lbx0;

    .line 97
    invoke-virtual {v3}, Lbx0;->c()I

    .line 100
    move-result v3

    .line 101
    sub-int/2addr v1, v3

    .line 102
    if-gt v1, v2, :cond_4

    .line 104
    iget-object v1, p0, Luw0;->b:Ljava/util/LinkedList;

    .line 106
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 109
    move-result v1

    .line 110
    sget v3, Luw0;->e:I

    .line 112
    if-le v1, v3, :cond_7

    .line 114
    :cond_4
    iget-object v1, p0, Luw0;->b:Ljava/util/LinkedList;

    .line 116
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Lbx0;

    .line 122
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 125
    move-result v3

    .line 126
    if-nez v3, :cond_5

    .line 128
    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    .line 131
    move-result-object v3

    .line 132
    check-cast v3, Lbx0;

    .line 134
    invoke-virtual {v3}, Lbx0;->c()I

    .line 137
    move-result v3

    .line 138
    div-int/2addr v3, v2

    .line 139
    invoke-virtual {v1}, Lbx0;->c()I

    .line 142
    move-result v4

    .line 143
    div-int/2addr v4, v2

    .line 144
    if-ne v3, v4, :cond_5

    .line 146
    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    .line 149
    move-result-object v3

    .line 150
    check-cast v3, Lbx0;

    .line 152
    invoke-virtual {v3}, Lbx0;->d()D

    .line 155
    move-result-wide v3

    .line 156
    invoke-virtual {v1}, Lbx0;->d()D

    .line 159
    move-result-wide v5

    .line 160
    cmpg-double v7, v3, v5

    .line 162
    if-gez v7, :cond_5

    .line 164
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 167
    :cond_5
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 170
    move-result v3

    .line 171
    if-nez v3, :cond_6

    .line 173
    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    .line 176
    move-result-object v3

    .line 177
    check-cast v3, Lbx0;

    .line 179
    invoke-virtual {v3}, Lbx0;->c()I

    .line 182
    move-result v3

    .line 183
    div-int/2addr v3, v2

    .line 184
    invoke-virtual {v1}, Lbx0;->c()I

    .line 187
    move-result v4

    .line 188
    div-int/2addr v4, v2

    .line 189
    if-eq v3, v4, :cond_3

    .line 191
    :cond_6
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 194
    goto :goto_2

    .line 195
    :cond_7
    iget-object v1, p0, Luw0;->a:Ljava/util/LinkedList;

    .line 197
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 200
    move-result v1

    .line 201
    if-nez v1, :cond_8

    .line 203
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 206
    move-result v1

    .line 207
    if-nez v1, :cond_8

    .line 209
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    .line 212
    move-result-object v1

    .line 213
    check-cast v1, Lbx0;

    .line 215
    invoke-virtual {v1}, Lbx0;->c()I

    .line 218
    move-result v1

    .line 219
    div-int/2addr v1, v2

    .line 220
    iget-object v3, p0, Luw0;->a:Ljava/util/LinkedList;

    .line 222
    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    .line 225
    move-result-object v3

    .line 226
    check-cast v3, Lbx0;

    .line 228
    invoke-virtual {v3}, Lbx0;->c()I

    .line 231
    move-result v3

    .line 232
    div-int/2addr v3, v2

    .line 233
    if-ne v1, v3, :cond_8

    .line 235
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 238
    move-result-object v1

    .line 239
    check-cast v1, Lbx0;

    .line 241
    iget-object v2, p0, Luw0;->a:Ljava/util/LinkedList;

    .line 243
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    .line 246
    move-result-object v2

    .line 247
    check-cast v2, Lbx0;

    .line 249
    invoke-virtual {v2}, Lbx0;->d()D

    .line 252
    move-result-wide v2

    .line 253
    invoke-virtual {v1}, Lbx0;->d()D

    .line 256
    move-result-wide v4

    .line 257
    cmpg-double v6, v2, v4

    .line 259
    if-gez v6, :cond_8

    .line 261
    iget-object v2, p0, Luw0;->a:Ljava/util/LinkedList;

    .line 263
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 266
    iget-object v2, p0, Luw0;->a:Ljava/util/LinkedList;

    .line 268
    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_8
    iget-object v1, p0, Luw0;->a:Ljava/util/LinkedList;

    .line 273
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 276
    :goto_3
    iget-object v0, p0, Luw0;->a:Ljava/util/LinkedList;

    .line 278
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 281
    move-result v0

    .line 282
    sget v1, Luw0;->d:I

    .line 284
    if-le v0, v1, :cond_9

    .line 286
    iget-object v0, p0, Luw0;->a:Ljava/util/LinkedList;

    .line 288
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 291
    goto :goto_3

    .line 292
    :cond_9
    return-void
.end method

.method public c(Lbx0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Luw0;->b:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    invoke-virtual {p0}, Luw0;->b()V

    .line 4
    new-instance v0, Luw0$a;

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, p0, v1}, Luw0$a;-><init>(Luw0;Z)V

    .line 10
    return-object v0
.end method
