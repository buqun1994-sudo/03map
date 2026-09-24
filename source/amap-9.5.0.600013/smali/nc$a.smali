.class public Lnc$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lnc;


# direct methods
.method public constructor <init>(Lnc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnc$a;->a:Lnc;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "BaseProcotolAction"

    .line 6
    const-string v2, "startDelayDestory remove"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lnc$a;->a:Lnc;

    .line 13
    const/16 v1, 0x2730

    .line 15
    invoke-virtual {v0, v1}, Lnc;->e(I)V

    .line 18
    return-void
.end method
