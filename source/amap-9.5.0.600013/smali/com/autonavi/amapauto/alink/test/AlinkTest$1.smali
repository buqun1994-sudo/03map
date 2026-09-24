.class Lcom/autonavi/amapauto/alink/test/AlinkTest$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/amapauto/alink/IAlinkAVListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/alink/test/AlinkTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/amapauto/alink/test/AlinkTest;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/alink/test/AlinkTest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/alink/test/AlinkTest$1;->this$0:Lcom/autonavi/amapauto/alink/test/AlinkTest;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public notifyCameraState(I)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object p1

    .line 8
    const/4 v1, 0x0

    .line 9
    aput-object p1, v0, v1

    .line 11
    const-string p1, "AlinkTest"

    .line 13
    const-string v2, "notifyCameraState status:{?}"

    .line 15
    invoke-static {p1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    return v1
.end method

.method public onAVDataReceived(Landroid/media/Image;)I
    .locals 3

    .line 1
    const/4 p1, 0x0

    .line 2
    new-array v0, p1, [Ljava/lang/Object;

    .line 4
    const-string v1, "AlinkTest"

    .line 6
    const-string v2, "onAVDataReceived"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    return p1
.end method
