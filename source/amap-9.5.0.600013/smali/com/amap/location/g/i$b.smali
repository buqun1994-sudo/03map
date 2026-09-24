.class final Lcom/amap/location/g/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/handler/OnHandleMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/g/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/g/i;

.field private b:Lcom/amap/location/support/handler/AmapLooper;


# direct methods
.method public constructor <init>(Lcom/amap/location/g/i;Lcom/amap/location/support/handler/AmapLooper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/g/i$b;->a:Lcom/amap/location/g/i;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/amap/location/g/i$b;->b:Lcom/amap/location/support/handler/AmapLooper;

    .line 8
    return-void
.end method


# virtual methods
.method public handleMessage(IIILjava/lang/Object;)V
    .locals 5

    .line 1
    const-string p4, "nlsche"

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_9

    .line 6
    const/4 v1, 0x2

    .line 7
    const-string v2, "remove mPeriod="

    .line 9
    const v3, 0x5265c00

    .line 12
    const/4 v4, 0x0

    .line 13
    if-eq p1, v1, :cond_3

    .line 15
    const/4 p3, 0x3

    .line 16
    if-eq p1, p3, :cond_2

    .line 18
    const/4 p3, 0x4

    .line 19
    if-eq p1, p3, :cond_1

    .line 21
    const/4 p2, 0x5

    .line 22
    if-eq p1, p2, :cond_0

    .line 24
    goto/16 :goto_2

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/amap/location/g/i$b;->a:Lcom/amap/location/g/i;

    .line 28
    invoke-static {p1}, Lcom/amap/location/g/i;->l(Lcom/amap/location/g/i;)V

    .line 31
    goto/16 :goto_2

    .line 33
    :cond_1
    iget-object p1, p0, Lcom/amap/location/g/i$b;->a:Lcom/amap/location/g/i;

    .line 35
    invoke-static {p1}, Lcom/amap/location/g/i;->k(Lcom/amap/location/g/i;)V

    .line 38
    iget-object p1, p0, Lcom/amap/location/g/i$b;->a:Lcom/amap/location/g/i;

    .line 40
    invoke-static {p1, p2}, Lcom/amap/location/g/i;->a(Lcom/amap/location/g/i;I)I

    .line 43
    iget-object p1, p0, Lcom/amap/location/g/i$b;->a:Lcom/amap/location/g/i;

    .line 45
    invoke-static {p1}, Lcom/amap/location/g/i;->i(Lcom/amap/location/g/i;)I

    .line 48
    move-result p1

    .line 49
    if-lt p1, v3, :cond_a

    .line 51
    iget-object p1, p0, Lcom/amap/location/g/i$b;->a:Lcom/amap/location/g/i;

    .line 53
    invoke-static {p1}, Lcom/amap/location/g/i;->h(Lcom/amap/location/g/i;)Lcom/amap/location/g/g;

    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/amap/location/g/g;->a()V

    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object p2, p0, Lcom/amap/location/g/i$b;->a:Lcom/amap/location/g/i;

    .line 70
    invoke-static {p2}, Lcom/amap/location/g/i;->i(Lcom/amap/location/g/i;)I

    .line 73
    move-result p2

    .line 74
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 81
    invoke-static {p4, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    goto/16 :goto_2

    .line 86
    :cond_2
    iget-object p1, p0, Lcom/amap/location/g/i$b;->a:Lcom/amap/location/g/i;

    .line 88
    invoke-virtual {p1}, Lcom/amap/location/support/dispatch/Dispatcher;->getSize()I

    .line 91
    move-result p1

    .line 92
    if-lez p1, :cond_a

    .line 94
    iget-object p1, p0, Lcom/amap/location/g/i$b;->a:Lcom/amap/location/g/i;

    .line 96
    invoke-static {p1}, Lcom/amap/location/g/i;->j(Lcom/amap/location/g/i;)V

    .line 99
    iget-object p1, p0, Lcom/amap/location/g/i$b;->a:Lcom/amap/location/g/i;

    .line 101
    invoke-static {p1}, Lcom/amap/location/g/i;->h(Lcom/amap/location/g/i;)Lcom/amap/location/g/g;

    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1, v4, v4}, Lcom/amap/location/g/g;->a(IZ)V

    .line 108
    goto/16 :goto_2

    .line 110
    :cond_3
    iget-object p1, p0, Lcom/amap/location/g/i$b;->a:Lcom/amap/location/g/i;

    .line 112
    invoke-static {p1}, Lcom/amap/location/g/i;->g(Lcom/amap/location/g/i;)Lcom/amap/location/g/c/a;

    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1}, Lcom/amap/location/g/c/a;->a()V

    .line 119
    iget-object p1, p0, Lcom/amap/location/g/i$b;->a:Lcom/amap/location/g/i;

    .line 121
    invoke-static {p1}, Lcom/amap/location/g/i;->i(Lcom/amap/location/g/i;)I

    .line 124
    move-result p1

    .line 125
    iget-object v1, p0, Lcom/amap/location/g/i$b;->a:Lcom/amap/location/g/i;

    .line 127
    invoke-static {v1, p2}, Lcom/amap/location/g/i;->a(Lcom/amap/location/g/i;I)I

    .line 130
    iget-object p2, p0, Lcom/amap/location/g/i$b;->a:Lcom/amap/location/g/i;

    .line 132
    invoke-static {p2}, Lcom/amap/location/g/i;->i(Lcom/amap/location/g/i;)I

    .line 135
    move-result p2

    .line 136
    if-ge p2, v3, :cond_8

    .line 138
    if-ne p3, v0, :cond_4

    .line 140
    const/4 p2, 0x1

    .line 141
    goto :goto_0

    .line 142
    :cond_4
    const/4 p2, 0x0

    .line 143
    :goto_0
    if-eqz p2, :cond_5

    .line 145
    iget-object p1, p0, Lcom/amap/location/g/i$b;->a:Lcom/amap/location/g/i;

    .line 147
    invoke-static {p1}, Lcom/amap/location/g/i;->b(Lcom/amap/location/g/i;)Lcom/amap/location/g/b;

    .line 150
    move-result-object p1

    .line 151
    iget-object p1, p1, Lcom/amap/location/g/b;->l:Lcom/amap/location/g/e;

    .line 153
    invoke-interface {p1}, Lcom/amap/location/g/e;->g()Z

    .line 156
    move-result p1

    .line 157
    if-eqz p1, :cond_7

    .line 159
    goto :goto_1

    .line 160
    :cond_5
    if-ne p1, v3, :cond_6

    .line 162
    iget-object p1, p0, Lcom/amap/location/g/i$b;->a:Lcom/amap/location/g/i;

    .line 164
    invoke-static {p1}, Lcom/amap/location/g/i;->b(Lcom/amap/location/g/i;)Lcom/amap/location/g/b;

    .line 167
    move-result-object p1

    .line 168
    iget-object p1, p1, Lcom/amap/location/g/b;->l:Lcom/amap/location/g/e;

    .line 170
    invoke-interface {p1}, Lcom/amap/location/g/e;->f()Z

    .line 173
    move-result p1

    .line 174
    if-nez p1, :cond_6

    .line 176
    iget-object p1, p0, Lcom/amap/location/g/i$b;->a:Lcom/amap/location/g/i;

    .line 178
    invoke-static {p1}, Lcom/amap/location/g/i;->b(Lcom/amap/location/g/i;)Lcom/amap/location/g/b;

    .line 181
    move-result-object p1

    .line 182
    iget-object p1, p1, Lcom/amap/location/g/b;->l:Lcom/amap/location/g/e;

    .line 184
    invoke-interface {p1}, Lcom/amap/location/g/e;->s()Z

    .line 187
    move-result p1

    .line 188
    if-eqz p1, :cond_7

    .line 190
    :cond_6
    :goto_1
    const/4 v0, 0x0

    .line 191
    :cond_7
    iget-object p1, p0, Lcom/amap/location/g/i$b;->a:Lcom/amap/location/g/i;

    .line 193
    invoke-static {p1}, Lcom/amap/location/g/i;->j(Lcom/amap/location/g/i;)V

    .line 196
    iget-object p1, p0, Lcom/amap/location/g/i$b;->a:Lcom/amap/location/g/i;

    .line 198
    invoke-static {p1}, Lcom/amap/location/g/i;->k(Lcom/amap/location/g/i;)V

    .line 201
    iget-object p1, p0, Lcom/amap/location/g/i$b;->a:Lcom/amap/location/g/i;

    .line 203
    invoke-static {p1}, Lcom/amap/location/g/i;->h(Lcom/amap/location/g/i;)Lcom/amap/location/g/g;

    .line 206
    move-result-object p1

    .line 207
    invoke-virtual {p1, v0, p2}, Lcom/amap/location/g/g;->a(IZ)V

    .line 210
    new-instance p1, Ljava/lang/StringBuilder;

    .line 212
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    const-string p2, "requestFPSLocation mPeriod="

    .line 217
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    iget-object p2, p0, Lcom/amap/location/g/i$b;->a:Lcom/amap/location/g/i;

    .line 222
    invoke-static {p2}, Lcom/amap/location/g/i;->i(Lcom/amap/location/g/i;)I

    .line 225
    move-result p2

    .line 226
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    move-result-object p1

    .line 233
    invoke-static {p4, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    goto :goto_2

    .line 237
    :cond_8
    iget-object p1, p0, Lcom/amap/location/g/i$b;->a:Lcom/amap/location/g/i;

    .line 239
    invoke-static {p1}, Lcom/amap/location/g/i;->h(Lcom/amap/location/g/i;)Lcom/amap/location/g/g;

    .line 242
    move-result-object p1

    .line 243
    invoke-virtual {p1}, Lcom/amap/location/g/g;->a()V

    .line 246
    new-instance p1, Ljava/lang/StringBuilder;

    .line 248
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    iget-object p2, p0, Lcom/amap/location/g/i$b;->a:Lcom/amap/location/g/i;

    .line 256
    invoke-static {p2}, Lcom/amap/location/g/i;->i(Lcom/amap/location/g/i;)I

    .line 259
    move-result p2

    .line 260
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    move-result-object p1

    .line 267
    invoke-static {p4, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    goto :goto_2

    .line 271
    :cond_9
    const-string p1, "nl destroy"

    .line 273
    invoke-static {p4, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 279
    move-result-object p1

    .line 280
    iget-object p2, p0, Lcom/amap/location/g/i$b;->a:Lcom/amap/location/g/i;

    .line 282
    invoke-static {p2}, Lcom/amap/location/g/i;->d(Lcom/amap/location/g/i;)Lcom/amap/location/support/cloud/IAmapCloudListener;

    .line 285
    move-result-object p2

    .line 286
    invoke-virtual {p1, p2}, Lcom/amap/location/support/dispatch/Dispatcher;->removeListener(Ljava/lang/Object;)Z

    .line 289
    iget-object p1, p0, Lcom/amap/location/g/i$b;->a:Lcom/amap/location/g/i;

    .line 291
    invoke-static {p1}, Lcom/amap/location/g/i;->g(Lcom/amap/location/g/i;)Lcom/amap/location/g/c/a;

    .line 294
    move-result-object p1

    .line 295
    invoke-virtual {p1}, Lcom/amap/location/g/c/a;->b()V

    .line 298
    iget-object p1, p0, Lcom/amap/location/g/i$b;->a:Lcom/amap/location/g/i;

    .line 300
    invoke-static {p1}, Lcom/amap/location/g/i;->h(Lcom/amap/location/g/i;)Lcom/amap/location/g/g;

    .line 303
    move-result-object p1

    .line 304
    invoke-virtual {p1}, Lcom/amap/location/g/g;->b()V

    .line 307
    iget-object p1, p0, Lcom/amap/location/g/i$b;->b:Lcom/amap/location/support/handler/AmapLooper;

    .line 309
    if-eqz p1, :cond_a

    .line 311
    invoke-interface {p1}, Lcom/amap/location/support/handler/AmapLooper;->quit()V

    .line 314
    :cond_a
    :goto_2
    return-void
.end method
