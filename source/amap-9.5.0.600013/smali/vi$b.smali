.class public Lvi$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvi;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lvi;


# direct methods
.method public constructor <init>(Lvi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvi$b;->a:Lvi;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lvi$b;->a:Lvi;

    .line 3
    invoke-static {v0}, Lvi;->h(Lvi;)[I

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lvi$b;->a:Lvi;

    .line 11
    invoke-static {v0}, Lvi;->i(Lvi;)V

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lvi$b;->a:Lvi;

    .line 17
    invoke-static {v0}, Lvi;->j(Lvi;)Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p0, Lvi$b;->a:Lvi;

    .line 25
    invoke-static {v0}, Lvi;->k(Lvi;)V

    .line 28
    :cond_1
    :goto_0
    return-void
.end method
