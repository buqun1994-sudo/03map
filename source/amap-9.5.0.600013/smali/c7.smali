.class public Lc7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc7$c;,
        Lc7$b;
    }
.end annotation


# instance fields
.field public a:Landroid/os/HandlerThread;

.field public b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lc7$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc7;-><init>()V

    return-void
.end method

.method public static synthetic a(Lc7;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc7;->b()V

    .line 4
    return-void
.end method

.method public static c()Lc7;
    .locals 1

    .line 1
    invoke-static {}, Lc7$c;->a()Lc7;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/util/HashMap;

    .line 7
    const/16 v2, 0x1e

    .line 9
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 12
    new-instance v2, Ljava/io/File;

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    const-string v4, "/proc/"

    .line 21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v4, "/task"

    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 36
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_0

    .line 45
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_0

    .line 51
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 54
    move-result-object v2

    .line 55
    array-length v3, v2

    .line 56
    const/4 v4, 0x0

    .line 57
    const/4 v5, 0x0

    .line 58
    :goto_0
    if-ge v5, v3, :cond_0

    .line 60
    aget-object v6, v2, v5

    .line 62
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    .line 64
    new-instance v8, Ljava/lang/StringBuilder;

    .line 66
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 72
    move-result-object v9

    .line 73
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v9, "/comm"

    .line 78
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v8

    .line 85
    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 88
    new-instance v8, Ljava/io/InputStreamReader;

    .line 90
    invoke-direct {v8, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 93
    new-instance v9, Ljava/io/BufferedReader;

    .line 95
    invoke-direct {v9, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 98
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 101
    move-result-object v8

    .line 102
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 105
    move-result-object v9

    .line 106
    invoke-virtual {v1, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 112
    new-instance v7, Ljava/lang/StringBuilder;

    .line 114
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    const-string v9, "thread-name,pid:"

    .line 119
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    const-string v9, ",tid:"

    .line 127
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 133
    move-result-object v6

    .line 134
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string v6, ",name:"

    .line 139
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object v6

    .line 149
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 152
    move-result-object v7

    .line 153
    invoke-virtual {v7, v6, v4}, Lcom/autonavi/amapauto/framework/AutoLoader;->t(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :catch_0
    add-int/lit8 v5, v5, 0x1

    .line 158
    goto :goto_0

    .line 159
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc7;->b:Landroid/os/Handler;

    .line 3
    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lc7;->a:Landroid/os/HandlerThread;

    .line 7
    if-nez v0, :cond_0

    .line 9
    new-instance v0, Landroid/os/HandlerThread;

    .line 11
    const-string v1, "AutoDebugThread"

    .line 13
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 16
    iput-object v0, p0, Lc7;->a:Landroid/os/HandlerThread;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 21
    :cond_0
    new-instance v0, Lc7$b;

    .line 23
    iget-object v1, p0, Lc7;->a:Landroid/os/HandlerThread;

    .line 25
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, p0, v1}, Lc7$b;-><init>(Lc7;Landroid/os/Looper;)V

    .line 32
    iput-object v0, p0, Lc7;->b:Landroid/os/Handler;

    .line 34
    :cond_1
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc7;->b:Landroid/os/Handler;

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lc7;->d()V

    .line 8
    :cond_0
    iget-object v0, p0, Lc7;->b:Landroid/os/Handler;

    .line 10
    const/4 v1, 0x3

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lc7;->b:Landroid/os/Handler;

    .line 17
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 20
    return-void
.end method
