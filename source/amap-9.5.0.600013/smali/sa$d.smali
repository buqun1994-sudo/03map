.class public Lsa$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lsa$d;->a:Lsa;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lsa$d;->a:Lsa;

    .line 3
    invoke-virtual {p1}, Lsa;->f()V

    .line 6
    iget-object p1, p0, Lsa$d;->a:Lsa;

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {p1, v0}, Lsa;->c(Lsa;Z)Z

    .line 12
    return-void
.end method
