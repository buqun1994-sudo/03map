.class public Lcom/autonavi/amapauto/user/AndroidUserControl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidUserControl"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native setSend2CarMessage(Lcom/autonavi/amapauto/user/Send2CarMessage;)V
.end method

.method public static systemShowSend2Car(Lcom/autonavi/amapauto/user/Send2CarMessage;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v1, v0, v2

    .line 11
    const-string v1, "AndroidUserControl"

    .line 13
    const-string v2, "SystemShowSend2Car={?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    const-string v1, "\u6536\u5230\u4f4d\u7f6e"

    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    iget-object v1, p0, Lcom/autonavi/amapauto/user/Send2CarMessage;->name:Ljava/lang/String;

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    new-instance v1, Lvc0;

    .line 32
    invoke-direct {v1}, Lvc0;-><init>()V

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v1, v0}, Lvc0;->g(Ljava/lang/String;)V

    .line 42
    iget-wide v2, p0, Lcom/autonavi/amapauto/user/Send2CarMessage;->lat:D

    .line 44
    invoke-virtual {v1, v2, v3}, Lvc0;->h(D)V

    .line 47
    iget-wide v2, p0, Lcom/autonavi/amapauto/user/Send2CarMessage;->lon:D

    .line 49
    invoke-virtual {v1, v2, v3}, Lvc0;->i(D)V

    .line 52
    iget-object p0, p0, Lcom/autonavi/amapauto/user/Send2CarMessage;->poiType:Ljava/lang/String;

    .line 54
    invoke-virtual {v1, p0}, Lvc0;->j(Ljava/lang/String;)V

    .line 57
    invoke-static {}, Ll30;->g()Ll30;

    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0, v1}, Ll30;->a(Lec;)V

    .line 64
    return-void
.end method
