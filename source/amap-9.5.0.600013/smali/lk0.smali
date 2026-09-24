.class public Llk0;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lo2;


# instance fields
.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel;->getVersionName()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Llk0;->l:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Llk0;->k:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel;->getMapClientModelVersion()Ljava/util/Map;

    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Llk0;->m:Ljava/util/Map;

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    const-string v0, "clientVersion="

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-object v0, p0, Llk0;->l:Ljava/lang/String;

    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string v0, ",packageName="

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object v0, p0, Llk0;->k:Ljava/lang/String;

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    const-string v0, "VersionCheckAction"

    .line 53
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 3

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel;

    .line 3
    const-string v1, "4.0.0.20200410"

    .line 5
    invoke-static {}, Lu10;->a()Ljava/util/Map;

    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 12
    return-object v0
.end method

.method public d()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "4.0.0.20200410"

    .line 7
    aput-object v3, v1, v2

    .line 9
    const-string v4, "VersionCheckAction"

    .line 11
    const-string v5, "serverVersion:{?}"

    .line 13
    invoke-static {v4, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    const/4 v1, 0x2

    .line 17
    new-array v5, v1, [Ljava/lang/Object;

    .line 19
    iget-object v6, p0, Llk0;->k:Ljava/lang/String;

    .line 21
    aput-object v6, v5, v2

    .line 23
    iget-object v6, p0, Llk0;->l:Ljava/lang/String;

    .line 25
    aput-object v6, v5, v0

    .line 27
    const-string v6, "clientVersion:{?}={?}"

    .line 29
    invoke-static {v4, v6, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    new-instance v5, Ljava/lang/StringBuilder;

    .line 34
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    const-string v6, "clientVersion="

    .line 39
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object v6, p0, Llk0;->l:Ljava/lang/String;

    .line 44
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v6, ",serverVersion="

    .line 49
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v3

    .line 59
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    .line 64
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    const-string v5, "mapClientModelVersion="

    .line 69
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v5, p0, Llk0;->m:Ljava/util/Map;

    .line 74
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v3

    .line 81
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v3, p0, Llk0;->m:Ljava/util/Map;

    .line 86
    if-eqz v3, :cond_0

    .line 88
    const-string v3, "client Model Version"

    .line 90
    new-array v5, v2, [Ljava/lang/Object;

    .line 92
    invoke-static {v4, v3, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iget-object v3, p0, Llk0;->m:Ljava/util/Map;

    .line 97
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 100
    move-result-object v3

    .line 101
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 104
    move-result-object v3

    .line 105
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    move-result v5

    .line 109
    if-eqz v5, :cond_0

    .line 111
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    move-result-object v5

    .line 115
    check-cast v5, Ljava/util/Map$Entry;

    .line 117
    new-array v6, v1, [Ljava/lang/Object;

    .line 119
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 122
    move-result-object v7

    .line 123
    aput-object v7, v6, v2

    .line 125
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 128
    move-result-object v5

    .line 129
    aput-object v5, v6, v0

    .line 131
    const-string v5, "{?}:{?}"

    .line 133
    invoke-static {v4, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Llk0;->k:Ljava/lang/String;

    .line 139
    iget-object v1, p0, Llk0;->l:Ljava/lang/String;

    .line 141
    iget-object v2, p0, Llk0;->m:Ljava/util/Map;

    .line 143
    invoke-static {v0, v1, v2}, Lqk0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 146
    invoke-virtual {p0}, Lnc;->f()V

    .line 149
    return-void
.end method
