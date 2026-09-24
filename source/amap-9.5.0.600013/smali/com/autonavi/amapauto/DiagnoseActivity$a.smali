.class public Lcom/autonavi/amapauto/DiagnoseActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/amapauto/DiagnoseActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/autonavi/amapauto/DiagnoseActivity$a;->a:Lcom/autonavi/amapauto/DiagnoseActivity;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 1
    const p1, 0x7f080153

    .line 4
    if-ne p2, p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/autonavi/amapauto/DiagnoseActivity$a;->a:Lcom/autonavi/amapauto/DiagnoseActivity;

    .line 8
    const/4 p2, 0x1

    .line 9
    invoke-static {p1, p2}, Lcom/autonavi/amapauto/DiagnoseActivity;->m(Lcom/autonavi/amapauto/DiagnoseActivity;I)I

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const p1, 0x7f080154

    .line 16
    if-ne p2, p1, :cond_1

    .line 18
    iget-object p1, p0, Lcom/autonavi/amapauto/DiagnoseActivity$a;->a:Lcom/autonavi/amapauto/DiagnoseActivity;

    .line 20
    const/4 p2, 0x2

    .line 21
    invoke-static {p1, p2}, Lcom/autonavi/amapauto/DiagnoseActivity;->m(Lcom/autonavi/amapauto/DiagnoseActivity;I)I

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const p1, 0x7f080155

    .line 28
    if-ne p2, p1, :cond_2

    .line 30
    iget-object p1, p0, Lcom/autonavi/amapauto/DiagnoseActivity$a;->a:Lcom/autonavi/amapauto/DiagnoseActivity;

    .line 32
    const/4 p2, 0x3

    .line 33
    invoke-static {p1, p2}, Lcom/autonavi/amapauto/DiagnoseActivity;->m(Lcom/autonavi/amapauto/DiagnoseActivity;I)I

    .line 36
    :cond_2
    :goto_0
    return-void
.end method
