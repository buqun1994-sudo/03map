.class public abstract Landroidx/media/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media/a$b;,
        Landroidx/media/a$a;,
        Landroidx/media/a$c;,
        Landroidx/media/a$d;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Landroidx/media/a$d;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Landroidx/media/a$b;

    .line 3
    invoke-direct {v0, p0, p1}, Landroidx/media/a$b;-><init>(Landroid/content/Context;Landroidx/media/a$d;)V

    .line 6
    return-object v0
.end method

.method public static b(Ljava/lang/Object;Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    check-cast p0, Landroid/service/media/MediaBrowserService;

    .line 3
    invoke-virtual {p0, p1}, Landroid/service/media/MediaBrowserService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p0, Landroid/service/media/MediaBrowserService;

    .line 3
    invoke-virtual {p0}, Landroid/service/media/MediaBrowserService;->onCreate()V

    .line 6
    return-void
.end method
