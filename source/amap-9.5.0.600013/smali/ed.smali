.class public Led;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Led$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/HashMap;

.field public b:Ljava/util/concurrent/ExecutorService;

.field public c:Led$a;

.field public d:Z

.field public e:Ljava/lang/Object;

.field public f:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Led;->a:Ljava/util/HashMap;

    .line 11
    new-instance v0, Led$a;

    .line 13
    invoke-direct {v0, p0}, Led$a;-><init>(Led;)V

    .line 16
    iput-object v0, p0, Led;->c:Led$a;

    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Led;->d:Z

    .line 21
    new-instance v0, Ljava/lang/Object;

    .line 23
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Led;->e:Ljava/lang/Object;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    .line 30
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 33
    iput-object v0, p0, Led;->f:Ljava/util/HashMap;

    .line 35
    const/4 v0, 0x1

    .line 36
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Led;->b:Ljava/util/concurrent/ExecutorService;

    .line 42
    iget-object v1, p0, Led;->c:Led$a;

    .line 44
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 47
    return-void
.end method


# virtual methods
.method public a()Ljava/util/HashMap;
    .locals 1

    .line 1
    iget-object v0, p0, Led;->f:Ljava/util/HashMap;

    .line 3
    return-object v0
.end method

.method public declared-synchronized b()Ljava/lang/Object;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Led;->e:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public c(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    .line 1
    iget-object v0, p0, Led;->a:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/ArrayList;

    .line 9
    return-object p1
.end method

.method public d()V
    .locals 12

    .line 1
    iget-object v0, p0, Led;->a:Ljava/util/HashMap;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    iput-object v0, p0, Led;->a:Ljava/util/HashMap;

    .line 12
    :cond_0
    iget-object v0, p0, Led;->a:Ljava/util/HashMap;

    .line 14
    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 19
    :cond_1
    const-class v0, Lcom/autonavi/amapauto/protocol/constant/StandardProtocolKey;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_5

    .line 27
    array-length v2, v1

    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    :goto_0
    if-ge v4, v2, :cond_5

    .line 32
    aget-object v5, v1, v4

    .line 34
    const/4 v6, 0x1

    .line 35
    new-array v7, v6, [Ljava/lang/Object;

    .line 37
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 40
    move-result-object v8

    .line 41
    aput-object v8, v7, v3

    .line 43
    const-string v8, "[ALSimulate] BroadcastAssertAnnotationProcessor"

    .line 45
    const-string v9, "initAnnotationData field = {?}"

    .line 47
    invoke-static {v8, v9, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    invoke-virtual {v5, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 53
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 56
    move-result-object v7

    .line 57
    const/4 v9, 0x0

    .line 58
    :try_start_0
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-result-object v10

    .line 62
    instance-of v11, v10, Ljava/lang/String;

    .line 64
    if-eqz v11, :cond_2

    .line 66
    check-cast v10, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    move-object v9, v10

    .line 69
    goto :goto_1

    .line 70
    :catch_0
    move-exception v10

    .line 71
    new-array v6, v6, [Ljava/lang/Object;

    .line 73
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 76
    move-result-object v10

    .line 77
    aput-object v10, v6, v3

    .line 79
    const-string v10, "initAnnotationData e = {?}"

    .line 81
    invoke-static {v8, v10, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    :cond_2
    :goto_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    move-result v6

    .line 88
    if-nez v6, :cond_3

    .line 90
    iget-object v6, p0, Led;->f:Ljava/util/HashMap;

    .line 92
    invoke-virtual {v6, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_3
    const-class v6, Lid;

    .line 97
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 100
    move-result-object v5

    .line 101
    check-cast v5, Lid;

    .line 103
    if-eqz v5, :cond_4

    .line 105
    invoke-interface {v5}, Lid;->value()[Ljava/lang/String;

    .line 108
    move-result-object v5

    .line 109
    invoke-virtual {p0, v7, v5}, Led;->f(Ljava/lang/String;[Ljava/lang/String;)V

    .line 112
    goto :goto_2

    .line 113
    :cond_4
    const-string v5, "initAnnotationData broadcastFieldSimpleInteractions==null"

    .line 115
    new-array v6, v3, [Ljava/lang/Object;

    .line 117
    invoke-static {v8, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 122
    goto :goto_0

    .line 123
    :cond_5
    return-void
.end method

.method public declared-synchronized e()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Led;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public f(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p1, v1, v2

    .line 7
    const-string v3, "[ALSimulate] BroadcastAssertAnnotationProcessor"

    .line 9
    const-string v4, "parseToBroadcastAssertRules fieldName = {?}"

    .line 11
    invoke-static {v3, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_6

    .line 20
    if-eqz p2, :cond_6

    .line 22
    array-length v1, p2

    .line 23
    const/4 v4, 0x0

    .line 24
    :goto_0
    if-ge v4, v1, :cond_6

    .line 26
    aget-object v5, p2, v4

    .line 28
    new-array v6, v0, [Ljava/lang/Object;

    .line 30
    aput-object v5, v6, v2

    .line 32
    const-string v7, "parseToBroadcastAssertRules assertRule = {?}"

    .line 34
    invoke-static {v3, v7, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    invoke-static {v5}, Lcd;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 40
    move-result-object v5

    .line 41
    if-eqz v5, :cond_4

    .line 43
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 46
    move-result-object v6

    .line 47
    const/4 v7, 0x0

    .line 48
    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v8

    .line 52
    if-eqz v8, :cond_5

    .line 54
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v8

    .line 58
    check-cast v8, [Ljava/lang/String;

    .line 60
    if-eqz v8, :cond_3

    .line 62
    array-length v9, v8

    .line 63
    const/4 v10, 0x2

    .line 64
    if-ne v9, v10, :cond_3

    .line 66
    const-string v9, "protocolId"

    .line 68
    aget-object v11, v8, v2

    .line 70
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v9

    .line 74
    if-eqz v9, :cond_2

    .line 76
    new-instance v6, Lre0;

    .line 78
    invoke-direct {v6}, Lre0;-><init>()V

    .line 81
    invoke-virtual {v6, p1}, Lre0;->d(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v6, v5}, Lre0;->c(Ljava/util/ArrayList;)V

    .line 87
    iget-object v5, p0, Led;->a:Ljava/util/HashMap;

    .line 89
    aget-object v7, v8, v0

    .line 91
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    move-result-object v5

    .line 95
    check-cast v5, Ljava/util/ArrayList;

    .line 97
    if-nez v5, :cond_1

    .line 99
    new-instance v5, Ljava/util/ArrayList;

    .line 101
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 104
    iget-object v7, p0, Led;->a:Ljava/util/HashMap;

    .line 106
    aget-object v8, v8, v0

    .line 108
    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_1
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 114
    move-result v7

    .line 115
    if-nez v7, :cond_5

    .line 117
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    goto :goto_2

    .line 121
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 123
    new-array v8, v10, [Ljava/lang/Object;

    .line 125
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    move-result-object v9

    .line 129
    aput-object v9, v8, v2

    .line 131
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 134
    move-result v9

    .line 135
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    move-result-object v9

    .line 139
    aput-object v9, v8, v0

    .line 141
    const-string v9, "parseToBroadcastAssertRules not PROTOCOL_ID assertRuleUnitCount = {?}, assertRuleUnitArrayList.size = {?}"

    .line 143
    invoke-static {v3, v9, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 149
    move-result v8

    .line 150
    if-ne v7, v8, :cond_0

    .line 152
    const-string v8, "parseToBroadcastAssertRules has no PROTOCOL_ID"

    .line 154
    new-array v9, v2, [Ljava/lang/Object;

    .line 156
    invoke-static {v3, v8, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    goto :goto_1

    .line 160
    :cond_3
    const-string v8, "parseToBroadcastAssertRules assertRuleUnit==null || assertRuleUnit.length != 2"

    .line 162
    new-array v9, v2, [Ljava/lang/Object;

    .line 164
    invoke-static {v3, v8, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    goto :goto_1

    .line 168
    :cond_4
    const-string v5, "parseToBroadcastAssertRules assertRuleUnitArrayList==null"

    .line 170
    new-array v6, v2, [Ljava/lang/Object;

    .line 172
    invoke-static {v3, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 177
    goto/16 :goto_0

    .line 179
    :cond_6
    return-void
.end method

.method public g(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Led;->d:Z

    .line 3
    return-void
.end method
