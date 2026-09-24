.class public Lsi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static A:Ljava/lang/String;

.field public static B:Lsi;

.field public static C:I

.field public static D:Ljava/lang/String;

.field public static z:J


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:Landroid/content/Context;

.field public w:F

.field public x:Ljava/util/Set;

.field public y:Lzi;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    sput v0, Lsi;->C:I

    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Lsi;->g()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lsi;->a:Ljava/lang/String;

    .line 10
    invoke-static {}, Lsi;->d()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lsi;->b:Ljava/lang/String;

    .line 16
    invoke-static {}, Lsi;->f()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lsi;->c:Ljava/lang/String;

    .line 22
    const-string v0, ""

    .line 24
    iput-object v0, p0, Lsi;->d:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lsi;->e:Ljava/lang/String;

    .line 28
    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lsi;->f:I

    .line 31
    iput v0, p0, Lsi;->t:I

    .line 33
    iput v0, p0, Lsi;->u:I

    .line 35
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lsi;->y:Lzi;

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lsi;->v:Landroid/content/Context;

    .line 44
    if-eqz p1, :cond_1

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 49
    move-result-object p1

    .line 50
    if-nez p1, :cond_0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lrv;->w()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lsi;->d:Ljava/lang/String;

    .line 63
    :cond_1
    :goto_0
    return-void
.end method

.method public static A()Ljava/lang/String;
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
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "N"

    .line 15
    if-nez v0, :cond_0

    .line 17
    return-object v1

    .line 18
    :cond_0
    const-string v2, "android.hardware.microphone"

    .line 20
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 26
    const-string v1, "Y"

    .line 28
    :cond_1
    return-object v1
.end method

.method public static B()I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    .line 5
    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"

    .line 7
    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    .line 12
    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result v4
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 23
    if-eqz v4, :cond_0

    .line 25
    :try_start_3
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    :goto_0
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 36
    goto :goto_1

    .line 37
    :catch_1
    move-exception v1

    .line 38
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    :goto_1
    return v0

    .line 42
    :cond_0
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 49
    move-result v1

    .line 50
    div-int/lit16 v0, v1, 0x3e8
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 52
    :try_start_6
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 55
    goto :goto_2

    .line 56
    :catch_2
    move-exception v1

    .line 57
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    :goto_2
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 63
    goto :goto_7

    .line 64
    :catch_3
    move-exception v1

    .line 65
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    goto :goto_7

    .line 69
    :catch_4
    move-exception v1

    .line 70
    goto :goto_3

    .line 71
    :catch_5
    move-exception v1

    .line 72
    goto :goto_5

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    move-object v3, v1

    .line 75
    goto :goto_8

    .line 76
    :catch_6
    move-exception v3

    .line 77
    move-object v5, v3

    .line 78
    move-object v3, v1

    .line 79
    move-object v1, v5

    .line 80
    goto :goto_3

    .line 81
    :catch_7
    move-exception v3

    .line 82
    move-object v5, v3

    .line 83
    move-object v3, v1

    .line 84
    move-object v1, v5

    .line 85
    goto :goto_5

    .line 86
    :catchall_1
    move-exception v0

    .line 87
    move-object v3, v1

    .line 88
    goto :goto_9

    .line 89
    :catch_8
    move-exception v2

    .line 90
    move-object v3, v1

    .line 91
    move-object v1, v2

    .line 92
    move-object v2, v3

    .line 93
    :goto_3
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 96
    if-eqz v2, :cond_1

    .line 98
    :try_start_9
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    .line 101
    goto :goto_4

    .line 102
    :catch_9
    move-exception v1

    .line 103
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    :cond_1
    :goto_4
    if-eqz v3, :cond_3

    .line 108
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 111
    goto :goto_7

    .line 112
    :catch_a
    move-exception v2

    .line 113
    move-object v3, v1

    .line 114
    move-object v1, v2

    .line 115
    move-object v2, v3

    .line 116
    :goto_5
    :try_start_b
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 119
    if-eqz v2, :cond_2

    .line 121
    :try_start_c
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    .line 124
    goto :goto_6

    .line 125
    :catch_b
    move-exception v1

    .line 126
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 129
    :cond_2
    :goto_6
    if-eqz v3, :cond_3

    .line 131
    :try_start_d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    .line 134
    :cond_3
    :goto_7
    return v0

    .line 135
    :catchall_2
    move-exception v0

    .line 136
    :goto_8
    move-object v1, v2

    .line 137
    :goto_9
    if-eqz v1, :cond_4

    .line 139
    :try_start_e
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    .line 142
    goto :goto_a

    .line 143
    :catch_c
    move-exception v1

    .line 144
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 147
    :cond_4
    :goto_a
    if-eqz v3, :cond_5

    .line 149
    :try_start_f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d

    .line 152
    goto :goto_b

    .line 153
    :catch_d
    move-exception v1

    .line 154
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 157
    :cond_5
    :goto_b
    throw v0
.end method

.method public static D()I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 4
    const-string v2, "/sys/devices/system/cpu/"

    .line 6
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    new-instance v2, Lsi$b;

    .line 11
    invoke-direct {v2}, Lsi$b;-><init>()V

    .line 14
    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 20
    array-length v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :catch_0
    :cond_0
    return v0
.end method

