.class public Ldf;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:I

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    const-string v0, "msgType"

    .line 6
    iput-object v0, p0, Ldf;->l:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 18
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 21
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    :cond_0
    const/4 p1, 0x1

    .line 28
    :goto_0
    iput p1, p0, Ldf;->k:I

    .line 30
    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 1
    iget v0, p0, Ldf;->k:I

    .line 3
    invoke-static {v0}, Lef;->a(I)V

    .line 6
    return-void
.end method
