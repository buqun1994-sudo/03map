.class Lcom/amap/location/icecream/IcecreamCrashController$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/icecream/IcecreamCrashController;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amap/location/icecream/IcecreamCrashController;

.field final synthetic val$e:Ljava/lang/Throwable;

.field final synthetic val$t:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/amap/location/icecream/IcecreamCrashController;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Thread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/icecream/IcecreamCrashController$1;->this$0:Lcom/amap/location/icecream/IcecreamCrashController;

    .line 3
    iput-object p3, p0, Lcom/amap/location/icecream/IcecreamCrashController$1;->val$e:Ljava/lang/Throwable;

    .line 5
    iput-object p4, p0, Lcom/amap/location/icecream/IcecreamCrashController$1;->val$t:Ljava/lang/Thread;

    .line 7
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/icecream/IcecreamCrashController$1;->val$e:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Lcom/amap/location/icecream/IcecreamCrashController;->access$000()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object v1, p0, Lcom/amap/location/icecream/IcecreamCrashController$1;->val$t:Ljava/lang/Thread;

    .line 13
    iget-object v2, p0, Lcom/amap/location/icecream/IcecreamCrashController$1;->val$e:Ljava/lang/Throwable;

    .line 15
    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 18
    :cond_0
    return-void

    .line 19
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 22
    move-result-object v0

    .line 23
    array-length v1, v0

    .line 24
    const/4 v2, 0x0

    .line 25
    :goto_0
    if-ge v2, v1, :cond_5

    .line 27
    aget-object v3, v0, v2

    .line 29
    if-eqz v3, :cond_4

    .line 31
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 34
    move-result-object v4

    .line 35
    if-eqz v4, :cond_4

    .line 37
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 40
    move-result-object v3

    .line 41
    const-string v4, "com.amap.icecream"

    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_4

    .line 49
    const-string v4, "\\."

    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 54
    move-result-object v3

    .line 55
    array-length v4, v3

    .line 56
    const/4 v5, 0x4

    .line 57
    if-lt v4, v5, :cond_4

    .line 59
    const/4 v0, 0x3

    .line 60
    aget-object v1, v3, v0

    .line 62
    invoke-static {v1}, Lcom/amap/location/icecream/IcecreamFilter;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    invoke-static {v1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_2

    .line 72
    aget-object v0, v3, v0

    .line 74
    invoke-static {v0, v1}, Lcom/amap/location/support/icecream/SPUtil;->addToBlackList(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :cond_2
    invoke-static {}, Lcom/amap/location/icecream/IcecreamCrashController;->access$000()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 80
    move-result-object v0

    .line 81
    if-eqz v0, :cond_3

    .line 83
    iget-object v1, p0, Lcom/amap/location/icecream/IcecreamCrashController$1;->val$t:Ljava/lang/Thread;

    .line 85
    iget-object v2, p0, Lcom/amap/location/icecream/IcecreamCrashController$1;->val$e:Ljava/lang/Throwable;

    .line 87
    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 90
    :cond_3
    return-void

    .line 91
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 93
    goto :goto_0

    .line 94
    :cond_5
    invoke-static {}, Lcom/amap/location/icecream/IcecreamCrashController;->access$000()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 97
    move-result-object v0

    .line 98
    if-eqz v0, :cond_6

    .line 100
    :goto_1
    iget-object v1, p0, Lcom/amap/location/icecream/IcecreamCrashController$1;->val$t:Ljava/lang/Thread;

    .line 102
    iget-object v2, p0, Lcom/amap/location/icecream/IcecreamCrashController$1;->val$e:Ljava/lang/Throwable;

    .line 104
    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 107
    goto :goto_2

    .line 108
    :catchall_0
    nop

    .line 109
    invoke-static {}, Lcom/amap/location/icecream/IcecreamCrashController;->access$000()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 112
    move-result-object v0

    .line 113
    if-eqz v0, :cond_6

    .line 115
    goto :goto_1

    .line 116
    :cond_6
    :goto_2
    return-void
.end method
