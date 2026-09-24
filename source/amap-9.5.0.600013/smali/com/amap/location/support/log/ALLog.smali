.class public Lcom/amap/location/support/log/ALLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile sLogImpl:Lcom/amap/location/support/log/ILog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/log/ALLog;->sLogImpl:Lcom/amap/location/support/log/ILog;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/amap/location/support/log/ALLog;->sLogImpl:Lcom/amap/location/support/log/ILog;

    invoke-interface {v0, p0, p1}, Lcom/amap/location/support/log/ILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Throwable;)V
    .locals 1

    .line 3
    sget-boolean v0, Lcom/amap/location/support/AmapContext;->DEBUG:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const-string v0, "ERROR"

    .line 4
    invoke-static {p0}, Lcom/amap/location/support/log/ALLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/log/ALLog;->sLogImpl:Lcom/amap/location/support/log/ILog;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/amap/location/support/log/ALLog;->sLogImpl:Lcom/amap/location/support/log/ILog;

    invoke-interface {v0, p0, p1}, Lcom/amap/location/support/log/ILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/amap/location/support/log/ALLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 3
    const-string p0, "exception in null"

    .line 5
    return-object p0

    .line 6
    :cond_0
    move-object v0, p0

    .line 7
    :goto_0
    if-eqz v0, :cond_2

    .line 9
    instance-of v1, v0, Ljava/net/UnknownHostException;

    .line 11
    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    new-instance v0, Ljava/io/StringWriter;

    .line 25
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 28
    new-instance v1, Ljava/io/PrintWriter;

    .line 30
    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 33
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 36
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 39
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/log/ALLog;->sLogImpl:Lcom/amap/location/support/log/ILog;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/amap/location/support/log/ALLog;->sLogImpl:Lcom/amap/location/support/log/ILog;

    invoke-interface {v0, p0, p1}, Lcom/amap/location/support/log/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    const-string p2, ""

    .line 3
    invoke-static {p0, p1, p2}, Lcom/amap/location/support/log/ALLog;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static init(Lcom/amap/location/support/log/ILog;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    sput-object p0, Lcom/amap/location/support/log/ALLog;->sLogImpl:Lcom/amap/location/support/log/ILog;

    .line 5
    :cond_0
    return-void
.end method

.method public static s(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-static {p0, p1, v0}, Lcom/amap/location/support/log/ALLog;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/amap/location/support/log/ALLog;->sLogImpl:Lcom/amap/location/support/log/ILog;

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/amap/location/support/log/ALLog;->sLogImpl:Lcom/amap/location/support/log/ILog;

    invoke-interface {v0, p0, p1, p2}, Lcom/amap/location/support/log/ILog;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/log/ALLog;->sLogImpl:Lcom/amap/location/support/log/ILog;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/amap/location/support/log/ALLog;->sLogImpl:Lcom/amap/location/support/log/ILog;

    invoke-interface {v0, p0, p1}, Lcom/amap/location/support/log/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/amap/location/support/log/ALLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/amap/location/support/log/ALLog;->sLogImpl:Lcom/amap/location/support/log/ILog;

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/amap/location/support/log/ALLog;->sLogImpl:Lcom/amap/location/support/log/ILog;

    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/amap/location/support/log/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
