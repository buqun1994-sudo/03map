.class public Lcom/autonavi/amapauto/jni/RequestDisplayMoveBack;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile DISPLAY_ACTIVITY_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final DISPLAY_MAIN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RequestDisplayMoveBack"

.field private static final WELL_DONE:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/jni/RequestDisplayMoveBack;->DISPLAY_ACTIVITY_MAP:Ljava/util/HashMap;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static notifyDisplayMoveBack(Landroid/os/Parcel;)Landroid/os/Parcel;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 5
    sget-object v1, Lcom/autonavi/amapauto/jni/RequestMoveBackParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    invoke-interface {v1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/autonavi/amapauto/jni/RequestMoveBackParams;

    .line 13
    invoke-static {v1}, Lcom/autonavi/amapauto/jni/RequestDisplayMoveBack;->notifyDisplayMoveBackImpl(Lcom/autonavi/amapauto/jni/RequestMoveBackParams;)Lcom/autonavi/amapauto/jni/ResponseMoveBackParams;

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
    invoke-virtual {v1, p0, v0}, Lcom/autonavi/amapauto/jni/ResponseMoveBackParams;->writeToParcel(Landroid/os/Parcel;I)V

    .line 31
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 34
    return-object p0
.end method

.method public static notifyDisplayMoveBackImpl(Lcom/autonavi/amapauto/jni/RequestMoveBackParams;)Lcom/autonavi/amapauto/jni/ResponseMoveBackParams;
    .locals 5

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/jni/ResponseMoveBackParams;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/ResponseMoveBackParams;-><init>()V

    .line 6
    if-nez p0, :cond_0

    .line 8
    return-object v0

    .line 9
    :cond_0
    iget v1, p0, Lcom/autonavi/amapauto/jni/RequestMoveBackParams;->a:I

    .line 11
    iput v1, v0, Lcom/autonavi/amapauto/jni/ResponseMoveBackParams;->a:I

    .line 13
    iget v1, p0, Lcom/autonavi/amapauto/jni/RequestMoveBackParams;->b:I

    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    if-nez v1, :cond_2

    .line 19
    invoke-static {}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->moveTaskToBack()I

    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v2, 0x0

    .line 27
    :goto_0
    iput-boolean v2, v0, Lcom/autonavi/amapauto/jni/ResponseMoveBackParams;->b:Z

    .line 29
    return-object v0

    .line 30
    :cond_2
    sget-object v1, Lcom/autonavi/amapauto/jni/RequestDisplayMoveBack;->DISPLAY_ACTIVITY_MAP:Ljava/util/HashMap;

    .line 32
    const-string v4, "RequestDisplayMoveBack"

    .line 34
    if-eqz v1, :cond_3

    .line 36
    sget-object v1, Lcom/autonavi/amapauto/jni/RequestDisplayMoveBack;->DISPLAY_ACTIVITY_MAP:Ljava/util/HashMap;

    .line 38
    iget p0, p0, Lcom/autonavi/amapauto/jni/RequestMoveBackParams;->b:I

    .line 40
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 50
    if-eqz p0, :cond_3

    .line 52
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 55
    move-result-object p0

    .line 56
    check-cast p0, Landroid/app/Activity;

    .line 58
    if-eqz p0, :cond_3

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 63
    iput-boolean v2, v0, Lcom/autonavi/amapauto/jni/ResponseMoveBackParams;->b:Z

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    const-string v2, "activity.finish & activity:"

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 86
    new-array v1, v3, [Ljava/lang/Object;

    .line 88
    invoke-static {v4, p0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 93
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    const-string v1, "notifyDisplayMoveBackImpl requestId:"

    .line 98
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget v1, v0, Lcom/autonavi/amapauto/jni/ResponseMoveBackParams;->a:I

    .line 103
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, ",success="

    .line 108
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-boolean v1, v0, Lcom/autonavi/amapauto/jni/ResponseMoveBackParams;->b:Z

    .line 113
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object p0

    .line 120
    new-array v1, v3, [Ljava/lang/Object;

    .line 122
    invoke-static {v4, p0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    return-object v0
.end method
