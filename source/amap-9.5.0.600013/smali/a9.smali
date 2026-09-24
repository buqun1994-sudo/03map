.class public La9;
.super Lfi;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfi;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getStringValue(I)Ljava/lang/String;
    .locals 6

    .line 1
    const v0, 0x9c45

    .line 4
    if-eq p1, v0, :cond_0

    .line 6
    invoke-super {p0, p1}, Lac;->getStringValue(I)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :cond_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lrv;->z()Landroid/content/Context;

    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Ls1;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 22
    move-result-object p1

    .line 23
    const-string v0, "/emulated/"

    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz p1, :cond_5

    .line 28
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 31
    move-result v2

    .line 32
    if-lez v2, :cond_5

    .line 34
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object v2

    .line 38
    move-object v3, v1

    .line 39
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_2

    .line 45
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Lcom/autonavi/amapauto/offline/model/StorageInfo;

    .line 51
    iget v5, v4, Lcom/autonavi/amapauto/offline/model/StorageInfo;->isExternalCard:I

    .line 53
    if-nez v5, :cond_1

    .line 55
    iget-object v3, v4, Lcom/autonavi/amapauto/offline/model/StorageInfo;->path:Ljava/lang/String;

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_3

    .line 64
    invoke-static {}, Lr50;->i()Ljava/io/File;

    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 71
    move-result-object v3

    .line 72
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 75
    move-result-object p1

    .line 76
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_6

    .line 82
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Lcom/autonavi/amapauto/offline/model/StorageInfo;

    .line 88
    iget v4, v2, Lcom/autonavi/amapauto/offline/model/StorageInfo;->isExternalCard:I

    .line 90
    const/4 v5, 0x1

    .line 91
    if-ne v4, v5, :cond_4

    .line 93
    iget-object v4, v2, Lcom/autonavi/amapauto/offline/model/StorageInfo;->path:Ljava/lang/String;

    .line 95
    invoke-static {v4, v3}, Ls1;->A(Ljava/lang/String;Ljava/lang/String;)Z

    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_4

    .line 101
    iget-object v4, v2, Lcom/autonavi/amapauto/offline/model/StorageInfo;->path:Ljava/lang/String;

    .line 103
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 106
    move-result v4

    .line 107
    if-nez v4, :cond_4

    .line 109
    iget-object v4, v2, Lcom/autonavi/amapauto/offline/model/StorageInfo;->path:Ljava/lang/String;

    .line 111
    invoke-static {v4}, Ls1;->B(Ljava/lang/String;)Z

    .line 114
    move-result v4

    .line 115
    if-eqz v4, :cond_4

    .line 117
    iget-object v4, v2, Lcom/autonavi/amapauto/offline/model/StorageInfo;->path:Ljava/lang/String;

    .line 119
    invoke-static {v3, v4}, Ls1;->A(Ljava/lang/String;Ljava/lang/String;)Z

    .line 122
    move-result v4

    .line 123
    if-nez v4, :cond_4

    .line 125
    iget-object v4, v2, Lcom/autonavi/amapauto/offline/model/StorageInfo;->path:Ljava/lang/String;

    .line 127
    sget-object v5, Ls1$b;->a:Ls1$b;

    .line 129
    invoke-static {v4, v5}, Ls1;->w(Ljava/lang/String;Ls1$b;)Z

    .line 132
    move-result v4

    .line 133
    if-eqz v4, :cond_4

    .line 135
    iget-object p1, v2, Lcom/autonavi/amapauto/offline/model/StorageInfo;->path:Ljava/lang/String;

    .line 137
    return-object p1

    .line 138
    :cond_5
    move-object v3, v1

    .line 139
    :cond_6
    invoke-static {}, Ls1;->q()Ljava/util/List;

    .line 142
    move-result-object p1

    .line 143
    if-eqz p1, :cond_8

    .line 145
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 148
    move-result v2

    .line 149
    if-lez v2, :cond_8

    .line 151
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 154
    move-result-object p1

    .line 155
    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    move-result v2

    .line 159
    if-eqz v2, :cond_8

    .line 161
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    move-result-object v2

    .line 165
    check-cast v2, Ljava/lang/String;

    .line 167
    if-eqz v2, :cond_7

    .line 169
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 172
    move-result v4

    .line 173
    if-nez v4, :cond_7

    .line 175
    invoke-static {v2}, Ls1;->B(Ljava/lang/String;)Z

    .line 178
    move-result v4

    .line 179
    if-eqz v4, :cond_7

    .line 181
    invoke-static {v3, v2}, Ls1;->A(Ljava/lang/String;Ljava/lang/String;)Z

    .line 184
    move-result v4

    .line 185
    if-nez v4, :cond_7

    .line 187
    sget-object v4, Ls1$b;->a:Ls1$b;

    .line 189
    invoke-static {v2, v4}, Ls1;->w(Ljava/lang/String;Ls1$b;)Z

    .line 192
    move-result v4

    .line 193
    if-eqz v4, :cond_7

    .line 195
    const-string v4, "media_rw"

    .line 197
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 200
    move-result v4

    .line 201
    if-nez v4, :cond_7

    .line 203
    return-object v2

    .line 204
    :cond_8
    return-object v1
.end method
