.class public Lvo0$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lvo0;


# direct methods
.method public constructor <init>(Lvo0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvo0$m;->a:Lvo0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getLastLocationMatch()Lcom/amap/location/type/location/LocationMatch;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    const-string v2, "rtk status:"

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v2, "#"

    .line 17
    if-nez v0, :cond_0

    .line 19
    const-string v3, "no loc"

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    invoke-virtual {v0}, Lcom/amap/location/type/location/LocationMatch;->getRoadClass()B

    .line 30
    move-result v4

    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    .line 40
    move-result-wide v4

    .line 41
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v4, p0, Lvo0$m;->a:Lvo0;

    .line 49
    invoke-static {v4}, Lvo0;->U(Lvo0;)Ljava/lang/String;

    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v3

    .line 60
    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    const-string v3, "GnssSoftLocator"

    .line 69
    invoke-static {v3, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    if-eqz v0, :cond_1

    .line 74
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 77
    move-result-object v1

    .line 78
    invoke-interface {v1}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 81
    move-result-wide v3

    .line 82
    invoke-virtual {v0}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    .line 85
    move-result-wide v5

    .line 86
    sub-long/2addr v3, v5

    .line 87
    const-wide/32 v5, 0xfde8

    .line 90
    cmp-long v1, v3, v5

    .line 92
    if-gez v1, :cond_1

    .line 94
    iget-object v1, p0, Lvo0$m;->a:Lvo0;

    .line 96
    invoke-static {v1}, Lvo0;->U(Lvo0;)Ljava/lang/String;

    .line 99
    move-result-object v1

    .line 100
    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Lvo0$m;->a:Lvo0;

    .line 104
    invoke-static {v1}, Lvo0;->U(Lvo0;)Ljava/lang/String;

    .line 107
    move-result-object v1

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    .line 110
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0}, Lcom/amap/location/type/location/LocationMatch;->getRoadClass()B

    .line 119
    move-result v0

    .line 120
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lvo0$m;->a:Lvo0;

    .line 138
    invoke-static {v0}, Lvo0;->V(Lvo0;)V

    .line 141
    goto :goto_1

    .line 142
    :cond_1
    iget-object v0, p0, Lvo0$m;->a:Lvo0;

    .line 144
    invoke-static {v0}, Lvo0;->M(Lvo0;)V

    .line 147
    :goto_1
    iget-object v0, p0, Lvo0$m;->a:Lvo0;

    .line 149
    invoke-static {v0}, Lvo0;->S(Lvo0;)Ljava/lang/Runnable;

    .line 152
    move-result-object v1

    .line 153
    const-wide/16 v2, 0x2710

    .line 155
    invoke-static {v0, v1, v2, v3}, Lvo0;->p(Lvo0;Ljava/lang/Runnable;J)V

    .line 158
    return-void
.end method
