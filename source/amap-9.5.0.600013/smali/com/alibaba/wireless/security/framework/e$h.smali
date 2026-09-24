.class Lcom/alibaba/wireless/security/framework/e$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wireless/security/framework/e;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/alibaba/wireless/security/framework/e;


# direct methods
.method public constructor <init>(Lcom/alibaba/wireless/security/framework/e;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/wireless/security/framework/e$h;->b:Lcom/alibaba/wireless/security/framework/e;

    iput-object p2, p0, Lcom/alibaba/wireless/security/framework/e$h;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/e$h;->b:Lcom/alibaba/wireless/security/framework/e;

    iget-object v1, p0, Lcom/alibaba/wireless/security/framework/e$h;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const v1, 0x18753

    const/4 v2, 0x4

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    invoke-static/range {v0 .. v7}, Lcom/alibaba/wireless/security/framework/e;->a(Lcom/alibaba/wireless/security/framework/e;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
