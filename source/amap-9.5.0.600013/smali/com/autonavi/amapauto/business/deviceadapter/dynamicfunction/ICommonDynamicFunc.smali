.class public interface abstract Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/ICommonDynamicFunc;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract cleanup()Z
.end method

.method public abstract getUsbUpdataPath()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setAutoProxy(Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/IAutoProxy;)V
.end method

.method public abstract startup()Z
.end method
