.class public Lrv$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrv$a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lrv$a;


# direct methods
.method public constructor <init>(Lrv$a;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrv$a$a;->b:Lrv$a;

    .line 3
    iput p2, p0, Lrv$a$a;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lrv$a$a;->b:Lrv$a;

    .line 3
    iget-object v0, v0, Lrv$a;->a:Lrv;

    .line 5
    invoke-static {v0}, Lrv;->i(Lrv;)Loy;

    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_2

    .line 11
    const/4 v0, 0x1

    .line 12
    new-array v1, v0, [Ljava/lang/Object;

    .line 14
    iget v2, p0, Lrv$a$a;->a:I

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v2

    .line 20
    const/4 v3, 0x0

    .line 21
    aput-object v2, v1, v3

    .line 23
    const-string v2, "JNIContext"

    .line 25
    const-string v4, "locationMode ={?}"

    .line 27
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget v1, p0, Lrv$a$a;->a:I

    .line 32
    if-ne v1, v0, :cond_0

    .line 34
    iget-object v0, p0, Lrv$a$a;->b:Lrv$a;

    .line 36
    iget-object v0, v0, Lrv$a;->a:Lrv;

    .line 38
    new-instance v1, Lwy;

    .line 40
    invoke-static {}, Lrv;->H()Lrv;

    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Lrv;->z()Landroid/content/Context;

    .line 47
    move-result-object v2

    .line 48
    invoke-direct {v1, v2}, Lwy;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-static {v0, v1}, Lrv;->j(Lrv;Loy;)Loy;

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 v2, 0x2

    .line 56
    if-ne v1, v2, :cond_1

    .line 58
    iget-object v0, p0, Lrv$a$a;->b:Lrv$a;

    .line 60
    iget-object v0, v0, Lrv$a;->a:Lrv;

    .line 62
    new-instance v1, Liy;

    .line 64
    invoke-static {}, Lrv;->H()Lrv;

    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2}, Lrv;->z()Landroid/content/Context;

    .line 71
    move-result-object v2

    .line 72
    invoke-direct {v1, v2}, Liy;-><init>(Landroid/content/Context;)V

    .line 75
    invoke-static {v0, v1}, Lrv;->j(Lrv;Loy;)Loy;

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    iget-object v1, p0, Lrv$a$a;->b:Lrv$a;

    .line 81
    iget-object v1, v1, Lrv$a;->a:Lrv;

    .line 83
    new-instance v2, Ljy;

    .line 85
    invoke-static {}, Lrv;->H()Lrv;

    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v4}, Lrv;->z()Landroid/content/Context;

    .line 92
    move-result-object v4

    .line 93
    invoke-direct {v2, v4}, Ljy;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-static {v1, v2}, Lrv;->j(Lrv;Loy;)Loy;

    .line 99
    invoke-static {v0, v3, v3}, Lfo;->c(III)V

    .line 102
    iget-object v0, p0, Lrv$a$a;->b:Lrv$a;

    .line 104
    iget-object v0, v0, Lrv$a;->a:Lrv;

    .line 106
    new-instance v1, Lfo;

    .line 108
    invoke-static {}, Lrv;->H()Lrv;

    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v2}, Lrv;->z()Landroid/content/Context;

    .line 115
    move-result-object v2

    .line 116
    invoke-direct {v1, v2}, Lfo;-><init>(Landroid/content/Context;)V

    .line 119
    invoke-static {v0, v1}, Lrv;->l(Lrv;Lfo;)Lfo;

    .line 122
    iget-object v0, p0, Lrv$a$a;->b:Lrv$a;

    .line 124
    iget-object v0, v0, Lrv$a;->a:Lrv;

    .line 126
    invoke-static {v0}, Lrv;->k(Lrv;)Lfo;

    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lfo;->d()V

    .line 133
    iget-object v0, p0, Lrv$a$a;->b:Lrv$a;

    .line 135
    iget-object v0, v0, Lrv$a;->a:Lrv;

    .line 137
    invoke-static {v0}, Lrv;->e(Lrv;)Landroid/os/Handler;

    .line 140
    move-result-object v0

    .line 141
    new-instance v1, Lrv$a$a$a;

    .line 143
    invoke-direct {v1, p0}, Lrv$a$a$a;-><init>(Lrv$a$a;)V

    .line 146
    const-wide/32 v2, 0x1d4c0

    .line 149
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 152
    :cond_2
    :goto_0
    iget-object v0, p0, Lrv$a$a;->b:Lrv$a;

    .line 154
    iget-object v0, v0, Lrv$a;->a:Lrv;

    .line 156
    invoke-static {v0}, Lrv;->i(Lrv;)Loy;

    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v0}, Loy;->E()V

    .line 163
    iget-object v0, p0, Lrv$a$a;->b:Lrv$a;

    .line 165
    iget-object v0, v0, Lrv$a;->a:Lrv;

    .line 167
    invoke-static {v0}, Lrv;->i(Lrv;)Loy;

    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0}, Loy;->C()V

    .line 174
    iget-object v0, p0, Lrv$a$a;->b:Lrv$a;

    .line 176
    iget-object v0, v0, Lrv$a;->a:Lrv;

    .line 178
    invoke-static {v0}, Lrv;->i(Lrv;)Loy;

    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v0}, Loy;->K()V

    .line 185
    return-void
.end method
