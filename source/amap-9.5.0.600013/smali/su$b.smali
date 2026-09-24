.class public Lsu$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsu$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lsu;


# direct methods
.method public constructor <init>(Lsu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsu$b;->a:Lsu;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const-string v1, "InputMethodWrapper"

    .line 9
    const-string v2, "updateContent content:{?}"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, Lsu$b;->a:Lsu;

    .line 16
    invoke-static {v0}, Lsu;->b(Lsu;)Llh;

    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lsu$b;->a:Lsu;

    .line 24
    invoke-static {v0}, Lsu;->b(Lsu;)Llh;

    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lsu$b;->a:Lsu;

    .line 30
    invoke-static {v1}, Lsu;->b(Lsu;)Llh;

    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    .line 37
    move-result v1

    .line 38
    invoke-virtual {v0, v1}, Llh;->e(I)I

    .line 41
    move-result v0

    .line 42
    invoke-static {p1, v0}, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard;->sendSoftInputContent(Ljava/lang/String;I)V

    .line 45
    :cond_0
    return-void
.end method
