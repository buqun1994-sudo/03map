.class public abstract Lfw;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p0, p1}, Lew;->a(ILcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;I)Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;

    .line 5
    move-result-object p0

    .line 6
    invoke-static {}, Lv70;->f()Lv70;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1, p0}, Lv70;->h(Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;)V

    .line 13
    return-void
.end method

.method public static b(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0, p0, p1}, Lew;->a(ILcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;I)Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;

    .line 5
    move-result-object p0

    .line 6
    invoke-static {}, Lv70;->f()Lv70;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1, p0}, Lv70;->h(Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;)V

    .line 13
    return-void
.end method
