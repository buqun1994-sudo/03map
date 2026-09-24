.class public Lol0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lol0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->getInstance()Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->isAvailable()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public n()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->getInstance()Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->getImplProxy()Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;->abandonFocus()V

    .line 12
    return-void
.end method

.method public requestFocus(II)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->getInstance()Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->getImplProxy()Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;->requestFocus(II)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method
