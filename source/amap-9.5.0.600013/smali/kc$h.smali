.class public Lkc$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field public final synthetic a:Lkc;


# direct methods
.method public constructor <init>(Lkc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkc$h;->a:Lkc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkc;Lkc$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lkc$h;-><init>(Lkc;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lkc$h;->a:Lkc;

    .line 3
    const/16 v1, 0x64

    .line 5
    invoke-static {v0, v1}, Lkc;->c(Lkc;I)V

    .line 8
    iget-object v0, p0, Lkc$h;->a:Lkc;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v0, v1}, Lkc;->f(Lkc;Z)Z

    .line 14
    iget-object v0, p0, Lkc$h;->a:Lkc;

    .line 16
    invoke-virtual {v0}, Lkc;->t()V

    .line 19
    return-void
.end method
