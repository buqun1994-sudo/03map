.class Lcom/autonavi/amapauto/alink/H264Decoder$OutputDecoderRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/alink/H264Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OutputDecoderRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/amapauto/alink/H264Decoder;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/alink/H264Decoder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/alink/H264Decoder$OutputDecoderRunnable;->this$0:Lcom/autonavi/amapauto/alink/H264Decoder;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/autonavi/amapauto/alink/H264Decoder$OutputDecoderRunnable;->this$0:Lcom/autonavi/amapauto/alink/H264Decoder;

    .line 6
    invoke-static {v1}, Lcom/autonavi/amapauto/alink/H264Decoder;->access$500(Lcom/autonavi/amapauto/alink/H264Decoder;)Z

    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    aput-object v1, v0, v2

    .line 17
    const-string v1, "DecoderHandler"

    .line 19
    const-string v2, "OutputDecoderRunnable mOutputStart:{?} "

    .line 21
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    :goto_0
    iget-object v0, p0, Lcom/autonavi/amapauto/alink/H264Decoder$OutputDecoderRunnable;->this$0:Lcom/autonavi/amapauto/alink/H264Decoder;

    .line 26
    invoke-static {v0}, Lcom/autonavi/amapauto/alink/H264Decoder;->access$500(Lcom/autonavi/amapauto/alink/H264Decoder;)Z

    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/autonavi/amapauto/alink/H264Decoder$OutputDecoderRunnable;->this$0:Lcom/autonavi/amapauto/alink/H264Decoder;

    .line 34
    invoke-static {v0}, Lcom/autonavi/amapauto/alink/H264Decoder;->access$800(Lcom/autonavi/amapauto/alink/H264Decoder;)V

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method
