.class public Lcom/autonavi/amapauto/jni/DataExchangeInterfaceInteract;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DataExchangeInterfaceInteract"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static notifyExecuteAction(Landroid/os/Parcel;)Landroid/os/Parcel;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 5
    sget-object v1, Lcom/autonavi/amapauto/jni/PSODataOperateAction;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    invoke-interface {v1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/autonavi/amapauto/jni/PSODataOperateAction;

    .line 13
    invoke-static {v1}, Lcom/autonavi/amapauto/jni/DataExchangeInterfaceInteract;->notifyExecuteActionImpl(Lcom/autonavi/amapauto/jni/PSODataOperateAction;)Lcom/autonavi/amapauto/jni/PSODataResultReturnWrapper;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    .line 20
    if-nez v1, :cond_0

    .line 22
    const/4 p0, 0x0

    .line 23
    return-object p0

    .line 24
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v1, p0, v0}, Lcom/autonavi/amapauto/jni/PSODataResultReturnWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    .line 31
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 34
    return-object p0
.end method

.method public static notifyExecuteActionImpl(Lcom/autonavi/amapauto/jni/PSODataOperateAction;)Lcom/autonavi/amapauto/jni/PSODataResultReturnWrapper;
    .locals 4

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/jni/PSODataOperateActionList;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/PSODataOperateActionList;-><init>()V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/PSODataOperateActionList;->a:Ljava/util/List;

    .line 13
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance p0, Ld50;

    .line 18
    invoke-direct {p0}, Ld50;-><init>()V

    .line 21
    const/4 v1, 0x0

    .line 22
    iput v1, p0, Ld50;->a:I

    .line 24
    iput-object v0, p0, Ld50;->b:Lcom/autonavi/amapauto/jni/PSODataOperateActionList;

    .line 26
    invoke-static {}, Lse;->c()Lse;

    .line 29
    move-result-object v0

    .line 30
    new-instance v2, Leq$a;

    .line 32
    invoke-direct {v2, p0}, Leq$a;-><init>(Ljava/lang/Object;)V

    .line 35
    const v3, 0xea6a

    .line 38
    invoke-virtual {v0, v3, v2}, Lse;->setOptionalValue(ILeq$a;)V

    .line 41
    iget-object v0, p0, Ld50;->c:Lcom/autonavi/amapauto/jni/PSODataResultReturnList;

    .line 43
    if-eqz v0, :cond_1

    .line 45
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/PSODataResultReturnList;->a:Ljava/util/List;

    .line 47
    if-eqz v0, :cond_1

    .line 49
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_0

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget-object p0, p0, Ld50;->c:Lcom/autonavi/amapauto/jni/PSODataResultReturnList;

    .line 58
    iget-object p0, p0, Lcom/autonavi/amapauto/jni/PSODataResultReturnList;->a:Ljava/util/List;

    .line 60
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object p0

    .line 64
    check-cast p0, Lcom/autonavi/amapauto/jni/PSODataResultReturnWrapper;

    .line 66
    return-object p0

    .line 67
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 68
    return-object p0
.end method

.method private static notifyExecuteActionList(Landroid/os/Parcel;)Landroid/os/Parcel;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    sget-object v2, Lcom/autonavi/amapauto/jni/PSODataOperateActionList;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    invoke-interface {v2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/autonavi/amapauto/jni/PSODataOperateActionList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v2

    .line 16
    const-string v3, "occur error,source:{?}"

    .line 18
    new-array v4, v0, [Ljava/lang/Object;

    .line 20
    const-string v5, "DataExchangeInterfaceInteract"

    .line 22
    invoke-static {v5, v3, v2, v4}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 25
    invoke-static {p0}, Lcom/autonavi/amapauto/jni/DataExchangeInterfaceInteract;->printfMarshalledData(Landroid/os/Parcel;)V

    .line 28
    move-object v2, v1

    .line 29
    :goto_0
    invoke-static {v2}, Lcom/autonavi/amapauto/jni/DataExchangeInterfaceInteract;->notifyExecuteActionListImpl(Lcom/autonavi/amapauto/jni/PSODataOperateActionList;)Lcom/autonavi/amapauto/jni/PSODataResultReturnList;

    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    .line 36
    if-nez v2, :cond_0

    .line 38
    return-object v1

    .line 39
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {v2, p0, v0}, Lcom/autonavi/amapauto/jni/PSODataResultReturnList;->writeToParcel(Landroid/os/Parcel;I)V

    .line 46
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 49
    return-object p0
.end method

.method public static notifyExecuteActionListImpl(Lcom/autonavi/amapauto/jni/PSODataOperateActionList;)Lcom/autonavi/amapauto/jni/PSODataResultReturnList;
    .locals 3

    .line 1
    new-instance v0, Ld50;

    .line 3
    invoke-direct {v0}, Ld50;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    iput v1, v0, Ld50;->a:I

    .line 9
    iput-object p0, v0, Ld50;->b:Lcom/autonavi/amapauto/jni/PSODataOperateActionList;

    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const-string v2, "notifyExecuteActionListImpl "

    .line 18
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    new-array v1, v1, [Ljava/lang/Object;

    .line 30
    const-string v2, "DataExchangeInterfaceInteract"

    .line 32
    invoke-static {v2, p0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    invoke-static {}, Lse;->c()Lse;

    .line 38
    move-result-object p0

    .line 39
    new-instance v1, Leq$a;

    .line 41
    invoke-direct {v1, v0}, Leq$a;-><init>(Ljava/lang/Object;)V

    .line 44
    const v2, 0xea6a

    .line 47
    invoke-virtual {p0, v2, v1}, Lse;->setOptionalValue(ILeq$a;)V

    .line 50
    iget-object p0, v0, Ld50;->c:Lcom/autonavi/amapauto/jni/PSODataResultReturnList;

    .line 52
    return-object p0
.end method

.method private static printfMarshalledData(Landroid/os/Parcel;)V
    .locals 4

    .line 1
    const-string v0, "DataExchangeInterfaceInteract"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Parcel;->marshall()[B

    .line 7
    move-result-object p0

    .line 8
    const-string v2, "notifyExecuteActionListImpl source parcelBytes:{?}"

    .line 10
    const/4 v3, 0x1

    .line 11
    new-array v3, v3, [Ljava/lang/Object;

    .line 13
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    aput-object p0, v3, v1

    .line 19
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    const-string v2, "Error marshalling parcel data:{?}"

    .line 26
    new-array v1, v1, [Ljava/lang/Object;

    .line 28
    invoke-static {v0, v2, p0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 31
    :goto_0
    return-void
.end method
