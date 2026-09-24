.class public Lrv$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk6$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lrv;


# direct methods
.method public constructor <init>(Lrv;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrv$c;->a:Lrv;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onActivityLifecycleChanged(Landroid/app/Activity;I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p2, v0, :cond_0

    .line 4
    invoke-static {p1}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->updateFullScreenBySave(Landroid/app/Activity;)V

    .line 7
    :cond_0
    instance-of p1, p1, Lzr;

    .line 9
    if-eqz p1, :cond_1

    .line 11
    packed-switch p2, :pswitch_data_0

    .line 14
    goto :goto_0

    .line 15
    :pswitch_0
    const/16 p1, 0xbd9

    .line 17
    invoke-static {p1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->dispatchAutoStatus(I)V

    .line 20
    goto :goto_0

    .line 21
    :pswitch_1
    const/4 p1, 0x4

    .line 22
    invoke-static {p1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->dispatchAutoStatus(I)V

    .line 25
    goto :goto_0

    .line 26
    :pswitch_2
    const/16 p1, 0x33

    .line 28
    invoke-static {p1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->dispatchAutoStatus(I)V

    .line 31
    goto :goto_0

    .line 32
    :pswitch_3
    const/16 p1, 0x32

    .line 34
    invoke-static {p1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->dispatchAutoStatus(I)V

    .line 37
    goto :goto_0

    .line 38
    :pswitch_4
    const/4 p1, 0x3

    .line 39
    invoke-static {p1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->dispatchAutoStatus(I)V

    .line 42
    goto :goto_0

    .line 43
    :pswitch_5
    const/16 p1, 0x31

    .line 45
    invoke-static {p1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->dispatchAutoStatus(I)V

    .line 48
    :goto_0
    new-instance p1, Lrv$c$a;

    .line 50
    invoke-direct {p1, p0, p2}, Lrv$c$a;-><init>(Lrv$c;I)V

    .line 53
    invoke-static {p1}, Lbg0;->c(Ljava/lang/Runnable;)V

    .line 56
    :cond_1
    return-void

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
