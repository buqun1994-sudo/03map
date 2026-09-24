.class public Lbi$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbi;->u(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    invoke-static {}, Lbi;->b()I

    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x0

    .line 6
    if-eqz p1, :cond_1

    .line 8
    const/4 v0, 0x1

    .line 9
    if-eq p1, v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p2}, Lbi;->d(Z)V

    .line 15
    invoke-static {}, Lbi;->l()V

    .line 18
    invoke-static {}, Lbi;->g()V

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-static {p2}, Lbi;->d(Z)V

    .line 25
    invoke-static {}, Lbi;->l()V

    .line 28
    :goto_0
    return-void
.end method
