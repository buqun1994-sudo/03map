.class Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/sdk/fusion/LocationManagerProxy;->requestLocationUpdates(IJFLcom/amap/location/support/signal/gnss/AmapLocationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:F

.field final synthetic c:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

.field final synthetic d:J

.field final synthetic e:Lcom/amap/location/sdk/fusion/LocationManagerProxy;


# direct methods
.method public constructor <init>(Lcom/amap/location/sdk/fusion/LocationManagerProxy;IFLcom/amap/location/support/signal/gnss/AmapLocationListener;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->e:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 3
    iput p2, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->a:I

    .line 5
    iput p3, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->b:F

    .line 7
    iput-object p4, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->c:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 9
    iput-wide p5, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->d:J

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->e:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 3
    iget v1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->a:I

    .line 5
    invoke-static {v0, v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->a(Lcom/amap/location/sdk/fusion/LocationManagerProxy;I)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_6

    .line 11
    iget v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->b:F

    .line 13
    const/4 v1, 0x0

    .line 14
    cmpg-float v0, v0, v1

    .line 16
    if-ltz v0, :cond_5

    .line 18
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->c:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 20
    if-eqz v0, :cond_5

    .line 22
    iget-wide v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->d:J

    .line 24
    const-wide/16 v2, 0x0

    .line 26
    cmp-long v4, v0, v2

    .line 28
    if-gez v4, :cond_0

    .line 30
    goto/16 :goto_2

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->e:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 34
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->l(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/i/b;

    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->e:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 42
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->m(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/i/b;

    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->e:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 50
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->l(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/i/b;

    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/amap/location/sdk/i/b;->a()V

    .line 57
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->e:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 59
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->m(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/i/b;

    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/amap/location/sdk/i/b;->a()V

    .line 66
    :cond_1
    iget v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->a:I

    .line 68
    iget-object v1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->e:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 70
    invoke-static {v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->u(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)I

    .line 73
    move-result v1

    .line 74
    if-ne v0, v1, :cond_2

    .line 76
    iget-wide v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->d:J

    .line 78
    iget-object v4, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->e:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 80
    invoke-static {v4}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->v(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)J

    .line 83
    move-result-wide v4

    .line 84
    cmp-long v6, v0, v4

    .line 86
    if-nez v6, :cond_2

    .line 88
    iget v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->b:F

    .line 90
    iget-object v1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->e:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 92
    invoke-static {v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->w(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)F

    .line 95
    move-result v1

    .line 96
    cmpl-float v0, v0, v1

    .line 98
    if-nez v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->c:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 102
    iget-object v1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->e:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 104
    invoke-static {v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->x(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 107
    move-result-object v1

    .line 108
    if-ne v0, v1, :cond_2

    .line 110
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->e:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 112
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->y(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Z

    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_2

    .line 118
    return-void

    .line 119
    :cond_2
    iget v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->a:I

    .line 121
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 128
    move-result-object v0

    .line 129
    const v1, 0x1ae26

    .line 132
    invoke-static {v1, v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportEvent(I[B)V

    .line 135
    iget-wide v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->d:J

    .line 137
    cmp-long v4, v0, v2

    .line 139
    if-nez v4, :cond_3

    .line 141
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->e:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 143
    const-wide/16 v1, 0x3e8

    .line 145
    invoke-static {v0, v1, v2}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->a(Lcom/amap/location/sdk/fusion/LocationManagerProxy;J)J

    .line 148
    goto :goto_0

    .line 149
    :cond_3
    iget-object v2, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->e:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 151
    invoke-static {v2, v0, v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->a(Lcom/amap/location/sdk/fusion/LocationManagerProxy;J)J

    .line 154
    :goto_0
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->e:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 156
    iget v1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->b:F

    .line 158
    invoke-static {v0, v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->a(Lcom/amap/location/sdk/fusion/LocationManagerProxy;F)F

    .line 161
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->e:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 163
    iget v1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->a:I

    .line 165
    invoke-static {v0, v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->b(Lcom/amap/location/sdk/fusion/LocationManagerProxy;I)I

    .line 168
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->e:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 170
    iget-object v1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->c:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 172
    invoke-static {v0, v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->a(Lcom/amap/location/sdk/fusion/LocationManagerProxy;Lcom/amap/location/support/signal/gnss/AmapLocationListener;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 175
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->e:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 177
    const/4 v1, 0x1

    .line 178
    invoke-static {v0, v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->c(Lcom/amap/location/sdk/fusion/LocationManagerProxy;Z)Z

    .line 181
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->e:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 183
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->f(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/a;

    .line 186
    move-result-object v2

    .line 187
    iget v3, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->a:I

    .line 189
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->e:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 191
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->v(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)J

    .line 194
    move-result-wide v4

    .line 195
    iget v6, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->b:F

    .line 197
    invoke-static {}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->a()Z

    .line 200
    move-result v7

    .line 201
    invoke-interface/range {v2 .. v7}, Lcom/amap/location/sdk/fusion/a;->a(IJFZ)V

    .line 204
    iget v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->a:I

    .line 206
    and-int/2addr v0, v1

    .line 207
    if-ne v0, v1, :cond_4

    .line 209
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 212
    move-result-object v0

    .line 213
    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;

    .line 216
    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->e:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 219
    invoke-static {v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->z(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 222
    move-result-object v1

    .line 223
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    .line 226
    move-result-object v2

    .line 227
    invoke-interface {v2}, Lcom/amap/location/support/handler/HandlerThreadManager;->getMainAmapLooper()Lcom/amap/location/support/handler/AmapLooper;

    .line 230
    move-result-object v2

    .line 231
    invoke-interface {v0, v1, v2}, Lcom/amap/location/support/signal/gnss/IGnssManager;->requestPassiveUpdates(Lcom/amap/location/support/signal/gnss/AmapLocationListener;Lcom/amap/location/support/handler/AmapLooper;)Z

    .line 234
    goto :goto_1

    .line 235
    :cond_4
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 238
    move-result-object v0

    .line 239
    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;

    .line 242
    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->e:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 245
    invoke-static {v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->z(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 248
    move-result-object v1

    .line 249
    invoke-interface {v0, v1}, Lcom/amap/location/support/signal/gnss/IGnssManager;->removePassiveUpdates(Lcom/amap/location/support/signal/gnss/AmapLocationListener;)Z

    .line 252
    :goto_1
    invoke-static {}, Lcom/amap/location/sdk/i/a;->a()Lcom/amap/location/sdk/i/a;

    .line 255
    move-result-object v0

    .line 256
    iget v1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->a:I

    .line 258
    iget-object v2, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->e:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 260
    invoke-static {v2}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->x(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 263
    move-result-object v2

    .line 264
    iget-object v3, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->e:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 266
    invoke-static {v3}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->c(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/c$a;

    .line 269
    move-result-object v3

    .line 270
    invoke-virtual {v0, v1, v2, v3}, Lcom/amap/location/sdk/i/a;->a(ILcom/amap/location/support/signal/gnss/AmapLocationListener;Lcom/amap/location/sdk/fusion/c$a;)V

    .line 273
    :cond_5
    :goto_2
    return-void

    .line 274
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    .line 278
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    const-string v2, "wrong location type:"

    .line 283
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    iget v2, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$11;->a:I

    .line 288
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    move-result-object v1

    .line 295
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 298
    throw v0
.end method
