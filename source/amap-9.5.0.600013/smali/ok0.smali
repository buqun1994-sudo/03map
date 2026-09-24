.class public abstract Lok0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = ""

.field public static b:Ljava/util/Map;

.field public static c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic a(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lok0;->b(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method public static b(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;Landroid/content/Context;)V
    .locals 11

    .line 1
    instance-of v0, p0, Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel;

    .line 3
    if-eqz v0, :cond_4

    .line 5
    check-cast p0, Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel;

    .line 7
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel;->getVersionName()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lok0;->a:Ljava/lang/String;

    .line 13
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel;->getMapServiceModelVersion()Ljava/util/Map;

    .line 16
    move-result-object p0

    .line 17
    sput-object p0, Lok0;->b:Ljava/util/Map;

    .line 19
    const/4 p0, 0x2

    .line 20
    new-array v0, p0, [Ljava/lang/Object;

    .line 22
    const/4 v1, 0x0

    .line 23
    const-string v2, "4.0.0.20200410"

    .line 25
    aput-object v2, v0, v1

    .line 27
    sget-object v3, Lok0;->a:Ljava/lang/String;

    .line 29
    const/4 v4, 0x1

    .line 30
    aput-object v3, v0, v4

    .line 32
    const-string v3, "VersionUtil"

    .line 34
    const-string v5, "client clientVersion = {?}, serverVersion = {?}"

    .line 36
    invoke-static {v3, v5, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    sget-object v0, Lok0;->b:Ljava/util/Map;

    .line 41
    if-eqz v0, :cond_0

    .line 43
    const-string v0, "Service Model Version:"

    .line 45
    new-array v5, v1, [Ljava/lang/Object;

    .line 47
    invoke-static {v3, v0, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    sget-object v0, Lok0;->b:Ljava/util/Map;

    .line 52
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 55
    move-result-object v0

    .line 56
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 59
    move-result-object v0

    .line 60
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_0

    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    move-result-object v5

    .line 70
    check-cast v5, Ljava/util/Map$Entry;

    .line 72
    new-array v6, p0, [Ljava/lang/Object;

    .line 74
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 77
    move-result-object v7

    .line 78
    aput-object v7, v6, v1

    .line 80
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 83
    move-result-object v5

    .line 84
    aput-object v5, v6, v4

    .line 86
    const-string v5, "{?}:{?}"

    .line 88
    invoke-static {v3, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    goto :goto_0

    .line 92
    :cond_0
    invoke-static {v2}, Lok0;->c(Ljava/lang/String;)I

    .line 95
    move-result p0

    .line 96
    invoke-static {v2}, Lok0;->e(Ljava/lang/String;)I

    .line 99
    move-result v0

    .line 100
    sget-object v2, Lok0;->a:Ljava/lang/String;

    .line 102
    invoke-static {v2}, Lok0;->c(Ljava/lang/String;)I

    .line 105
    move-result v2

    .line 106
    sget-object v5, Lok0;->a:Ljava/lang/String;

    .line 108
    invoke-static {v5}, Lok0;->e(Ljava/lang/String;)I

    .line 111
    move-result v5

    .line 112
    int-to-long v6, v5

    .line 113
    const-wide/32 v8, 0x1343bda

    .line 116
    cmp-long v10, v6, v8

    .line 118
    if-gez v10, :cond_3

    .line 120
    if-gt p0, v2, :cond_1

    .line 122
    if-le v0, v5, :cond_2

    .line 124
    :cond_1
    new-instance p0, Landroid/os/Handler;

    .line 126
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 129
    move-result-object v0

    .line 130
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 133
    new-instance v0, Lok0$b;

    .line 135
    invoke-direct {v0, p1}, Lok0$b;-><init>(Landroid/content/Context;)V

    .line 138
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 141
    :cond_2
    sput-boolean v1, Lok0;->c:Z

    .line 143
    goto :goto_1

    .line 144
    :cond_3
    sput-boolean v4, Lok0;->c:Z

    .line 146
    const-string p0, "HIGH_CLIENT_LOW_SERVICE_COMPATIBILITY_DATE"

    .line 148
    new-array p1, v1, [Ljava/lang/Object;

    .line 150
    invoke-static {v3, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    :cond_4
    :goto_1
    return-void
.end method

.method public static c(Ljava/lang/String;)I
    .locals 3

    .line 1
    const-string v0, "."

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 7
    move-result v2

    .line 8
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 12
    const-string v2, ""

    .line 14
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 21
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    return v1
.end method

.method public static d(Ljava/lang/String;)I
    .locals 1

    .line 1
    sget-object v0, Lok0;->b:Ljava/util/Map;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/Integer;

    .line 11
    if-eqz p0, :cond_0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, -0x1

    .line 19
    return p0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "."

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 20
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return p0

    .line 22
    :catch_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public static f()Z
    .locals 1

    .line 1
    sget-boolean v0, Lok0;->c:Z

    .line 3
    return v0
.end method

.method public static g(Ljava/lang/Runnable;)V
    .locals 4

    .line 1
    invoke-static {}, Lta;->b()Lta;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel;

    .line 7
    const-string v2, "4.0.0.20200410"

    .line 9
    invoke-static {}, Lv10;->a()Ljava/util/Map;

    .line 12
    move-result-object v3

    .line 13
    invoke-direct {v1, v2, v3}, Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 16
    new-instance v2, Lok0$a;

    .line 18
    invoke-direct {v2, p0}, Lok0$a;-><init>(Ljava/lang/Runnable;)V

    .line 21
    invoke-virtual {v0, v1, v2}, Lta;->e(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;Lys;)I

    .line 24
    return-void
.end method
