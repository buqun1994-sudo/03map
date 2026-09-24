.class public Lcom/autonavi/amapauto/DiagnoseActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/DiagnoseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/amapauto/DiagnoseActivity;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/DiagnoseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/DiagnoseActivity$b;->a:Lcom/autonavi/amapauto/DiagnoseActivity;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    packed-switch p1, :pswitch_data_0

    .line 8
    :pswitch_0
    goto :goto_0

    .line 9
    :pswitch_1
    iget-object p1, p0, Lcom/autonavi/amapauto/DiagnoseActivity$b;->a:Lcom/autonavi/amapauto/DiagnoseActivity;

    .line 11
    invoke-static {p1}, Lcom/autonavi/amapauto/DiagnoseActivity;->d(Lcom/autonavi/amapauto/DiagnoseActivity;)V

    .line 14
    goto :goto_0

    .line 15
    :pswitch_2
    iget-object p1, p0, Lcom/autonavi/amapauto/DiagnoseActivity$b;->a:Lcom/autonavi/amapauto/DiagnoseActivity;

    .line 17
    invoke-static {p1}, Lcom/autonavi/amapauto/DiagnoseActivity;->g(Lcom/autonavi/amapauto/DiagnoseActivity;)V

    .line 20
    goto :goto_0

    .line 21
    :pswitch_3
    iget-object p1, p0, Lcom/autonavi/amapauto/DiagnoseActivity$b;->a:Lcom/autonavi/amapauto/DiagnoseActivity;

    .line 23
    invoke-static {p1}, Lcom/autonavi/amapauto/DiagnoseActivity;->f(Lcom/autonavi/amapauto/DiagnoseActivity;)V

    .line 26
    goto :goto_0

    .line 27
    :pswitch_4
    iget-object p1, p0, Lcom/autonavi/amapauto/DiagnoseActivity$b;->a:Lcom/autonavi/amapauto/DiagnoseActivity;

    .line 29
    invoke-static {p1}, Lcom/autonavi/amapauto/DiagnoseActivity;->n(Lcom/autonavi/amapauto/DiagnoseActivity;)V

    .line 32
    goto :goto_0

    .line 33
    :pswitch_5
    iget-object p1, p0, Lcom/autonavi/amapauto/DiagnoseActivity$b;->a:Lcom/autonavi/amapauto/DiagnoseActivity;

    .line 35
    invoke-static {p1}, Lcom/autonavi/amapauto/DiagnoseActivity;->o(Lcom/autonavi/amapauto/DiagnoseActivity;)V

    .line 38
    goto :goto_0

    .line 39
    :pswitch_6
    iget-object p1, p0, Lcom/autonavi/amapauto/DiagnoseActivity$b;->a:Lcom/autonavi/amapauto/DiagnoseActivity;

    .line 41
    invoke-static {p1}, Lcom/autonavi/amapauto/DiagnoseActivity;->c(Lcom/autonavi/amapauto/DiagnoseActivity;)V

    .line 44
    goto :goto_0

    .line 45
    :pswitch_7
    iget-object p1, p0, Lcom/autonavi/amapauto/DiagnoseActivity$b;->a:Lcom/autonavi/amapauto/DiagnoseActivity;

    .line 47
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 50
    goto :goto_0

    .line 51
    :pswitch_8
    iget-object p1, p0, Lcom/autonavi/amapauto/DiagnoseActivity$b;->a:Lcom/autonavi/amapauto/DiagnoseActivity;

    .line 53
    invoke-static {p1}, Lcom/autonavi/amapauto/DiagnoseActivity;->e(Lcom/autonavi/amapauto/DiagnoseActivity;)V

    .line 56
    :goto_0
    return-void

    .line 57
    :pswitch_data_0
    .packed-switch 0x7f08006a
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
