.class public Lqd;
.super Lgi;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lgi;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Lpf;->b()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x2

    .line 8
    const-string v4, "BusinessChannelCallback"

    .line 10
    if-eqz v0, :cond_0

    .line 12
    invoke-static {}, Lpf;->a()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    invoke-static {}, Lrd;->a()Lrd;

    .line 19
    move-result-object v5

    .line 20
    invoke-virtual {v5, v0}, Lrd;->b(Ljava/lang/String;)Leq;

    .line 23
    new-array v3, v3, [Ljava/lang/Object;

    .line 25
    aput-object p1, v3, v2

    .line 27
    aput-object v0, v3, v1

    .line 29
    const-string p1, "[BusinessChannelCallback]hasSubChannelIdFile channelId{?}; customId:{?}"

    .line 31
    invoke-static {v4, p1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-static {}, Lrd;->a()Lrd;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, p1}, Lrd;->b(Ljava/lang/String;)Leq;

    .line 42
    move-result-object v0

    .line 43
    const/16 v5, 0x3b07

    .line 45
    invoke-interface {v0, v5}, Leq;->getStringValue(I)Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    new-array v3, v3, [Ljava/lang/Object;

    .line 51
    aput-object p1, v3, v2

    .line 53
    aput-object v0, v3, v1

    .line 55
    const-string p1, "[BusinessChannelCallback]startup channelId{?}; customId:{?}"

    .line 57
    invoke-static {v4, p1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    :goto_0
    return-object v0
.end method
