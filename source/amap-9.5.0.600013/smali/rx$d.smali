.class public Lrx$d;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lrx;


# direct methods
.method public constructor <init>(Lrx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx$d;->a:Lrx;

    .line 3
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx$d;->a:Lrx;

    .line 3
    invoke-virtual {v0}, Lrx;->i()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lrx$d;->a:Lrx;

    .line 11
    invoke-virtual {v0}, Lrx;->b()V

    .line 14
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx$d;->a:Lrx;

    .line 3
    invoke-virtual {v0}, Lrx;->dismiss()V

    .line 6
    return-void
.end method
