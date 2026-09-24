.class public Lvh0;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lld;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public c()Landroid/content/Intent;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/autonavi/amapauto/jni/protocol/data/TrafficDogStateData;

    .line 7
    new-instance v1, Landroid/content/Intent;

    .line 9
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 12
    if-eqz v0, :cond_0

    .line 14
    const-string v2, "EXTRA_STATE"

    .line 16
    iget v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/TrafficDogStateData;->status:I

    .line 18
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21
    :cond_0
    return-object v1
.end method

.method public d()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnc;->i()I

    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeCruiseReportPolicy(I)V

    .line 8
    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method
