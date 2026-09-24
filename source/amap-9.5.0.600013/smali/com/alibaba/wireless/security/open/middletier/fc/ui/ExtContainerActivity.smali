.class public Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity$DownloadCompleteReceiver;,
        Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity$DownloadSerice;
    }
.end annotation


# instance fields
.field volatile A:I

.field volatile B:I

.field volatile C:I

.field volatile D:I

.field private E:Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity$DownloadCompleteReceiver;

.field private F:I

.field private G:J

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

.field x:F

.field y:I

.field z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->a:Lcom/alibaba/wireless/security/open/middletier/fc/ui/IBXWebview;

    iput-object v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->b:Landroid/os/Handler;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->c:J

    const-string v1, ""

    iput-object v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->d:Ljava/lang/String;

    const-string v2, "?action=close"

    iput-object v2, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->j:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->k:Z

    iput-boolean v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->l:Z

    iput-boolean v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->m:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->n:Z

    iput-boolean v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->o:Z

    iput-boolean v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->p:Z

    iput-boolean v2, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->q:Z

    iput-boolean v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->r:Z

    iput-boolean v2, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->s:Z

    iput-boolean v2, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->t:Z

    iput-boolean v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->u:Z

    iput-boolean v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->v:Z

    iput v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->w:I

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->x:F

    iput v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->y:I

    iput v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->z:I

    iput v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->A:I

    iput v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->B:I

    iput v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->C:I

    iput v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->D:I

    iput-object v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->E:Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity$DownloadCompleteReceiver;

    iput v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->F:I

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->G:J

    iput v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->H:I

    iput-object v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->I:Ljava/lang/String;

    invoke-static {}, Lcom/alibaba/wireless/security/open/middletier/MidBridge;->getWvmlfcdmSwitch()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->J:Z

    invoke-static {}, Lcom/alibaba/wireless/security/open/middletier/MidBridge;->getFcdfcSwitch()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->K:Z

    return-void
.end method

