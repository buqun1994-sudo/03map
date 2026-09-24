.class public final La2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La2$a;
    }
.end annotation


# static fields
.field public static volatile e:La2;


# instance fields
.field public a:Ljava/util/List;

.field public b:Ljava/lang/String;

.field public final c:Landroid/content/Context;

.field public final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, La2;->c:Landroid/content/Context;

    .line 10
    new-instance p1, La2$a;

    .line 12
    invoke-direct {p1, p0}, La2$a;-><init>(La2;)V

    .line 15
    iput-object p1, p0, La2;->d:Landroid/os/Handler;

    .line 17
    return-void
.end method

.method public static synthetic a(La2;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, La2;->g(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static c(Landroid/content/Context;)La2;
    .locals 2

    .line 1
    sget-object v0, La2;->e:La2;

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-class v0, La2;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, La2;->e:La2;

    .line 10
    if-nez v1, :cond_0

    .line 12
    new-instance v1, La2;

    .line 14
    invoke-direct {v1, p0}, La2;-><init>(Landroid/content/Context;)V

    .line 17
    sput-object v1, La2;->e:La2;

    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0

    .line 24
    :cond_1
    :goto_0
    sget-object p0, La2;->e:La2;

    .line 26
    return-object p0
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, La2;->a:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 11
    iget-object v0, p0, La2;->a:Ljava/util/List;

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/CharSequence;

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, La2;->a:Ljava/util/List;

    .line 28
    return-object v0

    .line 29
    :cond_0
    invoke-virtual {p0}, La2;->f()Ljava/util/List;

    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, La2;->a:Ljava/util/List;

    .line 35
    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 3
    const-string p1, ""

    .line 5
    :cond_0
    iget-object v0, p0, La2;->a:Ljava/util/List;

    .line 7
    if-eqz v0, :cond_1

    .line 9
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 12
    iget-object v0, p0, La2;->a:Ljava/util/List;

    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_1
    const/16 v0, 0x111

    .line 19
    invoke-virtual {p0, p1, v0}, La2;->g(Ljava/lang/String;I)V

    .line 22
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, La2;->b:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public final f()Ljava/util/List;
    .locals 7

    .line 1
    const-string v0, ""

    .line 3
    :try_start_0
    iget-object v1, p0, La2;->c:Landroid/content/Context;

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, La2;->b:Ljava/lang/String;

    .line 11
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_0

    .line 21
    invoke-static {v1}, Lqc0;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    :cond_0
    move-object v1, v0

    .line 31
    :goto_0
    iget-object v2, p0, La2;->c:Landroid/content/Context;

    .line 33
    iget-object v3, p0, La2;->b:Ljava/lang/String;

    .line 35
    invoke-static {v2, v3}, Lam;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_1

    .line 45
    invoke-static {v2}, Lqc0;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move-object v2, v0

    .line 51
    :goto_1
    invoke-static {}, Lmj;->b()Lmj;

    .line 54
    move-result-object v3

    .line 55
    iget-object v4, p0, La2;->c:Landroid/content/Context;

    .line 57
    invoke-virtual {v3, v4}, Lmj;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 60
    move-result-object v3

    .line 61
    const-string v4, "SharedPreferenceAdiu"

    .line 63
    const/4 v5, 0x0

    .line 64
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 67
    move-result-object v3

    .line 68
    iget-object v4, p0, La2;->b:Ljava/lang/String;

    .line 70
    const/4 v6, 0x0

    .line 71
    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object v3

    .line 75
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    move-result v4

    .line 79
    if-nez v4, :cond_2

    .line 81
    invoke-static {v3}, Lqc0;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    .line 87
    const/4 v4, 0x3

    .line 88
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    move-result v4

    .line 95
    if-nez v4, :cond_8

    .line 97
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 103
    move-result v4

    .line 104
    const/16 v6, 0x10

    .line 106
    if-nez v4, :cond_3

    .line 108
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 111
    move-result v4

    .line 112
    if-nez v4, :cond_4

    .line 114
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_3
    const/16 v5, 0x10

    .line 119
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 122
    move-result v4

    .line 123
    if-nez v4, :cond_5

    .line 125
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 128
    move-result v4

    .line 129
    if-nez v4, :cond_6

    .line 131
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 134
    move-result v2

    .line 135
    if-nez v2, :cond_5

    .line 137
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_5
    or-int/lit16 v5, v5, 0x100

    .line 142
    :cond_6
    if-lez v5, :cond_7

    .line 144
    iget-object v0, p0, La2;->d:Landroid/os/Handler;

    .line 146
    invoke-virtual {v0, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 153
    :cond_7
    return-object v3

    .line 154
    :cond_8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 157
    move-result v1

    .line 158
    if-nez v1, :cond_b

    .line 160
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 166
    move-result v1

    .line 167
    const/16 v4, 0x100

    .line 169
    if-nez v1, :cond_9

    .line 171
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 174
    move-result v1

    .line 175
    if-nez v1, :cond_a

    .line 177
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_9
    const/16 v5, 0x100

    .line 182
    :cond_a
    or-int/lit8 v0, v5, 0x1

    .line 184
    iget-object v1, p0, La2;->d:Landroid/os/Handler;

    .line 186
    invoke-virtual {v1, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 193
    return-object v3

    .line 194
    :cond_b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 197
    move-result v1

    .line 198
    if-nez v1, :cond_c

    .line 200
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v1, p0, La2;->d:Landroid/os/Handler;

    .line 205
    const/16 v2, 0x11

    .line 207
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    return-object v3

    .line 215
    :cond_c
    return-object v6
.end method

.method public final g(Ljava/lang/String;I)V
    .locals 5

    .line 1
    invoke-static {p1}, Lqc0;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_3

    .line 11
    and-int/lit8 v0, p2, 0x1

    .line 13
    const/4 v1, 0x0

    .line 14
    if-lez v0, :cond_1

    .line 16
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 18
    const/16 v2, 0x17

    .line 20
    if-lt v0, v2, :cond_0

    .line 22
    iget-object v0, p0, La2;->c:Landroid/content/Context;

    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 27
    move-result-object v0

    .line 28
    iget-object v2, p0, La2;->b:Ljava/lang/String;

    .line 30
    invoke-static {v0, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, La2;->c:Landroid/content/Context;

    .line 36
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 39
    move-result-object v0

    .line 40
    iget-object v2, p0, La2;->b:Ljava/lang/String;

    .line 42
    invoke-static {v0, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    const-string v2, "syncSetAdiu occur an Exception "

    .line 49
    new-array v3, v1, [Ljava/lang/Object;

    .line 51
    const-string v4, "AdiuStorageModel"

    .line 53
    invoke-static {v4, v2, v0, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 56
    :cond_1
    :goto_0
    and-int/lit8 v0, p2, 0x10

    .line 58
    if-lez v0, :cond_2

    .line 60
    iget-object v0, p0, La2;->c:Landroid/content/Context;

    .line 62
    iget-object v2, p0, La2;->b:Ljava/lang/String;

    .line 64
    invoke-static {v0, v2, p1}, Lam;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_2
    and-int/lit16 p2, p2, 0x100

    .line 69
    if-lez p2, :cond_3

    .line 71
    invoke-static {}, Lmj;->b()Lmj;

    .line 74
    move-result-object p2

    .line 75
    iget-object v0, p0, La2;->c:Landroid/content/Context;

    .line 77
    invoke-virtual {p2, v0}, Lmj;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 80
    move-result-object p2

    .line 81
    const-string v0, "SharedPreferenceAdiu"

    .line 83
    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 86
    move-result-object p2

    .line 87
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 90
    move-result-object p2

    .line 91
    iget-object v0, p0, La2;->b:Ljava/lang/String;

    .line 93
    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 96
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 99
    :cond_3
    return-void
.end method
