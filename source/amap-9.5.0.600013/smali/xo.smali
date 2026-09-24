.class public Lxo;
.super Lei;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lei;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getSatellitePrnForShow(I)I
    .locals 2

    .line 1
    const/16 v0, 0xa0

    if-lt p1, v0, :cond_0

    const/16 v1, 0xbe

    if-gt p1, v1, :cond_0

    sub-int/2addr p1, v0

    return p1

    :cond_0
    const/16 v1, 0xc8

    if-lt p1, v1, :cond_1

    add-int/lit16 p1, p1, -0xa9

    return p1

    :cond_1
    const/16 v1, 0x61

    if-lt p1, v1, :cond_2

    if-gt p1, v0, :cond_2

    add-int/lit8 p1, p1, -0x20

    :cond_2
    return p1
.end method

.method public getSatelliteType(I)I
    .locals 1

    .line 1
    const/16 v0, 0xa0

    .line 3
    if-lt p1, v0, :cond_0

    .line 5
    const/16 v0, 0xbe

    .line 7
    if-le p1, v0, :cond_1

    .line 9
    :cond_0
    const/16 v0, 0xc8

    .line 11
    if-lt p1, v0, :cond_2

    .line 13
    :cond_1
    sget p1, Luy;->b:I

    .line 15
    return p1

    .line 16
    :cond_2
    const/16 v0, 0x41

    .line 18
    if-lt p1, v0, :cond_3

    .line 20
    const/16 v0, 0x60

    .line 22
    if-gt p1, v0, :cond_3

    .line 24
    sget p1, Luy;->c:I

    .line 26
    return p1

    .line 27
    :cond_3
    sget p1, Luy;->a:I

    .line 29
    return p1
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 4
    invoke-super {p0, p1}, Lei;->getStringValue(I)Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 8
    return-object p1

    .line 9
    :pswitch_0
    const-string p1, "/storage/emulated/0"

    .line 11
    return-object p1

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x9c44
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getUsbUpdataPath()Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "/mnt/usbhost"

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
