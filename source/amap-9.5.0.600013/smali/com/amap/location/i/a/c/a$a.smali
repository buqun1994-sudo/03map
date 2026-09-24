.class final Lcom/amap/location/i/a/c/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/handler/OnHandleMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/i/a/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/i/a/c/a;

.field private b:Lcom/amap/location/support/handler/AmapLooper;


# direct methods
.method public constructor <init>(Lcom/amap/location/i/a/c/a;Lcom/amap/location/support/handler/AmapLooper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/i/a/c/a$a;->a:Lcom/amap/location/i/a/c/a;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/amap/location/i/a/c/a$a;->b:Lcom/amap/location/support/handler/AmapLooper;

    .line 8
    return-void
.end method


# virtual methods
.method public handleMessage(IIILjava/lang/Object;)V
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 4
    goto/16 :goto_0

    .line 6
    :pswitch_0
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 13
    move-result-object p1

    .line 14
    iget-object p2, p0, Lcom/amap/location/i/a/c/a$a;->a:Lcom/amap/location/i/a/c/a;

    .line 16
    invoke-static {p2}, Lcom/amap/location/i/a/c/a;->e(Lcom/amap/location/i/a/c/a;)Lcom/amap/location/support/signal/status/PhoneStatListener;

    .line 19
    move-result-object p2

    .line 20
    invoke-interface {p1, p2}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->removeStatusListener(Lcom/amap/location/support/signal/status/PhoneStatListener;)Z

    .line 23
    goto/16 :goto_0

    .line 25
    :pswitch_1
    iget-object p1, p0, Lcom/amap/location/i/a/c/a$a;->a:Lcom/amap/location/i/a/c/a;

    .line 27
    invoke-static {p1}, Lcom/amap/location/i/a/c/a;->c(Lcom/amap/location/i/a/c/a;)Lcom/amap/location/support/handler/AmapHandler;

    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_2

    .line 33
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 36
    move-result-object p1

    .line 37
    invoke-interface {p1}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 40
    move-result-object p1

    .line 41
    iget-object p2, p0, Lcom/amap/location/i/a/c/a$a;->a:Lcom/amap/location/i/a/c/a;

    .line 43
    invoke-static {p2}, Lcom/amap/location/i/a/c/a;->e(Lcom/amap/location/i/a/c/a;)Lcom/amap/location/support/signal/status/PhoneStatListener;

    .line 46
    move-result-object p2

    .line 47
    iget-object p3, p0, Lcom/amap/location/i/a/c/a$a;->a:Lcom/amap/location/i/a/c/a;

    .line 49
    invoke-static {p3}, Lcom/amap/location/i/a/c/a;->c(Lcom/amap/location/i/a/c/a;)Lcom/amap/location/support/handler/AmapHandler;

    .line 52
    move-result-object p3

    .line 53
    invoke-interface {p3}, Lcom/amap/location/support/handler/AmapHandler;->getLooper()Lcom/amap/location/support/handler/AmapLooper;

    .line 56
    move-result-object p3

    .line 57
    invoke-interface {p1, p2, p3}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->addStatusListener(Lcom/amap/location/support/signal/status/PhoneStatListener;Lcom/amap/location/support/handler/AmapLooper;)Z

    .line 60
    goto/16 :goto_0

    .line 62
    :pswitch_2
    invoke-static {}, Lcom/amap/location/i/d/c;->e()Z

    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_2

    .line 68
    iget-object p1, p0, Lcom/amap/location/i/a/c/a$a;->a:Lcom/amap/location/i/a/c/a;

    .line 70
    invoke-static {p1}, Lcom/amap/location/i/a/c/a;->g(Lcom/amap/location/i/a/c/a;)Z

    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_2

    .line 76
    invoke-static {}, Lcom/amap/location/i/a/b/c;->a()Lcom/amap/location/i/a/b/c;

    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lcom/amap/location/i/a/b/c;->e()V

    .line 83
    goto/16 :goto_0

    .line 85
    :pswitch_3
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 88
    move-result-object p1

    .line 89
    invoke-interface {p1}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 92
    move-result-object p1

    .line 93
    iget-object p2, p0, Lcom/amap/location/i/a/c/a$a;->a:Lcom/amap/location/i/a/c/a;

    .line 95
    invoke-static {p2}, Lcom/amap/location/i/a/c/a;->e(Lcom/amap/location/i/a/c/a;)Lcom/amap/location/support/signal/status/PhoneStatListener;

    .line 98
    move-result-object p2

    .line 99
    invoke-interface {p1, p2}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->removeStatusListener(Lcom/amap/location/support/signal/status/PhoneStatListener;)Z

    .line 102
    iget-object p1, p0, Lcom/amap/location/i/a/c/a$a;->b:Lcom/amap/location/support/handler/AmapLooper;

    .line 104
    if-eqz p1, :cond_2

    .line 106
    invoke-interface {p1}, Lcom/amap/location/support/handler/AmapLooper;->quit()V

    .line 109
    goto :goto_0

    .line 110
    :pswitch_4
    iget-object p1, p0, Lcom/amap/location/i/a/c/a$a;->a:Lcom/amap/location/i/a/c/a;

    .line 112
    invoke-static {p1}, Lcom/amap/location/i/a/c/a;->g(Lcom/amap/location/i/a/c/a;)Z

    .line 115
    move-result p1

    .line 116
    if-nez p1, :cond_0

    .line 118
    return-void

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/amap/location/i/a/c/a$a;->a:Lcom/amap/location/i/a/c/a;

    .line 121
    invoke-static {p1}, Lcom/amap/location/i/a/c/a;->j(Lcom/amap/location/i/a/c/a;)Lcom/amap/location/i/a;

    .line 124
    move-result-object p1

    .line 125
    invoke-interface {p1}, Lcom/amap/location/i/a;->c()Z

    .line 128
    move-result p1

    .line 129
    if-eqz p1, :cond_1

    .line 131
    iget-object p1, p0, Lcom/amap/location/i/a/c/a$a;->a:Lcom/amap/location/i/a/c/a;

    .line 133
    invoke-static {p1}, Lcom/amap/location/i/a/c/a;->j(Lcom/amap/location/i/a/c/a;)Lcom/amap/location/i/a;

    .line 136
    move-result-object p1

    .line 137
    invoke-interface {p1}, Lcom/amap/location/i/a;->b()J

    .line 140
    move-result-wide p1

    .line 141
    invoke-static {p1, p2}, Lcom/amap/location/i/d/c;->a(J)Z

    .line 144
    move-result p1

    .line 145
    if-eqz p1, :cond_1

    .line 147
    invoke-static {}, Lcom/amap/location/i/a/b/c;->a()Lcom/amap/location/i/a/b/c;

    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p1}, Lcom/amap/location/i/a/b/c;->d()V

    .line 154
    :cond_1
    invoke-static {}, Lcom/amap/location/i/a/b/c;->a()Lcom/amap/location/i/a/b/c;

    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p1}, Lcom/amap/location/i/a/b/c;->b()V

    .line 161
    invoke-static {}, Lcom/amap/location/i/a/b/c;->a()Lcom/amap/location/i/a/b/c;

    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p1}, Lcom/amap/location/i/a/b/c;->c()V

    .line 168
    goto :goto_0

    .line 169
    :pswitch_5
    iget-object p1, p0, Lcom/amap/location/i/a/c/a$a;->a:Lcom/amap/location/i/a/c/a;

    .line 171
    invoke-static {p1}, Lcom/amap/location/i/a/c/a;->i(Lcom/amap/location/i/a/c/a;)V

    .line 174
    goto :goto_0

    .line 175
    :pswitch_6
    iget-object p1, p0, Lcom/amap/location/i/a/c/a$a;->a:Lcom/amap/location/i/a/c/a;

    .line 177
    invoke-static {p1}, Lcom/amap/location/i/a/c/a;->h(Lcom/amap/location/i/a/c/a;)V

    .line 180
    goto :goto_0

    .line 181
    :pswitch_7
    iget-object p1, p0, Lcom/amap/location/i/a/c/a$a;->a:Lcom/amap/location/i/a/c/a;

    .line 183
    invoke-static {p1}, Lcom/amap/location/i/a/c/a;->g(Lcom/amap/location/i/a/c/a;)Z

    .line 186
    move-result p1

    .line 187
    if-eqz p1, :cond_2

    .line 189
    invoke-static {}, Lcom/amap/location/i/b/a;->a()Lcom/amap/location/i/b/a;

    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {p1}, Lcom/amap/location/i/b/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    goto :goto_0

    .line 197
    :catchall_0
    move-exception p1

    .line 198
    const-string p2, "OfflineDownloader"

    .line 200
    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    :cond_2
    :goto_0
    return-void

    .line 204
    nop

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
