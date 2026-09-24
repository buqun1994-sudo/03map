.class public Lsa$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsa;->g(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lsa;


# direct methods
.method public constructor <init>(Lsa;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsa$a;->b:Lsa;

    .line 3
    iput-object p2, p0, Lsa$a;->a:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsa$a;->b:Lsa;

    .line 3
    invoke-static {v0}, Lsa;->a(Lsa;)Landroid/widget/TextView;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lsa$a;->b:Lsa;

    .line 11
    invoke-static {v0}, Lsa;->a(Lsa;)Landroid/widget/TextView;

    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lsa$a;->a:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    :cond_0
    return-void
.end method
