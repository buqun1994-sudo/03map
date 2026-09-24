.class public Lcom/autonavi/amapauto/jni/agroup/AIMGroupServiceNative;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static aimService:Lzp;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkAimServiceInstance()V
    .locals 4

    .line 1
    :try_start_0
    const-string v0, "com.autonavi.amapauto.agroup.aimsdk.AIMService"

    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Ld00;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    const/4 v1, 0x0

    .line 17
    new-array v1, v1, [Ljava/lang/Object;

    .line 19
    const-string v2, "AIMGroupServiceNative"

    .line 21
    const-string v3, "[initAlinkClient]"

    .line 23
    invoke-static {v2, v3, v0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 26
    :goto_0
    return-void
.end method

.method public static clearConversationUnreadMessageCount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static createGroupConversation(Lcom/autonavi/amapauto/agroup/aimsdk/AIMGroupCreateParam;)V
    .locals 0

    return-void
.end method

.method public static deleteMessages(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public static downloadAudio(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static getConversation(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static getConversationUnreadMessageCount(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static hideConversation(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static loadConversationsWithCid(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public static loadListPreviousMsgs(Ljava/lang/String;JI)V
    .locals 0

    return-void
.end method

.method public static login(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/jni/agroup/AIMGroupServiceNative;->checkAimServiceInstance()V

    .line 4
    return-void
.end method

.method public static logout(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/jni/agroup/AIMGroupServiceNative;->checkAimServiceInstance()V

    .line 4
    return-void
.end method

.method public static native onAIMEventListener(ILjava/lang/String;)V
.end method

.method public static onAuthTokenGotResultNotify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static native onAuthTokenRequest(Ljava/lang/String;)V
.end method

.method public static sendAudio(Ljava/lang/String;Lcom/autonavi/amapauto/agroup/aimsdk/AIMAudioMessage;)V
    .locals 0

    return-void
.end method

.method public static setConversationActive(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static setIMConfig(Lcom/autonavi/amapauto/agroup/aimsdk/AIMConfig;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/jni/agroup/AIMGroupServiceNative;->checkAimServiceInstance()V

    .line 4
    return-void
.end method

.method public static updateMessageToRead(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
