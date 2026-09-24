.class public abstract Lud0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lud0$a0;,
        Lud0$z;
    }
.end annotation


# static fields
.field public static final a:Landroid/content/Context;

.field public static final b:[Lud0$a0;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lud0;->a:Landroid/content/Context;

    .line 11
    const/16 v0, 0x1b

    .line 13
    new-array v0, v0, [Lud0$a0;

    .line 15
    new-instance v1, Lud0$k;

    .line 17
    invoke-direct {v1}, Lud0$k;-><init>()V

    .line 20
    const/4 v2, 0x0

    .line 21
    aput-object v1, v0, v2

    .line 23
    new-instance v1, Lud0$r;

    .line 25
    invoke-direct {v1}, Lud0$r;-><init>()V

    .line 28
    const/4 v2, 0x1

    .line 29
    aput-object v1, v0, v2

    .line 31
    new-instance v1, Lud0$s;

    .line 33
    invoke-direct {v1}, Lud0$s;-><init>()V

    .line 36
    const/4 v2, 0x2

    .line 37
    aput-object v1, v0, v2

    .line 39
    new-instance v1, Lud0$t;

    .line 41
    invoke-direct {v1}, Lud0$t;-><init>()V

    .line 44
    const/4 v2, 0x3

    .line 45
    aput-object v1, v0, v2

    .line 47
    new-instance v1, Lud0$u;

    .line 49
    invoke-direct {v1}, Lud0$u;-><init>()V

    .line 52
    const/4 v2, 0x4

    .line 53
    aput-object v1, v0, v2

    .line 55
    new-instance v1, Lud0$v;

    .line 57
    invoke-direct {v1}, Lud0$v;-><init>()V

    .line 60
    const/4 v2, 0x5

    .line 61
    aput-object v1, v0, v2

    .line 63
    new-instance v1, Lud0$w;

    .line 65
    invoke-direct {v1}, Lud0$w;-><init>()V

    .line 68
    const/4 v2, 0x6

    .line 69
    aput-object v1, v0, v2

    .line 71
    new-instance v1, Lud0$x;

    .line 73
    invoke-direct {v1}, Lud0$x;-><init>()V

    .line 76
    const/4 v2, 0x7

    .line 77
    aput-object v1, v0, v2

    .line 79
    new-instance v1, Lud0$y;

    .line 81
    invoke-direct {v1}, Lud0$y;-><init>()V

    .line 84
    const/16 v2, 0x8

    .line 86
    aput-object v1, v0, v2

    .line 88
    new-instance v1, Lud0$a;

    .line 90
    invoke-direct {v1}, Lud0$a;-><init>()V

    .line 93
    const/16 v2, 0x9

    .line 95
    aput-object v1, v0, v2

    .line 97
    new-instance v1, Lud0$b;

    .line 99
    invoke-direct {v1}, Lud0$b;-><init>()V

    .line 102
    const/16 v2, 0xa

    .line 104
    aput-object v1, v0, v2

    .line 106
    new-instance v1, Lud0$c;

    .line 108
    invoke-direct {v1}, Lud0$c;-><init>()V

    .line 111
    const/16 v2, 0xb

    .line 113
    aput-object v1, v0, v2

    .line 115
    new-instance v1, Lud0$d;

    .line 117
    invoke-direct {v1}, Lud0$d;-><init>()V

    .line 120
    const/16 v2, 0xc

    .line 122
    aput-object v1, v0, v2

    .line 124
    new-instance v1, Lud0$e;

    .line 126
    invoke-direct {v1}, Lud0$e;-><init>()V

    .line 129
    const/16 v2, 0xd

    .line 131
    aput-object v1, v0, v2

    .line 133
    new-instance v1, Lud0$f;

    .line 135
    invoke-direct {v1}, Lud0$f;-><init>()V

    .line 138
    const/16 v2, 0xe

    .line 140
    aput-object v1, v0, v2

    .line 142
    new-instance v1, Lud0$g;

    .line 144
    invoke-direct {v1}, Lud0$g;-><init>()V

    .line 147
    const/16 v2, 0xf

    .line 149
    aput-object v1, v0, v2

    .line 151
    new-instance v1, Lud0$h;

    .line 153
    invoke-direct {v1}, Lud0$h;-><init>()V

    .line 156
    const/16 v2, 0x10

    .line 158
    aput-object v1, v0, v2

    .line 160
    new-instance v1, Lud0$i;

    .line 162
    invoke-direct {v1}, Lud0$i;-><init>()V

    .line 165
    const/16 v2, 0x11

    .line 167
    aput-object v1, v0, v2

    .line 169
    new-instance v1, Lud0$j;

    .line 171
    invoke-direct {v1}, Lud0$j;-><init>()V

    .line 174
    const/16 v2, 0x12

    .line 176
    aput-object v1, v0, v2

    .line 178
    new-instance v1, Lud0$z;

    .line 180
    const-string v2, "com.neusoft.ca.setting"

    .line 182
    invoke-direct {v1, v2}, Lud0$z;-><init>(Ljava/lang/String;)V

    .line 185
    const/16 v2, 0x13

    .line 187
    aput-object v1, v0, v2

    .line 189
    new-instance v1, Lud0$z;

    .line 191
    const-string v2, "com.incall.apps.setting"

    .line 193
    invoke-direct {v1, v2}, Lud0$z;-><init>(Ljava/lang/String;)V

    .line 196
    const/16 v2, 0x14

    .line 198
    aput-object v1, v0, v2

    .line 200
    new-instance v1, Lud0$l;

    .line 202
    invoke-direct {v1}, Lud0$l;-><init>()V

    .line 205
    const/16 v2, 0x15

    .line 207
    aput-object v1, v0, v2

    .line 209
    new-instance v1, Lud0$m;

    .line 211
    invoke-direct {v1}, Lud0$m;-><init>()V

    .line 214
    const/16 v2, 0x16

    .line 216
    aput-object v1, v0, v2

    .line 218
    new-instance v1, Lud0$n;

    .line 220
    invoke-direct {v1}, Lud0$n;-><init>()V

    .line 223
    const/16 v2, 0x17

    .line 225
    aput-object v1, v0, v2

    .line 227
    new-instance v1, Lud0$o;

    .line 229
    invoke-direct {v1}, Lud0$o;-><init>()V

    .line 232
    const/16 v2, 0x18

    .line 234
    aput-object v1, v0, v2

    .line 236
    new-instance v1, Lud0$p;

    .line 238
    invoke-direct {v1}, Lud0$p;-><init>()V

    .line 241
    const/16 v2, 0x19

    .line 243
    aput-object v1, v0, v2

    .line 245
    new-instance v1, Lud0$q;

    .line 247
    invoke-direct {v1}, Lud0$q;-><init>()V

    .line 250
    const/16 v2, 0x1a

    .line 252
    aput-object v1, v0, v2

    .line 254
    sput-object v0, Lud0;->b:[Lud0$a0;

    .line 256
    return-void
.end method

.method public static synthetic a()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lud0;->a:Landroid/content/Context;

    .line 3
    return-object v0
.end method
