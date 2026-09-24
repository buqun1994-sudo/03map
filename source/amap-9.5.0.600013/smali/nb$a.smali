.class public Lnb$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnb;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lnb;


# direct methods
.method public constructor <init>(Lnb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnb$a;->a:Lnb;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lco;->m:Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo;

    .line 4
    iget-object v0, p0, Lnb$a;->a:Lnb;

    .line 6
    invoke-static {v0}, Lnb;->a(Lnb;)Lcr;

    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lnb$a;->a:Lnb;

    .line 14
    invoke-static {v0}, Lnb;->a(Lnb;)Lcr;

    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Lcr;->c()V

    .line 21
    :cond_0
    invoke-static {}, Lco;->e()V

    .line 24
    iget-object v0, p0, Lnb$a;->a:Lnb;

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Lnb;->M(Z)V

    .line 30
    return-void
.end method
