.class public Ld2;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/client/ReqAgroupNotificationModel;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqAgroupNotificationModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 8
    iput-object p1, p0, Ld2;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqAgroupNotificationModel;

    .line 10
    return-void
.end method

.method public static x(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Ld2;
    .locals 8

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p0, v1, v2

    .line 7
    const/4 v3, 0x1

    .line 8
    aput-object p1, v1, v3

    .line 10
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 13
    move-result-object v4

    .line 14
    const/4 v5, 0x2

    .line 15
    aput-object v4, v1, v5

    .line 17
    const-string v4, "AgroupNotificationAction"

    .line 19
    const-string v6, "build, title:{?}, message:{?}, uri:{?}"

    .line 21
    invoke-static {v4, v6, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    const-string v1, "type"

    .line 26
    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 33
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 36
    move-result v6

    .line 37
    const/4 v7, -0x1

    .line 38
    sparse-switch v6, :sswitch_data_0

    .line 41
    goto :goto_0

    .line 42
    :sswitch_0
    const-string v6, "KICK"

    .line 44
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result v6

    .line 48
    if-nez v6, :cond_0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v7, 0x2

    .line 52
    goto :goto_0

    .line 53
    :sswitch_1
    const-string v6, "DISMISS"

    .line 55
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v6

    .line 59
    if-nez v6, :cond_1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const/4 v7, 0x1

    .line 63
    goto :goto_0

    .line 64
    :sswitch_2
    const-string v6, "INVITE"

    .line 66
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result v6

    .line 70
    if-nez v6, :cond_2

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const/4 v7, 0x0

    .line 74
    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 77
    new-array p0, v3, [Ljava/lang/Object;

    .line 79
    aput-object v1, p0, v2

    .line 81
    const-string p1, "build, msg type error:{?}"

    .line 83
    invoke-static {v4, p1, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    const/4 p0, 0x0

    .line 87
    return-object p0

    .line 88
    :pswitch_0
    const/4 v0, 0x2

    .line 89
    goto :goto_1

    .line 90
    :pswitch_1
    const/4 v0, 0x1

    .line 91
    :goto_1
    :pswitch_2
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/client/ReqAgroupNotificationModel;

    .line 93
    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/client/ReqAgroupNotificationModel;-><init>()V

    .line 96
    invoke-virtual {v1, v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqAgroupNotificationModel;->setType(I)V

    .line 99
    const-string v0, "teamNumber"

    .line 101
    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    move-result-object p2

    .line 105
    invoke-virtual {v1, p2}, Lcom/autonavi/amapauto/protocol/model/client/ReqAgroupNotificationModel;->setTeamNumber(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v1, p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqAgroupNotificationModel;->setMessage(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v1, p0}, Lcom/autonavi/amapauto/protocol/model/client/ReqAgroupNotificationModel;->setTitle(Ljava/lang/String;)V

    .line 114
    new-instance p0, Ld2;

    .line 116
    invoke-direct {p0, v1}, Ld2;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqAgroupNotificationModel;)V

    .line 119
    return-object p0

    .line 120
    nop

    .line 121
    :sswitch_data_0
    .sparse-switch
        -0x7efadcf7 -> :sswitch_2
        -0x7190c196 -> :sswitch_1
        0x233246 -> :sswitch_0
    .end sparse-switch

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld2;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqAgroupNotificationModel;

    .line 3
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 6
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method
