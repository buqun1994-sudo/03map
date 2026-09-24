.class public abstract Lvp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvp$a;
    }
.end annotation


# instance fields
.field private methodMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .line 1
    iget-object v0, p0, Lvp;->methodMap:Ljava/util/Map;

    .line 3
    if-nez v0, :cond_4

    .line 5
    const-class v0, Lvp;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    const-string v1, "HttpServe"

    .line 10
    const-string v2, "checkInit"

    .line 12
    const/4 v3, 0x0

    .line 13
    new-array v4, v3, [Ljava/lang/Object;

    .line 15
    invoke-static {v1, v2, v4}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-object v1, p0, Lvp;->methodMap:Ljava/util/Map;

    .line 20
    if-nez v1, :cond_3

    .line 22
    new-instance v1, Ljava/util/HashMap;

    .line 24
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 27
    iput-object v1, p0, Lvp;->methodMap:Ljava/util/Map;

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 36
    move-result-object v1

    .line 37
    if-nez v1, :cond_0

    .line 39
    const-string v2, "HttpServe"

    .line 41
    const-string v4, "methods is null"

    .line 43
    new-array v5, v3, [Ljava/lang/Object;

    .line 45
    invoke-static {v2, v4, v5}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const-string v2, "HttpServe"

    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    const-string v5, "methods size = "

    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    array-length v5, v1

    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v4

    .line 69
    new-array v5, v3, [Ljava/lang/Object;

    .line 71
    invoke-static {v2, v4, v5}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    :goto_0
    array-length v2, v1

    .line 75
    const/4 v4, 0x0

    .line 76
    :goto_1
    if-ge v4, v2, :cond_3

    .line 78
    aget-object v5, v1, v4

    .line 80
    if-nez v5, :cond_1

    .line 82
    goto/16 :goto_2

    .line 84
    :cond_1
    const-string v6, "HttpServe"

    .line 86
    new-instance v7, Ljava/lang/StringBuilder;

    .line 88
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    const-string v8, "method name is:"

    .line 93
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 99
    move-result-object v8

    .line 100
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v7

    .line 107
    new-array v8, v3, [Ljava/lang/Object;

    .line 109
    invoke-static {v6, v7, v8}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    const-class v6, Lvp$a;

    .line 114
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 117
    move-result-object v6

    .line 118
    check-cast v6, Lvp$a;

    .line 120
    const-string v7, "HttpServe"

    .line 122
    new-instance v8, Ljava/lang/StringBuilder;

    .line 124
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    const-string v9, "method name is:"

    .line 129
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 135
    move-result-object v9

    .line 136
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v9, " path is :"

    .line 141
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object v8

    .line 151
    new-array v9, v3, [Ljava/lang/Object;

    .line 153
    invoke-static {v7, v8, v9}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    if-eqz v6, :cond_2

    .line 158
    invoke-interface {v6}, Lvp$a;->path()Ljava/lang/String;

    .line 161
    move-result-object v7

    .line 162
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 165
    move-result v7

    .line 166
    if-nez v7, :cond_2

    .line 168
    const-class v7, Lf20$n;

    .line 170
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 173
    move-result-object v8

    .line 174
    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 177
    move-result v7

    .line 178
    if-eqz v7, :cond_2

    .line 180
    const-string v7, "HttpServe"

    .line 182
    new-instance v8, Ljava/lang/StringBuilder;

    .line 184
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    const-string v9, "method name is:"

    .line 189
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 195
    move-result-object v9

    .line 196
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string v9, " path is :"

    .line 201
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-interface {v6}, Lvp$a;->path()Ljava/lang/String;

    .line 207
    move-result-object v9

    .line 208
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    move-result-object v8

    .line 215
    new-array v9, v3, [Ljava/lang/Object;

    .line 217
    invoke-static {v7, v8, v9}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    iget-object v7, p0, Lvp;->methodMap:Ljava/util/Map;

    .line 222
    invoke-interface {v6}, Lvp$a;->path()Ljava/lang/String;

    .line 225
    move-result-object v6

    .line 226
    invoke-interface {v7, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const/4 v6, 0x1

    .line 230
    invoke-virtual {v5, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 233
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 235
    goto/16 :goto_1

    .line 237
    :cond_3
    monitor-exit v0

    .line 238
    goto :goto_3

    .line 239
    :catchall_0
    move-exception v1

    .line 240
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    throw v1

    .line 242
    :cond_4
    :goto_3
    return-void
.end method

.method public invoke(Lf20$l;)Lf20$n;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lvp;->a()V

    .line 4
    invoke-interface {p1}, Lf20$l;->c()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    const-string v2, "uri is:"

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x0

    .line 30
    new-array v3, v2, [Ljava/lang/Object;

    .line 32
    const-string v4, "HttpServe"

    .line 34
    invoke-static {v4, v1, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    const/4 v1, 0x0

    .line 38
    if-nez v0, :cond_0

    .line 40
    return-object v1

    .line 41
    :cond_0
    iget-object v3, p0, Lvp;->methodMap:Ljava/util/Map;

    .line 43
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Ljava/lang/reflect/Method;

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    const-string v5, "method is:"

    .line 60
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v3

    .line 70
    new-array v5, v2, [Ljava/lang/Object;

    .line 72
    invoke-static {v4, v3, v5}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    if-eqz v0, :cond_1

    .line 77
    const/4 v3, 0x1

    .line 78
    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    .line 80
    aput-object p1, v3, v2

    .line 82
    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Lf20$n;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    return-object p1

    .line 89
    :catch_0
    move-exception p1

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    const-string v3, "exception is:"

    .line 97
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 111
    new-array v2, v2, [Ljava/lang/Object;

    .line 113
    invoke-static {v4, v0, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 119
    :cond_1
    return-object v1
.end method
