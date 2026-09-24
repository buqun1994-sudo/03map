.class public Lzc$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lzc;


# direct methods
.method public constructor <init>(Lzc;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzc$a;->a:Lzc;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eq v0, v1, :cond_4

    .line 7
    const/4 v3, 0x2

    .line 8
    if-eq v0, v3, :cond_0

    .line 10
    goto/16 :goto_1

    .line 12
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 14
    iget-object v0, p0, Lzc$a;->a:Lzc;

    .line 16
    invoke-static {v0}, Lzc;->g(Lzc;)Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lzc$a;->a:Lzc;

    .line 24
    invoke-static {v0}, Lzc;->g(Lzc;)Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, v2}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->l(Z)V

    .line 31
    :cond_1
    iget-object v0, p0, Lzc$a;->a:Lzc;

    .line 33
    invoke-static {v0}, Lzc;->h(Lzc;)Lcg;

    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_5

    .line 39
    const/4 v0, -0x1

    .line 40
    if-eq p1, v1, :cond_3

    .line 42
    if-eq p1, v3, :cond_3

    .line 44
    if-ne p1, v0, :cond_2

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-static {}, Lzc;->a()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    const-string v3, "handleMessage onStateChange:"

    .line 58
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 68
    new-array v2, v2, [Ljava/lang/Object;

    .line 70
    invoke-static {v0, v1, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lzc$a;->a:Lzc;

    .line 75
    invoke-static {v0}, Lzc;->d(Lzc;)Loj;

    .line 78
    move-result-object v1

    .line 79
    invoke-static {v0, p1, v1}, Lzc;->f(Lzc;ILoj;)V

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    :goto_0
    invoke-static {}, Lzc;->a()Ljava/lang/String;

    .line 86
    move-result-object p1

    .line 87
    const-string v1, "handleMessage onStateChange:-1"

    .line 89
    new-array v2, v2, [Ljava/lang/Object;

    .line 91
    invoke-static {p1, v1, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iget-object p1, p0, Lzc$a;->a:Lzc;

    .line 96
    invoke-static {p1}, Lzc;->d(Lzc;)Loj;

    .line 99
    move-result-object v1

    .line 100
    invoke-static {p1, v0, v1}, Lzc;->f(Lzc;ILoj;)V

    .line 103
    iget-object p1, p0, Lzc$a;->a:Lzc;

    .line 105
    const/4 v0, 0x0

    .line 106
    invoke-static {p1, v0}, Lzc;->b(Lzc;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    iget-object p1, p0, Lzc$a;->a:Lzc;

    .line 111
    invoke-static {p1, v0}, Lzc;->c(Lzc;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    goto :goto_1

    .line 115
    :cond_4
    invoke-static {}, Lzc;->a()Ljava/lang/String;

    .line 118
    move-result-object v0

    .line 119
    const-string v3, "handleMessage onStateChange:1"

    .line 121
    new-array v2, v2, [Ljava/lang/Object;

    .line 123
    invoke-static {v0, v3, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lzc$a;->a:Lzc;

    .line 128
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 131
    move-result-object v2

    .line 132
    const-string v3, "device_name"

    .line 134
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    move-result-object v2

    .line 138
    invoke-static {v0, v2}, Lzc;->b(Lzc;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lzc$a;->a:Lzc;

    .line 143
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 146
    move-result-object v2

    .line 147
    const-string v3, "device_address"

    .line 149
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    move-result-object v2

    .line 153
    invoke-static {v0, v2}, Lzc;->c(Lzc;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lzc$a;->a:Lzc;

    .line 158
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 161
    move-result-object p1

    .line 162
    const-string v2, "device_info"

    .line 164
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 167
    move-result-object p1

    .line 168
    check-cast p1, Loj;

    .line 170
    invoke-static {v0, p1}, Lzc;->e(Lzc;Loj;)Loj;

    .line 173
    iget-object p1, p0, Lzc$a;->a:Lzc;

    .line 175
    invoke-static {p1}, Lzc;->d(Lzc;)Loj;

    .line 178
    move-result-object v0

    .line 179
    invoke-static {p1, v1, v0}, Lzc;->f(Lzc;ILoj;)V

    .line 182
    :cond_5
    :goto_1
    return-void
.end method
