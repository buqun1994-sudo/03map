.class public final Lh1$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lh1;


# direct methods
.method public constructor <init>(Lh1;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh1$a;->a:Lh1;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 3
    const-wide/16 v0, 0x1388

    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz p1, :cond_6

    .line 8
    if-eq p1, v2, :cond_0

    .line 10
    goto/16 :goto_2

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    const-string v3, "MSG_CHECK_IS_HOME lastIsHome="

    .line 19
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v4, p0, Lh1$a;->a:Lh1;

    .line 24
    invoke-static {v4}, Lh1;->c(Lh1;)Z

    .line 27
    move-result v4

    .line 28
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    const/4 v4, 0x0

    .line 36
    new-array v5, v4, [Ljava/lang/Object;

    .line 38
    const-string v6, "ActivityListener"

    .line 40
    invoke-static {v6, p1, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iget-object p1, p0, Lh1$a;->a:Lh1;

    .line 45
    invoke-virtual {p1}, Lh1;->i()Z

    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_1

    .line 51
    const-string p1, "MSG_CHECK_IS_HOME isLastIsHome()"

    .line 53
    new-array v5, v4, [Ljava/lang/Object;

    .line 55
    invoke-static {v6, p1, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    const/4 p1, 0x1

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const-string p1, "MSG_CHECK_IS_HOME ! isLastIsHome()"

    .line 62
    new-array v5, v4, [Ljava/lang/Object;

    .line 64
    invoke-static {v6, p1, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    const/4 p1, 0x0

    .line 68
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v3, p0, Lh1$a;->a:Lh1;

    .line 78
    invoke-static {v3}, Lh1;->c(Lh1;)Z

    .line 81
    move-result v3

    .line 82
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 85
    const-string v3, " currentIsHome="

    .line 87
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 93
    const-string v3, " isCurrentNavi="

    .line 95
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v3, p0, Lh1$a;->a:Lh1;

    .line 100
    invoke-static {v3}, Lh1;->e(Lh1;)Z

    .line 103
    move-result v3

    .line 104
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v3

    .line 111
    new-array v5, v4, [Ljava/lang/Object;

    .line 113
    invoke-static {v6, v3, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    const/16 v3, 0x262

    .line 118
    invoke-static {v3}, Lib;->u(I)Z

    .line 121
    move-result v3

    .line 122
    if-eqz v3, :cond_3

    .line 124
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 126
    const/16 v5, 0x1f

    .line 128
    if-ne v3, v5, :cond_3

    .line 130
    iget-object p1, p0, Lh1$a;->a:Lh1;

    .line 132
    invoke-static {p1}, Lh1;->e(Lh1;)Z

    .line 135
    move-result p1

    .line 136
    if-eqz p1, :cond_2

    .line 138
    const-string p1, "MSG_CHECK_IS_HOME !currentIsHome closeScreenShot over 620"

    .line 140
    new-array v3, v4, [Ljava/lang/Object;

    .line 142
    invoke-static {v6, p1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    iget-object p1, p0, Lh1$a;->a:Lh1;

    .line 147
    invoke-static {p1}, Lh1;->e(Lh1;)Z

    .line 150
    move-result p1

    .line 151
    xor-int/2addr p1, v2

    .line 152
    invoke-static {p1}, Lvl0;->g(Z)V

    .line 155
    goto :goto_1

    .line 156
    :cond_2
    const-string p1, "MSG_CHECK_IS_HOME currentIsHome openScreenShot over 620"

    .line 158
    new-array v3, v4, [Ljava/lang/Object;

    .line 160
    invoke-static {v6, p1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    invoke-static {}, Lvl0;->r()V

    .line 166
    goto :goto_1

    .line 167
    :cond_3
    iget-object v3, p0, Lh1$a;->a:Lh1;

    .line 169
    invoke-static {v3}, Lh1;->c(Lh1;)Z

    .line 172
    move-result v3

    .line 173
    if-eq p1, v3, :cond_5

    .line 175
    iget-object v3, p0, Lh1$a;->a:Lh1;

    .line 177
    invoke-static {v3, p1}, Lh1;->d(Lh1;Z)Z

    .line 180
    if-eqz p1, :cond_4

    .line 182
    const-string p1, "MSG_CHECK_IS_HOME currentIsHome openScreenShot"

    .line 184
    new-array v3, v4, [Ljava/lang/Object;

    .line 186
    invoke-static {v6, p1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    invoke-static {}, Lvl0;->r()V

    .line 192
    goto :goto_1

    .line 193
    :cond_4
    const-string p1, "MSG_CHECK_IS_HOME !currentIsHome closeScreenShot"

    .line 195
    new-array v3, v4, [Ljava/lang/Object;

    .line 197
    invoke-static {v6, p1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    iget-object p1, p0, Lh1$a;->a:Lh1;

    .line 202
    invoke-static {p1}, Lh1;->e(Lh1;)Z

    .line 205
    move-result p1

    .line 206
    xor-int/2addr p1, v2

    .line 207
    invoke-static {p1}, Lvl0;->g(Z)V

    .line 210
    :cond_5
    :goto_1
    iget-object p1, p0, Lh1$a;->a:Lh1;

    .line 212
    invoke-static {p1}, Lh1;->b(Lh1;)Lh1$a;

    .line 215
    move-result-object p1

    .line 216
    if-eqz p1, :cond_7

    .line 218
    iget-object p1, p0, Lh1$a;->a:Lh1;

    .line 220
    invoke-static {p1}, Lh1;->b(Lh1;)Lh1$a;

    .line 223
    move-result-object p1

    .line 224
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 227
    iget-object p1, p0, Lh1$a;->a:Lh1;

    .line 229
    invoke-static {p1}, Lh1;->b(Lh1;)Lh1$a;

    .line 232
    move-result-object p1

    .line 233
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 236
    goto :goto_2

    .line 237
    :cond_6
    iget-object p1, p0, Lh1$a;->a:Lh1;

    .line 239
    invoke-static {p1}, Lh1;->a(Lh1;)Ljava/util/List;

    .line 242
    iget-object p1, p0, Lh1$a;->a:Lh1;

    .line 244
    invoke-static {p1}, Lh1;->b(Lh1;)Lh1$a;

    .line 247
    move-result-object p1

    .line 248
    if-eqz p1, :cond_7

    .line 250
    iget-object p1, p0, Lh1$a;->a:Lh1;

    .line 252
    invoke-static {p1}, Lh1;->b(Lh1;)Lh1$a;

    .line 255
    move-result-object p1

    .line 256
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 259
    :cond_7
    :goto_2
    return-void
.end method
