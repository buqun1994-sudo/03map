.class public Lbm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lgf0;


# static fields
.field public static final h:[B


# instance fields
.field public a:Ljava/util/List;

.field public b:Ljava/io/DataOutputStream;

.field public c:Ljava/io/File;

.field public d:Lhf0;

.field public e:Z

.field public f:Ljava/lang/Thread;

.field public final g:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [B

    .line 4
    fill-array-data v0, :array_0

    .line 7
    sput-object v0, Lbm;->h:[B

    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 1
        0x23t
        0x21t
        0x41t
        0x4dt
        0x52t
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 9
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lbm;->a:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/lang/Object;

    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lbm;->g:Ljava/lang/Object;

    .line 22
    return-void
.end method


# virtual methods
.method public a([BI)V
    .locals 2

    .line 1
    new-array v0, p2, [B

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget-object p1, p0, Lbm;->a:Ljava/util/List;

    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object p1, p0, Lbm;->g:Ljava/lang/Object;

    .line 14
    monitor-enter p1

    .line 15
    :try_start_0
    iget-object p2, p0, Lbm;->g:Ljava/lang/Object;

    .line 17
    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 20
    monitor-exit p1

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p2

    .line 23
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p2
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lbm;->b:Ljava/io/DataOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    if-eqz v0, :cond_0

    .line 6
    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 9
    iget-object v0, p0, Lbm;->d:Lhf0;

    .line 11
    iget-object v1, p0, Lbm;->c:Ljava/io/File;

    .line 13
    invoke-interface {v0, v1}, Lhf0;->a(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    :cond_0
    :goto_0
    new-instance v0, Ljava/io/File;

    .line 23
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 32
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 35
    :cond_1
    const/4 p1, 0x0

    .line 36
    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 39
    const-string v1, "[AMR]Filer"

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    const-string v3, "new slice file at:"

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v2

    .line 62
    new-array v3, p1, [Ljava/lang/Object;

    .line 64
    invoke-static {v1, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 67
    goto :goto_1

    .line 68
    :catch_1
    move-exception v1

    .line 69
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 72
    :goto_1
    :try_start_5
    new-instance v1, Ljava/io/FileOutputStream;

    .line 74
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 77
    new-instance v2, Ljava/io/BufferedOutputStream;

    .line 79
    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 82
    new-instance v1, Ljava/io/DataOutputStream;

    .line 84
    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 87
    goto :goto_2

    .line 88
    :catch_2
    move-exception v1

    .line 89
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 92
    const/4 v1, 0x0

    .line 93
    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_2

    .line 99
    if-eqz v1, :cond_2

    .line 101
    iput-object v0, p0, Lbm;->c:Ljava/io/File;

    .line 103
    iput-object v1, p0, Lbm;->b:Ljava/io/DataOutputStream;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 105
    :try_start_7
    sget-object v0, Lbm;->h:[B

    .line 107
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 110
    goto :goto_3

    .line 111
    :catch_3
    move-exception v0

    .line 112
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 115
    :goto_3
    const-string v0, "[AMR]Filer"

    .line 117
    const-string v1, "file create succeed, try to notify"

    .line 119
    new-array p1, p1, [Ljava/lang/Object;

    .line 121
    invoke-static {v0, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    iget-object p1, p0, Lbm;->g:Ljava/lang/Object;

    .line 126
    monitor-enter p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 127
    :try_start_9
    iget-object v0, p0, Lbm;->g:Ljava/lang/Object;

    .line 129
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 132
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 133
    monitor-exit p0

    .line 134
    return-void

    .line 135
    :catchall_0
    move-exception v0

    .line 136
    :try_start_a
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 137
    :try_start_b
    throw v0

    .line 138
    :cond_2
    const-string v0, "[AMR]Filer"

    .line 140
    const-string v1, "file create failed"

    .line 142
    new-array p1, p1, [Ljava/lang/Object;

    .line 144
    invoke-static {v0, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 147
    monitor-exit p0

    .line 148
    return-void

    .line 149
    :catchall_1
    move-exception p1

    .line 150
    monitor-exit p0

    .line 151
    throw p1
.end method

.method public c(Lhf0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbm;->d:Lhf0;

    .line 3
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lbm;->e:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "[AMR]Filer"

    .line 6
    if-eqz v0, :cond_0

    .line 8
    const-string p1, "already started"

    .line 10
    new-array v0, v1, [Ljava/lang/Object;

    .line 12
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    return-void

    .line 16
    :cond_0
    const-string v0, "start succeed"

    .line 18
    new-array v1, v1, [Ljava/lang/Object;

    .line 20
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lbm;->e:Z

    .line 26
    iget-object v0, p0, Lbm;->b:Ljava/io/DataOutputStream;

    .line 28
    if-nez v0, :cond_1

    .line 30
    invoke-virtual {p0, p1}, Lbm;->b(Ljava/lang/String;)V

    .line 33
    :cond_1
    new-instance p1, Ljava/lang/Thread;

    .line 35
    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 38
    iput-object p1, p0, Lbm;->f:Ljava/lang/Thread;

    .line 40
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 43
    return-void
.end method

.method public e()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "[AMR]Filer"

    .line 6
    const-string v3, "stop, clean up"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-boolean v1, p0, Lbm;->e:Z

    .line 13
    if-nez v1, :cond_0

    .line 15
    const-string v1, "not running"

    .line 17
    new-array v0, v0, [Ljava/lang/Object;

    .line 19
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    return-void

    .line 23
    :cond_0
    iput-boolean v0, p0, Lbm;->e:Z

    .line 25
    iget-object v1, p0, Lbm;->f:Ljava/lang/Thread;

    .line 27
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 30
    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Lbm;->f:Ljava/lang/Thread;

    .line 33
    iget-object v2, p0, Lbm;->b:Ljava/io/DataOutputStream;

    .line 35
    if-eqz v2, :cond_2

    .line 37
    :goto_0
    iget-object v2, p0, Lbm;->a:Ljava/util/List;

    .line 39
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 42
    move-result v2

    .line 43
    if-lez v2, :cond_1

    .line 45
    iget-object v2, p0, Lbm;->a:Ljava/util/List;

    .line 47
    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 50
    move-result-object v2

    .line 51
    check-cast v2, [B

    .line 53
    :try_start_0
    iget-object v3, p0, Lbm;->b:Ljava/io/DataOutputStream;

    .line 55
    array-length v4, v2

    .line 56
    invoke-virtual {v3, v2, v0, v4}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception v2

    .line 61
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    :try_start_1
    iget-object v0, p0, Lbm;->b:Ljava/io/DataOutputStream;

    .line 67
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    goto :goto_1

    .line 71
    :catch_1
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    :cond_2
    :goto_1
    iput-object v1, p0, Lbm;->b:Ljava/io/DataOutputStream;

    .line 77
    iput-object v1, p0, Lbm;->c:Ljava/io/File;

    .line 79
    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    :goto_0
    iget-boolean v0, p0, Lbm;->e:Z

    .line 3
    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lbm;->g:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lbm;->a:Ljava/util/List;

    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 16
    iget-object v1, p0, Lbm;->b:Ljava/io/DataOutputStream;

    .line 18
    if-nez v1, :cond_0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object v1, p0, Lbm;->a:Ljava/util/List;

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :try_start_1
    iget-object v3, p0, Lbm;->b:Ljava/io/DataOutputStream;

    .line 32
    array-length v4, v1

    .line 33
    invoke-virtual {v3, v1, v2, v4}, Ljava/io/DataOutputStream;->write([BII)V

    .line 36
    iget-object v1, p0, Lbm;->a:Ljava/util/List;

    .line 38
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    goto :goto_2

    .line 42
    :catch_0
    move-exception v1

    .line 43
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    goto :goto_2

    .line 47
    :cond_1
    :goto_1
    :try_start_3
    iget-object v1, p0, Lbm;->g:Ljava/lang/Object;

    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 52
    goto :goto_2

    .line 53
    :catch_1
    move-exception v1

    .line 54
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    :goto_2
    monitor-exit v0

    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception v1

    .line 60
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 61
    throw v1

    .line 62
    :cond_2
    return-void
.end method
