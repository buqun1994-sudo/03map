.class public Lbe0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lae0;


# instance fields
.field public a:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    iput-object v0, p0, Lbe0;->a:Landroid/util/SparseArray;

    .line 11
    return-void
.end method


# virtual methods
.method public a(I)Llt;
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 11
    const-string v2, "[ALSimulate] SimulateContextImpl"

    .line 13
    const-string v4, "getSimulator simulateType = {?}"

    .line 15
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-object v1, p0, Lbe0;->a:Landroid/util/SparseArray;

    .line 20
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Llt;

    .line 26
    const-string v4, "null"

    .line 28
    const/4 v5, 0x2

    .line 29
    if-nez v1, :cond_5

    .line 31
    const-string v6, "getSimulator null == simulator"

    .line 33
    new-array v7, v3, [Ljava/lang/Object;

    .line 35
    invoke-static {v2, v6, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    if-ne v0, p1, :cond_0

    .line 40
    const-string v1, "getSimulator before SimulateType.TYPE_AIDL_MODEL == simulateType"

    .line 42
    new-array v6, v3, [Ljava/lang/Object;

    .line 44
    invoke-static {v2, v1, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    new-instance v1, Ln2;

    .line 49
    invoke-direct {v1}, Ln2;-><init>()V

    .line 52
    const-string v6, "getSimulator after SimulateType.TYPE_AIDL_MODEL == simulateType"

    .line 54
    new-array v7, v3, [Ljava/lang/Object;

    .line 56
    invoke-static {v2, v6, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    if-ne v5, p1, :cond_1

    .line 62
    const-string v1, "getSimulator before SimulateType.TYPE_AIDL_JSON == simulateType"

    .line 64
    new-array v6, v3, [Ljava/lang/Object;

    .line 66
    invoke-static {v2, v1, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    new-instance v1, Lj2;

    .line 71
    invoke-direct {v1}, Lj2;-><init>()V

    .line 74
    const-string v6, "getSimulator after SimulateType.TYPE_AIDL_JSON == simulateType"

    .line 76
    new-array v7, v3, [Ljava/lang/Object;

    .line 78
    invoke-static {v2, v6, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    const/4 v6, 0x3

    .line 83
    if-ne v6, p1, :cond_2

    .line 85
    const-string v1, "getSimulator before SimulateType.TYPE_BROADCAST == simulateType"

    .line 87
    new-array v6, v3, [Ljava/lang/Object;

    .line 89
    invoke-static {v2, v1, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    new-instance v1, Lkd;

    .line 94
    invoke-direct {v1}, Lkd;-><init>()V

    .line 97
    const-string v6, "getSimulator after SimulateType.TYPE_BROADCAST == simulateType"

    .line 99
    new-array v7, v3, [Ljava/lang/Object;

    .line 101
    invoke-static {v2, v6, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    goto :goto_0

    .line 105
    :cond_2
    const/4 v6, 0x4

    .line 106
    if-ne v6, p1, :cond_3

    .line 108
    const-string v1, "getSimulator before SimulateType.TYPE_SCHEME == simulateType"

    .line 110
    new-array v6, v3, [Ljava/lang/Object;

    .line 112
    invoke-static {v2, v1, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    new-instance v1, Lzb0;

    .line 117
    invoke-direct {v1}, Lzb0;-><init>()V

    .line 120
    const-string v6, "getSimulator after SimulateType.TYPE_SCHEME == simulateType"

    .line 122
    new-array v7, v3, [Ljava/lang/Object;

    .line 124
    invoke-static {v2, v6, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    :cond_3
    :goto_0
    const-string v6, "getSimulator before simulatorSpArray.put"

    .line 129
    new-array v7, v3, [Ljava/lang/Object;

    .line 131
    invoke-static {v2, v6, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    iget-object v6, p0, Lbe0;->a:Landroid/util/SparseArray;

    .line 136
    invoke-virtual {v6, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 139
    new-array v6, v5, [Ljava/lang/Object;

    .line 141
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    move-result-object v7

    .line 145
    aput-object v7, v6, v3

    .line 147
    if-eqz v1, :cond_4

    .line 149
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 152
    move-result-object v7

    .line 153
    goto :goto_1

    .line 154
    :cond_4
    move-object v7, v4

    .line 155
    :goto_1
    aput-object v7, v6, v0

    .line 157
    const-string v7, "getSimulator after simulateType:{?} simulator:{?}"

    .line 159
    invoke-static {v2, v7, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    :cond_5
    new-array v5, v5, [Ljava/lang/Object;

    .line 164
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    move-result-object p1

    .line 168
    aput-object p1, v5, v3

    .line 170
    if-eqz v1, :cond_6

    .line 172
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 175
    move-result-object v4

    .line 176
    :cond_6
    aput-object v4, v5, v0

    .line 178
    const-string p1, "getSimulator again simulateType:{?} simulator:{?}"

    .line 180
    invoke-static {v2, p1, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    return-object v1
.end method
