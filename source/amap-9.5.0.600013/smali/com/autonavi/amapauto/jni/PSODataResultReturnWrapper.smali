.class public Lcom/autonavi/amapauto/jni/PSODataResultReturnWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/autonavi/amapauto/jni/PSODataResultReturnWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:Lcom/autonavi/amapauto/jni/PSODataResultWrapper;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/jni/PSODataResultReturnWrapper$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/PSODataResultReturnWrapper$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/jni/PSODataResultReturnWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

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
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/autonavi/amapauto/jni/PSODataResultReturnWrapper;->r(Landroid/os/Parcel;ZII)V

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
    invoke-virtual {p0, p1, v3, v3, v3}, Lcom/autonavi/amapauto/jni/PSODataResultReturnWrapper;->r(Landroid/os/Parcel;ZII)V

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 4
    move-result p3

    .line 5
    iput p3, p0, Lcom/autonavi/amapauto/jni/PSODataResultReturnWrapper;->a:I

    .line 7
    if-eqz p2, :cond_1

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_0

    .line 15
    sget-object p2, Lcom/autonavi/amapauto/jni/PSODataResultWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 17
    invoke-interface {p2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/autonavi/amapauto/jni/PSODataResultWrapper;

    .line 23
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/PSODataResultReturnWrapper;->b:Lcom/autonavi/amapauto/jni/PSODataResultWrapper;

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/PSODataResultReturnWrapper;->b:Lcom/autonavi/amapauto/jni/PSODataResultWrapper;

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    sget-object p2, Lcom/autonavi/amapauto/jni/PSODataResultWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 32
    invoke-static {p2, p1}, Li50;->b(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;)Landroid/os/Parcelable;

    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/autonavi/amapauto/jni/PSODataResultWrapper;

    .line 38
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/PSODataResultReturnWrapper;->b:Lcom/autonavi/amapauto/jni/PSODataResultWrapper;

    .line 40
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "PSODataResultReturnWrapper{returnCode="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lcom/autonavi/amapauto/jni/PSODataResultReturnWrapper;->a:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", returnResult="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/PSODataResultReturnWrapper;->b:Lcom/autonavi/amapauto/jni/PSODataResultWrapper;

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    const/16 v1, 0x7d

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    sget-object v0, Lh50;->a:Ljava/lang/ThreadLocal;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 31
    move-result v1

    .line 32
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    :goto_1
    iget v4, p0, Lcom/autonavi/amapauto/jni/PSODataResultReturnWrapper;->a:I

    .line 39
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    if-eqz v0, :cond_3

    .line 44
    iget-object v4, p0, Lcom/autonavi/amapauto/jni/PSODataResultReturnWrapper;->b:Lcom/autonavi/amapauto/jni/PSODataResultWrapper;

    .line 46
    if-eqz v4, :cond_2

    .line 48
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/PSODataResultReturnWrapper;->b:Lcom/autonavi/amapauto/jni/PSODataResultWrapper;

    .line 53
    invoke-virtual {v2, p1, p2}, Lcom/autonavi/amapauto/jni/PSODataResultWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    goto :goto_2

    .line 61
    :cond_3
    iget-object p2, p0, Lcom/autonavi/amapauto/jni/PSODataResultReturnWrapper;->b:Lcom/autonavi/amapauto/jni/PSODataResultWrapper;

    .line 63
    invoke-static {p1, p2}, Li50;->g(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 66
    :goto_2
    if-eqz v0, :cond_4

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 71
    move-result p2

    .line 72
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 75
    sub-int v0, p2, v1

    .line 77
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 83
    :cond_4
    return-void
.end method
