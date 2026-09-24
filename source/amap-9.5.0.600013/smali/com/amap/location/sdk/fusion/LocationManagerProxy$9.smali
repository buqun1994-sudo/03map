.class Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/sdk/fusion/LocationManagerProxy;->setParams(ILorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Lcom/amap/location/sdk/fusion/LocationManagerProxy;


# direct methods
.method public constructor <init>(Lcom/amap/location/sdk/fusion/LocationManagerProxy;ILorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;->c:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 3
    iput p2, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;->a:I

    .line 5
    iput-object p3, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;->b:Lorg/json/JSONObject;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "update request mode:"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;->a:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const-string v1, "mainmgrproxy"

    .line 22
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;->a:I

    .line 27
    const/4 v1, 0x3

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    packed-switch v0, :pswitch_data_0

    .line 33
    :pswitch_0
    goto/16 :goto_0

    .line 35
    :pswitch_1
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;->c:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 37
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->f(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/a;

    .line 40
    move-result-object v0

    .line 41
    iget-object v2, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;->c:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 43
    invoke-static {v2}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->o(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/a;

    .line 46
    move-result-object v2

    .line 47
    if-ne v0, v2, :cond_2

    .line 49
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 52
    move-result v0

    .line 53
    if-ne v0, v1, :cond_2

    .line 55
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;->b:Lorg/json/JSONObject;

    .line 57
    if-eqz v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;->c:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 61
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->o(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/a;

    .line 64
    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;->b:Lorg/json/JSONObject;

    .line 67
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 71
    const-string v2, "cmdatuoproperty"

    .line 73
    invoke-interface {v0, v2, v3, v3, v1}, Lcom/amap/location/sdk/fusion/a;->a(Ljava/lang/String;IILjava/lang/String;)V

    .line 76
    goto/16 :goto_0

    .line 78
    :pswitch_2
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;->b:Lorg/json/JSONObject;

    .line 80
    const/4 v1, 0x1

    .line 81
    const-string v4, "disturb_switch"

    .line 83
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 86
    move-result v0

    .line 87
    iget-object v1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;->c:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 89
    invoke-static {v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->f(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/a;

    .line 92
    move-result-object v1

    .line 93
    iget-object v5, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;->c:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 95
    invoke-static {v5}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->o(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/a;

    .line 98
    move-result-object v5

    .line 99
    if-ne v1, v5, :cond_0

    .line 101
    iget-object v1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;->c:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 103
    invoke-static {v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->o(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/a;

    .line 106
    move-result-object v1

    .line 107
    invoke-interface {v1, v4, v0, v3, v2}, Lcom/amap/location/sdk/fusion/a;->a(Ljava/lang/String;IILjava/lang/String;)V

    .line 110
    :cond_0
    invoke-static {v0}, Lcom/amap/location/support/app/MessageCenter;->setDisturbSwitch(Z)V

    .line 113
    goto/16 :goto_0

    .line 115
    :pswitch_3
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;->b:Lorg/json/JSONObject;

    .line 117
    const/4 v1, -0x1

    .line 118
    const-string v4, "corner_status"

    .line 120
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 123
    move-result v0

    .line 124
    iget-object v1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;->c:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 126
    invoke-static {v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->f(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/a;

    .line 129
    move-result-object v1

    .line 130
    iget-object v5, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;->c:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 132
    invoke-static {v5}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->o(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/a;

    .line 135
    move-result-object v5

    .line 136
    if-ne v1, v5, :cond_2

    .line 138
    iget-object v1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;->c:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 140
    invoke-static {v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->o(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/a;

    .line 143
    move-result-object v1

    .line 144
    invoke-interface {v1, v4, v0, v3, v2}, Lcom/amap/location/sdk/fusion/a;->a(Ljava/lang/String;IILjava/lang/String;)V

    .line 147
    goto/16 :goto_0

    .line 149
    :pswitch_4
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;->c:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 151
    iget-object v1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;->b:Lorg/json/JSONObject;

    .line 153
    invoke-static {v0, v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->g(Lcom/amap/location/sdk/fusion/LocationManagerProxy;Lorg/json/JSONObject;)V

    .line 156
    goto/16 :goto_0

    .line 158
    :pswitch_5
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;->c:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 160
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->s(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)V

    .line 163
    goto/16 :goto_0

    .line 165
    :pswitch_6
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;->c:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 167
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->r(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)V

    .line 170
    goto/16 :goto_0

    .line 172
    :pswitch_7
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;->c:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 174
    iget-object v1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;->b:Lorg/json/JSONObject;

    .line 176
    invoke-static {v0, v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->f(Lcom/amap/location/sdk/fusion/LocationManagerProxy;Lorg/json/JSONObject;)V

    .line 179
    goto :goto_0

    .line 180
    :pswitch_8
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;->c:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 182
    iget-object v1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;->b:Lorg/json/JSONObject;

    .line 184
    invoke-static {v0, v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->e(Lcom/amap/location/sdk/fusion/LocationManagerProxy;Lorg/json/JSONObject;)V

    .line 187
    goto :goto_0

    .line 188
    :pswitch_9
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;->c:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 190
    iget-object v1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;->b:Lorg/json/JSONObject;

    .line 192
    invoke-static {v0, v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->d(Lcom/amap/location/sdk/fusion/LocationManagerProxy;Lorg/json/JSONObject;)V

    .line 195
    goto :goto_0

    .line 196
    :pswitch_a
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;->c:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 198
    iget-object v1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;->b:Lorg/json/JSONObject;

    .line 200
    invoke-static {v0, v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->c(Lcom/amap/location/sdk/fusion/LocationManagerProxy;Lorg/json/JSONObject;)V

    .line 203
    goto :goto_0

    .line 204
    :pswitch_b
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;->c:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 206
    iget-object v1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;->b:Lorg/json/JSONObject;

    .line 208
    invoke-static {v0, v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->b(Lcom/amap/location/sdk/fusion/LocationManagerProxy;Lorg/json/JSONObject;)V

    .line 211
    goto :goto_0

    .line 212
    :pswitch_c
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;->c:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 214
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->q(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)V

    .line 217
    goto :goto_0

    .line 218
    :pswitch_d
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;->b:Lorg/json/JSONObject;

    .line 220
    if-eqz v0, :cond_2

    .line 222
    iget-object v2, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;->c:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 224
    invoke-static {v2, v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->a(Lcom/amap/location/sdk/fusion/LocationManagerProxy;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 227
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;->c:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 229
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->f(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/a;

    .line 232
    move-result-object v0

    .line 233
    iget-object v2, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;->b:Lorg/json/JSONObject;

    .line 235
    invoke-interface {v0, v2}, Lcom/amap/location/sdk/fusion/a;->a(Lorg/json/JSONObject;)V

    .line 238
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;->c:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 240
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->f(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/a;

    .line 243
    move-result-object v0

    .line 244
    instance-of v0, v0, Lcom/amap/location/sdk/fusion/b;

    .line 246
    if-eqz v0, :cond_1

    .line 248
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 251
    move-result v0

    .line 252
    if-ne v0, v1, :cond_1

    .line 254
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;->b:Lorg/json/JSONObject;

    .line 256
    const-string v1, "auto_log_path"

    .line 258
    const-string v2, ""

    .line 260
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 263
    move-result-object v0

    .line 264
    invoke-static {v0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 267
    move-result v1

    .line 268
    if-nez v1, :cond_1

    .line 270
    invoke-static {v0}, Lcom/amap/location/d/b;->a(Ljava/lang/String;)Z

    .line 273
    invoke-static {v0}, Lcom/amap/location/sdk/e/c;->a(Ljava/lang/String;)V

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$9;->b:Lorg/json/JSONObject;

    .line 278
    invoke-static {v0}, Lcom/amap/location/fusion/util/AmapExtraUtil;->updateHeaderConfig(Lorg/json/JSONObject;)V

    .line 281
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getAdiu()Ljava/lang/String;

    .line 284
    move-result-object v0

    .line 285
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->a(Ljava/lang/String;)V

    .line 288
    :cond_2
    :goto_0
    return-void

    .line 289
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
