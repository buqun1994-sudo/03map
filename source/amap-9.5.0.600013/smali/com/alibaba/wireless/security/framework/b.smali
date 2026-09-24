.class public Lcom/alibaba/wireless/security/framework/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/alibaba/wireless/security/framework/b;


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

.method public static a()Lcom/alibaba/wireless/security/framework/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/alibaba/wireless/security/framework/b;->a:Lcom/alibaba/wireless/security/framework/b;

    if-nez v0, :cond_1

    const-class v0, Lcom/alibaba/wireless/security/framework/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alibaba/wireless/security/framework/b;->a:Lcom/alibaba/wireless/security/framework/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/alibaba/wireless/security/framework/b;

    invoke-direct {v1}, Lcom/alibaba/wireless/security/framework/b;-><init>()V

    sput-object v1, Lcom/alibaba/wireless/security/framework/b;->a:Lcom/alibaba/wireless/security/framework/b;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/wireless/security/framework/b;->a:Lcom/alibaba/wireless/security/framework/b;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/alibaba/wireless/security/framework/e;)V
    .locals 0

    .line 2
    return-void
.end method
