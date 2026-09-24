.class public Lij0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhj0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lij0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public k()Z
    .locals 10

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    const-string v1, "sourceName"

    .line 8
    const-string v2, "Gaode"

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    const-string v1, "com.szlanyou.usercenter"

    .line 15
    const-string v2, "com.szlanyou.usercenter.view.user.QRCodeActivity"

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    const/high16 v1, 0x10000000

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 25
    invoke-static {}, Lrv;->H()Lrv;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lrv;->F()Landroid/app/Activity;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    invoke-static {}, Lij0;->a()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    const/4 v2, 0x0

    .line 43
    new-array v2, v2, [Ljava/lang/Object;

    .line 45
    const-string v3, "showCarEnterpriseLogin exception"

    .line 47
    invoke-static {v1, v3, v0, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 50
    const/4 v4, 0x6

    .line 51
    const/4 v5, 0x0

    .line 52
    const/4 v6, 0x2

    .line 53
    const/4 v7, 0x0

    .line 54
    invoke-static {}, Lpi;->n()Lpi;

    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lpi;->m()Ljava/lang/String;

    .line 61
    move-result-object v8

    .line 62
    const-string v9, "showCarEnterpriseLogin"

    .line 64
    invoke-static/range {v4 .. v9}, Ll1;->a(IIIILjava/lang/String;Ljava/lang/String;)V

    .line 67
    :goto_0
    const/4 v0, 0x1

    .line 68
    return v0
.end method
