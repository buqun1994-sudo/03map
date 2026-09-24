.class public Le30$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La30;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le30;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le30;


# direct methods
.method public constructor <init>(Le30;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le30$b;->a:Le30;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "NetworkManager"

    .line 6
    const-string v3, "[NetworkManager]onConnectChange"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v1, p0, Le30$b;->a:Le30;

    .line 13
    invoke-static {}, Lrv;->H()Lrv;

    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3}, Lrv;->z()Landroid/content/Context;

    .line 20
    move-result-object v3

    .line 21
    invoke-static {v3, p1}, Lpa;->i(Landroid/content/Context;Landroid/content/Intent;)I

    .line 24
    move-result p1

    .line 25
    invoke-static {v1, p1}, Le30;->c(Le30;I)I

    .line 28
    const/4 p1, 0x1

    .line 29
    new-array v1, p1, [Ljava/lang/Object;

    .line 31
    iget-object v3, p0, Le30$b;->a:Le30;

    .line 33
    invoke-static {v3}, Le30;->b(Le30;)I

    .line 36
    move-result v3

    .line 37
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v3

    .line 41
    aput-object v3, v1, v0

    .line 43
    const-string v3, "[NetworkManager]onConnectChange currentNetType={?}"

    .line 45
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    iget-object v1, p0, Le30$b;->a:Le30;

    .line 50
    invoke-static {v1}, Le30;->b(Le30;)I

    .line 53
    move-result v3

    .line 54
    invoke-virtual {v1, v3}, Le30;->p(I)V

    .line 57
    iget-object v1, p0, Le30$b;->a:Le30;

    .line 59
    invoke-static {v1}, Le30;->b(Le30;)I

    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Le30$b;->a:Le30;

    .line 67
    invoke-virtual {v1}, Le30;->n()I

    .line 70
    move-result v3

    .line 71
    invoke-static {v1, v3}, Le30;->e(Le30;I)I

    .line 74
    iget-object v1, p0, Le30$b;->a:Le30;

    .line 76
    invoke-static {v1}, Le30;->d(Le30;)I

    .line 79
    move-result v3

    .line 80
    invoke-virtual {v1, v3}, Le30;->q(I)V

    .line 83
    :cond_0
    const/4 v1, 0x2

    .line 84
    new-array v1, v1, [Ljava/lang/Object;

    .line 86
    iget-object v3, p0, Le30$b;->a:Le30;

    .line 88
    invoke-static {v3}, Le30;->b(Le30;)I

    .line 91
    move-result v3

    .line 92
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    move-result-object v3

    .line 96
    aput-object v3, v1, v0

    .line 98
    iget-object v0, p0, Le30$b;->a:Le30;

    .line 100
    invoke-static {v0}, Le30;->d(Le30;)I

    .line 103
    move-result v0

    .line 104
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    move-result-object v0

    .line 108
    aput-object v0, v1, p1

    .line 110
    const-string p1, "[NetworkManager]onConnectChange netType = {?}, level = {?}"

    .line 112
    invoke-static {v2, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le30$b;->a:Le30;

    .line 3
    invoke-virtual {v0, p1}, Le30;->r(Z)V

    .line 6
    const/4 v0, 0x1

    .line 7
    new-array v0, v0, [Ljava/lang/Object;

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    move-result-object p1

    .line 14
    aput-object p1, v0, v1

    .line 16
    const-string p1, "NetworkManager"

    .line 18
    const-string v1, "[NetworkManager]onWifiDeviceStatusForReciver isOpened = {?}"

    .line 20
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Le30$b;->a:Le30;

    .line 3
    invoke-static {v0}, Le30;->b(Le30;)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x4

    .line 8
    if-ne v0, v1, :cond_0

    .line 10
    iget-object v0, p0, Le30$b;->a:Le30;

    .line 12
    invoke-virtual {v0}, Le30;->n()I

    .line 15
    move-result v1

    .line 16
    invoke-static {v0, v1}, Le30;->e(Le30;I)I

    .line 19
    iget-object v0, p0, Le30$b;->a:Le30;

    .line 21
    invoke-static {v0}, Le30;->d(Le30;)I

    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0, v1}, Le30;->q(I)V

    .line 28
    :cond_0
    const/4 v0, 0x2

    .line 29
    new-array v0, v0, [Ljava/lang/Object;

    .line 31
    iget-object v1, p0, Le30$b;->a:Le30;

    .line 33
    invoke-static {v1}, Le30;->b(Le30;)I

    .line 36
    move-result v1

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v1

    .line 41
    const/4 v2, 0x0

    .line 42
    aput-object v1, v0, v2

    .line 44
    iget-object v1, p0, Le30$b;->a:Le30;

    .line 46
    invoke-static {v1}, Le30;->d(Le30;)I

    .line 49
    move-result v1

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v1

    .line 54
    const/4 v2, 0x1

    .line 55
    aput-object v1, v0, v2

    .line 57
    const-string v1, "NetworkManager"

    .line 59
    const-string v2, "[NetworkManager]onWifiSignalStrenghChange netType = {?}, level = {?}"

    .line 61
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    return-void
.end method
