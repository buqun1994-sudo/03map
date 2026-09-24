.class public Lcj0$a;
.super Lcj0$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcj0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcj0$k;-><init>(Lcj0$b;)V

    .line 5
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

.method public l()Ljava/util/List;
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
    invoke-virtual {v0}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;->getUsbUpdataPath()Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public varargs p([Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
