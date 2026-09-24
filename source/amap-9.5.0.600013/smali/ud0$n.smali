.class public Lud0$n;
.super Lud0$a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lud0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lud0$a0;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public i()Z
    .locals 9

    .line 1
    :try_start_0
    const-string v0, "android.vehicle.listeners.VehicleListenerBase"

    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    new-instance v0, Landroid/content/Intent;

    .line 8
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 11
    new-instance v1, Landroid/content/ComponentName;

    .line 13
    const-string v2, "com.gaei.settings"

    .line 15
    const-string v3, "com.gaei.settings.SettingsActivity"

    .line 17
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 23
    const-string v1, "tab_index"

    .line 25
    const/4 v2, 0x4

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    const/high16 v1, 0x10000000

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 34
    invoke-static {v0}, Lu1;->d(Landroid/content/Intent;)Z

    .line 37
    move-result v0

    .line 38
    return v0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    const-string v1, "quangqi"

    .line 42
    const-string v2, "VehicleListenerBase exception"

    .line 44
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v3, 0x3

    .line 48
    const/4 v4, 0x0

    .line 49
    const/4 v5, 0x2

    .line 50
    const/4 v6, 0x0

    .line 51
    invoke-static {}, Lpi;->n()Lpi;

    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lpi;->m()Ljava/lang/String;

    .line 58
    move-result-object v7

    .line 59
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 62
    move-result-object v8

    .line 63
    invoke-static/range {v3 .. v8}, Ll1;->a(IIIILjava/lang/String;Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    .line 67
    return v0
.end method