.method public static E()Ljava/lang/String;
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
    invoke-static {v0}, Lsi;->T(Landroid/content/Context;)Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x1

    .line 20
    if-le v1, v2, :cond_0

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/lang/String;

    .line 34
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string v3, "*"

    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/String;

    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const-string v0, ""

    .line 58
    :goto_0
    return-object v0
.end method

.method public static F()Ljava/lang/String;
    .locals 1

    .line 1
    sget v0, Lsi;->C:I

    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static J()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    .line 3
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 5
    invoke-direct {v0, v1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 8
    invoke-static {}, Lrv;->H()Lrv;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {v1, v2}, Lam;->b(Landroid/content/Context;Z)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 27
    const-string v0, "0.00GB"

    .line 29
    return-object v0

    .line 30
    :cond_0
    new-instance v2, Ljava/io/File;

    .line 32
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v2}, Ljava/io/File;->getTotalSpace()J

    .line 38
    move-result-wide v1

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    new-instance v4, Ljava/text/DecimalFormat;

    .line 46
    const-string v5, "#.00"

    .line 48
    invoke-direct {v4, v5, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 51
    long-to-double v0, v1

    .line 52
    const-wide/high16 v5, 0x41d0000000000000L    # 1.073741824E9

    .line 54
    div-double/2addr v0, v5

    .line 55
    invoke-virtual {v4, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v0, "GB"

    .line 64
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    return-object v0
.end method

.method public static K()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lsi;->J()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static M(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "sensor"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/hardware/SensorManager;

    .line 9
    const/4 v0, -0x1

    .line 10
    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static N()I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    .line 5
    const-string v3, "/proc/meminfo"

    .line 7
    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    .line 12
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 15
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 18
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    if-nez v1, :cond_0

    .line 21
    :try_start_2
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    :goto_0
    return v0

    .line 30
    :cond_0
    :try_start_3
    const-string v3, "\\s+"

    .line 32
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    const/4 v3, 0x1

    .line 37
    aget-object v1, v1, v3

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 42
    move-result v1

    .line 43
    div-int/lit16 v1, v1, 0x400
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 45
    :try_start_4
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 48
    goto :goto_1

    .line 49
    :catch_1
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    :goto_1
    return v1

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    move-object v1, v2

    .line 56
    goto :goto_2

    .line 57
    :catch_2
    nop

    .line 58
    move-object v1, v2

    .line 59
    goto :goto_4

    .line 60
    :catchall_1
    move-exception v0

    .line 61
    :goto_2
    if-eqz v1, :cond_1

    .line 63
    :try_start_5
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 66
    goto :goto_3

    .line 67
    :catch_3
    move-exception v1

    .line 68
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    :cond_1
    :goto_3
    throw v0

    .line 72
    :catch_4
    nop

    .line 73
    :goto_4
    if-eqz v1, :cond_2

    .line 75
    :try_start_6
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 78
    goto :goto_5

    .line 79
    :catch_5
    move-exception v1

    .line 80
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    :cond_2
    :goto_5
    return v0
.end method

.method public static O()Ljava/lang/String;
    .locals 5

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
    const-string v1, "N"

    .line 15
    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {v0}, Lsi;->L()Ljava/util/Set;

    .line 20
    move-result-object v2

    .line 21
    if-eqz v2, :cond_0

    .line 23
    invoke-virtual {v0}, Lsi;->L()Ljava/util/Set;

    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_3

    .line 33
    :cond_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lrv;->z()Landroid/content/Context;

    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2}, Lsi;->M(Landroid/content/Context;)Ljava/util/List;

    .line 44
    move-result-object v2

    .line 45
    if-eqz v2, :cond_4

    .line 47
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    .line 56
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 59
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 62
    move-result-object v2

    .line 63
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_2

    .line 69
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Landroid/hardware/Sensor;

    .line 75
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    .line 78
    move-result v4

    .line 79
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object v4

    .line 83
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {v0, v3}, Lsi;->Z(Ljava/util/Set;)V

    .line 90
    :cond_3
    invoke-virtual {v0}, Lsi;->L()Ljava/util/Set;

    .line 93
    move-result-object v0

    .line 94
    const/4 v2, 0x1

    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    move-result-object v2

    .line 99
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_4

    .line 105
    const-string v1, "Y"

    .line 107
    :cond_4
    :goto_1
    return-object v1
.end method

.method public static P()Ljava/lang/String;
    .locals 5

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
    const-string v1, "N"

    .line 15
    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {v0}, Lsi;->L()Ljava/util/Set;

    .line 20
    move-result-object v2

    .line 21
    if-eqz v2, :cond_0

    .line 23
    invoke-virtual {v0}, Lsi;->L()Ljava/util/Set;

    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_3

    .line 33
    :cond_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lrv;->z()Landroid/content/Context;

    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2}, Lsi;->M(Landroid/content/Context;)Ljava/util/List;

    .line 44
    move-result-object v2

    .line 45
    if-eqz v2, :cond_4

    .line 47
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    .line 56
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 59
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 62
    move-result-object v2

    .line 63
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_2

    .line 69
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Landroid/hardware/Sensor;

    .line 75
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    .line 78
    move-result v4

    .line 79
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object v4

    .line 83
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {v0, v3}, Lsi;->Z(Ljava/util/Set;)V

    .line 90
    :cond_3
    invoke-virtual {v0}, Lsi;->L()Ljava/util/Set;

    .line 93
    move-result-object v0

    .line 94
    const/4 v2, 0x4

    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    move-result-object v2

    .line 99
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_4

    .line 105
    const-string v1, "Y"

    .line 107
    :cond_4
    :goto_1
    return-object v1
.end method

.method public static Q()Ljava/lang/String;
    .locals 5

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
    const-string v1, "N"

    .line 15
    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {v0}, Lsi;->L()Ljava/util/Set;

    .line 20
    move-result-object v2

    .line 21
    if-eqz v2, :cond_0

    .line 23
    invoke-virtual {v0}, Lsi;->L()Ljava/util/Set;

    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_3

    .line 33
    :cond_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lrv;->z()Landroid/content/Context;

    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2}, Lsi;->M(Landroid/content/Context;)Ljava/util/List;

    .line 44
    move-result-object v2

    .line 45
    if-eqz v2, :cond_4

    .line 47
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    .line 56
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 59
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 62
    move-result-object v2

    .line 63
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_2

    .line 69
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Landroid/hardware/Sensor;

    .line 75
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    .line 78
    move-result v4

    .line 79
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object v4

    .line 83
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {v0, v3}, Lsi;->Z(Ljava/util/Set;)V

    .line 90
    :cond_3
    invoke-virtual {v0}, Lsi;->L()Ljava/util/Set;

    .line 93
    move-result-object v0

    .line 94
    const/4 v2, 0x2

    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    move-result-object v2

    .line 99
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_4

    .line 105
    const-string v1, "Y"

    .line 107
    :cond_4
    :goto_1
    return-object v1
