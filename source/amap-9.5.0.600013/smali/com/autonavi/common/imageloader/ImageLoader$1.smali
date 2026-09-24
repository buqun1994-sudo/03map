.class final Lcom/autonavi/common/imageloader/ImageLoader$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/common/imageloader/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v1, 0x3

    .line 4
    if-eq v0, v1, :cond_3

    .line 6
    const/16 v1, 0x8

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eq v0, v1, :cond_2

    .line 11
    const/16 v1, 0xd

    .line 13
    if-eq v0, v1, :cond_1

    .line 15
    const/16 v1, 0xe

    .line 17
    if-ne v0, v1, :cond_0

    .line 19
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 21
    check-cast p1, Lcom/autonavi/common/imageloader/BitmapHunter;

    .line 23
    iget-object v0, p1, Lcom/autonavi/common/imageloader/BitmapHunter;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    .line 25
    invoke-virtual {v0, p1}, Lcom/autonavi/common/imageloader/ImageLoader;->complete(Lcom/autonavi/common/imageloader/BitmapHunter;)V

    .line 28
    goto :goto_2

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    const-string v2, "Unknown handler message received: "

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget p1, p1, Landroid/os/Message;->what:I

    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 53
    throw v0

    .line 54
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 56
    check-cast p1, Ljava/util/List;

    .line 58
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 61
    move-result v0

    .line 62
    :goto_0
    if-ge v2, v0, :cond_5

    .line 64
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Lcom/autonavi/common/imageloader/Action;

    .line 70
    iget-object v3, v1, Lcom/autonavi/common/imageloader/Action;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    .line 72
    invoke-virtual {v3, v1}, Lcom/autonavi/common/imageloader/ImageLoader;->resumeAction(Lcom/autonavi/common/imageloader/Action;)V

    .line 75
    add-int/lit8 v2, v2, 0x1

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 80
    check-cast p1, Ljava/util/List;

    .line 82
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 85
    move-result v0

    .line 86
    :goto_1
    if-ge v2, v0, :cond_5

    .line 88
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Lcom/autonavi/common/imageloader/BitmapHunter;

    .line 94
    iget-object v3, v1, Lcom/autonavi/common/imageloader/BitmapHunter;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    .line 96
    invoke-virtual {v3, v1}, Lcom/autonavi/common/imageloader/ImageLoader;->complete(Lcom/autonavi/common/imageloader/BitmapHunter;)V

    .line 99
    add-int/lit8 v2, v2, 0x1

    .line 101
    goto :goto_1

    .line 102
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 104
    check-cast p1, Lcom/autonavi/common/imageloader/Action;

    .line 106
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/Action;->getPicasso()Lcom/autonavi/common/imageloader/ImageLoader;

    .line 109
    move-result-object v0

    .line 110
    iget-boolean v0, v0, Lcom/autonavi/common/imageloader/ImageLoader;->loggingEnabled:Z

    .line 112
    if-eqz v0, :cond_4

    .line 114
    iget-object v0, p1, Lcom/autonavi/common/imageloader/Action;->request:Lcom/autonavi/common/imageloader/Request;

    .line 116
    invoke-virtual {v0}, Lcom/autonavi/common/imageloader/Request;->logId()Ljava/lang/String;

    .line 119
    move-result-object v0

    .line 120
    const-string v1, "target got garbage collected"

    .line 122
    const-string v2, "Main"

    .line 124
    const-string v3, "canceled"

    .line 126
    invoke-static {v2, v3, v0, v1}, Lcom/autonavi/common/imageloader/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_4
    iget-object v0, p1, Lcom/autonavi/common/imageloader/Action;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    .line 131
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/Action;->getTarget()Ljava/lang/Object;

    .line 134
    move-result-object p1

    .line 135
    invoke-static {v0, p1}, Lcom/autonavi/common/imageloader/ImageLoader;->access$000(Lcom/autonavi/common/imageloader/ImageLoader;Ljava/lang/Object;)V

    .line 138
    :cond_5
    :goto_2
    return-void
.end method
