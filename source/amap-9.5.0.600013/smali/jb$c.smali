.class public Ljb$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljb;->h(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljb;


# direct methods
.method public constructor <init>(Ljb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljb$c;->a:Ljb;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4

    .line 1
    const/4 p1, 0x2

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    aput-object v0, p1, v1

    .line 11
    iget-object v0, p0, Ljb$c;->a:Ljb;

    .line 13
    invoke-static {v0}, Ljb;->d(Ljb;)I

    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v0

    .line 21
    const/4 v2, 0x1

    .line 22
    aput-object v0, p1, v2

    .line 24
    const-string v0, "AutoWavMediaPlayer"

    .line 26
    const-string v3, "playByMediaPlayer :onError what:{?} mPlayMode:{?}"

    .line 28
    invoke-static {v0, v3, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    iget-object p1, p0, Ljb$c;->a:Ljb;

    .line 33
    invoke-static {p1}, Ljb;->e(Ljb;)V

    .line 36
    iget-object p1, p0, Ljb$c;->a:Ljb;

    .line 38
    invoke-static {p1}, Ljb;->d(Ljb;)I

    .line 41
    move-result p1

    .line 42
    if-ne v2, p1, :cond_0

    .line 44
    const/4 p1, 0x7

    .line 45
    invoke-static {p1}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->notifyPlayStateChange(I)V

    .line 48
    :cond_0
    const/16 p1, -0x3f2

    .line 50
    if-eq p2, p1, :cond_7

    .line 52
    const/16 p1, -0x3ef

    .line 54
    if-eq p2, p1, :cond_6

    .line 56
    const/16 p1, -0x3ec

    .line 58
    if-eq p2, p1, :cond_5

    .line 60
    const/16 p1, -0x6e

    .line 62
    if-eq p2, p1, :cond_4

    .line 64
    if-eq p2, v2, :cond_3

    .line 66
    const/16 p1, 0x64

    .line 68
    if-eq p2, p1, :cond_2

    .line 70
    const/16 p1, 0xc8

    .line 72
    if-eq p2, p1, :cond_1

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    const-string p1, "MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK"

    .line 77
    new-array p2, v1, [Ljava/lang/Object;

    .line 79
    invoke-static {v0, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    const-string p1, "MEDIA_ERROR_SERVER_DIED"

    .line 85
    new-array p2, v1, [Ljava/lang/Object;

    .line 87
    invoke-static {v0, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    goto :goto_0

    .line 91
    :cond_3
    const-string p1, "MEDIA_ERROR_UNKNOWN"

    .line 93
    new-array p2, v1, [Ljava/lang/Object;

    .line 95
    invoke-static {v0, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    goto :goto_0

    .line 99
    :cond_4
    const-string p1, "MEDIA_ERROR_TIMED_OUT"

    .line 101
    new-array p2, v1, [Ljava/lang/Object;

    .line 103
    invoke-static {v0, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    goto :goto_0

    .line 107
    :cond_5
    const-string p1, "MEDIA_ERROR_IO"

    .line 109
    new-array p2, v1, [Ljava/lang/Object;

    .line 111
    invoke-static {v0, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    goto :goto_0

    .line 115
    :cond_6
    const-string p1, "MEDIA_ERROR_MALFORMED"

    .line 117
    new-array p2, v1, [Ljava/lang/Object;

    .line 119
    invoke-static {v0, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    goto :goto_0

    .line 123
    :cond_7
    const-string p1, "MEDIA_ERROR_UNSUPPORTED"

    .line 125
    new-array p2, v1, [Ljava/lang/Object;

    .line 127
    invoke-static {v0, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    :goto_0
    if-eq p3, v2, :cond_9

    .line 132
    const/4 p1, 0x3

    .line 133
    if-eq p3, p1, :cond_8

    .line 135
    const-string p1, "MEDIA_INFO_METADATA_UPDATE"

    .line 137
    packed-switch p3, :pswitch_data_0

    .line 140
    packed-switch p3, :pswitch_data_1

    .line 143
    goto :goto_1

    .line 144
    :pswitch_0
    new-array p2, v1, [Ljava/lang/Object;

    .line 146
    invoke-static {v0, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    goto :goto_1

    .line 150
    :pswitch_1
    const-string p1, "MEDIA_INFO_NOT_SEEKABLE"

    .line 152
    new-array p2, v1, [Ljava/lang/Object;

    .line 154
    invoke-static {v0, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    goto :goto_1

    .line 158
    :pswitch_2
    const-string p1, "MEDIA_INFO_BAD_INTERLEAVING"

    .line 160
    new-array p2, v1, [Ljava/lang/Object;

    .line 162
    invoke-static {v0, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    goto :goto_1

    .line 166
    :pswitch_3
    const-string p1, "MEDIA_INFO_BUFFERING_END"

    .line 168
    new-array p2, v1, [Ljava/lang/Object;

    .line 170
    invoke-static {v0, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    goto :goto_1

    .line 174
    :pswitch_4
    new-array p2, v1, [Ljava/lang/Object;

    .line 176
    invoke-static {v0, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    goto :goto_1

    .line 180
    :pswitch_5
    const-string p1, "MEDIA_INFO_VIDEO_TRACK_LAGGING"

    .line 182
    new-array p2, v1, [Ljava/lang/Object;

    .line 184
    invoke-static {v0, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    goto :goto_1

    .line 188
    :cond_8
    const-string p1, "MEDIA_INFO_VIDEO_RENDERING_START"

    .line 190
    new-array p2, v1, [Ljava/lang/Object;

    .line 192
    invoke-static {v0, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    goto :goto_1

    .line 196
    :cond_9
    const-string p1, "MEDIA_INFO_UNKNOWN"

    .line 198
    new-array p2, v1, [Ljava/lang/Object;

    .line 200
    invoke-static {v0, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    :goto_1
    return v1

    .line 204
    nop

    .line 205
    :pswitch_data_0
    .packed-switch 0x2bc
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x320
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
