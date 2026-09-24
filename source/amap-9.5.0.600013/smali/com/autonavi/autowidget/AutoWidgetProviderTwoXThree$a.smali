.class public abstract Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Landroid/os/HandlerThread;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    .line 3
    const-string v1, "Auto2X3WidgetProvider"

    .line 5
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree$a;->a:Landroid/os/HandlerThread;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 13
    return-void
.end method

.method public static synthetic a()Landroid/os/HandlerThread;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree$a;->a:Landroid/os/HandlerThread;

    .line 3
    return-object v0
.end method
