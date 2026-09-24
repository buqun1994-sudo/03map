.class public Lcom/autonavi/amapauto/ar/camera/CameraManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/amapauto/ar/camera/CameraManager;->requestCameraData()Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

.field public final synthetic b:Lcom/autonavi/amapauto/ar/camera/CameraManager;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/ar/camera/CameraManager;Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager$a;->b:Lcom/autonavi/amapauto/ar/camera/CameraManager;

    .line 3
    iput-object p2, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager$a;->a:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager$a;->a:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 3
    iget-object v0, v0, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->data:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    if-lez v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager$a;->a:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 15
    iget-object v0, v0, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->data:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager$a;->a:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 25
    iget-object v0, v0, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->data:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;

    .line 33
    iget-object v0, v0, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->data:[B

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-array v0, v1, [B

    .line 38
    :goto_0
    move-object v3, v0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move-object v3, v2

    .line 41
    :goto_1
    iget-object v0, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager$a;->a:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 43
    iget-object v0, v0, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->data:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 48
    move-result v0

    .line 49
    const/4 v4, 0x1

    .line 50
    if-le v0, v4, :cond_3

    .line 52
    iget-object v0, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager$a;->a:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 54
    iget-object v0, v0, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->data:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager$a;->a:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 64
    iget-object v0, v0, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->data:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;

    .line 72
    iget-object v0, v0, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->data:[B

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    new-array v0, v1, [B

    .line 77
    :goto_2
    move-object v4, v0

    .line 78
    goto :goto_3

    .line 79
    :cond_3
    move-object v4, v2

    .line 80
    :goto_3
    iget-object v0, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager$a;->a:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 82
    iget-object v0, v0, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->data:Ljava/util/ArrayList;

    .line 84
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 87
    move-result v0

    .line 88
    const/4 v5, 0x2

    .line 89
    if-le v0, v5, :cond_5

    .line 91
    iget-object v0, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager$a;->a:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 93
    iget-object v0, v0, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->data:Ljava/util/ArrayList;

    .line 95
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    move-result-object v0

    .line 99
    if-eqz v0, :cond_4

    .line 101
    iget-object v0, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager$a;->a:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 103
    iget-object v0, v0, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->data:Ljava/util/ArrayList;

    .line 105
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;

    .line 111
    iget-object v0, v0, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->data:[B

    .line 113
    goto :goto_4

    .line 114
    :cond_4
    new-array v0, v1, [B

    .line 116
    :goto_4
    move-object v2, v0

    .line 117
    :cond_5
    move-object v5, v2

    .line 118
    iget-object v0, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager$a;->a:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 120
    iget v6, v0, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->width:I

    .line 122
    iget v7, v0, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->height:I

    .line 124
    iget-object v0, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager$a;->b:Lcom/autonavi/amapauto/ar/camera/CameraManager;

    .line 126
    invoke-static {v0}, Lcom/autonavi/amapauto/ar/camera/CameraManager;->access$000(Lcom/autonavi/amapauto/ar/camera/CameraManager;)Lcom/autonavi/amapauto/ar/camera/ArCameraParam;

    .line 129
    move-result-object v0

    .line 130
    iget v8, v0, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->format:I

    .line 132
    invoke-static/range {v3 .. v8}, Lcom/autonavi/amapauto/socol/SocolNative;->dataTransmission([B[B[BIII)V

    .line 135
    return-void
.end method
