.class public abstract Lcj0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcj0$k;
    }
.end annotation


# static fields
.field public static a:Landroid/content/Context;

.field public static final b:[Llf$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcj0;->a:Landroid/content/Context;

    .line 11
    const/16 v0, 0x14

    .line 13
    new-array v0, v0, [Llf$d;

    .line 15
    const-string v1, "/storage/usb"

    .line 17
    filled-new-array {v1}, [Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Lcj0;->b([Ljava/lang/String;)Llf$d;

    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x0

    .line 26
    aput-object v1, v0, v2

    .line 28
    const-string v1, "/mnt/udisk"

    .line 30
    filled-new-array {v1}, [Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    invoke-static {v2}, Lcj0;->b([Ljava/lang/String;)Llf$d;

    .line 37
    move-result-object v2

    .line 38
    const/4 v3, 0x1

    .line 39
    aput-object v2, v0, v3

    .line 41
    new-instance v2, Lcj0$c;

    .line 43
    invoke-direct {v2}, Lcj0$c;-><init>()V

    .line 46
    const/4 v3, 0x2

    .line 47
    aput-object v2, v0, v3

    .line 49
    const-string v2, "/mnt/media_rw/usb0/"

    .line 51
    const-string v3, "/mnt/media_rw/usb1/"

    .line 53
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 56
    move-result-object v2

    .line 57
    invoke-static {v2}, Lcj0;->b([Ljava/lang/String;)Llf$d;

    .line 60
    move-result-object v2

    .line 61
    const/4 v3, 0x3

    .line 62
    aput-object v2, v0, v3

    .line 64
    const-string v2, "/storage/usb0/"

    .line 66
    filled-new-array {v2}, [Ljava/lang/String;

    .line 69
    move-result-object v2

    .line 70
    invoke-static {v2}, Lcj0;->b([Ljava/lang/String;)Llf$d;

    .line 73
    move-result-object v2

    .line 74
    const/4 v3, 0x4

    .line 75
    aput-object v2, v0, v3

    .line 77
    new-instance v2, Lcj0$d;

    .line 79
    invoke-direct {v2}, Lcj0$d;-><init>()V

    .line 82
    const/4 v3, 0x5

    .line 83
    aput-object v2, v0, v3

    .line 85
    filled-new-array {v1}, [Ljava/lang/String;

    .line 88
    move-result-object v1

    .line 89
    invoke-static {v1}, Lcj0;->b([Ljava/lang/String;)Llf$d;

    .line 92
    move-result-object v1

    .line 93
    const/4 v2, 0x6

    .line 94
    aput-object v1, v0, v2

    .line 96
    new-instance v1, Lcj0$e;

    .line 98
    invoke-direct {v1}, Lcj0$e;-><init>()V

    .line 101
    const/4 v2, 0x7

    .line 102
    aput-object v1, v0, v2

    .line 104
    new-instance v1, Lcj0$f;

    .line 106
    invoke-direct {v1}, Lcj0$f;-><init>()V

    .line 109
    const/16 v2, 0x8

    .line 111
    aput-object v1, v0, v2

    .line 113
    const-string v1, "/mnt/udisk2"

    .line 115
    filled-new-array {v1}, [Ljava/lang/String;

    .line 118
    move-result-object v1

    .line 119
    invoke-static {v1}, Lcj0;->b([Ljava/lang/String;)Llf$d;

    .line 122
    move-result-object v1

    .line 123
    const/16 v2, 0x9

    .line 125
    aput-object v1, v0, v2

    .line 127
    const-string v1, "/mnt/media_rw/udisk1"

    .line 129
    const-string v2, "/mnt/media_rw/udisk3"

    .line 131
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 134
    move-result-object v1

    .line 135
    invoke-static {v1}, Lcj0;->b([Ljava/lang/String;)Llf$d;

    .line 138
    move-result-object v1

    .line 139
    const/16 v2, 0xa

    .line 141
    aput-object v1, v0, v2

    .line 143
    const-string v1, "/mnt/usbhost"

    .line 145
    filled-new-array {v1}, [Ljava/lang/String;

    .line 148
    move-result-object v1

    .line 149
    invoke-static {v1}, Lcj0;->b([Ljava/lang/String;)Llf$d;

    .line 152
    move-result-object v1

    .line 153
    const/16 v2, 0xb

    .line 155
    aput-object v1, v0, v2

    .line 157
    new-instance v1, Lcj0$g;

    .line 159
    invoke-direct {v1}, Lcj0$g;-><init>()V

    .line 162
    const/16 v2, 0xc

    .line 164
    aput-object v1, v0, v2

    .line 166
    new-instance v1, Lcj0$h;

    .line 168
    invoke-direct {v1}, Lcj0$h;-><init>()V

    .line 171
    const/16 v2, 0xd

    .line 173
    aput-object v1, v0, v2

    .line 175
    const-string v1, "/storage/udisk1"

    .line 177
    filled-new-array {v1}, [Ljava/lang/String;

    .line 180
    move-result-object v1

    .line 181
    invoke-static {v1}, Lcj0;->b([Ljava/lang/String;)Llf$d;

    .line 184
    move-result-object v1

    .line 185
    const/16 v2, 0xe

    .line 187
    aput-object v1, v0, v2

    .line 189
    const-string v1, "/udisk"

    .line 191
    filled-new-array {v1}, [Ljava/lang/String;

    .line 194
    move-result-object v1

    .line 195
    invoke-static {v1}, Lcj0;->b([Ljava/lang/String;)Llf$d;

    .line 198
    move-result-object v1

    .line 199
    const/16 v2, 0xf

    .line 201
    aput-object v1, v0, v2

    .line 203
    const-string v1, "/storage/udisk"

    .line 205
    filled-new-array {v1}, [Ljava/lang/String;

    .line 208
    move-result-object v1

    .line 209
    invoke-static {v1}, Lcj0;->b([Ljava/lang/String;)Llf$d;

    .line 212
    move-result-object v1

    .line 213
    const/16 v2, 0x10

    .line 215
    aput-object v1, v0, v2

    .line 217
    new-instance v1, Lcj0$i;

    .line 219
    invoke-direct {v1}, Lcj0$i;-><init>()V

    .line 222
    const/16 v2, 0x11

    .line 224
    aput-object v1, v0, v2

    .line 226
    new-instance v1, Lcj0$j;

    .line 228
    invoke-direct {v1}, Lcj0$j;-><init>()V

    .line 231
    const/16 v2, 0x12

    .line 233
    aput-object v1, v0, v2

    .line 235
    new-instance v1, Lcj0$a;

    .line 237
    invoke-direct {v1}, Lcj0$a;-><init>()V

    .line 240
    const/16 v2, 0x13

    .line 242
    aput-object v1, v0, v2

    .line 244
    sput-object v0, Lcj0;->b:[Llf$d;

    .line 246
    return-void
.end method

.method public static synthetic a()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcj0;->a:Landroid/content/Context;

    .line 3
    return-object v0
.end method

.method public static varargs b([Ljava/lang/String;)Llf$d;
    .locals 1

    .line 1
    new-instance v0, Lcj0$b;

    .line 3
    invoke-direct {v0, p0}, Lcj0$b;-><init>([Ljava/lang/String;)V

    .line 6
    return-object v0
.end method
