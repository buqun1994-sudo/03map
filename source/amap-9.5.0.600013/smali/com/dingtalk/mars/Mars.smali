.class public Lcom/dingtalk/mars/Mars;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile hasInitialized:Z

.field private static libModules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sput-object v0, Lcom/dingtalk/mars/Mars;->libModules:Ljava/util/ArrayList;

    .line 8
    const/4 v0, 0x0

    .line 9
    sput-boolean v0, Lcom/dingtalk/mars/Mars;->hasInitialized:Z

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized checkLoadedModules(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/dingtalk/mars/Mars;

    .line 3
    monitor-enter v0

    .line 4
    if-nez p0, :cond_0

    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const-string v4, "loaded modules: "

    .line 18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    invoke-static {p1, p0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 42
    sget-object p0, Lcom/dingtalk/mars/Mars;->libModules:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    const/4 p0, 0x1

    .line 48
    const/4 p1, 0x0

    .line 49
    const/4 v2, 0x1

    .line 50
    :goto_0
    sget-object v3, Lcom/dingtalk/mars/Mars;->libModules:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 55
    move-result v3

    .line 56
    if-ge p1, v3, :cond_2

    .line 58
    sget-object v3, Lcom/dingtalk/mars/Mars;->libModules:Ljava/util/ArrayList;

    .line 60
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object v3

    .line 64
    check-cast v3, [Ljava/lang/Object;

    .line 66
    sget-object v4, Lcom/dingtalk/mars/Mars;->libModules:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    move-result-object v4

    .line 72
    check-cast v4, [Ljava/lang/Object;

    .line 74
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 77
    move-result v3

    .line 78
    if-nez v3, :cond_1

    .line 80
    const/4 v2, 0x0

    .line 81
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    if-nez v2, :cond_6

    .line 86
    :goto_1
    sget-object p1, Lcom/dingtalk/mars/Mars;->libModules:Ljava/util/ArrayList;

    .line 88
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 91
    move-result p1

    .line 92
    if-ge v1, p1, :cond_6

    .line 94
    add-int/lit8 p1, v1, 0x1

    .line 96
    move v3, p1

    .line 97
    :goto_2
    sget-object v4, Lcom/dingtalk/mars/Mars;->libModules:Ljava/util/ArrayList;

    .line 99
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 102
    move-result v4

    .line 103
    if-ge v3, v4, :cond_4

    .line 105
    sget-object v2, Lcom/dingtalk/mars/Mars;->libModules:Ljava/util/ArrayList;

    .line 107
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 110
    move-result-object v2

    .line 111
    check-cast v2, [Ljava/lang/String;

    .line 113
    sget-object v4, Lcom/dingtalk/mars/Mars;->libModules:Ljava/util/ArrayList;

    .line 115
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 118
    move-result-object v4

    .line 119
    check-cast v4, [Ljava/lang/String;

    .line 121
    invoke-static {v2, v4}, Lcom/dingtalk/mars/Mars;->hasInterSection([Ljava/lang/String;[Ljava/lang/String;)Z

    .line 124
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    xor-int/2addr v2, p0

    .line 126
    if-nez v2, :cond_3

    .line 128
    goto :goto_3

    .line 129
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 131
    goto :goto_2

    .line 132
    :cond_4
    :goto_3
    if-nez v2, :cond_5

    .line 134
    goto :goto_4

    .line 135
    :cond_5
    move v1, p1

    .line 136
    goto :goto_1

    .line 137
    :cond_6
    :goto_4
    if-eqz v2, :cond_7

    .line 139
    monitor-exit v0

    .line 140
    return-void

    .line 141
    :cond_7
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 143
    const-string p1, "mars lib module custom made error, pls check your *.so."

    .line 145
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 148
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :catchall_0
    move-exception p0

    .line 150
    monitor-exit v0

    .line 151
    throw p0
.end method

.method private static hasInterSection([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v1, :cond_0

    .line 11
    aget-object v4, p0, v3

    .line 13
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    add-int/lit8 v3, v3, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    array-length p0, p1

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_1
    if-ge v1, p0, :cond_2

    .line 23
    aget-object v3, p1, v1

    .line 25
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_1

    .line 31
    const/4 v2, 0x1

    .line 32
    goto :goto_2

    .line 33
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    :goto_2
    return v2
.end method

.method public static init(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/dingtalk/mars/comm/PlatformComm;->init(Landroid/content/Context;Landroid/os/Handler;)V

    .line 4
    const/4 p0, 0x1

    .line 5
    sput-boolean p0, Lcom/dingtalk/mars/Mars;->hasInitialized:Z

    .line 7
    return-void
.end method

.method public static loadDefaultMarsLibrary()V
    .locals 2

    .line 1
    const-string v0, "gaea"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/dingtalk/mobile/common/utils/load/LibraryLoadUtils;->loadLibrary(Ljava/lang/String;Z)V

    .line 7
    return-void
.end method
