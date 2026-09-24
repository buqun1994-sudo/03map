.class public Lcom/autonavi/amapauto/jni/ehp/AndroidEHPDataProviderNative;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/amapauto/jni/ehp/AndroidEHPDataProviderNative$f;,
        Lcom/autonavi/amapauto/jni/ehp/AndroidEHPDataProviderNative$a;,
        Lcom/autonavi/amapauto/jni/ehp/AndroidEHPDataProviderNative$d;,
        Lcom/autonavi/amapauto/jni/ehp/AndroidEHPDataProviderNative$b;,
        Lcom/autonavi/amapauto/jni/ehp/AndroidEHPDataProviderNative$c;,
        Lcom/autonavi/amapauto/jni/ehp/AndroidEHPDataProviderNative$e;
    }
.end annotation


# static fields
.field private static final BUNDLE_KEYS:Ljava/lang/String; = "keys"

.field private static final BUNDLE_METADATA:Ljava/lang/String; = "metadata"

.field private static CLASS_NAME_BOOL:B = 0x4t

.field private static CLASS_NAME_BUNDLE:B = 0x7t

.field private static CLASS_NAME_CHARPTR:B = 0x6t

.field private static CLASS_NAME_DOUBLE:B = 0x3t

.field private static CLASS_NAME_FLOAT:B = 0x2t

.field private static CLASS_NAME_INTEGER_32:B = 0x0t

.field private static CLASS_NAME_INTEGER_64:B = 0x1t

.field private static CLASS_NAME_PARCELABLE:B = 0x8t

.field private static CLASS_NAME_PARCELABLE_LIST:B = 0x9t

.field private static CLASS_NAME_STRING:B = 0x5t

.field public static POSITIONING_UNKNOWN:I = -0x186a0

.field private static final TAG:Ljava/lang/String; = "AndroidEHPDataProviderNative"

.field private static sOnConsumptionResultListener:Lcom/autonavi/amapauto/jni/ehp/AndroidEHPDataProviderNative$a;

.field private static sOnDisplayTileDataChangeListener:Lcom/autonavi/amapauto/jni/ehp/AndroidEHPDataProviderNative$b;

.field private static sOnLaneGroupDataChangeListener:Lcom/autonavi/amapauto/jni/ehp/AndroidEHPDataProviderNative$c;

.field private static sOnLinksDataChangeListener:Lcom/autonavi/amapauto/jni/ehp/AndroidEHPDataProviderNative$d;

.field private static sOnMetadataChangeListener:Lcom/autonavi/amapauto/jni/ehp/AndroidEHPDataProviderNative$e;

