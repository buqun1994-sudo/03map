.class public Lcom/autonavi/amapauto/jni/AccessDiagnosisInteract;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static notifyAccessDiagnosis(Landroid/os/Parcel;)Landroid/os/Parcel;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 9
    sget-object v2, Lcom/autonavi/amapauto/jni/AccessDiagnosisInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 11
    invoke-interface {v2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lcom/autonavi/amapauto/jni/AccessDiagnosisInfo;

    .line 17
    invoke-static {v2}, Lcom/autonavi/amapauto/jni/AccessDiagnosisInteract;->notifyAccessDiagnosisImpl(Lcom/autonavi/amapauto/jni/AccessDiagnosisInfo;)Lcom/autonavi/amapauto/jni/AccessDiagnosisInfo;

    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    .line 24
    if-nez v2, :cond_1

    .line 26
    return-object v0

    .line 27
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v2, p0, v1}, Lcom/autonavi/amapauto/jni/AccessDiagnosisInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 34
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 37
    return-object p0
.end method

.method public static notifyAccessDiagnosisImpl(Lcom/autonavi/amapauto/jni/AccessDiagnosisInfo;)Lcom/autonavi/amapauto/jni/AccessDiagnosisInfo;
    .locals 3

    .line 1
    new-instance v0, Ld50;

    .line 3
    invoke-direct {v0}, Ld50;-><init>()V

    .line 6
    const/4 v1, 0x1

    .line 7
    iput v1, v0, Ld50;->a:I

    .line 9
    iput-object p0, v0, Ld50;->d:Lcom/autonavi/amapauto/jni/AccessDiagnosisInfo;

    .line 11
    invoke-static {}, Lse;->c()Lse;

    .line 14
    move-result-object p0

    .line 15
    new-instance v1, Leq$a;

    .line 17
    invoke-direct {v1, v0}, Leq$a;-><init>(Ljava/lang/Object;)V

    .line 20
    const v2, 0xea6a

    .line 23
    invoke-virtual {p0, v2, v1}, Lse;->setOptionalValue(ILeq$a;)V

    .line 26
    iget-object p0, v0, Ld50;->e:Lcom/autonavi/amapauto/jni/AccessDiagnosisInfo;

    .line 28
    return-object p0
.end method
