.class public Lcom/autonavi/amapauto/jni/AutoCarAppFocusManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/amapauto/jni/AutoCarAppFocusManager$d;,
        Lcom/autonavi/amapauto/jni/AutoCarAppFocusManager$c;
    }
.end annotation


# static fields
.field public static final APP_FOCUS_TYPE_NAVIGATION:I = 0x1

.field public static final APP_FOCUS_TYPE_VOICE_COMMAND:I = 0x2

.field private static TAG:Ljava/lang/String; = "AutoCarAppFocusManager"

.field private static sCacheRequestId:I

.field private static sOnAppFocusChangeListener:Lcom/autonavi/amapauto/jni/AutoCarAppFocusManager$c;

.field private static sOnAppFocusChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/AutoCarAppFocusManager$c;",
            ">;"
        }
    .end annotation
.end field

.field private static sOnAutoAppFocusOwnershipCallback:Lcom/autonavi/amapauto/jni/AutoCarAppFocusManager$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/jni/AutoCarAppFocusManager$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/AutoCarAppFocusManager$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/jni/AutoCarAppFocusManager;->sOnAutoAppFocusOwnershipCallback:Lcom/autonavi/amapauto/jni/AutoCarAppFocusManager$d;

    .line 8
    const/4 v0, 0x0

    .line 9
    sput v0, Lcom/autonavi/amapauto/jni/AutoCarAppFocusManager;->sCacheRequestId:I

    .line 11
    new-instance v0, Lcom/autonavi/amapauto/jni/AutoCarAppFocusManager$b;

    .line 13
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/AutoCarAppFocusManager$b;-><init>()V

    .line 16
    sput-object v0, Lcom/autonavi/amapauto/jni/AutoCarAppFocusManager;->sOnAppFocusChangeListener:Lcom/autonavi/amapauto/jni/AutoCarAppFocusManager$c;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    const/4 v1, 0x5

    .line 21
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    sput-object v0, Lcom/autonavi/amapauto/jni/AutoCarAppFocusManager;->sOnAppFocusChangeListeners:Ljava/util/List;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()I
    .locals 1

    .line 1
    sget v0, Lcom/autonavi/amapauto/jni/AutoCarAppFocusManager;->sCacheRequestId:I

    .line 3
    return v0
.end method

.method public static jniAbandonAppFocus(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/jni/AutoCarAppFocusManager;->TAG:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "jniAbandonAppFocus appType "

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    new-array v2, v2, [Ljava/lang/Object;

    .line 23
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    invoke-static {}, Lse;->c()Lse;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p0}, Lse;->abandonAppFocus(I)V

    .line 33
    return-void
.end method

.method public static jniAddAppFocusChangeListener(II)V
    .locals 3

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/jni/AutoCarAppFocusManager;->TAG:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "jniAddAppFocusChangeListener appType "

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v2, " requestId "

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x0

    .line 29
    new-array v2, v2, [Ljava/lang/Object;

    .line 31
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    invoke-static {}, Lse;->c()Lse;

    .line 37
    move-result-object v0

    .line 38
    sget-object v1, Lcom/autonavi/amapauto/jni/AutoCarAppFocusManager;->sOnAppFocusChangeListener:Lcom/autonavi/amapauto/jni/AutoCarAppFocusManager$c;

    .line 40
    invoke-virtual {v0, p0, v1}, Lse;->addAppFocusChange(ILcom/autonavi/amapauto/jni/AutoCarAppFocusManager$c;)V

    .line 43
    sput p1, Lcom/autonavi/amapauto/jni/AutoCarAppFocusManager;->sCacheRequestId:I

    .line 45
    return-void
.end method

.method public static jniRemoveAppFocusChangeListener(II)V
    .locals 3

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/jni/AutoCarAppFocusManager;->TAG:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "jniRemoveAppFocusChangeListener appType "

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string p0, " requestId "

    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    const/4 p1, 0x0

    .line 29
    new-array p1, p1, [Ljava/lang/Object;

    .line 31
    invoke-static {v0, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    invoke-static {}, Lse;->c()Lse;

    .line 37
    move-result-object p0

    .line 38
    sget-object p1, Lcom/autonavi/amapauto/jni/AutoCarAppFocusManager;->sOnAppFocusChangeListener:Lcom/autonavi/amapauto/jni/AutoCarAppFocusManager$c;

    .line 40
    invoke-virtual {p0, p1}, Lse;->removeAppFocusChange(Lcom/autonavi/amapauto/jni/AutoCarAppFocusManager$c;)V

    .line 43
    return-void
.end method

.method public static jniRequestAppFocus(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/jni/AutoCarAppFocusManager;->TAG:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "jniRequestAppFocus appType "

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    new-array v2, v2, [Ljava/lang/Object;

    .line 23
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    invoke-static {}, Lse;->c()Lse;

    .line 29
    move-result-object v0

    .line 30
    sget-object v1, Lcom/autonavi/amapauto/jni/AutoCarAppFocusManager;->sOnAutoAppFocusOwnershipCallback:Lcom/autonavi/amapauto/jni/AutoCarAppFocusManager$d;

    .line 32
    invoke-virtual {v0, p0, v1}, Lse;->requestAppFocus(ILcom/autonavi/amapauto/jni/AutoCarAppFocusManager$d;)V

    .line 35
    return-void
.end method

.method public static native notifyAppFocusChange(IIZ)V
.end method

.method public static native notifyRequestAppFocus(IZ)V
.end method
