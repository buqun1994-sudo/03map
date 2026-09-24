.class public Lye0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfq;
.implements Lfq$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lye0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public g()Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "carplay_navigation_activated"

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public j(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 0

    .line 1
    const-string p2, "carplay_navigation_activated"

    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    const/4 p2, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 10
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeStopGuide(I)V

    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    return p2
.end method
