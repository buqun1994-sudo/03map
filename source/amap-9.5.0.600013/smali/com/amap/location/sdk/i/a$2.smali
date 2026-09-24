.class Lcom/amap/location/sdk/i/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/sdk/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/sdk/i/a;


# direct methods
.method public constructor <init>(Lcom/amap/location/sdk/i/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/sdk/i/a$2;->a:Lcom/amap/location/sdk/i/a;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    const-string v0, "LocMonitor"

    .line 3
    iget-object v1, p0, Lcom/amap/location/sdk/i/a$2;->a:Lcom/amap/location/sdk/i/a;

    .line 5
    invoke-static {v1}, Lcom/amap/location/sdk/i/a;->a(Lcom/amap/location/sdk/i/a;)Z

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    move-result-wide v1

    .line 16
    iget-object v3, p0, Lcom/amap/location/sdk/i/a$2;->a:Lcom/amap/location/sdk/i/a;

    .line 18
    invoke-static {v3}, Lcom/amap/location/sdk/i/a;->b(Lcom/amap/location/sdk/i/a;)J

    .line 21
    move-result-wide v3

    .line 22
    sub-long v3, v1, v3

    .line 24
    iget-object v5, p0, Lcom/amap/location/sdk/i/a$2;->a:Lcom/amap/location/sdk/i/a;

    .line 26
    invoke-static {v5}, Lcom/amap/location/sdk/i/a;->c(Lcom/amap/location/sdk/i/a;)J

    .line 29
    move-result-wide v5

    .line 30
    cmp-long v7, v3, v5

    .line 32
    if-ltz v7, :cond_1

    .line 34
    const v3, 0x1895f

    .line 37
    invoke-static {v3}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 40
    :cond_1
    iget-object v3, p0, Lcom/amap/location/sdk/i/a$2;->a:Lcom/amap/location/sdk/i/a;

    .line 42
    invoke-static {v3}, Lcom/amap/location/sdk/i/a;->d(Lcom/amap/location/sdk/i/a;)J

    .line 45
    move-result-wide v3

    .line 46
    sub-long v3, v1, v3

    .line 48
    const-wide/16 v5, 0x1f40

    .line 50
    const/4 v7, 0x0

    .line 51
    cmp-long v8, v3, v5

    .line 53
    if-gez v8, :cond_2

    .line 55
    iget-object v3, p0, Lcom/amap/location/sdk/i/a$2;->a:Lcom/amap/location/sdk/i/a;

    .line 57
    invoke-static {v3}, Lcom/amap/location/sdk/i/a;->b(Lcom/amap/location/sdk/i/a;)J

    .line 60
    move-result-wide v3

    .line 61
    sub-long/2addr v1, v3

    .line 62
    iget-object v3, p0, Lcom/amap/location/sdk/i/a$2;->a:Lcom/amap/location/sdk/i/a;

    .line 64
    invoke-static {v3}, Lcom/amap/location/sdk/i/a;->c(Lcom/amap/location/sdk/i/a;)J

    .line 67
    move-result-wide v3

    .line 68
    cmp-long v5, v1, v3

    .line 70
    if-ltz v5, :cond_2

    .line 72
    const v1, 0x18960

    .line 75
    invoke-static {v1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 78
    const v1, 0x1ae2c

    .line 81
    invoke-static {v1, v7}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportEvent(I[B)V

    .line 84
    iget-object v1, p0, Lcom/amap/location/sdk/i/a$2;->a:Lcom/amap/location/sdk/i/a;

    .line 86
    invoke-static {v1}, Lcom/amap/location/sdk/i/a;->e(Lcom/amap/location/sdk/i/a;)V

    .line 89
    iget-object v1, p0, Lcom/amap/location/sdk/i/a$2;->a:Lcom/amap/location/sdk/i/a;

    .line 91
    invoke-static {v1}, Lcom/amap/location/sdk/i/a;->f(Lcom/amap/location/sdk/i/a;)I

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    const-string v2, "no any loc report: "

    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-object v2, p0, Lcom/amap/location/sdk/i/a$2;->a:Lcom/amap/location/sdk/i/a;

    .line 106
    invoke-static {v2}, Lcom/amap/location/sdk/i/a;->g(Lcom/amap/location/sdk/i/a;)I

    .line 109
    move-result v2

    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object v1

    .line 117
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    goto :goto_0

    .line 121
    :cond_2
    iget-object v1, p0, Lcom/amap/location/sdk/i/a$2;->a:Lcom/amap/location/sdk/i/a;

    .line 123
    const/4 v2, 0x0

    .line 124
    invoke-static {v1, v2}, Lcom/amap/location/sdk/i/a;->a(Lcom/amap/location/sdk/i/a;I)I

    .line 127
    :goto_0
    iget-object v1, p0, Lcom/amap/location/sdk/i/a$2;->a:Lcom/amap/location/sdk/i/a;

    .line 129
    invoke-static {v1}, Lcom/amap/location/sdk/i/a;->h(Lcom/amap/location/sdk/i/a;)Lcom/amap/location/sdk/i/a$a;

    .line 132
    move-result-object v1

    .line 133
    if-eqz v1, :cond_3

    .line 135
    iget-object v1, p0, Lcom/amap/location/sdk/i/a$2;->a:Lcom/amap/location/sdk/i/a;

    .line 137
    invoke-static {v1}, Lcom/amap/location/sdk/i/a;->g(Lcom/amap/location/sdk/i/a;)I

    .line 140
    move-result v1

    .line 141
    iget-object v2, p0, Lcom/amap/location/sdk/i/a$2;->a:Lcom/amap/location/sdk/i/a;

    .line 143
    invoke-static {v2}, Lcom/amap/location/sdk/i/a;->i(Lcom/amap/location/sdk/i/a;)I

    .line 146
    move-result v2

    .line 147
    if-le v1, v2, :cond_3

    .line 149
    iget-object v1, p0, Lcom/amap/location/sdk/i/a$2;->a:Lcom/amap/location/sdk/i/a;

    .line 151
    invoke-static {v1}, Lcom/amap/location/sdk/i/a;->h(Lcom/amap/location/sdk/i/a;)Lcom/amap/location/sdk/i/a$a;

    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v1}, Lcom/amap/location/sdk/i/a$a;->a()V

    .line 158
    const v1, 0x1899d

    .line 161
    invoke-static {v1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 164
    const v1, 0x1ae2d

    .line 167
    invoke-static {v1, v7}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportEvent(I[B)V

    .line 170
    return-void

    .line 171
    :cond_3
    iget-object v1, p0, Lcom/amap/location/sdk/i/a$2;->a:Lcom/amap/location/sdk/i/a;

    .line 173
    invoke-static {v1}, Lcom/amap/location/sdk/i/a;->j(Lcom/amap/location/sdk/i/a;)Lcom/amap/location/sdk/i/a$b;

    .line 176
    move-result-object v1

    .line 177
    if-eqz v1, :cond_4

    .line 179
    iget-object v1, p0, Lcom/amap/location/sdk/i/a$2;->a:Lcom/amap/location/sdk/i/a;

    .line 181
    invoke-static {v1}, Lcom/amap/location/sdk/i/a;->j(Lcom/amap/location/sdk/i/a;)Lcom/amap/location/sdk/i/a$b;

    .line 184
    move-result-object v1

    .line 185
    iget-object v2, p0, Lcom/amap/location/sdk/i/a$2;->a:Lcom/amap/location/sdk/i/a;

    .line 187
    invoke-static {v2}, Lcom/amap/location/sdk/i/a;->k(Lcom/amap/location/sdk/i/a;)Ljava/lang/Runnable;

    .line 190
    move-result-object v2

    .line 191
    iget-object v3, p0, Lcom/amap/location/sdk/i/a$2;->a:Lcom/amap/location/sdk/i/a;

    .line 193
    invoke-static {v3}, Lcom/amap/location/sdk/i/a;->c(Lcom/amap/location/sdk/i/a;)J

    .line 196
    move-result-wide v3

    .line 197
    invoke-virtual {v1, v2, v3, v4}, Lcom/amap/location/sdk/i/a$b;->a(Ljava/lang/Runnable;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    goto :goto_1

    .line 201
    :catch_0
    move-exception v1

    .line 202
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    :cond_4
    :goto_1
    return-void
.end method
