.class Lcom/amap/location/e/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/e/a;->a(Lcom/amap/location/support/bean/location/AmapLocation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/support/bean/location/AmapLocation;

.field final synthetic b:Lcom/amap/location/e/a;


# direct methods
.method public constructor <init>(Lcom/amap/location/e/a;Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/e/a$3;->b:Lcom/amap/location/e/a;

    .line 3
    iput-object p2, p0, Lcom/amap/location/e/a$3;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 4
    move-result v0

    .line 5
    const-string v1, "GnssAlgo3DMADetector"

    .line 7
    const/16 v2, 0x8

    .line 9
    if-ne v0, v2, :cond_0

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const-string v3, "feedLocation, adcode:"

    .line 18
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getAdCode()Ljava/lang/String;

    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/amap/location/e/a$3;->b:Lcom/amap/location/e/a;

    .line 37
    invoke-static {v0}, Lcom/amap/location/e/a;->g(Lcom/amap/location/e/a;)Lcom/amap/location/support/fence/FenceLoader;

    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_2

    .line 43
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 46
    move-result v0

    .line 47
    if-ne v0, v2, :cond_1

    .line 49
    const-string v0, "mFenceLoader.onLocationChanged(location)"

    .line 51
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/amap/location/e/a$3;->b:Lcom/amap/location/e/a;

    .line 56
    invoke-static {v0}, Lcom/amap/location/e/a;->g(Lcom/amap/location/e/a;)Lcom/amap/location/support/fence/FenceLoader;

    .line 59
    move-result-object v0

    .line 60
    iget-object v3, p0, Lcom/amap/location/e/a$3;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 62
    invoke-virtual {v0, v3}, Lcom/amap/location/support/fence/FenceLoader;->onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/amap/location/e/a$3;->b:Lcom/amap/location/e/a;

    .line 67
    invoke-static {v0}, Lcom/amap/location/e/a;->h(Lcom/amap/location/e/a;)Z

    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_9

    .line 73
    iget-object v0, p0, Lcom/amap/location/e/a$3;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 75
    if-nez v0, :cond_3

    .line 77
    goto/16 :goto_0

    .line 79
    :cond_3
    iget-object v0, p0, Lcom/amap/location/e/a$3;->b:Lcom/amap/location/e/a;

    .line 81
    invoke-static {v0}, Lcom/amap/location/e/a;->f(Lcom/amap/location/e/a;)Lcom/amap/location/support/fence/FenceState;

    .line 84
    move-result-object v0

    .line 85
    iget-object v3, p0, Lcom/amap/location/e/a$3;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 87
    invoke-virtual {v3}, Lcom/amap/location/type/location/Location;->getLatitude()D

    .line 90
    move-result-wide v3

    .line 91
    iget-object v5, p0, Lcom/amap/location/e/a$3;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 93
    invoke-virtual {v5}, Lcom/amap/location/type/location/Location;->getLongitude()D

    .line 96
    move-result-wide v5

    .line 97
    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/amap/location/support/fence/FenceState;->isIn(DD)Z

    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_6

    .line 103
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getIod()I

    .line 106
    move-result v0

    .line 107
    const/4 v3, 0x2

    .line 108
    if-ne v0, v3, :cond_6

    .line 110
    iget-object v0, p0, Lcom/amap/location/e/a$3;->b:Lcom/amap/location/e/a;

    .line 112
    invoke-static {v0}, Lcom/amap/location/e/a;->f(Lcom/amap/location/e/a;)Lcom/amap/location/support/fence/FenceState;

    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/amap/location/support/fence/FenceState;->getCurrentFence()Lcom/amap/location/support/fence/RectangleFence;

    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Lcom/amap/location/e/a$a;

    .line 122
    iget-object v3, p0, Lcom/amap/location/e/a$3;->b:Lcom/amap/location/e/a;

    .line 124
    const/4 v4, 0x1

    .line 125
    invoke-static {v3, v4}, Lcom/amap/location/e/a;->c(Lcom/amap/location/e/a;Z)Z

    .line 128
    iget-object v3, p0, Lcom/amap/location/e/a$3;->b:Lcom/amap/location/e/a;

    .line 130
    invoke-virtual {v3}, Lcom/amap/location/e/a;->a()Z

    .line 133
    move-result v3

    .line 134
    if-nez v3, :cond_5

    .line 136
    if-eqz v0, :cond_5

    .line 138
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 141
    move-result v3

    .line 142
    if-ne v3, v2, :cond_4

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    .line 146
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    const-string v3, "mModelDownLoader.loadFile"

    .line 151
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-object v3, v0, Lcom/amap/location/e/a$a;->a:Ljava/lang/String;

    .line 156
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    move-result-object v2

    .line 163
    invoke-static {v1, v2}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_4
    iget-object v1, p0, Lcom/amap/location/e/a$3;->b:Lcom/amap/location/e/a;

    .line 168
    invoke-static {v1}, Lcom/amap/location/e/a;->i(Lcom/amap/location/e/a;)Lcom/amap/location/support/network/FileLoader;

    .line 171
    move-result-object v1

    .line 172
    iget-object v0, v0, Lcom/amap/location/e/a$a;->a:Ljava/lang/String;

    .line 174
    const-string v2, "m.zip"

    .line 176
    invoke-virtual {v1, v0, v2}, Lcom/amap/location/support/network/FileLoader;->loadFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_5
    return-void

    .line 180
    :cond_6
    iget-object v0, p0, Lcom/amap/location/e/a$3;->b:Lcom/amap/location/e/a;

    .line 182
    invoke-static {v0}, Lcom/amap/location/e/a;->j(Lcom/amap/location/e/a;)Z

    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_9

    .line 188
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 191
    move-result v0

    .line 192
    if-ne v0, v2, :cond_7

    .line 194
    const-string v0, "destroy3DMA"

    .line 196
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_7
    iget-object v0, p0, Lcom/amap/location/e/a$3;->b:Lcom/amap/location/e/a;

    .line 201
    invoke-static {v0}, Lcom/amap/location/e/a;->b(Lcom/amap/location/e/a;)Z

    .line 204
    move-result v0

    .line 205
    const/4 v1, 0x0

    .line 206
    if-eqz v0, :cond_8

    .line 208
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNativeAbility()Lcom/amap/location/support/security/INativeAbility;

    .line 211
    move-result-object v0

    .line 212
    invoke-interface {v0}, Lcom/amap/location/support/security/INativeAbility;->destroy3DMA()V

    .line 215
    iget-object v0, p0, Lcom/amap/location/e/a$3;->b:Lcom/amap/location/e/a;

    .line 217
    invoke-static {v0, v1}, Lcom/amap/location/e/a;->a(Lcom/amap/location/e/a;Z)Z

    .line 220
    :cond_8
    iget-object v0, p0, Lcom/amap/location/e/a$3;->b:Lcom/amap/location/e/a;

    .line 222
    invoke-static {v0, v1}, Lcom/amap/location/e/a;->a(Lcom/amap/location/e/a;I)I

    .line 225
    iget-object v0, p0, Lcom/amap/location/e/a$3;->b:Lcom/amap/location/e/a;

    .line 227
    invoke-static {v0, v1}, Lcom/amap/location/e/a;->c(Lcom/amap/location/e/a;Z)Z

    .line 230
    :cond_9
    :goto_0
    return-void
.end method
