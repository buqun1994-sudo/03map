.class public Lpi$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lpi;


# direct methods
.method public constructor <init>(Lpi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpi$c;->a:Lpi;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lpi;Lpi$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lpi$c;-><init>(Lpi;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    .line 1
    const/4 p1, 0x1

    .line 2
    new-array v0, p1, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p2, v0, v1

    .line 7
    const-string v2, "DeviceAdapterManager"

    .line 9
    const-string v3, "onReceive intent={?}"

    .line 11
    invoke-static {v2, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    if-eqz p2, :cond_5

    .line 16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_0

    .line 22
    goto/16 :goto_3

    .line 24
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    new-array v3, p1, [Ljava/lang/Object;

    .line 30
    aput-object v0, v3, v1

    .line 32
    const-string v4, "onReceive action={?}"

    .line 34
    invoke-static {v2, v4, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 40
    move-result-object v3

    .line 41
    if-eqz v3, :cond_1

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v3}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 50
    move-result-object v3

    .line 51
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 54
    move-result-object v3

    .line 55
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_1

    .line 61
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Ljava/lang/String;

    .line 67
    const/4 v5, 0x2

    .line 68
    new-array v5, v5, [Ljava/lang/Object;

    .line 70
    aput-object v4, v5, v1

    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 75
    move-result-object v6

    .line 76
    invoke-virtual {v6, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    move-result-object v4

    .line 80
    aput-object v4, v5, p1

    .line 82
    const-string v4, "onReceive, extra: {?}={?}"

    .line 84
    invoke-static {v2, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    goto :goto_0

    .line 88
    :cond_1
    invoke-static {}, Lpi;->h()[[I

    .line 91
    move-result-object v3

    .line 92
    array-length v4, v3

    .line 93
    const/4 v5, 0x0

    .line 94
    :goto_1
    if-ge v5, v4, :cond_4

    .line 96
    aget-object v6, v3, v5

    .line 98
    iget-object v7, p0, Lpi$c;->a:Lpi;

    .line 100
    aget v8, v6, v1

    .line 102
    aget v9, v6, p1

    .line 104
    invoke-virtual {v7, v8, v9}, Lpi;->k(II)Lfq;

    .line 107
    move-result-object v7

    .line 108
    if-eqz v7, :cond_3

    .line 110
    move-object v8, v7

    .line 111
    check-cast v8, Lfq$a;

    .line 113
    invoke-interface {v8}, Lfq$a;->g()Ljava/util/List;

    .line 116
    move-result-object v9

    .line 117
    if-eqz v9, :cond_3

    .line 119
    invoke-interface {v8}, Lfq$a;->g()Ljava/util/List;

    .line 122
    move-result-object v9

    .line 123
    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 126
    move-result v9

    .line 127
    if-eqz v9, :cond_3

    .line 129
    invoke-interface {v8, v0, p2}, Lfq$a;->j(Ljava/lang/String;Landroid/content/Intent;)Z

    .line 132
    move-result v8

    .line 133
    instance-of v9, v7, Llf$c;

    .line 135
    if-eqz v9, :cond_2

    .line 137
    check-cast v7, Llf$c;

    .line 139
    invoke-interface {v7}, Llf$c;->b()Ljava/lang/String;

    .line 142
    move-result-object v7

    .line 143
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 146
    move-result v9

    .line 147
    if-nez v9, :cond_2

    .line 149
    invoke-static {}, Lpi;->n()Lpi;

    .line 152
    move-result-object v9

    .line 153
    invoke-virtual {v9, v1, p1}, Lpi;->k(II)Lfq;

    .line 156
    move-result-object v9

    .line 157
    check-cast v9, Llf$d;

    .line 159
    if-eqz v9, :cond_2

    .line 161
    new-array v10, p1, [Ljava/lang/Object;

    .line 163
    aput-object v7, v10, v1

    .line 165
    const-string v11, "setUsbDiskPath, udiskPath={?}"

    .line 167
    invoke-static {v2, v11, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    filled-new-array {v7}, [Ljava/lang/String;

    .line 173
    move-result-object v7

    .line 174
    invoke-interface {v9, v7}, Llf$d;->p([Ljava/lang/String;)V

    .line 177
    :cond_2
    if-eqz v8, :cond_3

    .line 179
    aget p2, v6, v1

    .line 181
    invoke-static {p2}, Ll1;->g(I)I

    .line 184
    move-result v7

    .line 185
    aget v8, v6, p1

    .line 187
    const/4 v9, 0x2

    .line 188
    const/4 v10, 0x1

    .line 189
    iget-object p1, p0, Lpi$c;->a:Lpi;

    .line 191
    invoke-static {p1}, Lpi;->c(Lpi;)Ljava/lang/String;

    .line 194
    move-result-object v11

    .line 195
    new-instance p1, Ljava/lang/StringBuilder;

    .line 197
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    const-string p2, "onReceive:"

    .line 202
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    move-result-object v12

    .line 212
    invoke-static/range {v7 .. v12}, Ll1;->a(IIIILjava/lang/String;Ljava/lang/String;)V

    .line 215
    goto :goto_2

    .line 216
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 218
    goto :goto_1

    .line 219
    :cond_4
    :goto_2
    return-void

    .line 220
    :cond_5
    :goto_3
    const-string p1, "onReceive intent=null || action=null"

    .line 222
    new-array p2, v1, [Ljava/lang/Object;

    .line 224
    invoke-static {v2, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    return-void
.end method
