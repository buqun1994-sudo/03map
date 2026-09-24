.class Lcom/amap/location/fusion/a/a/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/app/MessageCenterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/fusion/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/fusion/a/a/a;


# direct methods
.method public constructor <init>(Lcom/amap/location/fusion/a/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/fusion/a/a/a$2;->a:Lcom/amap/location/fusion/a/a/a;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getAction()J
    .locals 2

    const-wide/16 v0, 0x2

    return-wide v0
.end method

.method public onChange(I)V
    .locals 3

    .line 1
    const-string v0, "gpsloc"

    .line 3
    const/4 v1, 0x2

    .line 4
    if-eq p1, v1, :cond_0

    .line 6
    return-void

    .line 7
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/amap/location/fusion/a/a/a$2;->a:Lcom/amap/location/fusion/a/a/a;

    .line 9
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getScene()I

    .line 12
    move-result v1

    .line 13
    invoke-static {p1, v1}, Lcom/amap/location/fusion/a/a/a;->d(Lcom/amap/location/fusion/a/a/a;I)Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 19
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a$2;->a:Lcom/amap/location/fusion/a/a/a;

    .line 21
    invoke-static {v1}, Lcom/amap/location/fusion/a/a/a;->e(Lcom/amap/location/fusion/a/a/a;)Lcom/amap/location/support/location/AbstractLocator;

    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_2

    .line 27
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a$2;->a:Lcom/amap/location/fusion/a/a/a;

    .line 29
    invoke-static {v1}, Lcom/amap/location/fusion/a/a/a;->e(Lcom/amap/location/fusion/a/a/a;)Lcom/amap/location/support/location/AbstractLocator;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/amap/location/support/location/AbstractLocator;->start()V

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a$2;->a:Lcom/amap/location/fusion/a/a/a;

    .line 39
    invoke-static {v1}, Lcom/amap/location/fusion/a/a/a;->e(Lcom/amap/location/fusion/a/a/a;)Lcom/amap/location/support/location/AbstractLocator;

    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_2

    .line 45
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a$2;->a:Lcom/amap/location/fusion/a/a/a;

    .line 47
    invoke-static {v1}, Lcom/amap/location/fusion/a/a/a;->e(Lcom/amap/location/fusion/a/a/a;)Lcom/amap/location/support/location/AbstractLocator;

    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lcom/amap/location/support/location/AbstractLocator;->stop()V

    .line 54
    :cond_2
    :goto_0
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getScene()I

    .line 57
    move-result v1

    .line 58
    const/4 v2, 0x5

    .line 59
    if-ne v1, v2, :cond_3

    .line 61
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a$2;->a:Lcom/amap/location/fusion/a/a/a;

    .line 63
    invoke-static {v1}, Lcom/amap/location/fusion/a/a/a;->f(Lcom/amap/location/fusion/a/a/a;)Lcom/amap/location/fusion/a/a/a$c;

    .line 66
    move-result-object v1

    .line 67
    if-eqz v1, :cond_4

    .line 69
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a$2;->a:Lcom/amap/location/fusion/a/a/a;

    .line 71
    invoke-static {v1}, Lcom/amap/location/fusion/a/a/a;->f(Lcom/amap/location/fusion/a/a/a;)Lcom/amap/location/fusion/a/a/a$c;

    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lcom/amap/location/fusion/a/a/a$c;->a()V

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a$2;->a:Lcom/amap/location/fusion/a/a/a;

    .line 81
    invoke-static {v1}, Lcom/amap/location/fusion/a/a/a;->f(Lcom/amap/location/fusion/a/a/a;)Lcom/amap/location/fusion/a/a/a$c;

    .line 84
    move-result-object v1

    .line 85
    if-eqz v1, :cond_4

    .line 87
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a$2;->a:Lcom/amap/location/fusion/a/a/a;

    .line 89
    invoke-static {v1}, Lcom/amap/location/fusion/a/a/a;->f(Lcom/amap/location/fusion/a/a/a;)Lcom/amap/location/fusion/a/a/a$c;

    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1}, Lcom/amap/location/fusion/a/a/a$c;->b()V

    .line 96
    :cond_4
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 98
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    const-string v2, "rtk scene:"

    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getScene()I

    .line 109
    move-result v2

    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    const-string v2, ","

    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object p1

    .line 125
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    goto :goto_2

    .line 129
    :catch_0
    move-exception p1

    .line 130
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    :goto_2
    return-void
.end method
