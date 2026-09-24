.class public Lcom/autonavi/amapauto/DiagnoseActivity$d;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/DiagnoseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/amapauto/DiagnoseActivity;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/DiagnoseActivity;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/DiagnoseActivity$d;->a:Lcom/autonavi/amapauto/DiagnoseActivity;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 4
    iget v0, p1, Landroid/os/Message;->what:I

    .line 6
    const/4 v1, 0x1

    .line 7
    if-eq v0, v1, :cond_0

    .line 9
    const/4 v1, 0x3

    .line 10
    if-eq v0, v1, :cond_0

    .line 12
    const/4 v1, 0x5

    .line 13
    if-eq v0, v1, :cond_0

    .line 15
    const/4 v1, 0x7

    .line 16
    if-eq v0, v1, :cond_0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 21
    instance-of v0, p1, Ljava/lang/String;

    .line 23
    if-eqz v0, :cond_1

    .line 25
    check-cast p1, Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/autonavi/amapauto/DiagnoseActivity$d;->a:Lcom/autonavi/amapauto/DiagnoseActivity;

    .line 29
    invoke-static {v0}, Lcom/autonavi/amapauto/DiagnoseActivity;->k(Lcom/autonavi/amapauto/DiagnoseActivity;)Landroid/widget/TextView;

    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/autonavi/amapauto/DiagnoseActivity$d;->a:Lcom/autonavi/amapauto/DiagnoseActivity;

    .line 43
    invoke-static {v0}, Lcom/autonavi/amapauto/DiagnoseActivity;->k(Lcom/autonavi/amapauto/DiagnoseActivity;)Landroid/widget/TextView;

    .line 46
    move-result-object v0

    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lcom/autonavi/amapauto/DiagnoseActivity$d;->a:Lcom/autonavi/amapauto/DiagnoseActivity;

    .line 53
    invoke-static {v0}, Lcom/autonavi/amapauto/DiagnoseActivity;->k(Lcom/autonavi/amapauto/DiagnoseActivity;)Landroid/widget/TextView;

    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :cond_1
    iget-object p1, p0, Lcom/autonavi/amapauto/DiagnoseActivity$d;->a:Lcom/autonavi/amapauto/DiagnoseActivity;

    .line 62
    invoke-static {p1}, Lcom/autonavi/amapauto/DiagnoseActivity;->l(Lcom/autonavi/amapauto/DiagnoseActivity;)V

    .line 65
    :goto_0
    return-void
.end method
