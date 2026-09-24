.class public Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected callbackId:I

.field private clientPackageName:Ljava/lang/String;

.field protected packageName:Ljava/lang/String;

.field protected protocolID:I

.field protected protocolVersion:Ljava/lang/String;

.field protected timeStamp:J

.field protected var1:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->protocolID:I

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->timeStamp:J

    .line 4
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->callbackId:I

    .line 5
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getModelVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->protocolVersion:Ljava/lang/String;

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->packageName:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->var1:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->clientPackageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->protocolID:I

    const-wide/16 v1, 0x0

    .line 11
    iput-wide v1, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->timeStamp:J

    .line 12
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->callbackId:I

    .line 13
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getModelVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->protocolVersion:Ljava/lang/String;

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->packageName:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->var1:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->clientPackageName:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->protocolID:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->timeStamp:J

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->callbackId:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->protocolVersion:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->packageName:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->var1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCallbackId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->callbackId:I

    .line 3
    return v0
.end method

.method public getClientPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->clientPackageName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public final getDataVersion()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->protocolVersion:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lah;->k(Ljava/lang/String;I)I

    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->clientPackageName:Ljava/lang/String;

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 16
    iget-object v1, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->clientPackageName:Ljava/lang/String;

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    invoke-static {v1, v2}, Lqk0;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    move-result v1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v1, -0x1

    .line 32
    :goto_0
    if-gez v1, :cond_1

    .line 34
    return v0

    .line 35
    :cond_1
    if-ge v0, v1, :cond_2

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move v0, v1

    .line 39
    :goto_1
    return v0
.end method

.method public getModelVersion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->packageName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getProtocolID()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->protocolID:I

    .line 3
    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->timeStamp:J

    .line 3
    return-wide v0
.end method

.method public getVar1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->var1:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public setCallbackId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->callbackId:I

    .line 3
    return-void
.end method

.method public final setClientPackageName(Ljava/lang/String;)V
    .locals 8

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->clientPackageName:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 10
    move-result-object v0

    .line 11
    array-length v1, v0

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_0
    if-ge v3, v1, :cond_5

    .line 16
    aget-object v4, v0, v3

    .line 18
    const/4 v5, 0x1

    .line 19
    invoke-virtual {v4, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 22
    :try_start_0
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    if-nez v4, :cond_0

    .line 28
    goto/16 :goto_4

    .line 30
    :cond_0
    instance-of v5, v4, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 32
    if-eqz v5, :cond_1

    .line 34
    check-cast v4, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 36
    invoke-virtual {v4, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setClientPackageName(Ljava/lang/String;)V

    .line 39
    goto/16 :goto_4

    .line 41
    :cond_1
    instance-of v5, v4, Ljava/util/Collection;

    .line 43
    if-eqz v5, :cond_2

    .line 45
    check-cast v4, Ljava/util/Collection;

    .line 47
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object v4

    .line 51
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_4

    .line 57
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v5

    .line 61
    instance-of v6, v5, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 63
    if-eqz v6, :cond_4

    .line 65
    check-cast v5, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 67
    invoke-virtual {v5, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setClientPackageName(Ljava/lang/String;)V

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_3

    .line 81
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 88
    move-result-object v5

    .line 89
    const-class v6, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 91
    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 94
    move-result v5

    .line 95
    if-eqz v5, :cond_4

    .line 97
    const/4 v5, 0x0

    .line 98
    :goto_2
    move-object v6, v4

    .line 99
    check-cast v6, [Ljava/lang/Object;

    .line 101
    array-length v7, v6

    .line 102
    if-ge v5, v7, :cond_4

    .line 104
    aget-object v6, v6, v5

    .line 106
    instance-of v7, v6, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 108
    if-eqz v7, :cond_4

    .line 110
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 112
    invoke-virtual {v6, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setClientPackageName(Ljava/lang/String;)V

    .line 115
    add-int/lit8 v5, v5, 0x1

    .line 117
    goto :goto_2

    .line 118
    :cond_3
    instance-of v5, v4, Ljava/util/Map;

    .line 120
    if-eqz v5, :cond_4

    .line 122
    check-cast v4, Ljava/util/Map;

    .line 124
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 127
    move-result-object v4

    .line 128
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 131
    move-result-object v4

    .line 132
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    move-result v5

    .line 136
    if-eqz v5, :cond_4

    .line 138
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    move-result-object v5

    .line 142
    instance-of v6, v5, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 144
    if-eqz v6, :cond_4

    .line 146
    check-cast v5, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 148
    invoke-virtual {v5, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setClientPackageName(Ljava/lang/String;)V

    .line 151
    goto :goto_3

    .line 152
    :catch_0
    move-exception v4

    .line 153
    new-array v5, v5, [Ljava/lang/Object;

    .line 155
    aput-object v4, v5, v2

    .line 157
    const-string v4, "ProtocolBaseModel"

    .line 159
    const-string v6, "setDataVersion:"

    .line 161
    invoke-static {v4, v6, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 166
    goto/16 :goto_0

    .line 168
    :cond_5
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->packageName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setProtocolID(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->protocolID:I

    .line 3
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->timeStamp:J

    .line 3
    return-void
.end method

.method public setVar1(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->var1:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 5

    .line 1
    :try_start_0
    invoke-static {p0}, Lhw;->d(Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    :try_start_1
    const-string v1, "resultCode"

    .line 7
    const/16 v2, 0x2710

    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 12
    goto :goto_1

    .line 13
    :catch_0
    move-exception v1

    .line 14
    goto :goto_0

    .line 15
    :catch_1
    move-exception v1

    .line 16
    const/4 v0, 0x0

    .line 17
    :goto_0
    const/4 v2, 0x0

    .line 18
    new-array v2, v2, [Ljava/lang/Object;

    .line 20
    const-string v3, "ProtocolBaseModel"

    .line 22
    const-string v4, "toJsonObject failed!"

    .line 24
    invoke-static {v3, v4, v1, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 27
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    :goto_1
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->protocolID:I

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->timeStamp:J

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 11
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->callbackId:I

    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 19
    move-result p2

    .line 20
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->packageName:Ljava/lang/String;

    .line 29
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->var1:Ljava/lang/String;

    .line 34
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    return-void
.end method