.method public static synthetic a(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->H:I

    return p1
.end method

.method public static synthetic a(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 3
    iget-boolean v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->J:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_1

    :cond_0
    if-nez v0, :cond_4

    iget v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->H:I

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
    iget-boolean p1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->s:Z

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
    invoke-direct {p0, p1, p2}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->b(Ljava/lang/String;Ljava/lang/String;)J

    :goto_1
    return v1
.end method

.method public static synthetic a(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->I:Ljava/lang/String;

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

    iput-object v5, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->d:Ljava/lang/String;

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
    .locals 1

    .line 6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->v:Z

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

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
    invoke-static {p0}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->b(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;)Z
    .locals 0

    .line 11
    iget-boolean p0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->J:Z

    return p0
.end method

.method public static synthetic b(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->H:I

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

    invoke-static {p1}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->getMIMEType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-boolean p2, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->J:Z

    if-eqz p2, :cond_0

    sget-object p2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->I:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p2, p1}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    const-string p1, "download"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/DownloadManager;

    iget-boolean p2, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->q:Z

    if-eqz p2, :cond_1

    const-string p2, "\u5f00\u59cb\u4e0b\u8f7d\u66f4\u65b0\u5305"

    const/4 v1, 0x0

    invoke-static {p0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    :cond_1
    invoke-virtual {p1, v0}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->G:J

    return-wide p1
.end method

.method private b()V
    .locals 1

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 1

    .line 5
    const-class v0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;

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

    const-class v1, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static synthetic c(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->b()V

    return-void
.end method

.method public static synthetic d(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->G:J

    return-wide v0
.end method

.method public static synthetic e(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->a()V

    return-void
.end method

.method public static synthetic f(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->c()V

    return-void
.end method

.method public static synthetic g(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;)I
    .locals 0

    iget p0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->F:I

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

.method public static synthetic h(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;)I
    .locals 2

    iget v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->F:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->F:I

    return v0
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 11

    .line 7
    move-object v8, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, v8, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->f:J

    sub-long v9, v0, v2

    if-eqz p6, :cond_0

    const/4 v2, 0x0

    move-object v0, p0

    move/from16 v1, p6

    move-object v3, p2

    move-wide v4, v9

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->a(ZILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

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

    iget-wide v1, v8, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",bxuid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->h:Ljava/lang/String;

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

    iget-object v2, v8, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BXExtraInfoUIInfo4323"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v0, v8, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->l:Z

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

    iget-boolean p1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->l:Z

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

    iget-object v5, v0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->c:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->h:Ljava/lang/String;

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

.method public b(ZILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 13

    .line 4
    move-object v0, p0

    if-eqz p1, :cond_0

    const v1, 0x18749

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->c:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->h:Ljava/lang/String;

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

    iget-boolean v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->l:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->B:I

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
    iget v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->C:I

    if-nez v0, :cond_3

    iput v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->C:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->B:I

    if-nez v0, :cond_3

    iput v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->B:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->A:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->C:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->B:I

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

    invoke-virtual/range {v2 .. v9}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->A:I

    if-nez v0, :cond_3

    iput v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->A:I

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onBackPressed()V
    .locals 10

    iget-boolean v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->m:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->D:I

    invoke-direct {p0}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->a()V

    iget-wide v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->c:J

    const-string v3, "com.alibaba.wireless.security.open.middletier.fc.ui.BXIntentResult4323"

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->a(JLjava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-boolean v8, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->k:Z

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, "Onbackpressed"

    const/4 v7, 0x0

    const/16 v9, 0x13

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    move-object/from16 v9, p0

    const-string v10, ""

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v11, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {v9, v11}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->f:J

    iput-boolean v12, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->v:Z

    const-string v13, "Oncreate"

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->b:Landroid/os/Handler;

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    const-string v0, "needUT"

    invoke-virtual {v15, v0, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->k:Z

    const-string v0, "isSample"

    invoke-virtual {v15, v0, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->l:Z

    const-string v0, "sessionId"

    const-wide/16 v1, 0x0

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->c:J

    const-string v0, "pluginVersion"

    invoke-virtual {v15, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->g:Ljava/lang/String;

    const-string v0, "bxUUID"

    invoke-virtual {v15, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->h:Ljava/lang/String;

    const-string v0, "hideCloseBtn"

    invoke-virtual {v15, v0, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->m:Z

    const-string v0, "apiTimeOut"

    invoke-virtual {v15, v0, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->z:I

    const-string v0, "windowHeight"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    iput v0, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->x:F

    const-string v0, "closeOverLaySw"

    invoke-virtual {v15, v0, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->w:I

    const-string v0, "topCheckInterval"

    invoke-virtual {v15, v0, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->y:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v8, -0x1

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v12, v12, v12, v12}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v3, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->x:F

    mul-float v0, v0, v3

    float-to-int v0, v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x50

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v14, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x1

    const/16 v3, 0x902

    const-string v4, ""

    const-wide/16 v5, 0x0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    const-string v0, ""

    move-object/from16 v1, p0

    const/4 v14, -0x1

    move-object v8, v0

    invoke-virtual/range {v1 .. v8}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->b(ZILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "downloadConfig"

    invoke-virtual {v15, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x4

    const/4 v3, 0x7

    if-lt v1, v3, :cond_8

    aget-object v1, v0, v12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->n:Z

    aget-object v1, v0, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->o:Z

    const/4 v1, 0x2

    aget-object v4, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->p:Z

    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    iput-boolean v1, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->q:Z

    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    iput-boolean v1, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->r:Z

    const/4 v1, 0x5

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    iput-boolean v1, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->u:Z

    const/4 v1, 0x6

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_7

    const/4 v1, 0x1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    iput-boolean v1, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->s:Z

    :cond_8
    array-length v1, v0

    const/16 v4, 0x8

    if-lt v1, v4, :cond_a

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_8

    :cond_9
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->t:Z

    :cond_a
    const-string v0, "location"

    invoke-virtual {v15, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    const-string v1, "android.taobao.windvane.extra.uc.WVUCWebView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const/4 v1, 0x1

    goto :goto_9

    :catch_1
    nop

    const/4 v1, 0x0

    :goto_9
    if-eqz v1, :cond_b

    :try_start_5
    new-instance v1, Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWVWebview;

    invoke-direct {v1, v9, v15}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWVWebview;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :goto_a
    iput-object v1, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->a:Lcom/alibaba/wireless/security/open/middletier/fc/ui/IBXWebview;

    goto :goto_b

    :cond_b
    new-instance v1, Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWebview;

    invoke-direct {v1, v9, v15}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWebview;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_a

    :goto_b
    iget-object v1, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->a:Lcom/alibaba/wireless/security/open/middletier/fc/ui/IBXWebview;

    check-cast v1, Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v14, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->J:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    const/16 v1, 0x22

    const-string v3, "android.intent.action.DOWNLOAD_COMPLETE"

    const/4 v4, 0x0

    if-eqz v0, :cond_d

    :try_start_6
    iget-boolean v0, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->p:Z

    if-eqz v0, :cond_f

    new-instance v0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity$DownloadCompleteReceiver;

    invoke-direct {v0, v9, v4}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity$DownloadCompleteReceiver;-><init>(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity$1;)V

    iput-object v0, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->E:Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity$DownloadCompleteReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_c

    invoke-static {}, Lcom/alibaba/wireless/security/open/middletier/MidBridge;->getAndroid14Switch()I

    move-result v1

    if-lez v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    :goto_c
    iget-object v3, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->E:Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity$DownloadCompleteReceiver;

    goto :goto_e

    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    :goto_d
    iget-object v2, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->E:Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity$DownloadCompleteReceiver;

    goto :goto_f

    :cond_d
    new-instance v0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity$DownloadCompleteReceiver;

    invoke-direct {v0, v9, v4}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity$DownloadCompleteReceiver;-><init>(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity$1;)V

    iput-object v0, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->E:Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity$DownloadCompleteReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_e

    invoke-static {}, Lcom/alibaba/wireless/security/open/middletier/MidBridge;->getAndroid14Switch()I

    move-result v1

    if-lez v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    goto :goto_c

    :goto_e
    invoke-static {v1, v3, v0, v2}, Lpg;->a(Landroid/app/Application;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_10

    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    goto :goto_d

    :goto_f
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_f
    :goto_10
    iget-object v0, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->a:Lcom/alibaba/wireless/security/open/middletier/fc/ui/IBXWebview;

    new-instance v1, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity$1;

    invoke-direct {v1, v9}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity$1;-><init>(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;)V

    new-instance v2, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity$DownloadSerice;

    invoke-direct {v2, v9, v4}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity$DownloadSerice;-><init>(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity$1;)V

    invoke-interface {v0, v9, v1, v2}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/IBXWebview;->bxSetUp(Landroid/content/Context;Lcom/alibaba/wireless/security/open/middletier/fc/ui/IUrlVerifyCallback;Lcom/alibaba/wireless/security/open/middletier/fc/ui/IBXWebview$IBXDownloadService;)V

    iget-object v0, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->a:Lcom/alibaba/wireless/security/open/middletier/fc/ui/IBXWebview;

    invoke-interface {v0, v15}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/IBXWebview;->bxLoadUrl(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|Loadurl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    const/4 v2, 0x0

    const-string v3, ""

    const/4 v6, 0x0

    :try_start_7
    iget-boolean v7, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->k:Z

    const/16 v8, 0xb

    move-object/from16 v1, p0

    move-object v4, v13

    move-object v5, v15

    invoke-virtual/range {v1 .. v8}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_10

    iget v0, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->y:I

    if-lez v0, :cond_10

    iget-object v0, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity$2;

    invoke-direct {v1, v9}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity$2;-><init>(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;)V

    iget v2, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->y:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :cond_10
    const/4 v11, 0x0

    goto :goto_12

    :catch_2
    move-exception v0

    move-object v5, v15

    goto :goto_11

    :catch_3
    move-exception v0

    move-object v5, v10

    :goto_11
    iput-boolean v11, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->k:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|Exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v7, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->k:Z

    const/16 v2, 0x8ff

    const/4 v6, 0x0

    const/16 v8, 0xc

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    :goto_12
    if-eqz v11, :cond_11

    const/4 v1, 0x2

    iput v1, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->D:I

    invoke-direct/range {p0 .. p0}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->a()V

    goto :goto_13

    :cond_11
    iget v0, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->z:I

    if-lez v0, :cond_12

    new-instance v0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity$3;

    invoke-direct {v0, v9}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity$3;-><init>(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;)V

    iget-object v1, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->b:Landroid/os/Handler;

    iget v2, v9, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->z:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_12
    :goto_13
    return-void
.end method

.method public onDestroy()V
    .locals 13

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->v:Z

    iget v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->y:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->b:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->a:Lcom/alibaba/wireless/security/open/middletier/fc/ui/IBXWebview;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/IBXWebview;->bxDestroy()V

    iput-object v2, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->a:Lcom/alibaba/wireless/security/open/middletier/fc/ui/IBXWebview;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->J:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->p:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->t:Z

    if-eqz v1, :cond_3

    :try_start_1
    iget-object v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->E:Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity$DownloadCompleteReceiver;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->E:Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity$DownloadCompleteReceiver;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :cond_2
    iget-boolean v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->t:Z

    if-ne v1, v0, :cond_3

    :try_start_2
    iget-object v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->E:Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity$DownloadCompleteReceiver;

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
    iget-boolean v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->K:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->D:I

    if-nez v1, :cond_4

    const/4 v1, 0x6

    iput v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->D:I

    iget-wide v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->c:J

    const-string v3, "com.alibaba.wireless.security.open.middletier.fc.ui.BXIntentResult4323"

    const/4 v4, 0x4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->a(JLjava/lang/String;I)V

    :cond_4
    const/4 v6, 0x0

    const-string v7, ""

    const-string v8, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ondestroy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->D:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->D:I

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

    invoke-virtual/range {v5 .. v12}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    return-void
.end method

.method public onPause()V
    .locals 8

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-boolean v6, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->k:Z

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "onPause"

    const-string v4, "onPause"

    const/4 v5, 0x0

    const/16 v7, 0xe

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    iget v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->w:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity$4;-><init>(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;)V

    iget-object v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->b:Landroid/os/Handler;

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

    iget-object p1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->i:Ljava/lang/String;

    iget-object p2, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->j:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->b(Ljava/lang/String;Ljava/lang/String;)J

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
    iget-boolean v1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->k:Z

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

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->a(ZILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onRestart()V
    .locals 8

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    iget-boolean v6, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->k:Z

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "onRestart"

    const-string v4, "onRestart"

    const/4 v5, 0x0

    const/16 v7, 0x19

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    return-void
.end method

.method public onResume()V
    .locals 12

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->w:I

    const/4 v1, 0x1

    shr-int/2addr v0, v1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->c:J

    const-string v0, "com.alibaba.wireless.security.open.middletier.fc.ui.BXIntentCreate4323"

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->a(JLjava/lang/String;I)V

    :goto_0
    iget-boolean v10, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->k:Z

    const/4 v5, 0x0

    const-string v6, ""

    const-string v7, "onResume"

    const-string v8, "onResume"

    const/4 v9, 0x0

    const/16 v11, 0xd

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    return-void
.end method

.method public onStart()V
    .locals 8

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-boolean v6, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->k:Z

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "onStart"

    const-string v4, "onStart"

    const/4 v5, 0x0

    const/16 v7, 0x18

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    return-void
.end method

.method public onStop()V
    .locals 8

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-boolean v6, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->k:Z

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "onStop"

    const-string v4, "onStop"

    const/4 v5, 0x0

    const/16 v7, 0x1a

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    return-void
.end method
