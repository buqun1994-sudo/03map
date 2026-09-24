.class public Lp1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp1$b;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String;


# instance fields
.field public a:Ljava/util/Properties;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {}, Lr50;->m()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "AutoDeviceAdapter/adapter_history"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lp1;->b:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lp1;->a:Ljava/util/Properties;

    return-void
.end method

.method public synthetic constructor <init>(Lp1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp1;-><init>()V

    return-void
.end method

.method public static b()Lp1;
    .locals 1

    .line 1
    invoke-static {}, Lp1$b;->a()Lp1;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lp1;->a:Ljava/util/Properties;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    return p2

    .line 14
    :cond_0
    const-string p2, "1"

    .line 16
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result p2

    .line 20
    if-nez p2, :cond_2

    .line 22
    const-string p2, "true"

    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p1, 0x0

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 34
    :goto_1
    return p1
.end method

.method public c(Ljava/lang/String;I)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lp1;->a:Ljava/util/Properties;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 10
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return p1

    .line 12
    :catch_0
    return p2
.end method

.method public d(Ljava/lang/String;J)J
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lp1;->a:Ljava/util/Properties;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 10
    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-wide p1

    .line 12
    :catch_0
    return-wide p2
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lp1;->a:Ljava/util/Properties;

    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public f()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "AdapterHistoryRecorder"

    .line 6
    const-string v3, "load history start"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v1, Ljava/io/File;

    .line 13
    sget-object v3, Lp1;->b:Ljava/lang/String;

    .line 15
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_2

    .line 24
    const/4 v3, 0x0

    .line 25
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    .line 27
    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 30
    :try_start_1
    invoke-static {v4}, Lu1;->b(Ljava/io/InputStream;)[B

    .line 33
    move-result-object v1

    .line 34
    const-string v5, "load history nativeConfigDecrypt"

    .line 36
    new-array v6, v0, [Ljava/lang/Object;

    .line 38
    invoke-static {v2, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    if-eqz v1, :cond_0

    .line 43
    array-length v5, v1

    .line 44
    invoke-static {v1, v5, v3}, Lcom/autonavi/amapauto/jni/config/AndroidAdapterConfiger;->nativeConfigDecrypt([BILjava/lang/String;)[B

    .line 47
    move-result-object v1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move-object v1, v3

    .line 50
    :goto_0
    const-string v5, "load history load properties"

    .line 52
    new-array v6, v0, [Ljava/lang/Object;

    .line 54
    invoke-static {v2, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    if-eqz v1, :cond_1

    .line 59
    new-instance v5, Ljava/io/ByteArrayInputStream;

    .line 61
    invoke-direct {v5, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    :try_start_2
    iget-object v1, p0, Lp1;->a:Ljava/util/Properties;

    .line 66
    invoke-virtual {v1, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    move-object v3, v5

    .line 70
    goto :goto_2

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    move-object v3, v5

    .line 73
    goto :goto_3

    .line 74
    :catch_0
    move-exception v1

    .line 75
    move-object v3, v5

    .line 76
    goto :goto_1

    .line 77
    :catchall_1
    move-exception v0

    .line 78
    goto :goto_3

    .line 79
    :catch_1
    move-exception v1

    .line 80
    goto :goto_1

    .line 81
    :catchall_2
    move-exception v0

    .line 82
    move-object v4, v3

    .line 83
    goto :goto_3

    .line 84
    :catch_2
    move-exception v1

    .line 85
    move-object v4, v3

    .line 86
    :goto_1
    :try_start_3
    const-string v5, "AdapterHistoryRecorder:"

    .line 88
    new-array v6, v0, [Ljava/lang/Object;

    .line 90
    invoke-static {v2, v5, v1, v6}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 93
    :cond_1
    :goto_2
    invoke-static {v3}, Lns;->a(Ljava/io/Closeable;)V

    .line 96
    invoke-static {v4}, Lns;->a(Ljava/io/Closeable;)V

    .line 99
    goto :goto_4

    .line 100
    :goto_3
    invoke-static {v3}, Lns;->a(Ljava/io/Closeable;)V

    .line 103
    invoke-static {v4}, Lns;->a(Ljava/io/Closeable;)V

    .line 106
    throw v0

    .line 107
    :cond_2
    :goto_4
    const-string v1, "history record:"

    .line 109
    invoke-virtual {p0, v1}, Lp1;->g(Ljava/lang/String;)V

    .line 112
    const-string v1, "load history end"

    .line 114
    new-array v0, v0, [Ljava/lang/Object;

    .line 116
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "AdapterHistoryRecorder"

    .line 6
    invoke-static {v2, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lp1;->a:Ljava/util/Properties;

    .line 11
    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p1

    .line 19
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/util/Map$Entry;

    .line 31
    const/4 v3, 0x2

    .line 32
    new-array v3, v3, [Ljava/lang/Object;

    .line 34
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 37
    move-result-object v4

    .line 38
    aput-object v4, v3, v0

    .line 40
    const/4 v4, 0x1

    .line 41
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 44
    move-result-object v1

    .line 45
    aput-object v1, v3, v4

    .line 47
    const-string v1, "{?}={?}"

    .line 49
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp1;->a:Ljava/util/Properties;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/Dictionary;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
.end method

.method public i(Ljava/lang/String;I)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v2

    .line 12
    aput-object v2, v0, v1

    .line 14
    const-string v1, "AdapterHistoryRecorder"

    .line 16
    const-string v2, "setValue {?}={?}"

    .line 18
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    iget-object v0, p0, Lp1;->a:Ljava/util/Properties;

    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    return-void
.end method

.method public j(Ljava/lang/String;J)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    move-result-object v2

    .line 12
    aput-object v2, v0, v1

    .line 14
    const-string v1, "AdapterHistoryRecorder"

    .line 16
    const-string v2, "setValue {?}={?}"

    .line 18
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    iget-object v0, p0, Lp1;->a:Ljava/util/Properties;

    .line 23
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    return-void
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const/4 v1, 0x1

    .line 8
    aput-object p2, v0, v1

    .line 10
    const-string v1, "AdapterHistoryRecorder"

    .line 12
    const-string v2, "setValue {?}={?}"

    .line 14
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    iget-object v0, p0, Lp1;->a:Ljava/util/Properties;

    .line 19
    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    return-void
.end method

.method public l(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    move-result-object v2

    .line 12
    aput-object v2, v0, v1

    .line 14
    const-string v1, "AdapterHistoryRecorder"

    .line 16
    const-string v2, "setValue {?}={?}"

    .line 18
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    iget-object v0, p0, Lp1;->a:Ljava/util/Properties;

    .line 23
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    return-void
.end method

.method public m()V
    .locals 7

    .line 1
    const-string v0, "AdapterHistoryRecorder"

    .line 3
    const-string v1, "store adapter history:"

    .line 5
    invoke-virtual {p0, v1}, Lp1;->g(Ljava/lang/String;)V

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_0
    const-string v3, "store history store properties"

    .line 12
    new-array v4, v1, [Ljava/lang/Object;

    .line 14
    invoke-static {v0, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 19
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 22
    :try_start_1
    iget-object v4, p0, Lp1;->a:Ljava/util/Properties;

    .line 24
    const-string v5, ""

    .line 26
    invoke-virtual {v4, v3, v5}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 32
    move-result-object v4

    .line 33
    const-string v5, "store history nativeConfigEncrypt"

    .line 35
    new-array v6, v1, [Ljava/lang/Object;

    .line 37
    invoke-static {v0, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    if-eqz v4, :cond_0

    .line 42
    array-length v5, v4

    .line 43
    invoke-static {v4, v5, v2}, Lcom/autonavi/amapauto/jni/config/AndroidAdapterConfiger;->nativeConfigEncrypt([BILjava/lang/String;)[B

    .line 46
    move-result-object v4

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move-object v4, v2

    .line 49
    :goto_0
    const-string v5, "store history write"

    .line 51
    new-array v6, v1, [Ljava/lang/Object;

    .line 53
    invoke-static {v0, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    if-eqz v4, :cond_1

    .line 58
    new-instance v5, Ljava/io/File;

    .line 60
    sget-object v6, Lp1;->b:Ljava/lang/String;

    .line 62
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    new-instance v6, Ljava/io/FileOutputStream;

    .line 67
    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    :try_start_2
    invoke-virtual {v6, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    move-object v2, v6

    .line 74
    goto :goto_1

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    goto :goto_2

    .line 77
    :catch_0
    move-exception v4

    .line 78
    goto :goto_3

    .line 79
    :cond_1
    :goto_1
    invoke-static {v3}, Lns;->a(Ljava/io/Closeable;)V

    .line 82
    invoke-static {v2}, Lns;->a(Ljava/io/Closeable;)V

    .line 85
    goto :goto_5

    .line 86
    :catchall_1
    move-exception v0

    .line 87
    move-object v6, v2

    .line 88
    :goto_2
    move-object v2, v3

    .line 89
    goto :goto_6

    .line 90
    :catch_1
    move-exception v4

    .line 91
    move-object v6, v2

    .line 92
    :goto_3
    move-object v2, v3

    .line 93
    goto :goto_4

    .line 94
    :catchall_2
    move-exception v0

    .line 95
    move-object v6, v2

    .line 96
    goto :goto_6

    .line 97
    :catch_2
    move-exception v4

    .line 98
    move-object v6, v2

    .line 99
    :goto_4
    :try_start_3
    const-string v3, "store exception:"

    .line 101
    new-array v5, v1, [Ljava/lang/Object;

    .line 103
    invoke-static {v0, v3, v4, v5}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 106
    invoke-static {v2}, Lns;->a(Ljava/io/Closeable;)V

    .line 109
    invoke-static {v6}, Lns;->a(Ljava/io/Closeable;)V

    .line 112
    :goto_5
    const-string v2, "store history done"

    .line 114
    new-array v1, v1, [Ljava/lang/Object;

    .line 116
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    return-void

    .line 120
    :catchall_3
    move-exception v0

    .line 121
    :goto_6
    invoke-static {v2}, Lns;->a(Ljava/io/Closeable;)V

    .line 124
    invoke-static {v6}, Lns;->a(Ljava/io/Closeable;)V

    .line 127
    throw v0
.end method
