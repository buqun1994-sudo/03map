.class public abstract Lb7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/HashMap;

.field public static b:Ljava/util/HashMap;

.field public static c:La6;

.field public static d:I

.field public static e:I

.field public static f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lb7;->a:Ljava/util/HashMap;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    sput-object v0, Lb7;->b:Ljava/util/HashMap;

    .line 15
    new-instance v0, La6;

    .line 17
    invoke-direct {v0}, La6;-><init>()V

    .line 20
    sput-object v0, Lb7;->c:La6;

    .line 22
    const/4 v0, 0x0

    .line 23
    sput v0, Lb7;->d:I

    .line 25
    sput v0, Lb7;->e:I

    .line 27
    const/4 v0, 0x1

    .line 28
    sput-boolean v0, Lb7;->f:Z

    .line 30
    return-void
.end method

.method public static declared-synchronized a()Ljava/lang/String;
    .locals 6

    .line 1
    const-class v0, Lb7;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    const-string v2, "%n============Activity Event Info!=============%n"

    .line 11
    const/4 v3, 0x0

    .line 12
    new-array v3, v3, [Ljava/lang/Object;

    .line 14
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    const-string v3, "MemLevel:"

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    sget v3, Lb7;->e:I

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v3, "\n"

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    const-string v3, "LoadAvg:"

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-static {}, Ls50;->a()Ljava/lang/String;

    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v3, "\n"

    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    const-string v3, "MemInfo:"

    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-static {}, Ls50;->b()Ljava/lang/String;

    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v3, "\n"

    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    sget-object v2, Lb7;->a:Ljava/util/HashMap;

    .line 108
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 111
    move-result-object v2

    .line 112
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 115
    move-result-object v2

    .line 116
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    move-result v3

    .line 120
    if-eqz v3, :cond_0

    .line 122
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    move-result-object v3

    .line 126
    check-cast v3, Ljava/util/Map$Entry;

    .line 128
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 131
    move-result-object v4

    .line 132
    check-cast v4, Ljava/lang/Integer;

    .line 134
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 137
    move-result v4

    .line 138
    invoke-static {v4}, Lb7;->b(I)Ljava/lang/String;

    .line 141
    move-result-object v4

    .line 142
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string v4, " : "

    .line 147
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 153
    move-result-object v3

    .line 154
    check-cast v3, Ljava/lang/String;

    .line 156
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string v3, "\n"

    .line 161
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    goto :goto_0

    .line 165
    :cond_0
    sget-object v2, Lb7;->b:Ljava/util/HashMap;

    .line 167
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 170
    move-result-object v2

    .line 171
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 174
    move-result-object v2

    .line 175
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 178
    move-result v3

    .line 179
    if-eqz v3, :cond_1

    .line 181
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    move-result-object v3

    .line 185
    check-cast v3, Ljava/util/Map$Entry;

    .line 187
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 190
    move-result-object v4

    .line 191
    check-cast v4, Ljava/lang/String;

    .line 193
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v4, " : "

    .line 198
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 204
    move-result-object v3

    .line 205
    check-cast v3, Ljava/lang/String;

    .line 207
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const-string v3, "\n"

    .line 212
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    goto :goto_1

    .line 216
    :cond_1
    sget-object v2, Lb7;->c:La6;

    .line 218
    invoke-virtual {v2}, La6;->entrySet()Ljava/util/Set;

    .line 221
    move-result-object v2

    .line 222
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 225
    move-result-object v2

    .line 226
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 229
    move-result v3

    .line 230
    if-eqz v3, :cond_2

    .line 232
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 235
    move-result-object v3

    .line 236
    check-cast v3, Ljava/util/Map$Entry;

    .line 238
    new-instance v4, Ljava/lang/StringBuilder;

    .line 240
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    const-string v5, "EVENT_DOWN:"

    .line 245
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 251
    move-result-object v3

    .line 252
    check-cast v3, Ljava/lang/String;

    .line 254
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    move-result-object v3

    .line 261
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const-string v3, "\n"

    .line 266
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    goto :goto_2

    .line 270
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    monitor-exit v0

    .line 275
    return-object v1

    .line 276
    :catchall_0
    move-exception v1

    .line 277
    monitor-exit v0

    .line 278
    throw v1
.end method

.method public static b(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 4
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    const-string p0, "EVENT_NATIVE_BACKGROUND_SERVICE"

    .line 11
    goto :goto_0

    .line 12
    :pswitch_1
    const-string p0, "EVENT_NATIVE_APPLICATION"

    .line 14
    goto :goto_0

    .line 15
    :pswitch_2
    const-string p0, "EVENT_APPLICATION"

    .line 17
    goto :goto_0

    .line 18
    :pswitch_3
    const-string p0, "EVENT_WINDOW_FOCUS"

    .line 20
    goto :goto_0

    .line 21
    :pswitch_4
    const-string p0, "EVENT_LOW_MEMORY"

    .line 23
    goto :goto_0

    .line 24
    :pswitch_5
    const-string p0, "EVENT_HIDE_COVER"

    .line 26
    goto :goto_0

    .line 27
    :pswitch_6
    const-string p0, "EVENT_INIT_LAYOUT"

    .line 29
    goto :goto_0

    .line 30
    :pswitch_7
    const-string p0, "EVENT_NATIVE_SURFACE_DESTROY"

    .line 32
    goto :goto_0

    .line 33
    :pswitch_8
    const-string p0, "EVENT_NATIVE_SURFACE_CHANGE"

    .line 35
    goto :goto_0

    .line 36
    :pswitch_9
    const-string p0, "EVENT_NATIVE_SURFACE_CREATE"

    .line 38
    goto :goto_0

    .line 39
    :pswitch_a
    const-string p0, "EVENT_NATIVE_DESTROY"

    .line 41
    goto :goto_0

    .line 42
    :pswitch_b
    const-string p0, "EVENT_NATIVE_PAUSE"

    .line 44
    goto :goto_0

    .line 45
    :pswitch_c
    const-string p0, "EVENT_NATIVE_STOP"

    .line 47
    goto :goto_0

    .line 48
    :pswitch_d
    const-string p0, "EVENT_NATIVE_RESUME"

    .line 50
    goto :goto_0

    .line 51
    :pswitch_e
    const-string p0, "EVENT_NATIVE_START"

    .line 53
    goto :goto_0

    .line 54
    :pswitch_f
    const-string p0, "EVENT_NATIVE_CREATE"

    .line 56
    goto :goto_0

    .line 57
    :pswitch_10
    const-string p0, "EVENT_SURFACE_DESTROY"

    .line 59
    goto :goto_0

    .line 60
    :pswitch_11
    const-string p0, "EVENT_SURFACE_CHANGE"

    .line 62
    goto :goto_0

    .line 63
    :pswitch_12
    const-string p0, "EVENT_SURFACE_CREATE"

    .line 65
    goto :goto_0

    .line 66
    :pswitch_13
    const-string p0, "EVENT_DESTROY"

    .line 68
    goto :goto_0

    .line 69
    :pswitch_14
    const-string p0, "EVENT_PAUSE"

    .line 71
    goto :goto_0

    .line 72
    :pswitch_15
    const-string p0, "EVENT_STOP"

    .line 74
    goto :goto_0

    .line 75
    :pswitch_16
    const-string p0, "EVENT_RESUME"

    .line 77
    goto :goto_0

    .line 78
    :pswitch_17
    const-string p0, "EVENT_START"

    .line 80
    goto :goto_0

    .line 81
    :pswitch_18
    const-string p0, "EVENT_CREATE"

    .line 83
    :goto_0
    return-object p0

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(I)V
    .locals 0

    .line 1
    sput p0, Lb7;->e:I

    .line 3
    return-void
.end method

.method public static declared-synchronized d(I)V
    .locals 3

    .line 1
    const-class v0, Lb7;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lb7;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-nez v1, :cond_0

    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 12
    const-string v2, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 14
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 17
    new-instance v2, Ljava/util/Date;

    .line 19
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 22
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    sget-object v2, Lb7;->a:Ljava/util/HashMap;

    .line 28
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    monitor-exit v0

    .line 39
    throw p0
.end method

.method public static declared-synchronized e(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-class v0, Lb7;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lb7;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-nez v1, :cond_0

    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 12
    const-string v2, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 14
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 17
    new-instance v2, Ljava/util/Date;

    .line 19
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 22
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    sget-object v2, Lb7;->c:La6;

    .line 28
    sget v3, Lb7;->d:I

    .line 30
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v3

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {v2, v3, p0}, Lyd0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget p0, Lb7;->d:I

    .line 54
    add-int/lit8 p0, p0, 0x1

    .line 56
    sput p0, Lb7;->d:I

    .line 58
    const/16 v1, 0xa

    .line 60
    if-lt p0, v1, :cond_1

    .line 62
    const/4 p0, 0x0

    .line 63
    sput p0, Lb7;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :cond_1
    monitor-exit v0

    .line 66
    return-void

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    monitor-exit v0

    .line 69
    throw p0
.end method

.method public static declared-synchronized f(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-class v0, Lb7;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lb7;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-nez v1, :cond_0

    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 12
    const-string v2, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 14
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 17
    new-instance v2, Ljava/util/Date;

    .line 19
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 22
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    sget-object v2, Lb7;->b:Ljava/util/HashMap;

    .line 28
    invoke-virtual {v2, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    monitor-exit v0

    .line 35
    throw p0
.end method