.field private static sOnRegionDataChangeListener:Lcom/autonavi/amapauto/jni/ehp/AndroidEHPDataProviderNative$f;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decorateBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 8
    move-result v1

    .line 9
    new-array v1, v1, [B

    .line 11
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v5

    .line 21
    if-eqz v5, :cond_5

    .line 23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v5

    .line 27
    check-cast v5, Ljava/lang/String;

    .line 29
    invoke-virtual {p0, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    move-result-object v6

    .line 33
    instance-of v6, v6, Ljava/lang/Integer;

    .line 35
    if-eqz v6, :cond_0

    .line 37
    sget-byte v5, Lcom/autonavi/amapauto/jni/ehp/AndroidEHPDataProviderNative;->CLASS_NAME_INTEGER_32:B

    .line 39
    aput-byte v5, v1, v4

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    invoke-virtual {p0, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    move-result-object v6

    .line 46
    instance-of v6, v6, Ljava/lang/Long;

    .line 48
    if-eqz v6, :cond_1

    .line 50
    sget-byte v5, Lcom/autonavi/amapauto/jni/ehp/AndroidEHPDataProviderNative;->CLASS_NAME_INTEGER_64:B

    .line 52
    aput-byte v5, v1, v4

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    invoke-virtual {p0, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    move-result-object v6

    .line 59
    instance-of v6, v6, Ljava/lang/Double;

    .line 61
    if-eqz v6, :cond_2

    .line 63
    sget-byte v5, Lcom/autonavi/amapauto/jni/ehp/AndroidEHPDataProviderNative;->CLASS_NAME_DOUBLE:B

    .line 65
    aput-byte v5, v1, v4

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    invoke-virtual {p0, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    move-result-object v6

    .line 72
    instance-of v6, v6, Ljava/lang/Boolean;

    .line 74
    if-eqz v6, :cond_3

    .line 76
    sget-byte v5, Lcom/autonavi/amapauto/jni/ehp/AndroidEHPDataProviderNative;->CLASS_NAME_BOOL:B

    .line 78
    aput-byte v5, v1, v4

    .line 80
    goto :goto_1

    .line 81
    :cond_3
    invoke-virtual {p0, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    move-result-object v5

    .line 85
    instance-of v5, v5, Ljava/lang/String;

    .line 87
    if-eqz v5, :cond_4

    .line 89
    sget-byte v5, Lcom/autonavi/amapauto/jni/ehp/AndroidEHPDataProviderNative;->CLASS_NAME_STRING:B

    .line 91
    aput-byte v5, v1, v4

    .line 93
    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 95
    goto :goto_0

    .line 96
    :cond_5
    new-array v2, v3, [Ljava/lang/String;

    .line 98
    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 101
    move-result-object v0

    .line 102
    check-cast v0, [Ljava/lang/String;

    .line 104
    const-string v2, "keys"

    .line 106
    invoke-virtual {p0, v2, v0}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 109
    const-string v0, "metadata"

    .line 111
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 114
    return-object p0
.end method

.method public static jniGetBundle(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .line 1
    const-string v0, "AndroidEHPDataProviderNative"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {p0, p1}, Lcom/autonavi/amapauto/alpack/d;->e(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_0

    .line 10
    const-string p1, "fetchForReceiver is null "

    .line 12
    new-array v2, v1, [Ljava/lang/Object;

    .line 14
    invoke-static {v0, p1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 19
    return-object p0

    .line 20
    :cond_0
    invoke-static {p1}, Lcom/autonavi/amapauto/jni/ehp/AndroidEHPDataProviderNative;->decorateBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 23
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object p0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    const-string v3, "jniGetBundle RuntimeException action:"

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    new-array v1, v1, [Ljava/lang/Object;

    .line 45
    invoke-static {v0, p0, p1, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 48
    const/4 p0, 0x0

    .line 49
    return-object p0
.end method

.method public static jniNotifyBroadcastParcel(JLandroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2
    invoke-static {p0, p1, p2}, Lcom/autonavi/amapauto/alpack/d;->c(JLjava/lang/Object;)V

    .line 3
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method public static jniNotifyBroadcastParcel(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 3

    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 5
    invoke-static {p0, p1}, Lcom/autonavi/amapauto/alpack/d;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jniNotifyBroadcastParcel RuntimeException action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AndroidEHPDataProviderNative"

    invoke-static {v1, p0, p1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static jniNotifyBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lcom/autonavi/amapauto/alpack/d;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    const-string v1, "jniNotifyBundle RuntimeException action:"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    const/4 v0, 0x0

    .line 24
    new-array v0, v0, [Ljava/lang/Object;

    .line 26
    const-string v1, "AndroidEHPDataProviderNative"

    .line 28
    invoke-static {v1, p0, p1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 31
    :goto_0
    return-void
.end method

.method public static jniNotifyConsumptionResult(Lcom/autonavi/amapauto/jni/ehp/ConsumptionResult;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "jniNotifyConsumptionResult  jniNotifyConsumptionResult "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    const-string p0, " listener "

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const/4 p0, 0x0

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    const/4 v0, 0x0

    .line 28
    new-array v0, v0, [Ljava/lang/Object;

    .line 30
    const-string v1, "AndroidEHPDataProviderNative"

    .line 32
    invoke-static {v1, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public static jniNotifyDispalyTile(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/DisplayTile;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public static jniNotifyEhpProviderMetadata(ILcom/autonavi/amapauto/jni/ehp/EhpProviderMetadata;)V
    .locals 2

    .line 1
    const/4 p0, 0x0

    .line 2
    new-array p0, p0, [Ljava/lang/Object;

    .line 4
    const-string p1, "AndroidEHPDataProviderNative"

    .line 6
    const-string v0, "sOnMetadataChangeListener must not be null"

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {p1, v0, v1, p0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 12
    return-void
.end method

.method public static jniNotifyLaneGroup(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/LaneGroup;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public static jniNotifyLinksData(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/PsdLink;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public static jniNotifyRegionData(ILcom/autonavi/amapauto/jni/ehp/EHPRegion;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    const-string p0, " jniNotifyRegionData  region "

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    const/4 p1, 0x0

    .line 22
    new-array p1, p1, [Ljava/lang/Object;

    .line 24
    const-string v0, "AndroidEHPDataProviderNative"

    .line 26
    invoke-static {v0, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public static native nativeEhpProviderMetadata()V
.end method

.method public static native nativeNotifyPositioningStatus(IIII)V
.end method

.method public static native nativeRequestDispalyTile(I)V
.end method

.method public static native nativeRequestLaneGroup(I)V
.end method

.method public static native nativeRequestLinks(I)V
.end method

.method public static native nativeRequestRegion(I)V
.end method

.method public static native nativeSendBundle(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public static native nativeSendParcel(Ljava/lang/String;Landroid/os/Parcel;)V
.end method

.method public static native nativeSetConsumptionChanged(Lcom/autonavi/amapauto/jni/ehp/Consumption;)V
.end method

.method public static notifyPositioningStatus(IIII)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/autonavi/amapauto/jni/ehp/AndroidEHPDataProviderNative;->nativeNotifyPositioningStatus(IIII)V

    .line 4
    return-void
.end method

.method public static requestDispalyTile(ILcom/autonavi/amapauto/jni/ehp/AndroidEHPDataProviderNative$b;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/autonavi/amapauto/jni/ehp/AndroidEHPDataProviderNative;->nativeRequestDispalyTile(I)V

    .line 4
    return-void
.end method

.method public static requestLaneGroup(ILcom/autonavi/amapauto/jni/ehp/AndroidEHPDataProviderNative$c;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/autonavi/amapauto/jni/ehp/AndroidEHPDataProviderNative;->nativeRequestLaneGroup(I)V

    .line 4
    return-void
.end method

.method public static requestLinks(ILcom/autonavi/amapauto/jni/ehp/AndroidEHPDataProviderNative$d;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/autonavi/amapauto/jni/ehp/AndroidEHPDataProviderNative;->nativeRequestLinks(I)V

    .line 4
    return-void
.end method

.method public static requestNotifyEhpProviderMetadata(Lcom/autonavi/amapauto/jni/ehp/AndroidEHPDataProviderNative$e;)V
    .locals 4

    .line 1
    const-string p0, "AndroidEHPDataProviderNative"

    .line 3
    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/autonavi/amapauto/jni/ehp/AndroidEHPDataProviderNative;->nativeEhpProviderMetadata()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    goto :goto_1

    .line 8
    :catch_0
    move-exception v1

    .line 9
    goto :goto_0

    .line 10
    :catch_1
    move-exception v1

    .line 11
    :goto_0
    const-string v2, "nativeEhpProviderMetadata exception~"

    .line 13
    new-array v3, v0, [Ljava/lang/Object;

    .line 15
    invoke-static {p0, v2, v1, v3}, Lcz;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 18
    :goto_1
    const-string v1, "nativeEhpProviderMetadata end"

    .line 20
    new-array v0, v0, [Ljava/lang/Object;

    .line 22
    invoke-static {p0, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public static requestRegion(ILcom/autonavi/amapauto/jni/ehp/AndroidEHPDataProviderNative$f;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/autonavi/amapauto/jni/ehp/AndroidEHPDataProviderNative;->nativeRequestRegion(I)V

    .line 4
    return-void
.end method

.method public static sendBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/autonavi/amapauto/jni/ehp/AndroidEHPDataProviderNative;->decorateBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p0, p1}, Lcom/autonavi/amapauto/jni/ehp/AndroidEHPDataProviderNative;->nativeSendBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 8
    return-void
.end method

.method public static setOnConsumptionResultListener(Lcom/autonavi/amapauto/jni/ehp/AndroidEHPDataProviderNative$a;)V
    .locals 0

    return-void
.end method
