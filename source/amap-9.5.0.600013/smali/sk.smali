.class public Lsk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk$b;
    }
.end annotation


# static fields
.field public static d:Ljava/lang/String; = "DysmorphismInfoProvider"


# instance fields
.field public a:Lrk;

.field public b:I

.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0}, Lsk;->e()V

    .line 4
    invoke-virtual {p0}, Lsk;->d()V

    return-void
.end method

.method public synthetic constructor <init>(Lsk$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsk;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;I)I
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 8
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    sget-object v0, Lsk;->d:Ljava/lang/String;

    .line 13
    const/4 v1, 0x0

    .line 14
    new-array v1, v1, [Ljava/lang/Object;

    .line 16
    const-string v2, "convert2Int exception:"

    .line 18
    invoke-static {v0, v2, p0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 21
    return p1
.end method

.method public static c()Lsk;
    .locals 1

    .line 1
    invoke-static {}, Lsk$b;->a()Lsk;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public b()Lrk;
    .locals 1

    .line 1
    iget-object v0, p0, Lsk;->a:Lrk;

    .line 3
    return-object v0
.end method

.method public final d()V
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
    invoke-static {v0}, Lsi;->u(Landroid/content/Context;)Lsi;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lsi;->I()I

    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lsk;->b:I

    .line 19
    invoke-static {}, Lrv;->H()Lrv;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lsi;->u(Landroid/content/Context;)Lsi;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lsi;->H()I

    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lsk;->c:I

    .line 37
    sget-object v0, Lsk;->d:Ljava/lang/String;

    .line 39
    const/4 v1, 0x2

    .line 40
    new-array v1, v1, [Ljava/lang/Object;

    .line 42
    iget v2, p0, Lsk;->b:I

    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v2

    .line 48
    const/4 v3, 0x0

    .line 49
    aput-object v2, v1, v3

    .line 51
    iget v2, p0, Lsk;->c:I

    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v2

    .line 57
    const/4 v3, 0x1

    .line 58
    aput-object v2, v1, v3

    .line 60
    const-string v2, "deviceWidth = {?}, deviceHeight = {?}"

    .line 62
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public final e()V
    .locals 8

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lse;->getSystemDysmorphismInfo()Lrk;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0}, Lrk;->e()Z

    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 19
    new-instance v3, Lrk;

    .line 21
    invoke-direct {v3, v0}, Lrk;-><init>(Lrk;)V

    .line 24
    iput-object v3, p0, Lsk;->a:Lrk;

    .line 26
    sget-object v0, Lsk;->d:Ljava/lang/String;

    .line 28
    new-array v1, v1, [Ljava/lang/Object;

    .line 30
    aput-object v3, v1, v2

    .line 32
    const-string v2, "read DysmorphismInfo from system, info:{?}"

    .line 34
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    return-void

    .line 38
    :cond_0
    invoke-static {}, Lzm;->d()Lzm;

    .line 41
    move-result-object v0

    .line 42
    sget-object v3, Lzm;->z:Ljava/lang/String;

    .line 44
    const-string v4, ""

    .line 46
    invoke-virtual {v0, v3, v4}, Lzm;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    move-result v3

    .line 54
    if-nez v3, :cond_2

    .line 56
    sget-object v3, Lsk;->d:Ljava/lang/String;

    .line 58
    new-array v4, v1, [Ljava/lang/Object;

    .line 60
    aput-object v0, v4, v2

    .line 62
    const-string v5, "read DysmorphismInfo from funcConfig config:{?}"

    .line 64
    invoke-static {v3, v5, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    const-string v3, ","

    .line 69
    const/4 v4, -0x1

    .line 70
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    array-length v3, v0

    .line 75
    const/4 v4, 0x4

    .line 76
    if-ne v3, v4, :cond_1

    .line 78
    new-instance v3, Lrk;

    .line 80
    aget-object v4, v0, v2

    .line 82
    invoke-static {v4, v2}, Lsk;->a(Ljava/lang/String;I)I

    .line 85
    move-result v4

    .line 86
    aget-object v5, v0, v1

    .line 88
    invoke-static {v5, v2}, Lsk;->a(Ljava/lang/String;I)I

    .line 91
    move-result v5

    .line 92
    const/4 v6, 0x2

    .line 93
    aget-object v6, v0, v6

    .line 95
    invoke-static {v6, v2}, Lsk;->a(Ljava/lang/String;I)I

    .line 98
    move-result v6

    .line 99
    const/4 v7, 0x3

    .line 100
    aget-object v0, v0, v7

    .line 102
    invoke-static {v0, v2}, Lsk;->a(Ljava/lang/String;I)I

    .line 105
    move-result v0

    .line 106
    invoke-direct {v3, v4, v5, v6, v0}, Lrk;-><init>(IIII)V

    .line 109
    iput-object v3, p0, Lsk;->a:Lrk;

    .line 111
    invoke-virtual {v3}, Lrk;->e()Z

    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_2

    .line 117
    sget-object v0, Lsk;->d:Ljava/lang/String;

    .line 119
    new-array v1, v1, [Ljava/lang/Object;

    .line 121
    iget-object v3, p0, Lsk;->a:Lrk;

    .line 123
    aput-object v3, v1, v2

    .line 125
    const-string v2, "read DysmorphismInfo from funcConfig, info:{?}"

    .line 127
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    return-void

    .line 131
    :cond_1
    sget-object v0, Lsk;->d:Ljava/lang/String;

    .line 133
    const-string v3, "read DysmorphismInfo from funcConfig error"

    .line 135
    new-array v4, v2, [Ljava/lang/Object;

    .line 137
    invoke-static {v0, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    :cond_2
    new-instance v0, Lrk;

    .line 142
    invoke-static {}, Lse;->c()Lse;

    .line 145
    move-result-object v3

    .line 146
    const/16 v4, 0x7531

    .line 148
    invoke-virtual {v3, v4}, Lse;->getIntValue(I)I

    .line 151
    move-result v3

    .line 152
    invoke-static {}, Lse;->c()Lse;

    .line 155
    move-result-object v4

    .line 156
    const/16 v5, 0x7532

    .line 158
    invoke-virtual {v4, v5}, Lse;->getIntValue(I)I

    .line 161
    move-result v4

    .line 162
    invoke-static {}, Lse;->c()Lse;

    .line 165
    move-result-object v5

    .line 166
    const/16 v6, 0x7533

    .line 168
    invoke-virtual {v5, v6}, Lse;->getIntValue(I)I

    .line 171
    move-result v5

    .line 172
    invoke-static {}, Lse;->c()Lse;

    .line 175
    move-result-object v6

    .line 176
    const/16 v7, 0x7534

    .line 178
    invoke-virtual {v6, v7}, Lse;->getIntValue(I)I

    .line 181
    move-result v6

    .line 182
    invoke-direct {v0, v3, v4, v5, v6}, Lrk;-><init>(IIII)V

    .line 185
    iput-object v0, p0, Lsk;->a:Lrk;

    .line 187
    invoke-virtual {v0}, Lrk;->e()Z

    .line 190
    move-result v0

    .line 191
    if-eqz v0, :cond_3

    .line 193
    sget-object v0, Lsk;->d:Ljava/lang/String;

    .line 195
    new-array v1, v1, [Ljava/lang/Object;

    .line 197
    iget-object v3, p0, Lsk;->a:Lrk;

    .line 199
    aput-object v3, v1, v2

    .line 201
    const-string v2, "read DysmorphismInfo from Channel, info:{?}"

    .line 203
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    return-void

    .line 207
    :cond_3
    new-instance v0, Lrk;

    .line 209
    invoke-direct {v0}, Lrk;-><init>()V

    .line 212
    iput-object v0, p0, Lsk;->a:Lrk;

    .line 214
    sget-object v0, Lsk;->d:Ljava/lang/String;

    .line 216
    const-string v1, "no config DysmorphismInfo"

    .line 218
    new-array v2, v2, [Ljava/lang/Object;

    .line 220
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    return-void
.end method

.method public f()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lsk;->a:Lrk;

    .line 3
    invoke-virtual {v0}, Lrk;->e()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 12
    invoke-static {}, Lrv;->H()Lrv;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lrv;->x()I

    .line 19
    move-result v0

    .line 20
    invoke-static {}, Lrv;->H()Lrv;

    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v4}, Lrv;->u()I

    .line 27
    move-result v4

    .line 28
    iget v5, p0, Lsk;->b:I

    .line 30
    if-ne v0, v5, :cond_0

    .line 32
    iget v5, p0, Lsk;->c:I

    .line 34
    if-ne v4, v5, :cond_0

    .line 36
    const/4 v5, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v5, 0x0

    .line 39
    :goto_0
    sget-object v6, Lsk;->d:Ljava/lang/String;

    .line 41
    const/4 v7, 0x4

    .line 42
    new-array v7, v7, [Ljava/lang/Object;

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v0

    .line 48
    aput-object v0, v7, v3

    .line 50
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v0

    .line 54
    aput-object v0, v7, v2

    .line 56
    iget v0, p0, Lsk;->b:I

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v0

    .line 62
    aput-object v0, v7, v1

    .line 64
    iget v0, p0, Lsk;->c:I

    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v0

    .line 70
    const/4 v4, 0x3

    .line 71
    aput-object v0, v7, v4

    .line 73
    const-string v0, "appWidth={?}, appHeight={?}, screenWidth={?},screenHeight={?}"

    .line 75
    invoke-static {v6, v0, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    const/4 v5, 0x0

    .line 80
    :goto_1
    sget-object v0, Lsk;->d:Ljava/lang/String;

    .line 82
    new-array v1, v1, [Ljava/lang/Object;

    .line 84
    iget-object v4, p0, Lsk;->a:Lrk;

    .line 86
    invoke-virtual {v4}, Lrk;->e()Z

    .line 89
    move-result v4

    .line 90
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 93
    move-result-object v4

    .line 94
    aput-object v4, v1, v3

    .line 96
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 99
    move-result-object v3

    .line 100
    aput-object v3, v1, v2

    .line 102
    const-string v2, "isDysmorphism={?}, isInDysmorphismState={?}"

    .line 104
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    return v5
.end method
