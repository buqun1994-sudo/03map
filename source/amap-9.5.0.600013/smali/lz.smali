.class public Llz;
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
.method public abandomFocus(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lbc;->abandomFocus(I)V

    .line 4
    return-void
.end method

.method public getSatelliteType(I)I
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 3
    const/16 v0, 0x28

    .line 5
    if-gt p1, v0, :cond_0

    .line 7
    sget p1, Luy;->b:I

    .line 9
    return p1

    .line 10
    :cond_0
    sget p1, Luy;->a:I

    .line 12
    return p1
.end method

.method public getUsbUpdataPath()Ljava/util/List;
    .locals 9

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    const-string v1, "/mnt/usb/sda1"

    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    const/4 v2, 0x1

    .line 9
    new-array v3, v2, [Ljava/lang/Object;

    .line 11
    const/4 v4, 0x0

    .line 12
    aput-object v1, v3, v4

    .line 14
    const-string v1, "TAG_ADAPTER"

    .line 16
    const-string v5, "\u8def\u7545:getAvailableExternalPaths LUCHANG_UDISK_PATH= {?}"

    .line 18
    invoke-static {v1, v5, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 24
    move-result-wide v5

    .line 25
    const-wide/16 v7, 0x0

    .line 27
    cmp-long v3, v5, v7

    .line 29
    if-lez v3, :cond_0

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 37
    array-length v3, v0

    .line 38
    if-lez v3, :cond_0

    .line 40
    aget-object v0, v0, v4

    .line 42
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_0

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_0

    .line 54
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_0

    .line 60
    new-instance v3, Ljava/util/ArrayList;

    .line 62
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 65
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 68
    move-result-object v5

    .line 69
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-array v2, v2, [Ljava/lang/Object;

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 77
    move-result-object v0

    .line 78
    aput-object v0, v2, v4

    .line 80
    const-string v0, "\u8def\u7545:udisk path= {?}"

    .line 82
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    return-object v3

    .line 86
    :cond_0
    invoke-super {p0}, Lbc;->getUsbUpdataPath()Ljava/util/List;

    .line 89
    move-result-object v0

    .line 90
    return-object v0
.end method

.method public requestFocus(IIILandroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method
