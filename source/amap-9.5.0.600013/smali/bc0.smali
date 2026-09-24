.class public Lbc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrq;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "SchemeDataHandle"

    .line 6
    iput-object v0, p0, Lbc0;->a:Ljava/lang/String;

    .line 8
    new-instance v0, Landroid/os/Handler;

    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    iput-object v0, p0, Lbc0;->c:Landroid/os/Handler;

    .line 19
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lnc;
    .locals 0

    .line 1
    check-cast p1, Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, p1}, Lbc0;->d(Landroid/content/Intent;)Lnc;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public b(Landroid/net/Uri;)Lnc;
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_5

    .line 4
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 7
    move-result-object v1

    .line 8
    if-nez v1, :cond_0

    .line 10
    goto/16 :goto_2

    .line 12
    :cond_0
    const-string v1, "geo"

    .line 14
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_5

    .line 24
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    const/4 v1, 0x1

    .line 29
    new-array v2, v1, [Ljava/lang/Object;

    .line 31
    const/4 v3, 0x0

    .line 32
    aput-object p1, v2, v3

    .line 34
    const-string v4, "SchemeDataHandle"

    .line 36
    const-string v5, "uri.getSchemeSpecificPart={?}"

    .line 38
    invoke-static {v4, v5, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 47
    const-string p1, "uri.getSchemeSpecificPart()"

    .line 49
    new-array v1, v3, [Ljava/lang/Object;

    .line 51
    invoke-static {v4, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    return-object v0

    .line 55
    :cond_1
    const-string v0, "\\?"

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    array-length v0, p1

    .line 62
    const/4 v2, 0x2

    .line 63
    const-wide/16 v4, 0x0

    .line 65
    if-lez v0, :cond_2

    .line 67
    aget-object v0, p1, v3

    .line 69
    const-string v6, ","

    .line 71
    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    array-length v6, v0

    .line 76
    if-ne v6, v2, :cond_2

    .line 78
    aget-object v3, v0, v3

    .line 80
    invoke-static {v3, v4, v5}, Lah;->j(Ljava/lang/String;D)D

    .line 83
    move-result-wide v6

    .line 84
    aget-object v0, v0, v1

    .line 86
    invoke-static {v0, v4, v5}, Lah;->j(Ljava/lang/String;D)D

    .line 89
    move-result-wide v4

    .line 90
    move-wide v11, v4

    .line 91
    move-wide v9, v6

    .line 92
    goto :goto_0

    .line 93
    :cond_2
    move-wide v9, v4

    .line 94
    move-wide v11, v9

    .line 95
    :goto_0
    array-length v0, p1

    .line 96
    if-le v0, v1, :cond_4

    .line 98
    aget-object v0, p1, v1

    .line 100
    const-string v3, "q="

    .line 102
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 105
    move-result-object v0

    .line 106
    array-length v3, v0

    .line 107
    if-lt v3, v2, :cond_3

    .line 109
    aget-object p1, v0, v1

    .line 111
    goto :goto_1

    .line 112
    :cond_3
    aget-object p1, p1, v1

    .line 114
    goto :goto_1

    .line 115
    :cond_4
    const-string p1, ""

    .line 117
    :goto_1
    move-object v13, p1

    .line 118
    new-instance v0, Lvz;

    .line 120
    move-object v8, v0

    .line 121
    invoke-direct/range {v8 .. v13}, Lvz;-><init>(DDLjava/lang/String;)V

    .line 124
    :cond_5
    :goto_2
    return-object v0
.end method

.method public c(Landroid/net/Uri;)Lnc;
    .locals 5

    .line 1
    const-string v0, "operType"

    .line 3
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_2

    .line 13
    const/4 v1, 0x0

    .line 14
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 17
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    const-string v2, "doVoiceOpercation parseInt typeStr "

    .line 22
    new-array v3, v1, [Ljava/lang/Object;

    .line 24
    const-string v4, "SchemeDataHandle"

    .line 26
    invoke-static {v4, v2, v0, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 29
    const/4 v0, -0x1

    .line 30
    :goto_0
    const/4 v2, 0x1

    .line 31
    packed-switch v0, :pswitch_data_0

    .line 34
    :pswitch_0
    goto/16 :goto_1

    .line 36
    :pswitch_1
    new-instance v0, Lvz;

    .line 38
    invoke-direct {v0, p1}, Lvz;-><init>(Landroid/net/Uri;)V

    .line 41
    const/16 p1, 0x13a8

    .line 43
    invoke-virtual {v0, p1}, Lnc;->u(I)V

    .line 46
    goto/16 :goto_2

    .line 48
    :pswitch_2
    new-instance v0, Lqj0;

    .line 50
    invoke-direct {v0}, Lqj0;-><init>()V

    .line 53
    goto/16 :goto_2

    .line 55
    :pswitch_3
    const-string v0, "parameters"

    .line 57
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    new-instance v0, Lqd0;

    .line 63
    new-instance v2, Lcom/autonavi/amapauto/protocol/model/client/drive_module/ShareTripByTelNumModel;

    .line 65
    invoke-direct {v2, p1}, Lcom/autonavi/amapauto/protocol/model/client/drive_module/ShareTripByTelNumModel;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-direct {v0, v2}, Lqd0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/drive_module/ShareTripByTelNumModel;)V

    .line 71
    const/16 p1, 0x13a4

    .line 73
    invoke-virtual {v0, p1}, Lnc;->u(I)V

    .line 76
    invoke-virtual {v0, v1}, Lnc;->r(Z)V

    .line 79
    goto/16 :goto_2

    .line 81
    :pswitch_4
    new-instance v0, Lyz;

    .line 83
    const-string p1, "?switchView=4"

    .line 85
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 88
    move-result-object p1

    .line 89
    invoke-direct {v0, p1}, Lyz;-><init>(Landroid/net/Uri;)V

    .line 92
    goto/16 :goto_2

    .line 94
    :pswitch_5
    new-instance v0, Lyz;

    .line 96
    const-string p1, "?switchView=3"

    .line 98
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 101
    move-result-object p1

    .line 102
    invoke-direct {v0, p1}, Lyz;-><init>(Landroid/net/Uri;)V

    .line 105
    goto/16 :goto_2

    .line 107
    :pswitch_6
    new-instance v0, Ltj0;

    .line 109
    invoke-direct {v0, p1}, Ltj0;-><init>(Landroid/net/Uri;)V

    .line 112
    const/16 p1, 0x139a

    .line 114
    invoke-virtual {v0, p1}, Lnc;->u(I)V

    .line 117
    goto :goto_2

    .line 118
    :pswitch_7
    new-instance v0, Luw;

    .line 120
    invoke-direct {v0}, Luw;-><init>()V

    .line 123
    invoke-virtual {v0, v2}, Lnc;->q(Z)V

    .line 126
    const/16 p1, 0x1396

    .line 128
    invoke-virtual {v0, p1}, Lnc;->u(I)V

    .line 131
    goto :goto_2

    .line 132
    :pswitch_8
    new-instance v0, Lr20;

    .line 134
    invoke-direct {v0, p1}, Lr20;-><init>(Landroid/net/Uri;)V

    .line 137
    const/16 p1, 0x1393

    .line 139
    invoke-virtual {v0, p1}, Lnc;->u(I)V

    .line 142
    goto :goto_2

    .line 143
    :pswitch_9
    invoke-static {}, Lib;->h()Z

    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_0

    .line 149
    new-instance v0, Ltd0;

    .line 151
    invoke-direct {v0, v1, v1}, Ltd0;-><init>(IZ)V

    .line 154
    const/16 p1, 0x13a1

    .line 156
    invoke-virtual {v0, p1}, Lnc;->u(I)V

    .line 159
    goto :goto_2

    .line 160
    :cond_0
    new-instance v0, Lsj0;

    .line 162
    invoke-direct {v0}, Lsj0;-><init>()V

    .line 165
    goto :goto_2

    .line 166
    :pswitch_a
    invoke-static {}, Lib;->h()Z

    .line 169
    move-result p1

    .line 170
    if-eqz p1, :cond_1

    .line 172
    new-instance v0, Lub;

    .line 174
    new-instance p1, Lcom/autonavi/amapauto/protocol/model/client/BackToMapModel;

    .line 176
    const/4 v2, 0x3

    .line 177
    invoke-direct {p1, v2}, Lcom/autonavi/amapauto/protocol/model/client/BackToMapModel;-><init>(I)V

    .line 180
    invoke-direct {v0, p1}, Lub;-><init>(Lcom/autonavi/amapauto/protocol/model/client/BackToMapModel;)V

    .line 183
    invoke-virtual {v0, v1}, Lnc;->r(Z)V

    .line 186
    const/16 p1, 0x13a5

    .line 188
    invoke-virtual {v0, p1}, Lnc;->u(I)V

    .line 191
    goto :goto_2

    .line 192
    :cond_1
    new-instance v0, Loj0;

    .line 194
    invoke-direct {v0}, Loj0;-><init>()V

    .line 197
    goto :goto_2

    .line 198
    :pswitch_b
    new-instance v0, Lw1;

    .line 200
    invoke-direct {v0}, Lw1;-><init>()V

    .line 203
    invoke-virtual {v0, v1}, Lnc;->r(Z)V

    .line 206
    invoke-virtual {v0, v2}, Lnc;->q(Z)V

    .line 209
    const/16 p1, 0x13a2

    .line 211
    invoke-virtual {v0, p1}, Lnc;->u(I)V

    .line 214
    goto :goto_2

    .line 215
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 216
    :goto_2
    return-object v0

    .line 217
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public d(Landroid/content/Intent;)Lnc;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const-string v3, "SchemeDataHandle"

    .line 12
    const/4 v4, 0x0

    .line 13
    if-eqz v1, :cond_1

    .line 15
    new-array v1, v2, [Ljava/lang/Object;

    .line 17
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 20
    move-result-object v5

    .line 21
    invoke-virtual {v5}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 24
    move-result-object v5

    .line 25
    aput-object v5, v1, v4

    .line 27
    const-string v5, "SchemeDataHandle handleDataToAction hasExtra intent = {?}"

    .line 29
    invoke-static {v3, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-array v1, v2, [Ljava/lang/Object;

    .line 35
    aput-object p1, v1, v4

    .line 37
    const-string v5, "SchemeDataHandle handleDataToAction not hasExtra\u3000intent = {?}"

    .line 39
    invoke-static {v3, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_22

    .line 48
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 51
    move-result-object v5

    .line 52
    if-eqz v5, :cond_22

    .line 54
    const-string v5, "androidauto"

    .line 56
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 59
    move-result-object v6

    .line 60
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result v5

    .line 64
    if-nez v5, :cond_2

    .line 66
    const-string v5, "amapauto"

    .line 68
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v5

    .line 76
    if-eqz v5, :cond_22

    .line 78
    :cond_2
    :try_start_0
    const-string v5, "key_caller"

    .line 80
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object v5

    .line 84
    iput-object v5, p0, Lbc0;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    new-array v6, v2, [Ljava/lang/Object;

    .line 88
    aput-object v5, v6, v4

    .line 90
    const-string v5, "intentCallOwner = {?}"

    .line 92
    invoke-static {v3, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    const-string v5, "value_caller_push"

    .line 97
    iget-object v6, p0, Lbc0;->b:Ljava/lang/String;

    .line 99
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    move-result v5

    .line 103
    if-eqz v5, :cond_5

    .line 105
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 108
    move-result-object v5

    .line 109
    new-array v2, v2, [Ljava/lang/Object;

    .line 111
    aput-object v5, v2, v4

    .line 113
    const-string v6, "host:{?}"

    .line 115
    invoke-static {v3, v6, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    const-string v2, "openFeature"

    .line 120
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    move-result v2

    .line 124
    if-eqz v2, :cond_4

    .line 126
    const-string p1, "featureName"

    .line 128
    invoke-virtual {v1, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    move-result-object p1

    .line 132
    const-string v2, "auto"

    .line 134
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_3

    .line 140
    new-instance v0, Luc0;

    .line 142
    invoke-direct {v0, v1}, Luc0;-><init>(Landroid/net/Uri;)V

    .line 145
    goto/16 :goto_3

    .line 147
    :cond_3
    const-string v1, "openUrl"

    .line 149
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    goto/16 :goto_3

    .line 154
    :cond_4
    const-string v2, "agroup"

    .line 156
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_24

    .line 162
    const-string v0, "key_title"

    .line 164
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    move-result-object v0

    .line 168
    const-string v2, "key_message"

    .line 170
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    move-result-object p1

    .line 174
    invoke-static {v0, p1, v1}, Ld2;->x(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Ld2;

    .line 177
    move-result-object v0

    .line 178
    goto/16 :goto_3

    .line 180
    :cond_5
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 183
    move-result-object p1

    .line 184
    new-array v5, v2, [Ljava/lang/Object;

    .line 186
    aput-object p1, v5, v4

    .line 188
    const-string v6, "handleDataToAction : host={?}"

    .line 190
    invoke-static {v3, v6, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 196
    move-result v5

    .line 197
    if-eqz v5, :cond_6

    .line 199
    return-object v0

    .line 200
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 203
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 206
    move-result v5

    .line 207
    const/4 v6, 0x5

    .line 208
    const/4 v7, 0x4

    .line 209
    const/4 v8, -0x1

    .line 210
    sparse-switch v5, :sswitch_data_0

    .line 213
    goto/16 :goto_1

    .line 215
    :sswitch_0
    const-string v5, "naviExit"

    .line 217
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    move-result p1

    .line 221
    if-nez p1, :cond_7

    .line 223
    goto/16 :goto_1

    .line 225
    :cond_7
    const/16 v8, 0x19

    .line 227
    goto/16 :goto_1

    .line 229
    :sswitch_1
    const-string v5, "openUsbGuide"

    .line 231
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    move-result p1

    .line 235
    if-nez p1, :cond_8

    .line 237
    goto/16 :goto_1

    .line 239
    :cond_8
    const/16 v8, 0x18

    .line 241
    goto/16 :goto_1

    .line 243
    :sswitch_2
    const-string v5, "rootmap"

    .line 245
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    move-result p1

    .line 249
    if-nez p1, :cond_9

    .line 251
    goto/16 :goto_1

    .line 253
    :cond_9
    const/16 v8, 0x17

    .line 255
    goto/16 :goto_1

    .line 257
    :sswitch_3
    const-string v5, "colombo"

    .line 259
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    move-result p1

    .line 263
    if-nez p1, :cond_a

    .line 265
    goto/16 :goto_1

    .line 267
    :cond_a
    const/16 v8, 0x16

    .line 269
    goto/16 :goto_1

    .line 271
    :sswitch_4
    const-string v5, "naviRoutePrefer"

    .line 273
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 276
    move-result p1

    .line 277
    if-nez p1, :cond_b

    .line 279
    goto/16 :goto_1

    .line 281
    :cond_b
    const/16 v8, 0x15

    .line 283
    goto/16 :goto_1

    .line 285
    :sswitch_5
    const-string v5, "viewMap"

    .line 287
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    move-result p1

    .line 291
    if-nez p1, :cond_c

    .line 293
    goto/16 :goto_1

    .line 295
    :cond_c
    const/16 v8, 0x14

    .line 297
    goto/16 :goto_1

    .line 299
    :sswitch_6
    const-string v5, "viewGeo"

    .line 301
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 304
    move-result p1

    .line 305
    if-nez p1, :cond_d

    .line 307
    goto/16 :goto_1

    .line 309
    :cond_d
    const/16 v8, 0x13

    .line 311
    goto/16 :goto_1

    .line 313
    :sswitch_7
    const-string v5, "mapOpera"

    .line 315
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 318
    move-result p1

    .line 319
    if-nez p1, :cond_e

    .line 321
    goto/16 :goto_1

    .line 323
    :cond_e
    const/16 v8, 0x12

    .line 325
    goto/16 :goto_1

    .line 327
    :sswitch_8
    const-string v5, "route"

    .line 329
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 332
    move-result p1

    .line 333
    if-nez p1, :cond_f

    .line 335
    goto/16 :goto_1

    .line 337
    :cond_f
    const/16 v8, 0x11

    .line 339
    goto/16 :goto_1

    .line 341
    :sswitch_9
    const-string v5, "navi"

    .line 343
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 346
    move-result p1

    .line 347
    if-nez p1, :cond_10

    .line 349
    goto/16 :goto_1

    .line 351
    :cond_10
    const/16 v8, 0x10

    .line 353
    goto/16 :goto_1

    .line 355
    :sswitch_a
    const-string v5, "poi"

    .line 357
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 360
    move-result p1

    .line 361
    if-nez p1, :cond_11

    .line 363
    goto/16 :goto_1

    .line 365
    :cond_11
    const/16 v8, 0xf

    .line 367
    goto/16 :goto_1

    .line 369
    :sswitch_b
    const-string v5, "launch_do_nothing"

    .line 371
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 374
    move-result p1

    .line 375
    if-nez p1, :cond_12

    .line 377
    goto/16 :goto_1

    .line 379
    :cond_12
    const/16 v8, 0xe

    .line 381
    goto/16 :goto_1

    .line 383
    :sswitch_c
    const-string v5, "naviRoutePreferEx"

    .line 385
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 388
    move-result p1

    .line 389
    if-nez p1, :cond_13

    .line 391
    goto/16 :goto_1

    .line 393
    :cond_13
    const/16 v8, 0xd

    .line 395
    goto/16 :goto_1

    .line 397
    :sswitch_d
    const-string v5, "aloneSearch"

    .line 399
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 402
    move-result p1

    .line 403
    if-nez p1, :cond_14

    .line 405
    goto/16 :goto_1

    .line 407
    :cond_14
    const/16 v8, 0xc

    .line 409
    goto/16 :goto_1

    .line 411
    :sswitch_e
    const-string v5, "searchBase"

    .line 413
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 416
    move-result p1

    .line 417
    if-nez p1, :cond_15

    .line 419
    goto/16 :goto_1

    .line 421
    :cond_15
    const/16 v8, 0xb

    .line 423
    goto/16 :goto_1

    .line 425
    :sswitch_f
    const-string v5, "openFavorite"

    .line 427
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 430
    move-result p1

    .line 431
    if-nez p1, :cond_16

    .line 433
    goto/16 :goto_1

    .line 435
    :cond_16
    const/16 v8, 0xa

    .line 437
    goto/16 :goto_1

    .line 439
    :sswitch_10
    const-string v5, "openOfflineData"

    .line 441
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 444
    move-result p1

    .line 445
    if-nez p1, :cond_17

    .line 447
    goto/16 :goto_1

    .line 449
    :cond_17
    const/16 v8, 0x9

    .line 451
    goto/16 :goto_1

    .line 453
    :sswitch_11
    const-string v5, "appExit"

    .line 455
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 458
    move-result p1

    .line 459
    if-nez p1, :cond_18

    .line 461
    goto/16 :goto_1

    .line 463
    :cond_18
    const/16 v8, 0x8

    .line 465
    goto/16 :goto_1

    .line 467
    :sswitch_12
    const-string v5, "naviPreview"

    .line 469
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 472
    move-result p1

    .line 473
    if-nez p1, :cond_19

    .line 475
    goto :goto_1

    .line 476
    :cond_19
    const/4 v8, 0x7

    .line 477
    goto :goto_1

    .line 478
    :sswitch_13
    const-string v5, "voiceOper"

    .line 480
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 483
    move-result p1

    .line 484
    if-nez p1, :cond_1a

    .line 486
    goto :goto_1

    .line 487
    :cond_1a
    const/4 v8, 0x6

    .line 488
    goto :goto_1

    .line 489
    :sswitch_14
    const-string v5, "keywordNavi"

    .line 491
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 494
    move-result p1

    .line 495
    if-nez p1, :cond_1b

    .line 497
    goto :goto_1

    .line 498
    :cond_1b
    const/4 v8, 0x5

    .line 499
    goto :goto_1

    .line 500
    :sswitch_15
    const-string v5, "settingHomeOrCompany"

    .line 502
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 505
    move-result p1

    .line 506
    if-nez p1, :cond_1c

    .line 508
    goto :goto_1

    .line 509
    :cond_1c
    const/4 v8, 0x4

    .line 510
    goto :goto_1

    .line 511
    :sswitch_16
    const-string v5, "viewReGeo"

    .line 513
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 516
    move-result p1

    .line 517
    if-nez p1, :cond_1d

    .line 519
    goto :goto_1

    .line 520
    :cond_1d
    const/4 v8, 0x3

    .line 521
    goto :goto_1

    .line 522
    :sswitch_17
    const-string v5, "navi2SpecialDest"

    .line 524
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 527
    move-result p1

    .line 528
    if-nez p1, :cond_1e

    .line 530
    goto :goto_1

    .line 531
    :cond_1e
    const/4 v8, 0x2

    .line 532
    goto :goto_1

    .line 533
    :sswitch_18
    const-string v5, "arroundpoi"

    .line 535
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 538
    move-result p1

    .line 539
    if-nez p1, :cond_1f

    .line 541
    goto :goto_1

    .line 542
    :cond_1f
    const/4 v8, 0x1

    .line 543
    goto :goto_1

    .line 544
    :sswitch_19
    const-string v5, "myLocation"

    .line 546
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 549
    move-result p1

    .line 550
    if-nez p1, :cond_20

    .line 552
    goto :goto_1

    .line 553
    :cond_20
    const/4 v8, 0x0

    .line 554
    :goto_1
    packed-switch v8, :pswitch_data_0

    .line 557
    goto/16 :goto_3

    .line 559
    :pswitch_0
    new-instance p1, Lxe0;

    .line 561
    invoke-direct {p1}, Lxe0;-><init>()V

    .line 564
    const/16 v0, 0x1397

    .line 566
    invoke-virtual {p1, v0}, Lnc;->u(I)V

    .line 569
    goto/16 :goto_2

    .line 571
    :pswitch_1
    new-instance p1, Lse0;

    .line 573
    invoke-direct {p1, v6}, Lse0;-><init>(I)V

    .line 576
    goto/16 :goto_2

    .line 578
    :pswitch_2
    new-instance p1, Lww;

    .line 580
    invoke-direct {p1, v1}, Lww;-><init>(Landroid/net/Uri;)V

    .line 583
    goto/16 :goto_2

    .line 585
    :pswitch_3
    new-instance p1, Ldf;

    .line 587
    invoke-direct {p1, v1}, Ldf;-><init>(Landroid/net/Uri;)V

    .line 590
    goto/16 :goto_2

    .line 592
    :pswitch_4
    new-instance p1, Lq20;

    .line 594
    invoke-direct {p1, v1}, Lq20;-><init>(Landroid/net/Uri;)V

    .line 597
    const/16 v0, 0x1394

    .line 599
    invoke-virtual {p1, v0}, Lnc;->u(I)V

    .line 602
    goto/16 :goto_2

    .line 604
    :pswitch_5
    new-instance p1, Lyz;

    .line 606
    invoke-direct {p1, v1}, Lyz;-><init>(Landroid/net/Uri;)V

    .line 609
    goto/16 :goto_2

    .line 611
    :pswitch_6
    new-instance p1, Lib0;

    .line 613
    invoke-direct {p1, v1}, Lib0;-><init>(Landroid/net/Uri;)V

    .line 616
    goto/16 :goto_2

    .line 618
    :pswitch_7
    new-instance p1, Lmi;

    .line 620
    invoke-direct {p1, v1}, Lmi;-><init>(Landroid/net/Uri;)V

    .line 623
    goto/16 :goto_2

    .line 625
    :pswitch_8
    const-string p1, "handleDataToAction : HOST_LAUNCH_DO_NOTHING"

    .line 627
    new-array v1, v4, [Ljava/lang/Object;

    .line 629
    invoke-static {v3, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 632
    goto/16 :goto_3

    .line 634
    :pswitch_9
    new-instance p1, Lq20;

    .line 636
    invoke-direct {p1, v1}, Lq20;-><init>(Landroid/net/Uri;)V

    .line 639
    goto/16 :goto_2

    .line 641
    :pswitch_a
    new-instance p1, Lnj0;

    .line 643
    invoke-direct {p1, v1}, Lnj0;-><init>(Landroid/net/Uri;)V

    .line 646
    goto/16 :goto_2

    .line 648
    :pswitch_b
    invoke-static {}, Lse;->c()Lse;

    .line 651
    move-result-object p1

    .line 652
    const v0, 0xea75

    .line 655
    invoke-virtual {p1, v0}, Lse;->getOptionalValue(I)Leq$a;

    .line 658
    move-result-object p1

    .line 659
    if-eqz p1, :cond_21

    .line 661
    invoke-virtual {p1}, Leq$a;->a()Ljava/lang/Object;

    .line 664
    move-result-object v0

    .line 665
    if-eqz v0, :cond_21

    .line 667
    invoke-virtual {p1}, Leq$a;->a()Ljava/lang/Object;

    .line 670
    move-result-object p1

    .line 671
    check-cast p1, Lnc;

    .line 673
    goto :goto_2

    .line 674
    :cond_21
    new-instance p1, Lcom/autonavi/amapauto/protocol/model/client/PageJumpModel;

    .line 676
    invoke-direct {p1}, Lcom/autonavi/amapauto/protocol/model/client/PageJumpModel;-><init>()V

    .line 679
    invoke-virtual {p1, v2}, Lcom/autonavi/amapauto/protocol/model/client/PageJumpModel;->setPageType(I)V

    .line 682
    new-instance v0, Lf50;

    .line 684
    invoke-direct {v0, p1}, Lf50;-><init>(Lcom/autonavi/amapauto/protocol/model/client/PageJumpModel;)V

    .line 687
    goto/16 :goto_3

    .line 689
    :pswitch_c
    new-instance p1, La50;

    .line 691
    invoke-direct {p1}, La50;-><init>()V

    .line 694
    goto :goto_2

    .line 695
    :pswitch_d
    new-instance p1, Lse0;

    .line 697
    invoke-direct {p1, v7}, Lse0;-><init>(I)V

    .line 700
    goto :goto_2

    .line 701
    :pswitch_e
    new-instance p1, Lfl;

    .line 703
    invoke-direct {p1}, Lfl;-><init>()V

    .line 706
    const-string v0, "SchemeDataHandle appExit"

    .line 708
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    goto :goto_2

    .line 712
    :pswitch_f
    new-instance p1, Lhb0;

    .line 714
    invoke-direct {p1, v1}, Lhb0;-><init>(Landroid/net/Uri;)V

    .line 717
    goto :goto_2

    .line 718
    :pswitch_10
    invoke-virtual {p0, v1}, Lbc0;->c(Landroid/net/Uri;)Lnc;

    .line 721
    move-result-object p1

    .line 722
    goto :goto_2

    .line 723
    :pswitch_11
    new-instance p1, Lru;

    .line 725
    invoke-direct {p1, v1}, Lru;-><init>(Landroid/net/Uri;)V

    .line 728
    goto :goto_2

    .line 729
    :pswitch_12
    new-instance p1, Lbm0;

    .line 731
    invoke-direct {p1, v1}, Lbm0;-><init>(Landroid/net/Uri;)V

    .line 734
    goto :goto_2

    .line 735
    :pswitch_13
    new-instance p1, Lvz;

    .line 737
    invoke-direct {p1, v1}, Lvz;-><init>(Landroid/net/Uri;)V

    .line 740
    goto :goto_2

    .line 741
    :pswitch_14
    new-instance p1, Lpp;

    .line 743
    invoke-direct {p1, v1}, Lpp;-><init>(Landroid/net/Uri;)V

    .line 746
    goto :goto_2

    .line 747
    :pswitch_15
    new-instance p1, Lqu;

    .line 749
    invoke-direct {p1, v1}, Lqu;-><init>(Landroid/net/Uri;)V

    .line 752
    :goto_2
    move-object v0, p1

    .line 753
    goto :goto_3

    .line 754
    :pswitch_16
    new-instance p1, Ltd0;

    .line 756
    invoke-direct {p1, v4, v2}, Ltd0;-><init>(IZ)V

    .line 759
    goto :goto_2

    .line 760
    :catch_0
    move-exception p1

    .line 761
    const-string v1, "handleDataToAction"

    .line 763
    new-array v2, v4, [Ljava/lang/Object;

    .line 765
    invoke-static {v3, v1, p1, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 768
    return-object v0

    .line 769
    :cond_22
    const-string v2, "android.intent.action.VIEW"

    .line 771
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 774
    move-result-object p1

    .line 775
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 778
    move-result p1

    .line 779
    if-nez p1, :cond_23

    .line 781
    invoke-static {}, Lse;->c()Lse;

    .line 784
    move-result-object p1

    .line 785
    const/16 v2, 0x274d

    .line 787
    invoke-virtual {p1, v2}, Lse;->getBooleanValue(I)Z

    .line 790
    move-result p1

    .line 791
    if-eqz p1, :cond_24

    .line 793
    :cond_23
    invoke-virtual {p0, v1}, Lbc0;->b(Landroid/net/Uri;)Lnc;

    .line 796
    move-result-object v0

    .line 797
    :cond_24
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 799
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 802
    const-string v1, "baseProcotolAction "

    .line 804
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 810
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 813
    move-result-object p1

    .line 814
    new-array v1, v4, [Ljava/lang/Object;

    .line 816
    invoke-static {v3, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 819
    return-object v0

    .line 820
    nop

    .line 821
    :sswitch_data_0
    .sparse-switch
        -0x73385a7f -> :sswitch_19
        -0x69b4c6d3 -> :sswitch_18
        -0x672229f1 -> :sswitch_17
        -0x5e80d387 -> :sswitch_16
        -0x5d2af575 -> :sswitch_15
        -0x4d690ed1 -> :sswitch_14
        -0x3cbf6d60 -> :sswitch_13
        -0x32bf46be -> :sswitch_12
        -0x2f595121 -> :sswitch_11
        -0x2ee1a87d -> :sswitch_10
        -0x2d0d95fa -> :sswitch_f
        -0x2a613367 -> :sswitch_e
        -0x27ba701d -> :sswitch_d
        -0x1fcc79ba -> :sswitch_c
        -0x1f12bdb -> :sswitch_b
        0x1b24a -> :sswitch_a
        0x337ba6 -> :sswitch_9
        0x67ab249 -> :sswitch_8
        0x9c907d7 -> :sswitch_7
        0x1b129e6c -> :sswitch_6
        0x1b12b477 -> :sswitch_5
        0x29ca3e33 -> :sswitch_4
        0x3898dc2b -> :sswitch_3
        0x5242e13a -> :sswitch_2
        0x7d00f842 -> :sswitch_1
        0x7d4265e4 -> :sswitch_0
    .end sparse-switch

    .line 927
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_11
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_13
        :pswitch_13
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
