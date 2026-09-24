.class public Lr2;
.super Lzd;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lzd;-><init>()V

    .line 4
    return-void
.end method

.method public static Z()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "2"

    return-object v0
.end method


# virtual methods
.method public Q()I
    .locals 3

    .line 1
    const-string v0, "A80"

    .line 3
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const-string v2, "AimiCamera2"

    .line 12
    if-eqz v0, :cond_0

    .line 14
    const-string v0, "getCameraFormat return YV12!"

    .line 16
    new-array v1, v1, [Ljava/lang/Object;

    .line 18
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    const v0, 0x32315659

    .line 24
    return v0

    .line 25
    :cond_0
    const-string v0, "getCameraFormat return YCbCr_420_SP!"

    .line 27
    new-array v1, v1, [Ljava/lang/Object;

    .line 29
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    const/16 v0, 0x11

    .line 34
    return v0
.end method

.method public R([Landroid/util/Size;II)Landroid/util/Size;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "width:"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, ", height:"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x0

    .line 27
    new-array v1, v1, [Ljava/lang/Object;

    .line 29
    const-string v2, "AimiCamera2"

    .line 31
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    if-eqz p1, :cond_1

    .line 36
    array-length v0, p1

    .line 37
    if-nez v0, :cond_0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lzd;->R([Landroid/util/Size;II)Landroid/util/Size;

    .line 43
    move-result-object p1

    .line 44
    return-object p1

    .line 45
    :cond_1
    :goto_0
    new-instance p1, Landroid/util/Size;

    .line 47
    invoke-direct {p1, p2, p3}, Landroid/util/Size;-><init>(II)V

    .line 50
    return-object p1
.end method

.method public U(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "AimiCamera2"

    .line 6
    const-string v3, "aimiCamera InitImageReaderBuilder!"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    if-eqz p1, :cond_0

    .line 13
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 22
    :cond_0
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lr2;->Z()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