.end method

.method public static R()Ljava/lang/String;
    .locals 5

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
    const-string v1, "N"

    .line 15
    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {v0}, Lsi;->L()Ljava/util/Set;

    .line 20
    move-result-object v2

    .line 21
    if-eqz v2, :cond_0

    .line 23
    invoke-virtual {v0}, Lsi;->L()Ljava/util/Set;

    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_3

    .line 33
    :cond_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lrv;->z()Landroid/content/Context;

    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2}, Lsi;->M(Landroid/content/Context;)Ljava/util/List;

    .line 44
    move-result-object v2

    .line 45
    if-eqz v2, :cond_4

    .line 47
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    .line 56
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 59
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 62
    move-result-object v2

    .line 63
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_2

    .line 69
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Landroid/hardware/Sensor;

    .line 75
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    .line 78
    move-result v4

    .line 79
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object v4

    .line 83
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {v0, v3}, Lsi;->Z(Ljava/util/Set;)V

    .line 90
    :cond_3
    invoke-virtual {v0}, Lsi;->L()Ljava/util/Set;

    .line 93
    move-result-object v0

    .line 94
    const/4 v2, 0x3

    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    move-result-object v2

    .line 99
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_4

    .line 105
    const-string v1, "Y"

    .line 107
    :cond_4
    :goto_1
    return-object v1
.end method

.method public static S()Ljava/lang/String;
    .locals 5

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
    const-string v1, "N"

    .line 15
    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {v0}, Lsi;->L()Ljava/util/Set;

    .line 20
    move-result-object v2

    .line 21
    if-eqz v2, :cond_0

    .line 23
    invoke-virtual {v0}, Lsi;->L()Ljava/util/Set;

    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_3

    .line 33
    :cond_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lrv;->z()Landroid/content/Context;

    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2}, Lsi;->M(Landroid/content/Context;)Ljava/util/List;

    .line 44
    move-result-object v2

    .line 45
    if-eqz v2, :cond_4

    .line 47
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    .line 56
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 59
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 62
    move-result-object v2

    .line 63
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_2

    .line 69
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Landroid/hardware/Sensor;

    .line 75
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    .line 78
    move-result v4

    .line 79
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object v4

    .line 83
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {v0, v3}, Lsi;->Z(Ljava/util/Set;)V

    .line 90
    :cond_3
    invoke-virtual {v0}, Lsi;->L()Ljava/util/Set;

    .line 93
    move-result-object v0

    .line 94
    const/4 v2, 0x6

    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    move-result-object v2

    .line 99
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_4

    .line 105
    const-string v1, "Y"

    .line 107
    :cond_4
    :goto_1
    return-object v1
.end method

.method public static T(Landroid/content/Context;)Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    const-string v1, "window"

    .line 9
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroid/view/WindowManager;

    .line 15
    new-instance v1, Landroid/util/DisplayMetrics;

    .line 17
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 20
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 27
    iget p0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 29
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    const-string v2, ""

    .line 41
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v3

    .line 48
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 66
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance p0, Ljava/lang/StringBuilder;

    .line 71
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    .line 76
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 86
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance p0, Ljava/lang/StringBuilder;

    .line 91
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    iget v3, v1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 96
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p0

    .line 106
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance p0, Ljava/lang/StringBuilder;

    .line 111
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 116
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object p0

    .line 126
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    return-object v0
.end method

.method public static U()Ljava/lang/String;
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
    invoke-static {v0}, Lsi;->T(Landroid/content/Context;)Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x3

    .line 20
    if-le v1, v2, :cond_0

    .line 22
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/String;

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v0, ""

    .line 31
    :goto_0
    return-object v0
.end method

