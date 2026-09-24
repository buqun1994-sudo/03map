.class public Lcom/amap/location/support/util/TestCaseUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TestCaseUtil"

.field private static final TEST_CASE_FILE:Ljava/lang/String; = "test_case.txt"

.field private static sTestCaseFile:Ljava/io/File;

.field private static sdf:Ljava/text/SimpleDateFormat;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 3
    const-string v1, "yyyy_MM_dd_HH_mm_ss"

    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lcom/amap/location/support/util/TestCaseUtil;->sdf:Ljava/text/SimpleDateFormat;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs checkKeyLog([Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/amap/location/support/util/TestCaseUtil;->isTestCaseMode()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 8
    sget-object v0, Lcom/amap/location/support/util/TestCaseUtil;->sTestCaseFile:Ljava/io/File;

    .line 10
    invoke-static {v0}, Lcom/amap/location/support/util/FileUtils;->readString(Ljava/io/File;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 20
    return v1

    .line 21
    :cond_0
    array-length v2, p0

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    :goto_0
    if-ge v3, v2, :cond_2

    .line 26
    aget-object v5, p0, v3

    .line 28
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_1

    .line 34
    add-int/lit8 v4, v4, 0x1

    .line 36
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    array-length p0, p0

    .line 40
    if-ne v4, p0, :cond_3

    .line 42
    const/4 p0, 0x1

    .line 43
    return p0

    .line 44
    :cond_3
    return v1
.end method

.method public static clearLog()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/amap/location/support/util/TestCaseUtil;->isTestCaseMode()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Lcom/amap/location/support/util/TestCaseUtil;->sTestCaseFile:Ljava/io/File;

    .line 9
    const/4 v1, 0x0

    .line 10
    const-string v2, ""

    .line 12
    invoke-static {v2, v0, v1}, Lcom/amap/location/support/util/FileUtils;->writeToFile(Ljava/lang/String;Ljava/io/File;Z)Z

    .line 15
    :cond_0
    return-void
.end method

.method public static declared-synchronized isTestCaseMode()Z
    .locals 1

    .line 1
    const-class v0, Lcom/amap/location/support/util/TestCaseUtil;

    .line 3
    monitor-enter v0

    .line 4
    monitor-exit v0

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0
.end method

.method public static writeLog(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/amap/location/support/util/TestCaseUtil;->isTestCaseMode()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    const-string v1, "["

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    sget-object v1, Lcom/amap/location/support/util/TestCaseUtil;->sdf:Ljava/text/SimpleDateFormat;

    .line 19
    new-instance v2, Ljava/util/Date;

    .line 21
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 24
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, "]"

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string p0, "\n"

    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    sget-object v0, Lcom/amap/location/support/util/TestCaseUtil;->sTestCaseFile:Ljava/io/File;

    .line 50
    const/4 v1, 0x1

    .line 51
    invoke-static {p0, v0, v1}, Lcom/amap/location/support/util/FileUtils;->writeToFile(Ljava/lang/String;Ljava/io/File;Z)Z

    .line 54
    move-result p0

    .line 55
    if-nez p0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    const-string v1, "writeLog success:"

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 74
    const-string v0, "TestCaseUtil"

    .line 76
    invoke-static {v0, p0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void
.end method
