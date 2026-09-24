.class Lcom/autonavi/amapauto/alink/test/AlinkTest$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/amapauto/alink/IAlinkSencorListener;


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
    iput-object p1, p0, Lcom/autonavi/amapauto/alink/test/AlinkTest$2;->this$0:Lcom/autonavi/amapauto/alink/test/AlinkTest;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onSensorDataReceived(IJ[DI)I
    .locals 0

    .line 1
    const/4 p2, 0x1

    .line 2
    new-array p2, p2, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object p1

    .line 8
    const/4 p3, 0x0

    .line 9
    aput-object p1, p2, p3

    .line 11
    const-string p1, "AlinkTest"

    .line 13
    const-string p4, "onSensorDataReceived category:{?}"

    .line 15
    invoke-static {p1, p4, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    return p3
.end method
