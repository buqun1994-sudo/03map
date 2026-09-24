.class public Lud0$k;
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
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    .line 3
    const-string v1, "com.android.settings"

    .line 5
    const-string v2, "com.banyac.midrive.connectionsettings.activity.WifiActivity"

    .line 7
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const/high16 v1, 0x10200000

    .line 12
    const-string v2, "android.intent.action.MAIN"

    .line 14
    invoke-static {v2, v0, v1}, Lu1;->e(Ljava/lang/String;Landroid/content/ComponentName;I)Z

    .line 17
    move-result v0

    .line 18
    return v0
.end method
