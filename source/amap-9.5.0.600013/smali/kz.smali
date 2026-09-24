.class public Lkz;
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

.method public getUsbUpdataPath()Ljava/util/List;
    .locals 8

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    const-string v1, "/mnt/usb/sda1"

    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lei;->d:Ljava/lang/String;

    .line 10
    const/4 v3, 0x1

    .line 11
    new-array v4, v3, [Ljava/lang/Object;

    .line 13
    const/4 v5, 0x0

    .line 14
    aput-object v1, v4, v5

    .line 16
    const-string v1, "\u8def\u7545:getAvailableExternalPaths LUCHANG_UDISK_PATH= {?}"

    .line 18
    invoke-static {v2, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 24
    move-result-wide v1

    .line 25
    const-wide/16 v6, 0x0

    .line 27
    cmp-long v4, v1, v6

    .line 29
    if-lez v4, :cond_0

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 37
    array-length v1, v0

    .line 38
    if-lez v1, :cond_0

    .line 40
    aget-object v0, v0, v5

    .line 42
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_0

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    .line 62
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 68
    move-result-object v2

    .line 69
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v2, p0, Lei;->d:Ljava/lang/String;

    .line 74
    new-array v3, v3, [Ljava/lang/Object;

    .line 76
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    aput-object v0, v3, v5

    .line 82
    const-string v0, "\u8def\u7545:udisk path= {?}"

    .line 84
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    return-object v1

    .line 88
    :cond_0
    invoke-super {p0}, Lbc;->getUsbUpdataPath()Ljava/util/List;

    .line 91
    move-result-object v0

    .line 92
    return-object v0
.end method

.method public requestFocus(IIILandroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method
