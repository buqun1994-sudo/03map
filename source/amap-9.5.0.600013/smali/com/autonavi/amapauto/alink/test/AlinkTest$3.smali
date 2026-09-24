.class Lcom/autonavi/amapauto/alink/test/AlinkTest$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/amapauto/alink/IAlinkEventListener;


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
    iput-object p1, p0, Lcom/autonavi/amapauto/alink/test/AlinkTest$3;->this$0:Lcom/autonavi/amapauto/alink/test/AlinkTest;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/autonavi/amapauto/alink/data/EventReceivedData;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1}, Lcom/autonavi/amapauto/alink/data/BaseJsonData;->toJsonString()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    aput-object p1, v0, v1

    .line 11
    const-string p1, "AlinkTest"

    .line 13
    const-string v1, "onSensorDataReceived receivedData:{?}"

    .line 15
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    return-void
.end method
