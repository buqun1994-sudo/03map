.class public Lo1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo1;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo1;


# direct methods
.method public constructor <init>(Lo1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo1$a;->a:Lo1;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 1
    invoke-static {}, Lo1;->a()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object p1

    .line 13
    aput-object p1, v1, v2

    .line 15
    const-string p1, "onApplyDeviceAdapterNotify,type={?}"

    .line 17
    invoke-static {v0, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-object p1, p0, Lo1$a;->a:Lo1;

    .line 22
    invoke-static {p1}, Lo1;->b(Lo1;)V

    .line 25
    const/4 p1, 0x0

    .line 26
    invoke-static {p1}, Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative;->setApplyDeviceAdapterNotifyInterface(Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative$b;)V

    .line 29
    return-void
.end method
