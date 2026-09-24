.class public Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity$DownloadCompleteReceiver;,
        Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity$DownloadSerice;
    }
.end annotation


# instance fields
.field volatile A:I

.field volatile B:I

.field volatile C:I

.field private D:Landroid/content/IntentFilter;

.field private E:Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity$DownloadCompleteReceiver;

.field private F:J

.field private G:I

.field private H:I

.field private I:Ljava/lang/String;

.field private J:Z

.field private K:Z

.field a:Lcom/alibaba/wireless/security/open/middletier/fc/ui/IBXWebview;

.field b:Landroid/os/Handler;

.field c:J

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:J

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Z

.field l:Z

.field m:Z

.field n:Z

.field o:Z

.field p:Z

.field q:Z

.field r:Z

.field s:Z

.field t:Z

.field u:Z

.field v:Z

.field w:I

.field x:I

.field y:I

.field volatile z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->a:Lcom/alibaba/wireless/security/open/middletier/fc/ui/IBXWebview;

    iput-object v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->b:Landroid/os/Handler;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->c:J

    const-string v1, ""

    iput-object v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->d:Ljava/lang/String;

    const-string v2, "?action=close"

    iput-object v2, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->j:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->k:Z

    iput-boolean v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->l:Z

    iput-boolean v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->m:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->n:Z

    iput-boolean v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->o:Z

    iput-boolean v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->p:Z

    iput-boolean v2, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->q:Z

    iput-boolean v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->r:Z

    iput-boolean v2, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->s:Z

    iput-boolean v2, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->t:Z

    iput-boolean v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->u:Z

    iput-boolean v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->v:Z

    iput v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->w:I

    iput v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->x:I

    iput v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->y:I

    iput v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->z:I

    iput v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->A:I

    iput v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->B:I

    iput v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->C:I

    iput-object v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->E:Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity$DownloadCompleteReceiver;

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->F:J

    iput v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->G:I

    iput v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->H:I

    iput-object v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->I:Ljava/lang/String;

    invoke-static {}, Lcom/alibaba/wireless/security/open/middletier/MidBridge;->getWvmlfcdmSwitch()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->J:Z

    invoke-static {}, Lcom/alibaba/wireless/security/open/middletier/MidBridge;->getFcdfcSwitch()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->K:Z

    return-void
.end method

