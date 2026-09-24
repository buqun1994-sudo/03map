.class public Lcom/dingtalk/mars/comm/Alarm;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dingtalk/mars/comm/Alarm$ComparatorAlarm;,
        Lcom/dingtalk/mars/comm/Alarm$TSetData;
    }
.end annotation


# static fields
.field private static final KEXTRA_ID:Ljava/lang/String; = "ID"

.field private static final KEXTRA_PID:Ljava/lang/String; = "PID"

.field private static final TAG:Ljava/lang/String; = "bifrost.Alarm"

.field private static alarm_waiting_set:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static bc_alarm:Lcom/dingtalk/mars/comm/Alarm;

.field private static lastAlarmMiss:I

.field private static wakerlock:Lcom/dingtalk/mars/comm/WakerLock;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/TreeSet;

    .line 3
    new-instance v1, Lcom/dingtalk/mars/comm/Alarm$ComparatorAlarm;

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2}, Lcom/dingtalk/mars/comm/Alarm$ComparatorAlarm;-><init>(Lcom/dingtalk/mars/comm/Alarm$1;)V

    .line 9
    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 12
    sput-object v0, Lcom/dingtalk/mars/comm/Alarm;->alarm_waiting_set:Ljava/util/TreeSet;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
.end method

.method private static cancelAlarmMgr(Landroid/content/Context;Landroid/app/PendingIntent;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "bifrost.Alarm"

    .line 4
    if-nez p0, :cond_0

    .line 6
    :try_start_0
    invoke-static {}, Lcom/dingtalk/bifrost/BifrostEnvUtils;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p0

    .line 10
    :cond_0
    const-string v2, "alarm"

    .line 12
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroid/app/AlarmManager;

    .line 18
    if-nez p0, :cond_1

    .line 20
    const-string p0, "am == null"

    .line 22
    invoke-static {v1, p0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return v0

    .line 26
    :cond_1
    if-nez p1, :cond_2

    .line 28
    const-string p0, "pendingIntent == null"

    .line 30
    invoke-static {v1, p0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return v0

    .line 34
    :cond_2
    invoke-virtual {p0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 37
    invoke-virtual {p1}, Landroid/app/PendingIntent;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    const/4 p0, 0x1

    .line 41
    return p0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    const-string p1, "cancelAlarmMgr error"

    .line 45
    invoke-static {v1, p1, p0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    return v0
.end method

.method public static final getLastAlarmMiss()I
    .locals 1

    .line 1
    sget v0, Lcom/dingtalk/mars/comm/Alarm;->lastAlarmMiss:I

    .line 3
    return v0
.end method

.method private native onAlarm(J)V
.end method

.method private recordLastAlarmMiss([Ljava/lang/Object;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    sget-object v2, Lcom/dingtalk/mars/comm/Alarm$TSetData;->WAITTIME:Lcom/dingtalk/mars/comm/Alarm$TSetData;

    .line 7
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 10
    move-result v2

    .line 11
    aget-object p1, p1, v2

    .line 13
    check-cast p1, Ljava/lang/Long;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 18
    move-result-wide v2

    .line 19
    sub-long/2addr v0, v2

    .line 20
    long-to-int p1, v0

    .line 21
    sput p1, Lcom/dingtalk/mars/comm/Alarm;->lastAlarmMiss:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    const-string v1, "[recordLastAlarmMiss] Exception: "

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    const-string v0, "bifrost.Alarm"

    .line 48
    invoke-static {v0, p1}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :goto_0
    return-void
.end method

.method public static resetAlarm(Landroid/content/Context;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/dingtalk/mars/comm/Alarm;->alarm_waiting_set:Ljava/util/TreeSet;

    .line 3
    monitor-enter v0

    .line 4
    if-nez p0, :cond_0

    .line 6
    :try_start_0
    invoke-static {}, Lcom/dingtalk/bifrost/BifrostEnvUtils;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p0

    .line 10
    :cond_0
    sget-object v1, Lcom/dingtalk/mars/comm/Alarm;->alarm_waiting_set:Ljava/util/TreeSet;

    .line 12
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, [Ljava/lang/Object;

    .line 28
    sget-object v3, Lcom/dingtalk/mars/comm/Alarm$TSetData;->PENDINGINTENT:Lcom/dingtalk/mars/comm/Alarm$TSetData;

    .line 30
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 33
    move-result v3

    .line 34
    aget-object v2, v2, v3

    .line 36
    check-cast v2, Landroid/app/PendingIntent;

    .line 38
    invoke-static {p0, v2}, Lcom/dingtalk/mars/comm/Alarm;->cancelAlarmMgr(Landroid/content/Context;Landroid/app/PendingIntent;)Z

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    sget-object v1, Lcom/dingtalk/mars/comm/Alarm;->alarm_waiting_set:Ljava/util/TreeSet;

    .line 44
    invoke-virtual {v1}, Ljava/util/TreeSet;->clear()V

    .line 47
    sget-object v1, Lcom/dingtalk/mars/comm/Alarm;->bc_alarm:Lcom/dingtalk/mars/comm/Alarm;

    .line 49
    if-eqz v1, :cond_2

    .line 51
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 54
    const/4 p0, 0x0

    .line 55
    sput-object p0, Lcom/dingtalk/mars/comm/Alarm;->bc_alarm:Lcom/dingtalk/mars/comm/Alarm;

    .line 57
    :cond_2
    monitor-exit v0

    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p0
.end method

.method private static setAlarmMgr(ZJJLandroid/content/Context;)Landroid/app/PendingIntent;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "bifrost.Alarm"

    .line 4
    if-nez p5, :cond_0

    .line 6
    :try_start_0
    invoke-static {}, Lcom/dingtalk/bifrost/BifrostEnvUtils;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p5

    .line 10
    :cond_0
    const-string v2, "alarm"

    .line 12
    invoke-virtual {p5, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroid/app/AlarmManager;

    .line 18
    if-nez v2, :cond_1

    .line 20
    const-string p0, "am == null"

    .line 22
    invoke-static {v1, p0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-object v0

    .line 26
    :cond_1
    new-instance v3, Landroid/content/Intent;

    .line 28
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    const-string v5, "ALARM_ACTION("

    .line 38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 44
    move-result v5

    .line 45
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v5, ")"

    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v4, "ID"

    .line 66
    invoke-virtual {v3, v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 69
    const-string v4, "PID"

    .line 71
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 74
    move-result v5

    .line 75
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 80
    const/16 v5, 0x1f

    .line 82
    if-lt v4, v5, :cond_2

    .line 84
    const/high16 v4, 0x14000000

    .line 86
    goto :goto_0

    .line 87
    :cond_2
    const/high16 v4, 0x10000000

    .line 89
    :goto_0
    long-to-int p2, p1

    .line 90
    invoke-static {p5, p2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 93
    move-result-object p1

    .line 94
    if-nez p0, :cond_3

    .line 96
    const/4 p0, 0x3

    .line 97
    goto :goto_1

    .line 98
    :cond_3
    const/4 p0, 0x2

    .line 99
    :goto_1
    invoke-static {p5}, Lcom/dingtalk/mobile/common/transport/utils/CommonUtil;->canScheduleExactAlarms(Landroid/content/Context;)Z

    .line 102
    move-result p2

    .line 103
    if-nez p2, :cond_4

    .line 105
    invoke-virtual {v2, p0, p3, p4, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 108
    goto :goto_2

    .line 109
    :cond_4
    invoke-virtual {v2, p0, p3, p4, p1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :goto_2
    return-object p1

    .line 113
    :catchall_0
    move-exception p0

    .line 114
    const-string p1, "setAlarmMgr error"

    .line 116
    invoke-static {v1, p1, p0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    return-object v0
.end method

.method public static start(JILandroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0, p0, p1, p2, p3}, Lcom/dingtalk/mars/comm/Alarm;->start(ZJILandroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static start(ZJILandroid/content/Context;)Z
    .locals 9

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    if-gez p3, :cond_0

    return v0

    :cond_0
    if-nez p4, :cond_1

    .line 3
    invoke-static {}, Lcom/dingtalk/bifrost/BifrostEnvUtils;->getContext()Landroid/content/Context;

    move-result-object p4

    :cond_1
    move-object v6, p4

    if-nez v6, :cond_2

    return v0

    .line 4
    :cond_2
    sget-object p4, Lcom/dingtalk/mars/comm/Alarm;->alarm_waiting_set:Ljava/util/TreeSet;

    monitor-enter p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    sget-object v3, Lcom/dingtalk/mars/comm/Alarm;->wakerlock:Lcom/dingtalk/mars/comm/WakerLock;

    if-nez v3, :cond_3

    .line 6
    new-instance v3, Lcom/dingtalk/mars/comm/WakerLock;

    invoke-direct {v3, v6}, Lcom/dingtalk/mars/comm/WakerLock;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/dingtalk/mars/comm/Alarm;->wakerlock:Lcom/dingtalk/mars/comm/WakerLock;

    const-string v3, "bifrost.Alarm"

    const-string v4, "start new wakerlock"

    .line 7
    invoke-static {v3, v4}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_3
    sget-object v3, Lcom/dingtalk/mars/comm/Alarm;->bc_alarm:Lcom/dingtalk/mars/comm/Alarm;

    if-nez v3, :cond_5

    .line 9
    new-instance v3, Lcom/dingtalk/mars/comm/Alarm;

    invoke-direct {v3}, Lcom/dingtalk/mars/comm/Alarm;-><init>()V

    sput-object v3, Lcom/dingtalk/mars/comm/Alarm;->bc_alarm:Lcom/dingtalk/mars/comm/Alarm;

    .line 10
    invoke-static {v6}, Lcom/dingtalk/mobile/common/transport/utils/CommonUtil;->getTargetSdkVersion(Landroid/content/Context;)I

    move-result v3

    const/16 v4, 0x22

    if-lt v3, v4, :cond_4

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_4

    .line 11
    sget-object v3, Lcom/dingtalk/mars/comm/Alarm;->bc_alarm:Lcom/dingtalk/mars/comm/Alarm;

    new-instance v4, Landroid/content/IntentFilter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ALARM_ACTION("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x4

    .line 13
    invoke-static {v6, v3, v4, v5}, Ler0;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 14
    :cond_4
    sget-object v3, Lcom/dingtalk/mars/comm/Alarm;->bc_alarm:Lcom/dingtalk/mars/comm/Alarm;

    new-instance v4, Landroid/content/IntentFilter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ALARM_ACTION("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 15
    :cond_5
    :goto_0
    sget-object v3, Lcom/dingtalk/mars/comm/Alarm;->alarm_waiting_set:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 16
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 17
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    sget-object v5, Lcom/dingtalk/mars/comm/Alarm$TSetData;->ID:Lcom/dingtalk/mars/comm/Alarm$TSetData;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v4, v4, v5

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v7, v4, p1

    if-nez v7, :cond_6

    .line 18
    monitor-exit p4

    return v0

    :cond_7
    if-ltz p3, :cond_8

    int-to-long v3, p3

    add-long/2addr v1, v3

    :cond_8
    move-wide v7, v1

    move v1, p0

    move-wide v2, p1

    move-wide v4, v7

    .line 19
    invoke-static/range {v1 .. v6}, Lcom/dingtalk/mars/comm/Alarm;->setAlarmMgr(ZJJLandroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p0

    if-nez p0, :cond_9

    .line 20
    monitor-exit p4

    return v0

    .line 21
    :cond_9
    sget-object p3, Lcom/dingtalk/mars/comm/Alarm;->alarm_waiting_set:Ljava/util/TreeSet;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const/4 p1, 0x2

    aput-object p0, v1, p1

    invoke-virtual {p3, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 22
    monitor-exit p4

    return p2

    :catchall_0
    move-exception p0

    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    const-string p1, "bifrost.Alarm"

    const-string p2, "start error"

    .line 23
    invoke-static {p1, p2, p0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public static stop(JLandroid/content/Context;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/dingtalk/bifrost/BifrostEnvUtils;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p2

    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    goto/16 :goto_1

    .line 12
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    .line 14
    const-string p0, "bifrost.Alarm"

    .line 16
    const-string p1, "context==null"

    .line 18
    invoke-static {p0, p1}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return v0

    .line 22
    :cond_1
    sget-object v1, Lcom/dingtalk/mars/comm/Alarm;->alarm_waiting_set:Ljava/util/TreeSet;

    .line 24
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :try_start_1
    sget-object v2, Lcom/dingtalk/mars/comm/Alarm;->wakerlock:Lcom/dingtalk/mars/comm/WakerLock;

    .line 27
    if-nez v2, :cond_2

    .line 29
    new-instance v2, Lcom/dingtalk/mars/comm/WakerLock;

    .line 31
    invoke-direct {v2, p2}, Lcom/dingtalk/mars/comm/WakerLock;-><init>(Landroid/content/Context;)V

    .line 34
    sput-object v2, Lcom/dingtalk/mars/comm/Alarm;->wakerlock:Lcom/dingtalk/mars/comm/WakerLock;

    .line 36
    const-string v2, "bifrost.Alarm"

    .line 38
    const-string v3, "stop new wakerlock"

    .line 40
    invoke-static {v2, v3}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_2
    sget-object v2, Lcom/dingtalk/mars/comm/Alarm;->bc_alarm:Lcom/dingtalk/mars/comm/Alarm;

    .line 45
    if-nez v2, :cond_3

    .line 47
    new-instance v2, Lcom/dingtalk/mars/comm/Alarm;

    .line 49
    invoke-direct {v2}, Lcom/dingtalk/mars/comm/Alarm;-><init>()V

    .line 52
    sput-object v2, Lcom/dingtalk/mars/comm/Alarm;->bc_alarm:Lcom/dingtalk/mars/comm/Alarm;

    .line 54
    new-instance v2, Landroid/content/IntentFilter;

    .line 56
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 59
    sget-object v3, Lcom/dingtalk/mars/comm/Alarm;->bc_alarm:Lcom/dingtalk/mars/comm/Alarm;

    .line 61
    invoke-virtual {p2, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    const-string v2, "bifrost.Alarm"

    .line 66
    const-string v3, "stop new Alarm"

    .line 68
    invoke-static {v2, v3}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_3
    sget-object v2, Lcom/dingtalk/mars/comm/Alarm;->alarm_waiting_set:Ljava/util/TreeSet;

    .line 73
    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 76
    move-result-object v2

    .line 77
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_5

    .line 83
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    move-result-object v3

    .line 87
    check-cast v3, [Ljava/lang/Object;

    .line 89
    sget-object v4, Lcom/dingtalk/mars/comm/Alarm$TSetData;->ID:Lcom/dingtalk/mars/comm/Alarm$TSetData;

    .line 91
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 94
    move-result v4

    .line 95
    aget-object v4, v3, v4

    .line 97
    check-cast v4, Ljava/lang/Long;

    .line 99
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 102
    move-result-wide v4

    .line 103
    cmp-long v6, v4, p0

    .line 105
    if-nez v6, :cond_4

    .line 107
    sget-object p0, Lcom/dingtalk/mars/comm/Alarm$TSetData;->PENDINGINTENT:Lcom/dingtalk/mars/comm/Alarm$TSetData;

    .line 109
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 112
    move-result p0

    .line 113
    aget-object p0, v3, p0

    .line 115
    check-cast p0, Landroid/app/PendingIntent;

    .line 117
    invoke-static {p2, p0}, Lcom/dingtalk/mars/comm/Alarm;->cancelAlarmMgr(Landroid/content/Context;Landroid/app/PendingIntent;)Z

    .line 120
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 123
    monitor-exit v1

    .line 124
    const/4 p0, 0x1

    .line 125
    return p0

    .line 126
    :cond_5
    monitor-exit v1

    .line 127
    goto :goto_2

    .line 128
    :catchall_1
    move-exception p0

    .line 129
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 130
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    :goto_1
    const-string p1, "bifrost.Alarm"

    .line 133
    const-string p2, "stop error"

    .line 135
    invoke-static {p1, p2, p0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    :goto_2
    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_7

    .line 3
    if-nez p2, :cond_0

    .line 5
    goto/16 :goto_1

    .line 7
    :cond_0
    :try_start_0
    const-string p1, "ID"

    .line 9
    const-wide/16 v0, 0x0

    .line 11
    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 14
    move-result-wide v2

    .line 15
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    move-result-object p1

    .line 19
    const-string v2, "PID"

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 25
    move-result p2

    .line 26
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 33
    move-result-wide v4

    .line 34
    cmp-long v2, v0, v4

    .line 36
    if-eqz v2, :cond_6

    .line 38
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 48
    move-result p2

    .line 49
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 52
    move-result v0

    .line 53
    if-eq p2, v0, :cond_2

    .line 55
    return-void

    .line 56
    :cond_2
    sget-object p2, Lcom/dingtalk/mars/comm/Alarm;->alarm_waiting_set:Ljava/util/TreeSet;

    .line 58
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 59
    :try_start_1
    sget-object v0, Lcom/dingtalk/mars/comm/Alarm;->alarm_waiting_set:Ljava/util/TreeSet;

    .line 61
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 64
    move-result-object v0

    .line 65
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_4

    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    move-result-object v1

    .line 75
    check-cast v1, [Ljava/lang/Object;

    .line 77
    sget-object v2, Lcom/dingtalk/mars/comm/Alarm$TSetData;->ID:Lcom/dingtalk/mars/comm/Alarm$TSetData;

    .line 79
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 82
    move-result v2

    .line 83
    aget-object v2, v1, v2

    .line 85
    check-cast v2, Ljava/lang/Long;

    .line 87
    invoke-virtual {v2, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_3

    .line 93
    invoke-direct {p0, v1}, Lcom/dingtalk/mars/comm/Alarm;->recordLastAlarmMiss([Ljava/lang/Object;)V

    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 99
    const/4 v3, 0x1

    .line 100
    :cond_4
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :try_start_2
    sget-object p2, Lcom/dingtalk/mars/comm/Alarm;->wakerlock:Lcom/dingtalk/mars/comm/WakerLock;

    .line 103
    if-eqz p2, :cond_5

    .line 105
    const-wide/16 v0, 0xc8

    .line 107
    invoke-virtual {p2, v0, v1}, Lcom/dingtalk/mars/comm/WakerLock;->lock(J)V

    .line 110
    :cond_5
    if-eqz v3, :cond_7

    .line 112
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 115
    move-result-wide p1

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/dingtalk/mars/comm/Alarm;->onAlarm(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 119
    goto :goto_1

    .line 120
    :catchall_0
    move-exception p1

    .line 121
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 122
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 123
    :cond_6
    :goto_0
    return-void

    .line 124
    :catchall_1
    move-exception p1

    .line 125
    const-string p2, "bifrost.Alarm"

    .line 127
    const-string v0, "onReceive error"

    .line 129
    invoke-static {p2, v0, p1}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    :cond_7
    :goto_1
    return-void
.end method
