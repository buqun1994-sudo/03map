.class public Le30$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr10;


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
    iput-object p1, p0, Le30$a;->a:Le30;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/telephony/SignalStrength;)V
    .locals 5

    .line 1
    iget-object v0, p0, Le30$a;->a:Le30;

    .line 3
    invoke-static {v0, p1}, Le30;->a(Le30;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    .line 6
    const/4 p1, 0x1

    .line 7
    new-array v0, p1, [Ljava/lang/Object;

    .line 9
    iget-object v1, p0, Le30$a;->a:Le30;

    .line 11
    invoke-static {v1}, Le30;->b(Le30;)I

    .line 14
    move-result v1

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    aput-object v1, v0, v2

    .line 22
    const-string v1, "NetworkManager"

    .line 24
    const-string v3, "[NetworkManager]onMobileSignalStrenghChange currentNetType={?}"

    .line 26
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iget-object v0, p0, Le30$a;->a:Le30;

    .line 31
    invoke-static {v0}, Le30;->b(Le30;)I

    .line 34
    move-result v0

    .line 35
    const/4 v3, 0x4

    .line 36
    if-ne v0, v3, :cond_0

    .line 38
    return-void

    .line 39
    :cond_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Lpa;->h(Landroid/content/Context;)I

    .line 50
    move-result v0

    .line 51
    iget-object v3, p0, Le30$a;->a:Le30;

    .line 53
    invoke-static {v3}, Le30;->b(Le30;)I

    .line 56
    move-result v3

    .line 57
    if-eq v0, v3, :cond_1

    .line 59
    new-array v3, p1, [Ljava/lang/Object;

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object v4

    .line 65
    aput-object v4, v3, v2

    .line 67
    const-string v4, "[NetworkManager]onMobileSignalStrenghChange netType={?}"

    .line 69
    invoke-static {v1, v4, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    iget-object v3, p0, Le30$a;->a:Le30;

    .line 74
    invoke-static {v3, v0}, Le30;->c(Le30;I)I

    .line 77
    iget-object v0, p0, Le30$a;->a:Le30;

    .line 79
    invoke-static {v0}, Le30;->b(Le30;)I

    .line 82
    move-result v3

    .line 83
    invoke-virtual {v0, v3}, Le30;->p(I)V

    .line 86
    :cond_1
    iget-object v0, p0, Le30$a;->a:Le30;

    .line 88
    invoke-static {v0}, Le30;->b(Le30;)I

    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Le30$a;->a:Le30;

    .line 96
    invoke-virtual {v0}, Le30;->n()I

    .line 99
    move-result v3

    .line 100
    invoke-static {v0, v3}, Le30;->e(Le30;I)I

    .line 103
    iget-object v0, p0, Le30$a;->a:Le30;

    .line 105
    invoke-static {v0}, Le30;->d(Le30;)I

    .line 108
    move-result v3

    .line 109
    invoke-virtual {v0, v3}, Le30;->q(I)V

    .line 112
    :cond_2
    const/4 v0, 0x2

    .line 113
    new-array v0, v0, [Ljava/lang/Object;

    .line 115
    iget-object v3, p0, Le30$a;->a:Le30;

    .line 117
    invoke-static {v3}, Le30;->b(Le30;)I

    .line 120
    move-result v3

    .line 121
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    move-result-object v3

    .line 125
    aput-object v3, v0, v2

    .line 127
    iget-object v2, p0, Le30$a;->a:Le30;

    .line 129
    invoke-static {v2}, Le30;->d(Le30;)I

    .line 132
    move-result v2

    .line 133
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    move-result-object v2

    .line 137
    aput-object v2, v0, p1

    .line 139
    const-string p1, "[NetworkManager]onMobileSignalStrenghChange netType = {?}, level = {?}"

    .line 141
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    return-void
.end method
