.class public Lyi0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyi0;->f(Lyi0$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lyi0$d;

.field public final synthetic b:Lyi0;


# direct methods
.method public constructor <init>(Lyi0;Lyi0$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyi0$c;->b:Lyi0;

    .line 3
    iput-object p2, p0, Lyi0$c;->a:Lyi0$d;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lyi0$c;->a:Lyi0$d;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lyi0$d;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    :cond_0
    :goto_0
    return-void
.end method
