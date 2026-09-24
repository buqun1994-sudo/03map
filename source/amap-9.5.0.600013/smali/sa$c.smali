.class public Lsa$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsa;->d(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lsa;


# direct methods
.method public constructor <init>(Lsa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsa$c;->a:Lsa;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lsa$c;->a:Lsa;

    .line 3
    invoke-static {p1}, Lsa;->b(Lsa;)Landroid/widget/ScrollView;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_1

    .line 9
    if-eqz p2, :cond_0

    .line 11
    iget-object p1, p0, Lsa$c;->a:Lsa;

    .line 13
    invoke-static {p1}, Lsa;->b(Lsa;)Landroid/widget/ScrollView;

    .line 16
    move-result-object p1

    .line 17
    const/16 p2, 0x8

    .line 19
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, Lsa$c;->a:Lsa;

    .line 25
    invoke-static {p1}, Lsa;->b(Lsa;)Landroid/widget/ScrollView;

    .line 28
    move-result-object p1

    .line 29
    const/4 p2, 0x0

    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 33
    :cond_1
    :goto_0
    return-void
.end method
