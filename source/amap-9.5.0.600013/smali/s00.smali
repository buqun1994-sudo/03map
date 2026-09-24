.class public abstract Ls00;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "s00"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a(Landroid/os/ParcelFileDescriptor;II)Landroid/os/MemoryFile;
    .locals 3

    .line 1
    sget-object v0, Ls00;->a:Ljava/lang/String;

    .line 3
    const-string v1, "openMemoryFile()"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez p0, :cond_0

    .line 11
    const-string p0, "parcelFileDescriptor is null"

    .line 13
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return-object v1

    .line 17
    :cond_0
    const/4 v2, 0x1

    .line 18
    if-eq p2, v2, :cond_1

    .line 20
    const/4 v2, 0x3

    .line 21
    if-eq p2, v2, :cond_1

    .line 23
    const-string p0, "mode is error"

    .line 25
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-object v1

    .line 29
    :cond_1
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 32
    move-result-object p0

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 35
    const/16 v1, 0x1a

    .line 37
    if-gt v0, v1, :cond_2

    .line 39
    invoke-static {p0, p1, p2}, Ls00;->b(Ljava/io/FileDescriptor;II)Landroid/os/MemoryFile;

    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_2
    invoke-static {p0, p2}, Ls00;->c(Ljava/io/FileDescriptor;I)Landroid/os/MemoryFile;

    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method

.method public static b(Ljava/io/FileDescriptor;II)Landroid/os/MemoryFile;
    .locals 6

    .line 1
    sget-object v0, Ls00;->a:Ljava/lang/String;

    .line 3
    const-string v1, "openMemoryFile27()"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    const/4 v0, 0x0

    .line 9
    :try_start_0
    new-instance v1, Landroid/os/MemoryFile;

    .line 11
    const-string v2, "CameraService"

    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-direct {v1, v2, v3}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 17
    :try_start_1
    invoke-virtual {v1}, Landroid/os/MemoryFile;->close()V

    .line 20
    const-class v0, Landroid/os/MemoryFile;

    .line 22
    const-string v2, "mFD"

    .line 24
    invoke-static {v1, v2, p0}, Lfv;->j(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    const-string v2, "mLength"

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v4

    .line 33
    invoke-static {v1, v2, v4}, Lfv;->j(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    const-string v2, "native_mmap"

    .line 38
    const/4 v4, 0x3

    .line 39
    new-array v4, v4, [Ljava/lang/Object;

    .line 41
    const/4 v5, 0x0

    .line 42
    aput-object p0, v4, v5

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object p0

    .line 48
    aput-object p0, v4, v3

    .line 50
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object p0

    .line 54
    const/4 p1, 0x2

    .line 55
    aput-object p0, v4, p1

    .line 57
    invoke-static {v0, v2, v4}, Lfv;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Ljava/lang/Long;

    .line 63
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 66
    move-result-wide p0

    .line 67
    const-string p2, "mAddress"

    .line 69
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 72
    move-result-object p0

    .line 73
    invoke-static {v1, p2, p0}, Lfv;->j(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    goto :goto_1

    .line 77
    :catch_0
    move-exception p0

    .line 78
    move-object v0, v1

    .line 79
    goto :goto_0

    .line 80
    :catch_1
    move-exception p0

    .line 81
    :goto_0
    sget-object p1, Ls00;->a:Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 86
    move-result-object p0

    .line 87
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    move-object v1, v0

    .line 91
    :goto_1
    return-object v1
.end method

.method public static c(Ljava/io/FileDescriptor;I)Landroid/os/MemoryFile;
    .locals 5

    .line 1
    sget-object v0, Ls00;->a:Ljava/lang/String;

    .line 3
    const-string v1, "openMemoryFile28()"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    const/4 v0, 0x0

    .line 9
    :try_start_0
    new-instance v1, Landroid/os/MemoryFile;

    .line 11
    const-string v2, "CameraService"

    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-direct {v1, v2, v3}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 17
    :try_start_1
    invoke-virtual {v1}, Landroid/os/MemoryFile;->close()V

    .line 20
    const-string v0, "android.os.SharedMemory"

    .line 22
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 25
    move-result-object v0

    .line 26
    new-array v2, v3, [Ljava/lang/Object;

    .line 28
    const/4 v4, 0x0

    .line 29
    aput-object p0, v2, v4

    .line 31
    invoke-static {v0, v2}, Lfv;->i(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object p0

    .line 35
    if-ne p1, v3, :cond_0

    .line 37
    const-string p1, "mapReadOnly"

    .line 39
    new-array v0, v4, [Ljava/lang/Object;

    .line 41
    invoke-static {p0, p1, v0}, Lfv;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const-string p1, "mapReadWrite"

    .line 50
    new-array v0, v4, [Ljava/lang/Object;

    .line 52
    invoke-static {p0, p1, v0}, Lfv;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 58
    :goto_0
    const-string v0, "mSharedMemory"

    .line 60
    invoke-static {v1, v0, p0}, Lfv;->j(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    const-string p0, "mMapping"

    .line 65
    invoke-static {v1, p0, p1}, Lfv;->j(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 68
    goto :goto_2

    .line 69
    :catch_0
    move-exception p0

    .line 70
    move-object v0, v1

    .line 71
    goto :goto_1

    .line 72
    :catch_1
    move-exception p0

    .line 73
    :goto_1
    sget-object p1, Ls00;->a:Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 78
    move-result-object p0

    .line 79
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    move-object v1, v0

    .line 83
    :goto_2
    return-object v1
.end method
