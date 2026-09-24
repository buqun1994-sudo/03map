.class public Lc7$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lc7;


# direct methods
.method public constructor <init>(Lc7;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc7$b;->a:Lc7;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v0, 0x3

    .line 4
    if-eq p1, v0, :cond_0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lc7$b;->a:Lc7;

    .line 9
    invoke-static {p1}, Lc7;->a(Lc7;)V

    .line 12
    :goto_0
    return-void
.end method
