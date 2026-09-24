.class public Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lh50;->a:Ljava/lang/ThreadLocal;

    .line 6
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Boolean;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 26
    const/4 v0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    if-eqz v0, :cond_3

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 34
    move-result v0

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 38
    move-result v1

    .line 39
    if-gez v1, :cond_1

    .line 41
    return-void

    .line 42
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;->r(Landroid/os/Parcel;ZII)V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 48
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    sub-int/2addr v2, v0

    .line 50
    if-lt v2, v1, :cond_2

    .line 52
    add-int/2addr v0, v1

    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 56
    return-void

    .line 57
    :cond_2
    add-int/2addr v0, v1

    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    goto :goto_1

    .line 62
    :catchall_0
    move-exception v2

    .line 63
    add-int/2addr v0, v1

    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    throw v2

    .line 68
    :cond_3
    invoke-virtual {p0, p1, v3, v3, v3}, Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;->r(Landroid/os/Parcel;ZII)V

    .line 71
    :goto_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public r(Landroid/os/Parcel;ZII)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 3
    sget-object p2, Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 8
    move-result-object p2

    .line 9
    iput-object p2, p0, Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;->a:Ljava/util/List;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 14
    return-void

    .line 15
    :cond_0
    sget-object p2, Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 17
    invoke-static {p2, p1}, Li50;->c(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;)Ljava/util/List;

    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;->a:Ljava/util/List;

    .line 23
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "CameraLightInfoWrapper{cameraInfos="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;->a:Ljava/util/List;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    const/16 v1, 0x7d

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    sget-object p2, Lh50;->a:Ljava/lang/ThreadLocal;

    .line 3
    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 13
    move-result-object p2

    .line 14
    check-cast p2, Ljava/lang/Boolean;

    .line 16
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_0

    .line 22
    const/4 p2, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p2, 0x0

    .line 25
    :goto_0
    if-eqz p2, :cond_1

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 30
    move-result v0

    .line 31
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    move v1, v0

    .line 35
    :cond_1
    if-eqz p2, :cond_2

    .line 37
    iget-object v0, p0, Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;->a:Ljava/util/List;

    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;->a:Ljava/util/List;

    .line 45
    invoke-static {p1, v0}, Li50;->h(Landroid/os/Parcel;Ljava/util/List;)V

    .line 48
    :goto_1
    if-eqz p2, :cond_3

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 53
    move-result p2

    .line 54
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    sub-int v0, p2, v1

    .line 59
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    :cond_3
    return-void
.end method
