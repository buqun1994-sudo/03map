.class Lcom/amap/location/signal/impl/a/d$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/handler/OnHandleMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/signal/impl/a/d;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/signal/impl/a/d;


# direct methods
.method public constructor <init>(Lcom/amap/location/signal/impl/a/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/signal/impl/a/d$3;->a:Lcom/amap/location/signal/impl/a/d;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(IIILjava/lang/Object;)V
    .locals 0

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string p3, "phone state changed:"

    .line 8
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p2

    .line 18
    const-string p3, "systemphnprd"

    .line 20
    invoke-static {p3, p2}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const/4 p2, 0x0

    .line 24
    packed-switch p1, :pswitch_data_0

    .line 27
    goto/16 :goto_0

    .line 29
    :pswitch_0
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/d$3;->a:Lcom/amap/location/signal/impl/a/d;

    .line 31
    invoke-static {p1}, Lcom/amap/location/signal/impl/a/d;->a(Lcom/amap/location/signal/impl/a/d;)Lcom/amap/location/support/signal/status/PhoneStatListener;

    .line 34
    move-result-object p1

    .line 35
    instance-of p3, p4, Lorg/json/JSONObject;

    .line 37
    if-eqz p3, :cond_0

    .line 39
    move-object p2, p4

    .line 40
    check-cast p2, Lorg/json/JSONObject;

    .line 42
    :cond_0
    const-wide/16 p3, 0x100

    .line 44
    invoke-interface {p1, p3, p4, p2}, Lcom/amap/location/support/signal/status/PhoneStatListener;->onChange(JLorg/json/JSONObject;)V

    .line 47
    goto/16 :goto_0

    .line 49
    :pswitch_1
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/d$3;->a:Lcom/amap/location/signal/impl/a/d;

    .line 51
    invoke-static {p1}, Lcom/amap/location/signal/impl/a/d;->a(Lcom/amap/location/signal/impl/a/d;)Lcom/amap/location/support/signal/status/PhoneStatListener;

    .line 54
    move-result-object p1

    .line 55
    instance-of p3, p4, Lorg/json/JSONObject;

    .line 57
    if-eqz p3, :cond_1

    .line 59
    move-object p2, p4

    .line 60
    check-cast p2, Lorg/json/JSONObject;

    .line 62
    :cond_1
    const-wide/16 p3, 0x80

    .line 64
    invoke-interface {p1, p3, p4, p2}, Lcom/amap/location/support/signal/status/PhoneStatListener;->onChange(JLorg/json/JSONObject;)V

    .line 67
    goto/16 :goto_0

    .line 69
    :pswitch_2
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/d$3;->a:Lcom/amap/location/signal/impl/a/d;

    .line 71
    invoke-static {p1}, Lcom/amap/location/signal/impl/a/d;->a(Lcom/amap/location/signal/impl/a/d;)Lcom/amap/location/support/signal/status/PhoneStatListener;

    .line 74
    move-result-object p1

    .line 75
    instance-of p3, p4, Lorg/json/JSONObject;

    .line 77
    if-eqz p3, :cond_2

    .line 79
    move-object p2, p4

    .line 80
    check-cast p2, Lorg/json/JSONObject;

    .line 82
    :cond_2
    const-wide/16 p3, 0x20

    .line 84
    invoke-interface {p1, p3, p4, p2}, Lcom/amap/location/support/signal/status/PhoneStatListener;->onChange(JLorg/json/JSONObject;)V

    .line 87
    goto :goto_0

    .line 88
    :pswitch_3
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/d$3;->a:Lcom/amap/location/signal/impl/a/d;

    .line 90
    invoke-static {p1}, Lcom/amap/location/signal/impl/a/d;->a(Lcom/amap/location/signal/impl/a/d;)Lcom/amap/location/support/signal/status/PhoneStatListener;

    .line 93
    move-result-object p1

    .line 94
    instance-of p3, p4, Lorg/json/JSONObject;

    .line 96
    if-eqz p3, :cond_3

    .line 98
    move-object p2, p4

    .line 99
    check-cast p2, Lorg/json/JSONObject;

    .line 101
    :cond_3
    const-wide/16 p3, 0x10

    .line 103
    invoke-interface {p1, p3, p4, p2}, Lcom/amap/location/support/signal/status/PhoneStatListener;->onChange(JLorg/json/JSONObject;)V

    .line 106
    goto :goto_0

    .line 107
    :pswitch_4
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/d$3;->a:Lcom/amap/location/signal/impl/a/d;

    .line 109
    invoke-static {p1}, Lcom/amap/location/signal/impl/a/d;->a(Lcom/amap/location/signal/impl/a/d;)Lcom/amap/location/support/signal/status/PhoneStatListener;

    .line 112
    move-result-object p1

    .line 113
    instance-of p3, p4, Lorg/json/JSONObject;

    .line 115
    if-eqz p3, :cond_4

    .line 117
    move-object p2, p4

    .line 118
    check-cast p2, Lorg/json/JSONObject;

    .line 120
    :cond_4
    const-wide/16 p3, 0x8

    .line 122
    invoke-interface {p1, p3, p4, p2}, Lcom/amap/location/support/signal/status/PhoneStatListener;->onChange(JLorg/json/JSONObject;)V

    .line 125
    goto :goto_0

    .line 126
    :pswitch_5
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/d$3;->a:Lcom/amap/location/signal/impl/a/d;

    .line 128
    invoke-static {p1}, Lcom/amap/location/signal/impl/a/d;->a(Lcom/amap/location/signal/impl/a/d;)Lcom/amap/location/support/signal/status/PhoneStatListener;

    .line 131
    move-result-object p1

    .line 132
    instance-of p3, p4, Lorg/json/JSONObject;

    .line 134
    if-eqz p3, :cond_5

    .line 136
    move-object p2, p4

    .line 137
    check-cast p2, Lorg/json/JSONObject;

    .line 139
    :cond_5
    const-wide/16 p3, 0x4

    .line 141
    invoke-interface {p1, p3, p4, p2}, Lcom/amap/location/support/signal/status/PhoneStatListener;->onChange(JLorg/json/JSONObject;)V

    .line 144
    goto :goto_0

    .line 145
    :pswitch_6
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/d$3;->a:Lcom/amap/location/signal/impl/a/d;

    .line 147
    invoke-static {p1}, Lcom/amap/location/signal/impl/a/d;->a(Lcom/amap/location/signal/impl/a/d;)Lcom/amap/location/support/signal/status/PhoneStatListener;

    .line 150
    move-result-object p1

    .line 151
    instance-of p3, p4, Lorg/json/JSONObject;

    .line 153
    if-eqz p3, :cond_6

    .line 155
    move-object p2, p4

    .line 156
    check-cast p2, Lorg/json/JSONObject;

    .line 158
    :cond_6
    const-wide/16 p3, 0x2

    .line 160
    invoke-interface {p1, p3, p4, p2}, Lcom/amap/location/support/signal/status/PhoneStatListener;->onChange(JLorg/json/JSONObject;)V

    .line 163
    goto :goto_0

    .line 164
    :pswitch_7
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/d$3;->a:Lcom/amap/location/signal/impl/a/d;

    .line 166
    invoke-static {p1}, Lcom/amap/location/signal/impl/a/d;->a(Lcom/amap/location/signal/impl/a/d;)Lcom/amap/location/support/signal/status/PhoneStatListener;

    .line 169
    move-result-object p1

    .line 170
    instance-of p3, p4, Lorg/json/JSONObject;

    .line 172
    if-eqz p3, :cond_7

    .line 174
    move-object p2, p4

    .line 175
    check-cast p2, Lorg/json/JSONObject;

    .line 177
    :cond_7
    const-wide/16 p3, 0x1

    .line 179
    invoke-interface {p1, p3, p4, p2}, Lcom/amap/location/support/signal/status/PhoneStatListener;->onChange(JLorg/json/JSONObject;)V

    .line 182
    :goto_0
    return-void

    .line 183
    :pswitch_data_0
    .packed-switch 0x1
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