.method public static synthetic a(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->H:I

    return p1
.end method

.method public static synthetic a(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 3
    iget-boolean v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->J:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_1

    :cond_0
    if-nez v0, :cond_4

    iget v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->H:I

    const/16 v2, 0x21

    if-ge v0, v2, :cond_4

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v2}, Ltg;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->s:Z

    if-eqz p1, :cond_3

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x473

    invoke-static {p0, p1, p2}, Lk1;->f(Landroid/app/Activity;[Ljava/lang/String;I)V

    const/4 p1, 0x2

    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p2, Lcom/alibaba/wireless/security/R$string;->sg_permission_failed:I

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lcom/alibaba/wireless/security/R$string;->sg_dialog_ok:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x3

    const/4 v1, 0x3

    goto :goto_1

    :cond_4
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->b(Ljava/lang/String;Ljava/lang/String;)J

    :goto_1
    return v1
.end method

.method public static synthetic a(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->I:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "tmd_nc=1"

    if-nez v2, :cond_4

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    array-length v7, v4

    if-ge v6, v7, :cond_2

    aget-object v7, v4, v6

    const-string v8, "http_referer="

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v5, 0xd

    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->d:Ljava/lang/String;

    move-object v5, v7

    goto :goto_1

    :cond_0
    const-string v8, "native=1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a()V
    .locals 9

    .line 6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->v:Z

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v7, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->k:Z

    const/4 v2, 0x0

    const-string v3, ""

    const-string v4, "finishActivity"

    const-string v5, ""

    const/4 v6, 0x0

    const/16 v8, 0x17

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)Z
    .locals 0

    .line 10
    invoke-static {p0}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->b(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;)Z
    .locals 0

    .line 11
    iget-boolean p0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->J:Z

    return p0
.end method

.method public static synthetic b(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->H:I

    return p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    .line 2
    new-instance v0, Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->getMIMEType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-boolean p2, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->J:Z

    if-eqz p2, :cond_0

    sget-object p2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->I:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p2, p1}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    const-string p1, "download"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/DownloadManager;

    iget-boolean p2, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->q:Z

    if-eqz p2, :cond_1

    const-string p2, "\u5f00\u59cb\u4e0b\u8f7d\u66f4\u65b0\u5305"

    const/4 v1, 0x0

    invoke-static {p0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    :cond_1
    invoke-virtual {p1, v0}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->F:J

    return-wide p1
.end method

.method private b()V
    .locals 9

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v7, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->k:Z

    const/4 v2, 0x0

    const-string v3, ""

    const-string v4, "finishCurrentActivity"

    const-string v5, ""

    const/4 v6, 0x0

    const/16 v8, 0x17

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 6

    .line 4
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "null"

    :cond_0
    const-string v0, "url"

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->C:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "destroyState"

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Page_SGFC"

    const/16 v1, 0x4e1f

    const-string v2, "FC_onCreate"

    const-string v3, ""

    const-string v4, ""

    invoke-static/range {v0 .. v5}, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->addCustomRecord(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 1

    .line 5
    const-class v0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/wireless/security/open/middletier/MidBridge;->checkFcActivityIsOverlayed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private c()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static synthetic c(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->b()V

    return-void
.end method

.method public static synthetic d(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->F:J

    return-wide v0
.end method

.method public static synthetic e(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->a()V

    return-void
.end method

.method public static synthetic f(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->c()V

    return-void
.end method

.method public static synthetic g(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;)I
    .locals 0

    iget p0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->G:I

    return p0
.end method

.method public static getMIMEType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getPackageNameWrapper(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic h(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;)I
    .locals 2

    iget v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->G:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->G:I

    return v0
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 11

    .line 7
    move-object v8, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, v8, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->f:J

    sub-long v9, v0, v2

    if-eqz p6, :cond_0

    const/4 v2, 0x0

    move-object v0, p0

    move/from16 v1, p6

    move-object v3, p2

    move-wide v4, v9

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->a(ZILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{mn:100155,ec:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",tc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",cp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",ext:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",sid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v8, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",bxuid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.alibaba.wireless.security.open.middletier.fc.ui.BXIntentLog4323"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "BXExtraInfoUILog4323"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "BXExtraInfoUILogWay4323"

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "BXExtraInfoUILogSend4323"

    move/from16 v2, p5

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v2, p7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BXExtraInfoUIInfo4323"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v0, v8, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->l:Z

    const-string v2, "BXExtraInfoUIIsSample4323"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p0}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/middletier/fc/ui/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public a(JLjava/lang/String;I)V
    .locals 1

    .line 8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "BXExtraInfoSession4323"

    invoke-virtual {v0, p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "BXExtraInfoUIResult4323"

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-boolean p1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->l:Z

    const-string p2, "BXExtraInfoUIIsSample4323"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p0}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/middletier/fc/ui/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public a(ZILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 13

    .line 9
    move-object v0, p0

    if-eqz p1, :cond_0

    const v1, 0x1873b

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->c:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->h:Ljava/lang/String;

    const/4 v4, 0x7

    move v3, p2

    move-wide/from16 v6, p4

    move-object/from16 v8, p3

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-static/range {v2 .. v12}, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->addUtRecord(Ljava/lang/String;IILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    iget-boolean v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->l:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->A:I

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->B:I

    if-nez v0, :cond_3

    iput v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->B:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->A:I

    if-nez v0, :cond_3

    iput v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->A:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->z:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->B:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->A:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, "Dispatchtouchevent"

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x15

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->z:I

    if-nez v0, :cond_3

    iput v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->z:I

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onBackPressed()V
    .locals 10

    iget-boolean v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->m:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->C:I

    invoke-direct {p0}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->a()V

    iget-wide v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->c:J

    const-string v3, "com.alibaba.wireless.security.open.middletier.fc.ui.BXIntentResult4323"

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->a(JLjava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-boolean v8, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->k:Z

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, "Onbackpressed"

    const/4 v7, 0x0

    const/16 v9, 0x13

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    move-object v9, p0

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->f:J

    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->v:Z

    const-string v1, "Oncreate"

    const-string v11, ""

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->b:Landroid/os/Handler;

    const/4 v12, 0x2

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "needUT"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->k:Z

    const-string v3, "isSample"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->l:Z

    const-string v3, "sessionId"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->c:J

    const-string v3, "pluginVersion"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->g:Ljava/lang/String;

    const-string v3, "bxUUID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->h:Ljava/lang/String;

    const-string v3, "hideCloseBtn"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->m:Z

    const-string v3, "apiTimeOut"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->y:I

    const-string v3, "closeOverLaySw"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->w:I

    const-string v3, "topCheckInterval"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->x:I

    const-string v3, "downloadConfig"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\|"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v6, 0x4

    const/4 v7, 0x7

    if-lt v4, v7, :cond_7

    aget-object v4, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->n:Z

    aget-object v4, v3, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->o:Z

    aget-object v4, v3, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    iput-boolean v4, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->p:Z

    const/4 v4, 0x3

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    iput-boolean v4, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->q:Z

    aget-object v4, v3, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    iput-boolean v4, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->r:Z

    const/4 v4, 0x5

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_5

    const/4 v4, 0x1

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    :goto_5
    iput-boolean v4, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->u:Z

    const/4 v4, 0x6

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_6

    const/4 v4, 0x1

    goto :goto_6

    :cond_6
    const/4 v4, 0x0

    :goto_6
    iput-boolean v4, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->s:Z

    :cond_7
    array-length v4, v3

    const/16 v8, 0x8

    if-lt v4, v8, :cond_9

    aget-object v3, v3, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_8

    const/4 v3, 0x1

    goto :goto_7

    :cond_8
    const/4 v3, 0x0

    :goto_7
    iput-boolean v3, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->t:Z

    :cond_9
    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string v3, "android.taobao.windvane.extra.uc.WVUCWebView"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v3, 0x1

    goto :goto_8

    :catch_0
    nop

    const/4 v3, 0x0

    :goto_8
    if-eqz v3, :cond_a

    :try_start_3
    new-instance v3, Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWVWebview;

    invoke-direct {v3, p0, v13}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWVWebview;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :goto_9
    iput-object v3, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->a:Lcom/alibaba/wireless/security/open/middletier/fc/ui/IBXWebview;

    goto :goto_a

    :cond_a
    new-instance v3, Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWebview;

    invoke-direct {v3, p0, v13}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWebview;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_9

    :goto_a
    iget-object v3, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->a:Lcom/alibaba/wireless/security/open/middletier/fc/ui/IBXWebview;

    check-cast v3, Landroid/view/View;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v2, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->J:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const/16 v3, 0x22

    const-string v4, "android.intent.action.DOWNLOAD_COMPLETE"

    const/4 v5, 0x0

    if-eqz v2, :cond_c

    :try_start_4
    iget-boolean v2, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->p:Z

    if-eqz v2, :cond_e

    new-instance v2, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity$DownloadCompleteReceiver;

    invoke-direct {v2, p0, v5}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity$DownloadCompleteReceiver;-><init>(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity$1;)V

    iput-object v2, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->E:Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity$DownloadCompleteReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->D:Landroid/content/IntentFilter;

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_b

    invoke-static {}, Lcom/alibaba/wireless/security/open/middletier/MidBridge;->getAndroid14Switch()I

    move-result v2

    if-lez v2, :cond_b

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    iget-object v3, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->E:Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity$DownloadCompleteReceiver;

    :goto_b
    iget-object v4, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->D:Landroid/content/IntentFilter;

    goto :goto_d

    :cond_b
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    iget-object v3, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->E:Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity$DownloadCompleteReceiver;

    :goto_c
    iget-object v4, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->D:Landroid/content/IntentFilter;

    goto :goto_e

    :cond_c
    new-instance v2, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity$DownloadCompleteReceiver;

    invoke-direct {v2, p0, v5}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity$DownloadCompleteReceiver;-><init>(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity$1;)V

    iput-object v2, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->E:Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity$DownloadCompleteReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->D:Landroid/content/IntentFilter;

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_d

    invoke-static {}, Lcom/alibaba/wireless/security/open/middletier/MidBridge;->getAndroid14Switch()I

    move-result v2

    if-lez v2, :cond_d

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    iget-object v3, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->E:Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity$DownloadCompleteReceiver;

    goto :goto_b

    :goto_d
    invoke-static {v2, v3, v4, v6}, Lpg;->a(Landroid/app/Application;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_f

    :cond_d
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    iget-object v3, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->E:Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity$DownloadCompleteReceiver;

    goto :goto_c

    :goto_e
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_e
    :goto_f
    iget-object v2, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->a:Lcom/alibaba/wireless/security/open/middletier/fc/ui/IBXWebview;

    new-instance v3, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity$1;-><init>(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;)V

    new-instance v4, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity$DownloadSerice;

    invoke-direct {v4, p0, v5}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity$DownloadSerice;-><init>(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity$1;)V

    invoke-interface {v2, p0, v3, v4}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/IBXWebview;->bxSetUp(Landroid/content/Context;Lcom/alibaba/wireless/security/open/middletier/fc/ui/IUrlVerifyCallback;Lcom/alibaba/wireless/security/open/middletier/fc/ui/IBXWebview$IBXDownloadService;)V

    iget-object v2, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->a:Lcom/alibaba/wireless/security/open/middletier/fc/ui/IBXWebview;

    invoke-interface {v2, v13}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/IBXWebview;->bxLoadUrl(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|Loadurl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const/4 v2, 0x0

    const-string v3, ""

    const/4 v6, 0x0

    :try_start_5
    iget-boolean v7, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->k:Z

    const/16 v8, 0xb

    move-object v1, p0

    move-object v4, v14

    move-object v5, v13

    invoke-virtual/range {v1 .. v8}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_f

    iget v1, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->x:I

    if-lez v1, :cond_f

    iget-object v1, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->b:Landroid/os/Handler;

    new-instance v2, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity$2;-><init>(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;)V

    iget v3, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->x:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_f
    const/4 v10, 0x0

    goto :goto_11

    :catch_1
    move-exception v0

    move-object v1, v14

    goto :goto_10

    :catch_2
    move-exception v0

    goto :goto_10

    :catch_3
    move-exception v0

    move-object v13, v11

    :goto_10
    iput-boolean v10, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->k:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|Exception"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v7, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->k:Z

    const/16 v2, 0x8ff

    const/4 v6, 0x0

    const/16 v8, 0xc

    move-object v1, p0

    move-object v5, v13

    invoke-virtual/range {v1 .. v8}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    :goto_11
    if-eqz v10, :cond_10

    iput v12, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->C:I

    invoke-direct {p0}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->a()V

    goto :goto_12

    :cond_10
    iget v0, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->y:I

    if-lez v0, :cond_11

    new-instance v0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity$3;-><init>(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;)V

    iget-object v1, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->b:Landroid/os/Handler;

    iget v2, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->y:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11
    :goto_12
    invoke-direct {p0, v13}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 13

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->v:Z

    iget v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->x:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->b:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->a:Lcom/alibaba/wireless/security/open/middletier/fc/ui/IBXWebview;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/IBXWebview;->bxDestroy()V

    iput-object v2, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->a:Lcom/alibaba/wireless/security/open/middletier/fc/ui/IBXWebview;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->J:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->p:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->t:Z

    if-eqz v1, :cond_3

    :try_start_1
    iget-object v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->E:Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity$DownloadCompleteReceiver;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->E:Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity$DownloadCompleteReceiver;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :cond_2
    iget-boolean v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->t:Z

    if-ne v1, v0, :cond_3

    :try_start_2
    iget-object v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->E:Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity$DownloadCompleteReceiver;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    goto :goto_1

    :goto_2
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    nop

    :cond_3
    :goto_3
    iget-boolean v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->K:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->C:I

    if-nez v1, :cond_4

    const/4 v1, 0x6

    iput v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->C:I

    iget-wide v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->c:J

    const-string v3, "com.alibaba.wireless.security.open.middletier.fc.ui.BXIntentResult4323"

    const/4 v4, 0x4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->a(JLjava/lang/String;I)V

    :cond_4
    const/4 v6, 0x0

    const-string v7, ""

    const-string v8, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ondestroy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->C:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->C:I

    if-nez v1, :cond_5

    const/4 v10, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    const/4 v10, 0x0

    :goto_4
    const/4 v11, 0x1

    const/16 v12, 0x16

    move-object v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    return-void
.end method

.method public onPause()V
    .locals 8

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-boolean v6, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->k:Z

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "onPause"

    const-string v4, "onPause"

    const/4 v5, 0x0

    const/16 v7, 0xe

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    iget v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->w:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity$4;-><init>(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;)V

    iget-object v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->b:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 8

    const/16 p2, 0x473

    if-ne p1, p2, :cond_2

    array-length p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->i:Ljava/lang/String;

    iget-object p2, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->j:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->b(Ljava/lang/String;Ljava/lang/String;)J

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, p1}, Lk1;->g(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    const-string p2, "\u786e\u5b9a"

    const-string p3, "\u5e94\u7528\u66f4\u65b0\u9700\u8981\u6388\u4e88\u5b58\u50a8\u6743\u9650\uff0c\u8bf7\u5230\u8bbe\u7f6e\u4e2d\u5f00\u542f\u5b58\u50a8\u6743\u9650"

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "Cancel"

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x3

    :goto_0
    iget-boolean v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->k:Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    const-string v3, ""

    const-wide/16 v4, 0x0

    const-string v6, "onRequestPermissionsResult"

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->a(ZILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onRestart()V
    .locals 8

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    iget-boolean v6, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->k:Z

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "onRestart"

    const-string v4, "onRestart"

    const/4 v5, 0x0

    const/16 v7, 0x19

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    return-void
.end method

.method public onResume()V
    .locals 12

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->w:I

    const/4 v1, 0x1

    shr-int/2addr v0, v1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->c:J

    const-string v0, "com.alibaba.wireless.security.open.middletier.fc.ui.BXIntentCreate4323"

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->a(JLjava/lang/String;I)V

    :goto_0
    iget-boolean v10, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->k:Z

    const/4 v5, 0x0

    const-string v6, ""

    const-string v7, "onResume"

    const-string v8, "onResume"

    const/4 v9, 0x0

    const/16 v11, 0xd

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    return-void
.end method

.method public onStart()V
    .locals 8

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-boolean v6, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->k:Z

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "onStart"

    const-string v4, "onStart"

    const/4 v5, 0x0

    const/16 v7, 0x18

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    return-void
.end method

.method public onStop()V
    .locals 8

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-boolean v6, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->k:Z

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "onStop"

    const-string v4, "onStop"

    const/4 v5, 0x0

    const/16 v7, 0x1a

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ContainerActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    return-void
.end method
