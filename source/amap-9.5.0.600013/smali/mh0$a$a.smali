.class public Lmh0$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmh0$a;->f(Ljava/lang/CharSequence;ILmh0$a$b;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/lang/CharSequence;

.field public final synthetic c:I

.field public final synthetic d:Lmh0$a$b;

.field public final synthetic e:Z

.field public final synthetic f:Lmh0$a;


# direct methods
.method public constructor <init>(Lmh0$a;ZLjava/lang/CharSequence;ILmh0$a$b;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmh0$a$a;->f:Lmh0$a;

    .line 3
    iput-boolean p2, p0, Lmh0$a$a;->a:Z

    .line 5
    iput-object p3, p0, Lmh0$a$a;->b:Ljava/lang/CharSequence;

    .line 7
    iput p4, p0, Lmh0$a$a;->c:I

    .line 9
    iput-object p5, p0, Lmh0$a$a;->d:Lmh0$a$b;

    .line 11
    iput-boolean p6, p0, Lmh0$a$a;->e:Z

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lmh0$a$a;->a:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    const-string v0, "ToastHelper"

    .line 8
    const-string v2, "systemToast show"

    .line 10
    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    invoke-static {}, Lrv;->H()Lrv;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lmh0$a$a;->b:Ljava/lang/CharSequence;

    .line 25
    iget v2, p0, Lmh0$a$a;->c:I

    .line 27
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 34
    goto/16 :goto_0

    .line 36
    :cond_0
    new-instance v0, Landroid/widget/Toast;

    .line 38
    iget-object v2, p0, Lmh0$a$a;->f:Lmh0$a;

    .line 40
    invoke-static {v2}, Lmh0$a;->b(Lmh0$a;)Landroid/content/Context;

    .line 43
    move-result-object v2

    .line 44
    invoke-direct {v0, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 47
    iget v2, p0, Lmh0$a$a;->c:I

    .line 49
    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 52
    iget-object v2, p0, Lmh0$a$a;->d:Lmh0$a$b;

    .line 54
    if-eqz v2, :cond_1

    .line 56
    iget v3, v2, Lmh0$a$b;->a:I

    .line 58
    iget v4, v2, Lmh0$a$b;->b:I

    .line 60
    iget v2, v2, Lmh0$a$b;->c:I

    .line 62
    invoke-virtual {v0, v3, v4, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 65
    :cond_1
    iget-object v2, p0, Lmh0$a$a;->f:Lmh0$a;

    .line 67
    invoke-static {v2}, Lmh0$a;->c(Lmh0$a;)Landroid/view/LayoutInflater;

    .line 70
    move-result-object v2

    .line 71
    sget v3, Lb90;->a:I

    .line 73
    const/4 v4, 0x0

    .line 74
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 77
    move-result-object v2

    .line 78
    iget-boolean v3, p0, Lmh0$a$a;->e:Z

    .line 80
    if-eqz v3, :cond_2

    .line 82
    sget v3, Lt80;->g:I

    .line 84
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 87
    :cond_2
    sget v3, Ly80;->P0:I

    .line 89
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Landroid/widget/TextView;

    .line 95
    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 98
    iget-object v2, p0, Lmh0$a$a;->b:Ljava/lang/CharSequence;

    .line 100
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v2, p0, Lmh0$a$a;->f:Lmh0$a;

    .line 105
    monitor-enter v2

    .line 106
    :try_start_0
    iget-object v3, p0, Lmh0$a$a;->f:Lmh0$a;

    .line 108
    invoke-static {v3}, Lmh0$a;->d(Lmh0$a;)Ljava/lang/ref/SoftReference;

    .line 111
    move-result-object v3

    .line 112
    if-eqz v3, :cond_3

    .line 114
    iget-object v3, p0, Lmh0$a$a;->f:Lmh0$a;

    .line 116
    invoke-static {v3}, Lmh0$a;->d(Lmh0$a;)Ljava/lang/ref/SoftReference;

    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 123
    move-result-object v3

    .line 124
    if-eqz v3, :cond_3

    .line 126
    const-string v3, "ToastHelper"

    .line 128
    const-string v4, "softRefToast lastToast cancel"

    .line 130
    new-array v5, v1, [Ljava/lang/Object;

    .line 132
    invoke-static {v3, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v3, p0, Lmh0$a$a;->f:Lmh0$a;

    .line 137
    invoke-static {v3}, Lmh0$a;->d(Lmh0$a;)Ljava/lang/ref/SoftReference;

    .line 140
    move-result-object v3

    .line 141
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 144
    move-result-object v3

    .line 145
    check-cast v3, Landroid/widget/Toast;

    .line 147
    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 150
    :cond_3
    iget-object v3, p0, Lmh0$a$a;->f:Lmh0$a;

    .line 152
    new-instance v4, Ljava/lang/ref/SoftReference;

    .line 154
    invoke-direct {v4, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 157
    invoke-static {v3, v4}, Lmh0$a;->e(Lmh0$a;Ljava/lang/ref/SoftReference;)Ljava/lang/ref/SoftReference;

    .line 160
    const-string v3, "ToastHelper"

    .line 162
    const-string v4, "auto systemToast show"

    .line 164
    new-array v1, v1, [Ljava/lang/Object;

    .line 166
    invoke-static {v3, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 172
    monitor-exit v2

    .line 173
    :goto_0
    return-void

    .line 174
    :catchall_0
    move-exception v0

    .line 175
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    throw v0
.end method
