.class Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final synthetic b:Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity$2;->b:Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity$2;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity$2;->a:Landroid/content/Context;

    const-class v1, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/wireless/security/open/middletier/MidBridge;->isTopActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity$2;->b:Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;

    invoke-static {v0}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->f(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;)V

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity$2;->b:Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;

    invoke-static {v0}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->h(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;)I

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity$2;->b:Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;

    invoke-static {v0}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->g(Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity$2;->b:Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;

    iget-object v1, v0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->b:Landroid/os/Handler;

    iget v0, v0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/ExtContainerActivity;->y:I

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