.method public static V()Ljava/lang/String;
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
    invoke-static {v0}, Lsi;->T(Landroid/content/Context;)Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x4

    .line 20
    if-le v1, v2, :cond_0

    .line 22
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/String;

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v0, ""

    .line 31
    :goto_0
    return-object v0
.end method

.method public static W(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lsi;->D:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "gsm.version.baseband"

    .line 3
    invoke-static {v0}, Luf0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lsi;->D()I

    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {}, Lsi;->B()I

    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "-"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-static {}, Lsi;->y()I

    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, "MHZ"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lsi;->n()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-le v1, v2, :cond_0

    .line 14
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/String;

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string v0, ""

    .line 23
    :goto_0
    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lsi;->n()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/String;

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v0, ""

    .line 17
    :goto_0
    return-object v0
.end method

.method public static m(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "connectivity"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    const/4 v0, 0x0

    .line 12
    new-array v0, v0, [Ljava/lang/Object;

    .line 14
    const-string v1, "AutoNetworkUtil"

    .line 16
    const-string v2, "Exception={?}"

    .line 18
    invoke-static {v1, v2, p0, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 21
    const/4 p0, 0x0

    .line 22
    :goto_0
    return-object p0
.end method

.method public static n()Ljava/util/List;
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    .line 4
    const-string v2, "/proc/cpuinfo"

    .line 6
    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    .line 11
    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    move-object v3, v0

    .line 15
    move-object v4, v3

    .line 16
    move-object v5, v4

    .line 17
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 20
    move-result-object v6

    .line 21
    const/4 v7, 0x2

    .line 22
    if-eqz v6, :cond_4

    .line 24
    const-string v8, ":\\s+"

    .line 26
    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 29
    move-result-object v6

    .line 30
    const/4 v8, 0x0

    .line 31
    aget-object v9, v6, v8

    .line 33
    const-string v10, "Processor"

    .line 35
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 38
    move-result v9

    .line 39
    const/4 v10, 0x1

    .line 40
    if-eqz v9, :cond_1

    .line 42
    aget-object v3, v6, v10

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    aget-object v9, v6, v8

    .line 47
    const-string v11, "Hardware"

    .line 49
    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 52
    move-result v9

    .line 53
    if-eqz v9, :cond_2

    .line 55
    aget-object v4, v6, v10

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    aget-object v8, v6, v8

    .line 60
    const-string v9, "model name"

    .line 62
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 65
    move-result v8

    .line 66
    if-eqz v8, :cond_3

    .line 68
    aget-object v5, v6, v10

    .line 70
    :cond_3
    :goto_0
    if-eqz v3, :cond_0

    .line 72
    if-eqz v4, :cond_0

    .line 74
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    .line 76
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 82
    move-result v7

    .line 83
    if-eqz v7, :cond_5

    .line 85
    move-object v3, v5

    .line 86
    :cond_5
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 92
    :try_start_3
    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    .line 95
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 98
    goto :goto_1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 103
    :goto_1
    return-object v6

    .line 104
    :catch_1
    move-exception v3

    .line 105
    goto :goto_2

    .line 106
    :catchall_0
    move-exception v2

    .line 107
    move-object v12, v2

    .line 108
    move-object v2, v0

    .line 109
    move-object v0, v12

    .line 110
    goto :goto_4

    .line 111
    :catch_2
    move-exception v3

    .line 112
    move-object v2, v0

    .line 113
    goto :goto_2

    .line 114
    :catchall_1
    move-exception v1

    .line 115
    move-object v2, v0

    .line 116
    move-object v0, v1

    .line 117
    move-object v1, v2

    .line 118
    goto :goto_4

    .line 119
    :catch_3
    move-exception v3

    .line 120
    move-object v1, v0

    .line 121
    move-object v2, v1

    .line 122
    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 125
    if-eqz v1, :cond_6

    .line 127
    :try_start_5
    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    .line 130
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 133
    goto :goto_3

    .line 134
    :catch_4
    move-exception v1

    .line 135
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 138
    :cond_6
    :goto_3
    return-object v0

    .line 139
    :catchall_2
    move-exception v0

    .line 140
    :goto_4
    if-eqz v1, :cond_7

    .line 142
    :try_start_6
    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    .line 145
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 148
    goto :goto_5

    .line 149
    :catch_5
    move-exception v1

    .line 150
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 153
    :cond_7
    :goto_5
    throw v0
.end method

.method public static o(Landroid/content/Context;)F
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1e

    .line 5
    if-lt v0, v1, :cond_1

    .line 7
    invoke-static {}, Lrv;->H()Lrv;

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lrv;->z()Landroid/content/Context;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_0

    .line 25
    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 27
    int-to-float p0, p0

    .line 28
    const/high16 v0, 0x43200000    # 160.0f

    .line 30
    div-float/2addr p0, v0

    .line 31
    return p0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    return p0

    .line 34
    :cond_1
    const-string v0, "window"

    .line 36
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Landroid/view/WindowManager;

    .line 42
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 44
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 47
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 54
    iget p0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 56
    return p0
.end method

.method public static p()Ljava/lang/String;
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
    invoke-static {v0}, Lsi;->T(Landroid/content/Context;)Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x2

    .line 20
    if-le v1, v2, :cond_0

    .line 22
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/String;

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v0, ""

    .line 31
    :goto_0
    return-object v0
.end method

.method public static q(Landroid/content/Context;)F
    .locals 2

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->C()I

    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 11
    invoke-static {}, Lrv;->H()Lrv;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lrv;->C()I

    .line 18
    move-result p0

    .line 19
    :goto_0
    int-to-float p0, p0

    .line 20
    return p0

    .line 21
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 23
    const/16 v1, 0x1e

    .line 25
    if-lt v0, v1, :cond_2

    .line 27
    invoke-static {}, Lrv;->H()Lrv;

    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Lrv;->z()Landroid/content/Context;

    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 42
    move-result-object p0

    .line 43
    if-eqz p0, :cond_1

    .line 45
    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 p0, 0x0

    .line 49
    return p0

    .line 50
    :cond_2
    const-string v0, "window"

    .line 52
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    move-result-object p0

    .line 56
    check-cast p0, Landroid/view/WindowManager;

    .line 58
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 60
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 63
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 70
    iget p0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 72
    goto :goto_0
.end method

.method public static r()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static declared-synchronized u(Landroid/content/Context;)Lsi;
    .locals 3

    .line 1
    const-class v0, Lsi;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lsi;->B:Lsi;

    .line 6
    if-nez v1, :cond_0

    .line 8
    const-class v1, Lsi;

    .line 10
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    new-instance v2, Lsi;

    .line 13
    invoke-direct {v2, p0}, Lsi;-><init>(Landroid/content/Context;)V

    .line 16
    sput-object v2, Lsi;->B:Lsi;

    .line 18
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    monitor-exit v0

    .line 20
    return-object v2

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 24
    :cond_0
    monitor-exit v0

    .line 25
    return-object v1

    .line 26
    :catchall_1
    move-exception p0

    .line 27
    monitor-exit v0

    .line 28
    throw p0
.end method

.method public static v()Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, "getKernelVersion oucur a excetion"

    .line 3
    const-string v1, "DeviceInfo"

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    :try_start_0
    const-string v4, "kernel version path {?}"

    .line 9
    const/4 v5, 0x1

    .line 10
    new-array v6, v5, [Ljava/lang/Object;

    .line 12
    sget-object v7, Lsi;->D:Ljava/lang/String;

    .line 14
    aput-object v7, v6, v2

    .line 16
    invoke-static {v1, v4, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    sget-object v4, Lsi;->D:Ljava/lang/String;

    .line 21
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_0

    .line 27
    const-string v0, ""

    .line 29
    return-object v0

    .line 30
    :cond_0
    new-instance v4, Ljava/io/FileReader;

    .line 32
    sget-object v6, Lsi;->D:Ljava/lang/String;

    .line 34
    invoke-direct {v4, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 37
    :try_start_1
    new-instance v6, Ljava/io/BufferedReader;

    .line 39
    invoke-direct {v6, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 42
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 45
    move-result-object v6

    .line 46
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    move-result v7

    .line 50
    if-nez v7, :cond_1

    .line 52
    const-string v7, "version"

    .line 54
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 57
    move-result v7

    .line 58
    add-int/lit8 v7, v7, 0x7

    .line 60
    add-int/2addr v7, v5

    .line 61
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 64
    move-result-object v5

    .line 65
    const-string v6, " "

    .line 67
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 70
    move-result v6

    .line 71
    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 74
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 78
    goto :goto_0

    .line 79
    :catch_0
    move-exception v4

    .line 80
    new-array v2, v2, [Ljava/lang/Object;

    .line 82
    invoke-static {v1, v0, v4, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 85
    :goto_0
    return-object v3

    .line 86
    :catchall_0
    move-exception v3

    .line 87
    move-object v8, v4

    .line 88
    move-object v4, v3

    .line 89
    move-object v3, v8

    .line 90
    goto :goto_3

    .line 91
    :catch_1
    move-exception v5

    .line 92
    move-object v8, v5

    .line 93
    move-object v5, v4

    .line 94
    move-object v4, v8

    .line 95
    goto :goto_1

    .line 96
    :catchall_1
    move-exception v4

    .line 97
    goto :goto_3

    .line 98
    :catch_2
    move-exception v4

    .line 99
    move-object v5, v3

    .line 100
    :goto_1
    :try_start_3
    new-array v6, v2, [Ljava/lang/Object;

    .line 102
    invoke-static {v1, v0, v4, v6}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 105
    if-eqz v5, :cond_2

    .line 107
    :try_start_4
    invoke-virtual {v5}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 110
    goto :goto_2

    .line 111
    :catch_3
    move-exception v4

    .line 112
    new-array v2, v2, [Ljava/lang/Object;

    .line 114
    invoke-static {v1, v0, v4, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 117
    :cond_2
    :goto_2
    return-object v3

    .line 118
    :catchall_2
    move-exception v4

    .line 119
    move-object v3, v5

    .line 120
    :goto_3
    if-eqz v3, :cond_3

    .line 122
    :try_start_5
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 125
    goto :goto_4

    .line 126
    :catch_4
    move-exception v3

    .line 127
    new-array v2, v2, [Ljava/lang/Object;

    .line 129
    invoke-static {v1, v0, v3, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 132
    :cond_3
    :goto_4
    throw v4
.end method

.method public static y()I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    .line 5
    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    .line 7
    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    .line 12
    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result v4
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 23
    if-eqz v4, :cond_0

    .line 25
    :try_start_3
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    :goto_0
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 36
    goto :goto_1

    .line 37
    :catch_1
    move-exception v1

    .line 38
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    :goto_1
    return v0

    .line 42
    :cond_0
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 49
    move-result v1

    .line 50
    div-int/lit16 v0, v1, 0x3e8
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 52
    :try_start_6
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 55
    goto :goto_2

    .line 56
    :catch_2
    move-exception v1

    .line 57
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    :goto_2
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 63
    goto :goto_7

    .line 64
    :catch_3
    move-exception v1

    .line 65
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    goto :goto_7

    .line 69
    :catch_4
    move-exception v1

    .line 70
    goto :goto_3

    .line 71
    :catch_5
    move-exception v1

    .line 72
    goto :goto_5

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    move-object v3, v1

    .line 75
    goto :goto_8

    .line 76
    :catch_6
    move-exception v3

    .line 77
    move-object v5, v3

    .line 78
    move-object v3, v1

    .line 79
    move-object v1, v5

    .line 80
    goto :goto_3

    .line 81
    :catch_7
    move-exception v3

    .line 82
    move-object v5, v3

    .line 83
    move-object v3, v1

    .line 84
    move-object v1, v5

    .line 85
    goto :goto_5

    .line 86
    :catchall_1
    move-exception v0

    .line 87
    move-object v3, v1

    .line 88
    goto :goto_9

    .line 89
    :catch_8
    move-exception v2

    .line 90
    move-object v3, v1

    .line 91
    move-object v1, v2

    .line 92
    move-object v2, v3

    .line 93
    :goto_3
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 96
    if-eqz v2, :cond_1

    .line 98
    :try_start_9
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    .line 101
    goto :goto_4

    .line 102
    :catch_9
    move-exception v1

    .line 103
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    :cond_1
    :goto_4
    if-eqz v3, :cond_3

    .line 108
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 111
    goto :goto_7

    .line 112
    :catch_a
    move-exception v2

    .line 113
    move-object v3, v1

    .line 114
    move-object v1, v2

    .line 115
    move-object v2, v3

    .line 116
    :goto_5
    :try_start_b
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 119
    if-eqz v2, :cond_2

    .line 121
    :try_start_c
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    .line 124
    goto :goto_6

    .line 125
    :catch_b
    move-exception v1

    .line 126
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 129
    :cond_2
    :goto_6
    if-eqz v3, :cond_3

    .line 131
    :try_start_d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    .line 134
    :cond_3
    :goto_7
    return v0

    .line 135
    :catchall_2
    move-exception v0

    .line 136
    :goto_8
    move-object v1, v2

    .line 137
    :goto_9
    if-eqz v1, :cond_4

    .line 139
    :try_start_e
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    .line 142
    goto :goto_a

    .line 143
    :catch_c
    move-exception v1

    .line 144
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 147
    :cond_4
    :goto_a
    if-eqz v3, :cond_5

    .line 149
    :try_start_f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d

    .line 152
    goto :goto_b

    .line 153
    :catch_d
    move-exception v1

    .line 154
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 157
    :cond_5
    :goto_b
    throw v0
.end method

.method public static z()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {}, Lsi;->N()I

    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "MB"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method


# virtual methods
.method public C()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lsi;->c0()V

    .line 4
    iget v0, p0, Lsi;->f:I

    .line 6
    return v0
.end method

.method public G()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lsi;->s()Lzi;

    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Lzi;->d:F

    .line 7
    return v0
.end method

.method public H()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lsi;->s()Lzi;

    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Lzi;->b:I

    .line 7
    return v0
.end method

.method public I()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lsi;->s()Lzi;

    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Lzi;->a:I

    .line 7
    return v0
.end method

.method public L()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lsi;->x:Ljava/util/Set;

    .line 3
    return-object v0
.end method

.method public X(III)V
    .locals 0

    .line 1
    iput p1, p0, Lsi;->p:I

    .line 3
    iput p2, p0, Lsi;->q:I

    .line 5
    iput p3, p0, Lsi;->r:I

    .line 7
    const/16 p1, 0x7fff

    .line 9
    if-le p3, p1, :cond_0

    .line 11
    iput p1, p0, Lsi;->r:I

    .line 13
    :cond_0
    return-void
.end method

.method public final Y(I)V
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 5
    :pswitch_0
    :try_start_0
    const-string p1, "IDEN"

    .line 7
    sput-object p1, Lsi;->A:Ljava/lang/String;

    .line 9
    goto :goto_0

    .line 10
    :pswitch_1
    const-string p1, "HSPA"

    .line 12
    sput-object p1, Lsi;->A:Ljava/lang/String;

    .line 14
    goto :goto_0

    .line 15
    :pswitch_2
    const-string p1, "HSUPA"

    .line 17
    sput-object p1, Lsi;->A:Ljava/lang/String;

    .line 19
    goto :goto_0

    .line 20
    :pswitch_3
    const-string p1, "HSDPA"

    .line 22
    sput-object p1, Lsi;->A:Ljava/lang/String;

    .line 24
    goto :goto_0

    .line 25
    :pswitch_4
    const-string p1, "1xRTT"

    .line 27
    sput-object p1, Lsi;->A:Ljava/lang/String;

    .line 29
    goto :goto_0

    .line 30
    :pswitch_5
    const-string p1, "EVDO_A"

    .line 32
    sput-object p1, Lsi;->A:Ljava/lang/String;

    .line 34
    goto :goto_0

    .line 35
    :pswitch_6
    const-string p1, "EVDO_0"

    .line 37
    sput-object p1, Lsi;->A:Ljava/lang/String;

    .line 39
    goto :goto_0

    .line 40
    :pswitch_7
    const-string p1, "CDMA"

    .line 42
    sput-object p1, Lsi;->A:Ljava/lang/String;

    .line 44
    goto :goto_0

    .line 45
    :pswitch_8
    const-string p1, "UMTS"

    .line 47
    sput-object p1, Lsi;->A:Ljava/lang/String;

    .line 49
    goto :goto_0

    .line 50
    :pswitch_9
    const-string p1, "EDGE"

    .line 52
    sput-object p1, Lsi;->A:Ljava/lang/String;

    .line 54
    goto :goto_0

    .line 55
    :pswitch_a
    const-string p1, "GPRS"

    .line 57
    sput-object p1, Lsi;->A:Ljava/lang/String;

    .line 59
    goto :goto_0

    .line 60
    :pswitch_b
    const-string p1, "UNKNOWN"

    .line 62
    sput-object p1, Lsi;->A:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :catch_0
    :goto_0
    return-void

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
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

.method public Z(Ljava/util/Set;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsi;->x:Ljava/util/Set;

    .line 3
    return-void
.end method

.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lsi;->v:Landroid/content/Context;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget v1, p0, Lsi;->t:I

    .line 7
    const/4 v2, -0x1

    .line 8
    if-ne v1, v2, :cond_0

    .line 10
    iget v1, p0, Lsi;->u:I

    .line 12
    if-ne v1, v2, :cond_0

    .line 14
    const-string v1, "SharedPreferences"

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 20
    move-result-object v0

    .line 21
    const-string v1, "AppStartTime"

    .line 23
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 26
    move-result v3

    .line 27
    iput v3, p0, Lsi;->t:I

    .line 29
    const-string v3, "AppStopTime"

    .line 31
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 34
    move-result v4

    .line 35
    iput v4, p0, Lsi;->u:I

    .line 37
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 44
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 47
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50
    :cond_0
    return-void
.end method

.method public a0(F)V
    .locals 0

    .line 1
    iput p1, p0, Lsi;->w:F

    .line 3
    return-void
.end method

.method public final b0()[B
    .locals 2

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lsi;->I()I

    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Lah;->c(I)[B

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 17
    invoke-virtual {p0}, Lsi;->H()I

    .line 20
    move-result v1

    .line 21
    invoke-static {v1}, Lah;->c(I)[B

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 28
    iget v1, p0, Lsi;->p:I

    .line 30
    invoke-static {v1}, Lah;->b(I)[B

    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 37
    iget v1, p0, Lsi;->q:I

    .line 39
    invoke-static {v1}, Lah;->b(I)[B

    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 46
    iget v1, p0, Lsi;->o:I

    .line 48
    int-to-byte v1, v1

    .line 49
    invoke-static {v1}, Lah;->d(B)[B

    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 56
    iget v1, p0, Lsi;->m:I

    .line 58
    int-to-byte v1, v1

    .line 59
    invoke-static {v1}, Lah;->d(B)[B

    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 66
    iget v1, p0, Lsi;->n:I

    .line 68
    int-to-byte v1, v1

    .line 69
    invoke-static {v1}, Lah;->d(B)[B

    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 76
    iget v1, p0, Lsi;->g:I

    .line 78
    invoke-static {v1}, Lah;->c(I)[B

    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 85
    iget v1, p0, Lsi;->f:I

    .line 87
    invoke-static {v1}, Lah;->c(I)[B

    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 94
    iget v1, p0, Lsi;->h:I

    .line 96
    invoke-static {v1}, Lah;->b(I)[B

    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 103
    iget v1, p0, Lsi;->i:I

    .line 105
    invoke-static {v1}, Lah;->b(I)[B

    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 112
    iget v1, p0, Lsi;->k:I

    .line 114
    invoke-static {v1}, Lah;->b(I)[B

    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 121
    iget v1, p0, Lsi;->l:I

    .line 123
    invoke-static {v1}, Lah;->b(I)[B

    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 130
    iget v1, p0, Lsi;->j:I

    .line 132
    invoke-static {v1}, Lah;->b(I)[B

    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 139
    iget v1, p0, Lsi;->s:I

    .line 141
    invoke-static {v1}, Lah;->b(I)[B

    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 148
    sget v1, Lsi;->C:I

    .line 150
    invoke-static {v1}, Lah;->c(I)[B

    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 157
    const-string v1, ""

    .line 159
    invoke-static {v1}, Lah;->e(Ljava/lang/String;)[B

    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 166
    iget-object v1, p0, Lsi;->a:Ljava/lang/String;

    .line 168
    invoke-static {v1}, Lah;->e(Ljava/lang/String;)[B

    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 175
    iget-object v1, p0, Lsi;->b:Ljava/lang/String;

    .line 177
    invoke-static {v1}, Lah;->e(Ljava/lang/String;)[B

    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 184
    iget-object v1, p0, Lsi;->c:Ljava/lang/String;

    .line 186
    invoke-static {v1}, Lah;->e(Ljava/lang/String;)[B

    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 193
    iget-object v1, p0, Lsi;->d:Ljava/lang/String;

    .line 195
    invoke-static {v1}, Lah;->e(Ljava/lang/String;)[B

    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 202
    iget v1, p0, Lsi;->t:I

    .line 204
    invoke-static {v1}, Lah;->b(I)[B

    .line 207
    move-result-object v1

    .line 208
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 211
    iget v1, p0, Lsi;->u:I

    .line 213
    invoke-static {v1}, Lah;->b(I)[B

    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 220
    iget-object v1, p0, Lsi;->e:Ljava/lang/String;

    .line 222
    invoke-static {v1}, Lah;->e(Ljava/lang/String;)[B

    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 229
    iget v1, p0, Lsi;->r:I

    .line 231
    invoke-static {v1}, Lah;->c(I)[B

    .line 234
    move-result-object v1

    .line 235
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 238
    const/4 v1, 0x0

    .line 239
    iput v1, p0, Lsi;->t:I

    .line 241
    iput v1, p0, Lsi;->u:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    goto :goto_0

    .line 244
    :catch_0
    move-exception v1

    .line 245
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 248
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 251
    move-result-object v0

    .line 252
    return-object v0
.end method

.method public final c0()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    sget-wide v2, Lsi;->z:J

    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0x2710

    .line 10
    cmp-long v4, v0, v2

    .line 12
    if-lez v4, :cond_0

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    move-result-wide v0

    .line 18
    sput-wide v0, Lsi;->z:J

    .line 20
    new-instance v0, Lsi$a;

    .line 22
    invoke-direct {v0, p0}, Lsi$a;-><init>(Lsi;)V

    .line 25
    invoke-static {v0}, Lbg0;->f(Ljava/lang/Runnable;)V

    .line 28
    :cond_0
    return-void
.end method

.method public l()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lsi;->v:Landroid/content/Context;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const-string v1, "phone"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 14
    iget-object v1, p0, Lsi;->v:Landroid/content/Context;

    .line 16
    invoke-static {v1}, Lsi;->m(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_1

    .line 26
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    .line 29
    move-result v1

    .line 30
    iput v1, p0, Lsi;->o:I

    .line 32
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    .line 35
    move-result v1

    .line 36
    iput v1, p0, Lsi;->m:I

    .line 38
    invoke-virtual {p0, v1}, Lsi;->Y(I)V

    .line 41
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    .line 44
    move-result v1

    .line 45
    iput v1, p0, Lsi;->n:I

    .line 47
    const/4 v2, 0x1

    .line 48
    if-ne v1, v2, :cond_2

    .line 50
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    .line 56
    if-eqz v1, :cond_3

    .line 58
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    .line 61
    move-result v2

    .line 62
    iput v2, p0, Lsi;->h:I

    .line 64
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    .line 67
    move-result v1

    .line 68
    iput v1, p0, Lsi;->i:I

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const/4 v2, 0x2

    .line 72
    if-ne v1, v2, :cond_3

    .line 74
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    .line 80
    if-eqz v1, :cond_3

    .line 82
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    .line 85
    move-result v2

    .line 86
    iput v2, p0, Lsi;->k:I

    .line 88
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    .line 91
    move-result v2

    .line 92
    iput v2, p0, Lsi;->l:I

    .line 94
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    .line 97
    move-result v1

    .line 98
    iput v1, p0, Lsi;->j:I

    .line 100
    :cond_3
    :goto_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    .line 103
    move-result-object v0

    .line 104
    if-eqz v0, :cond_4

    .line 106
    const-string v1, "null"

    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    move-result v1

    .line 112
    if-nez v1, :cond_4

    .line 114
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 117
    move-result v1

    .line 118
    const/4 v2, 0x3

    .line 119
    if-lt v1, v2, :cond_4

    .line 121
    const/4 v1, 0x0

    .line 122
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 125
    move-result-object v1

    .line 126
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 129
    move-result v1

    .line 130
    iput v1, p0, Lsi;->g:I

    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 135
    move-result-object v0

    .line 136
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 139
    move-result v0

    .line 140
    iput v0, p0, Lsi;->f:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    goto :goto_1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 147
    :cond_4
    :goto_1
    return-void
.end method

.method public final s()Lzi;
    .locals 1

    .line 1
    iget-object v0, p0, Lsi;->y:Lzi;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lzi;

    .line 7
    invoke-direct {v0}, Lzi;-><init>()V

    .line 10
    iput-object v0, p0, Lsi;->y:Lzi;

    .line 12
    :cond_0
    iget-object v0, p0, Lsi;->y:Lzi;

    .line 14
    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p0}, Lsi;->I()I

    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "*"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p0}, Lsi;->H()I

    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lsi;->c0()V

    .line 4
    invoke-virtual {p0}, Lsi;->a()V

    .line 7
    invoke-virtual {p0}, Lsi;->b0()[B

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lah;->a([B)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public w()I
    .locals 1

    .line 1
    iget v0, p0, Lsi;->q:I

    .line 3
    return v0
.end method

.method public x()I
    .locals 1

    .line 1
    iget v0, p0, Lsi;->p:I

    .line 3
    return v0
.end method
