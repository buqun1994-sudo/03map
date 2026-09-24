.class Lcom/amap/location/fusion/LocationProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/fusion/LocationProvider;->a(IJFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:F

.field final synthetic d:Lcom/amap/location/fusion/LocationProvider;


# direct methods
.method public constructor <init>(Lcom/amap/location/fusion/LocationProvider;IJF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/fusion/LocationProvider$1;->d:Lcom/amap/location/fusion/LocationProvider;

    .line 3
    iput p2, p0, Lcom/amap/location/fusion/LocationProvider$1;->a:I

    .line 5
    iput-wide p3, p0, Lcom/amap/location/fusion/LocationProvider$1;->b:J

    .line 7
    iput p5, p0, Lcom/amap/location/fusion/LocationProvider$1;->c:F

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/amap/location/fusion/LocationProvider$1;->a:I

    .line 3
    iget-object v1, p0, Lcom/amap/location/fusion/LocationProvider$1;->d:Lcom/amap/location/fusion/LocationProvider;

    .line 5
    invoke-static {v1}, Lcom/amap/location/fusion/LocationProvider;->a(Lcom/amap/location/fusion/LocationProvider;)I

    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 11
    iget-wide v0, p0, Lcom/amap/location/fusion/LocationProvider$1;->b:J

    .line 13
    iget-object v2, p0, Lcom/amap/location/fusion/LocationProvider$1;->d:Lcom/amap/location/fusion/LocationProvider;

    .line 15
    invoke-static {v2}, Lcom/amap/location/fusion/LocationProvider;->b(Lcom/amap/location/fusion/LocationProvider;)J

    .line 18
    move-result-wide v2

    .line 19
    cmp-long v4, v0, v2

    .line 21
    if-nez v4, :cond_0

    .line 23
    iget v0, p0, Lcom/amap/location/fusion/LocationProvider$1;->c:F

    .line 25
    iget-object v1, p0, Lcom/amap/location/fusion/LocationProvider$1;->d:Lcom/amap/location/fusion/LocationProvider;

    .line 27
    invoke-static {v1}, Lcom/amap/location/fusion/LocationProvider;->c(Lcom/amap/location/fusion/LocationProvider;)F

    .line 30
    move-result v1

    .line 31
    cmpl-float v0, v0, v1

    .line 33
    if-nez v0, :cond_0

    .line 35
    return-void

    .line 36
    :cond_0
    iget v0, p0, Lcom/amap/location/fusion/LocationProvider$1;->a:I

    .line 38
    if-nez v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/amap/location/fusion/LocationProvider$1;->d:Lcom/amap/location/fusion/LocationProvider;

    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-static {v0, v1}, Lcom/amap/location/fusion/LocationProvider;->a(Lcom/amap/location/fusion/LocationProvider;Z)Z

    .line 46
    iget-object v0, p0, Lcom/amap/location/fusion/LocationProvider$1;->d:Lcom/amap/location/fusion/LocationProvider;

    .line 48
    invoke-static {v0}, Lcom/amap/location/fusion/LocationProvider;->d(Lcom/amap/location/fusion/LocationProvider;)Lcom/amap/location/fusion/a/b;

    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/amap/location/fusion/LocationProvider$1;->d:Lcom/amap/location/fusion/LocationProvider;

    .line 56
    invoke-static {v0}, Lcom/amap/location/fusion/LocationProvider;->d(Lcom/amap/location/fusion/LocationProvider;)Lcom/amap/location/fusion/a/b;

    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/amap/location/fusion/a/b;->a()V

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/amap/location/fusion/LocationProvider$1;->d:Lcom/amap/location/fusion/LocationProvider;

    .line 66
    const/4 v1, 0x1

    .line 67
    invoke-static {v0, v1}, Lcom/amap/location/fusion/LocationProvider;->a(Lcom/amap/location/fusion/LocationProvider;Z)Z

    .line 70
    iget-object v0, p0, Lcom/amap/location/fusion/LocationProvider$1;->d:Lcom/amap/location/fusion/LocationProvider;

    .line 72
    const/4 v1, -0x1

    .line 73
    invoke-static {v0, v1}, Lcom/amap/location/fusion/LocationProvider;->a(Lcom/amap/location/fusion/LocationProvider;I)I

    .line 76
    iget-object v0, p0, Lcom/amap/location/fusion/LocationProvider$1;->d:Lcom/amap/location/fusion/LocationProvider;

    .line 78
    invoke-static {v0}, Lcom/amap/location/fusion/LocationProvider;->f(Lcom/amap/location/fusion/LocationProvider;)Lcom/amap/location/support/handler/AmapHandler;

    .line 81
    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/amap/location/fusion/LocationProvider$1;->d:Lcom/amap/location/fusion/LocationProvider;

    .line 84
    invoke-static {v1}, Lcom/amap/location/fusion/LocationProvider;->e(Lcom/amap/location/fusion/LocationProvider;)Ljava/lang/Runnable;

    .line 87
    move-result-object v1

    .line 88
    invoke-interface {v0, v1}, Lcom/amap/location/support/handler/AmapHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 91
    iget-object v0, p0, Lcom/amap/location/fusion/LocationProvider$1;->d:Lcom/amap/location/fusion/LocationProvider;

    .line 93
    invoke-static {v0}, Lcom/amap/location/fusion/LocationProvider;->f(Lcom/amap/location/fusion/LocationProvider;)Lcom/amap/location/support/handler/AmapHandler;

    .line 96
    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/amap/location/fusion/LocationProvider$1;->d:Lcom/amap/location/fusion/LocationProvider;

    .line 99
    invoke-static {v1}, Lcom/amap/location/fusion/LocationProvider;->e(Lcom/amap/location/fusion/LocationProvider;)Ljava/lang/Runnable;

    .line 102
    move-result-object v1

    .line 103
    const-wide/16 v2, 0x1388

    .line 105
    invoke-interface {v0, v1, v2, v3}, Lcom/amap/location/support/handler/AmapHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    iget-object v0, p0, Lcom/amap/location/fusion/LocationProvider$1;->d:Lcom/amap/location/fusion/LocationProvider;

    .line 110
    invoke-static {v0}, Lcom/amap/location/fusion/LocationProvider;->d(Lcom/amap/location/fusion/LocationProvider;)Lcom/amap/location/fusion/a/b;

    .line 113
    move-result-object v0

    .line 114
    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/amap/location/fusion/LocationProvider$1;->d:Lcom/amap/location/fusion/LocationProvider;

    .line 118
    invoke-static {v0}, Lcom/amap/location/fusion/LocationProvider;->d(Lcom/amap/location/fusion/LocationProvider;)Lcom/amap/location/fusion/a/b;

    .line 121
    move-result-object v0

    .line 122
    iget v1, p0, Lcom/amap/location/fusion/LocationProvider$1;->a:I

    .line 124
    iget-wide v2, p0, Lcom/amap/location/fusion/LocationProvider$1;->b:J

    .line 126
    invoke-virtual {v0, v1, v2, v3}, Lcom/amap/location/fusion/a/b;->a(IJ)V

    .line 129
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amap/location/fusion/LocationProvider$1;->d:Lcom/amap/location/fusion/LocationProvider;

    .line 131
    iget v1, p0, Lcom/amap/location/fusion/LocationProvider$1;->a:I

    .line 133
    invoke-static {v0, v1}, Lcom/amap/location/fusion/LocationProvider;->b(Lcom/amap/location/fusion/LocationProvider;I)I

    .line 136
    iget-object v0, p0, Lcom/amap/location/fusion/LocationProvider$1;->d:Lcom/amap/location/fusion/LocationProvider;

    .line 138
    iget-wide v1, p0, Lcom/amap/location/fusion/LocationProvider$1;->b:J

    .line 140
    invoke-static {v0, v1, v2}, Lcom/amap/location/fusion/LocationProvider;->a(Lcom/amap/location/fusion/LocationProvider;J)J

    .line 143
    iget-object v0, p0, Lcom/amap/location/fusion/LocationProvider$1;->d:Lcom/amap/location/fusion/LocationProvider;

    .line 145
    iget v1, p0, Lcom/amap/location/fusion/LocationProvider$1;->c:F

    .line 147
    invoke-static {v0, v1}, Lcom/amap/location/fusion/LocationProvider;->a(Lcom/amap/location/fusion/LocationProvider;F)F

    .line 150
    return-void
.end method
