.class public Lcom/autonavi/amapauto/DiagnoseActivity$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/DiagnoseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/amapauto/DiagnoseActivity;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/DiagnoseActivity;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/DiagnoseActivity$c;->a:Lcom/autonavi/amapauto/DiagnoseActivity;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 4
    iget p1, p1, Landroid/os/Message;->what:I

    .line 6
    if-eqz p1, :cond_4

    .line 8
    const/4 v0, 0x2

    .line 9
    if-eq p1, v0, :cond_3

    .line 11
    const/4 v0, 0x4

    .line 12
    if-eq p1, v0, :cond_2

    .line 14
    const/4 v0, 0x6

    .line 15
    if-eq p1, v0, :cond_1

    .line 17
    const/16 v0, 0x8

    .line 19
    if-eq p1, v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/autonavi/amapauto/DiagnoseActivity$c;->a:Lcom/autonavi/amapauto/DiagnoseActivity;

    .line 24
    invoke-static {p1}, Lcom/autonavi/amapauto/DiagnoseActivity;->j(Lcom/autonavi/amapauto/DiagnoseActivity;)V

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object p1, p0, Lcom/autonavi/amapauto/DiagnoseActivity$c;->a:Lcom/autonavi/amapauto/DiagnoseActivity;

    .line 30
    invoke-static {p1}, Lcom/autonavi/amapauto/DiagnoseActivity;->i(Lcom/autonavi/amapauto/DiagnoseActivity;)V

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-object p1, p0, Lcom/autonavi/amapauto/DiagnoseActivity$c;->a:Lcom/autonavi/amapauto/DiagnoseActivity;

    .line 36
    invoke-static {p1}, Lcom/autonavi/amapauto/DiagnoseActivity;->h(Lcom/autonavi/amapauto/DiagnoseActivity;)V

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    iget-object p1, p0, Lcom/autonavi/amapauto/DiagnoseActivity$c;->a:Lcom/autonavi/amapauto/DiagnoseActivity;

    .line 42
    invoke-static {p1}, Lcom/autonavi/amapauto/DiagnoseActivity;->b(Lcom/autonavi/amapauto/DiagnoseActivity;)V

    .line 45
    goto :goto_0

    .line 46
    :cond_4
    iget-object p1, p0, Lcom/autonavi/amapauto/DiagnoseActivity$c;->a:Lcom/autonavi/amapauto/DiagnoseActivity;

    .line 48
    invoke-static {p1}, Lcom/autonavi/amapauto/DiagnoseActivity;->a(Lcom/autonavi/amapauto/DiagnoseActivity;)V

    .line 51
    :goto_0
    return-void
.end method
