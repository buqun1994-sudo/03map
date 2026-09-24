.class public Lcom/amap/location/support/icecream/IcecreamInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public dependLocalVersion:Ljava/lang/String;

.field public encrypted:Z

.field public hasSO:Z

.field public mainClass:Ljava/lang/String;

.field public md5:Ljava/lang/String;

.field public mobile:Z

.field public name:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/amap/location/support/icecream/IcecreamInfo;->name:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/amap/location/support/icecream/IcecreamInfo;->url:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/amap/location/support/icecream/IcecreamInfo;->md5:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/amap/location/support/icecream/IcecreamInfo;->mainClass:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/amap/location/support/icecream/IcecreamInfo;->dependLocalVersion:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/amap/location/support/icecream/IcecreamInfo;->hasSO:Z

    .line 19
    iput-boolean v0, p0, Lcom/amap/location/support/icecream/IcecreamInfo;->encrypted:Z

    .line 21
    iput-boolean v0, p0, Lcom/amap/location/support/icecream/IcecreamInfo;->mobile:Z

    .line 23
    return-void
.end method

.method public static buildIcecream(Lorg/json/JSONObject;)Lcom/amap/location/support/icecream/IcecreamInfo;
    .locals 10

    .line 1
    const-string v0, "n"

    .line 3
    const-string v1, ""

    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "md"

    .line 11
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    const-string v2, "url"

    .line 17
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    const-string v3, "mc"

    .line 23
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v3

    .line 27
    const-string v4, "so"

    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 33
    move-result v4

    .line 34
    const-string v6, "v"

    .line 36
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v6

    .line 40
    const-string v7, "t"

    .line 42
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object v7

    .line 46
    const-string v8, "ed"

    .line 48
    invoke-virtual {p0, v8, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 51
    move-result v8

    .line 52
    const-string v9, "mo"

    .line 54
    invoke-virtual {p0, v9, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 57
    move-result p0

    .line 58
    new-instance v5, Lcom/amap/location/support/icecream/IcecreamInfo;

    .line 60
    invoke-direct {v5}, Lcom/amap/location/support/icecream/IcecreamInfo;-><init>()V

    .line 63
    iput-object v0, v5, Lcom/amap/location/support/icecream/IcecreamInfo;->name:Ljava/lang/String;

    .line 65
    iput-object v1, v5, Lcom/amap/location/support/icecream/IcecreamInfo;->md5:Ljava/lang/String;

    .line 67
    iput-object v2, v5, Lcom/amap/location/support/icecream/IcecreamInfo;->url:Ljava/lang/String;

    .line 69
    iput-object v3, v5, Lcom/amap/location/support/icecream/IcecreamInfo;->mainClass:Ljava/lang/String;

    .line 71
    iput-object v6, v5, Lcom/amap/location/support/icecream/IcecreamInfo;->dependLocalVersion:Ljava/lang/String;

    .line 73
    iput-boolean v4, v5, Lcom/amap/location/support/icecream/IcecreamInfo;->hasSO:Z

    .line 75
    iput-object v7, v5, Lcom/amap/location/support/icecream/IcecreamInfo;->type:Ljava/lang/String;

    .line 77
    iput-boolean v8, v5, Lcom/amap/location/support/icecream/IcecreamInfo;->encrypted:Z

    .line 79
    iput-boolean p0, v5, Lcom/amap/location/support/icecream/IcecreamInfo;->mobile:Z

    .line 81
    return-object v5
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "IcecreamInfo{name=\'"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/amap/location/support/icecream/IcecreamInfo;->name:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const/16 v1, 0x27

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, ", type=\'"

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v2, p0, Lcom/amap/location/support/icecream/IcecreamInfo;->type:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    const-string v2, ", url=\'"

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v2, p0, Lcom/amap/location/support/icecream/IcecreamInfo;->url:Ljava/lang/String;

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    const-string v2, ", md5=\'"

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v2, p0, Lcom/amap/location/support/icecream/IcecreamInfo;->md5:Ljava/lang/String;

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    const-string v2, ", hasSO=\'"

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-boolean v2, p0, Lcom/amap/location/support/icecream/IcecreamInfo;->hasSO:Z

    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    const-string v2, ", mainClass=\'"

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v2, p0, Lcom/amap/location/support/icecream/IcecreamInfo;->mainClass:Ljava/lang/String;

    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ", dependLocalVersion="

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v1, p0, Lcom/amap/location/support/icecream/IcecreamInfo;->dependLocalVersion:Ljava/lang/String;

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, ", encrypted="

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-boolean v1, p0, Lcom/amap/location/support/icecream/IcecreamInfo;->encrypted:Z

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, ", mobile="

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-boolean v1, p0, Lcom/amap/location/support/icecream/IcecreamInfo;->mobile:Z

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 116
    const/16 v1, 0x7d

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v0

    .line 125
    return-object v0
.end method
