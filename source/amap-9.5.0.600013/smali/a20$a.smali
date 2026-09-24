.class public La20$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La20;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La20;


# direct methods
.method public constructor <init>(La20;)V
    .locals 0

    .line 1
    iput-object p1, p0, La20$a;->a:La20;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, La20$a;->a:La20;

    .line 3
    invoke-static {v0}, La20;->a(La20;)Landroid/hardware/display/DisplayManager;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, La20$a;->a:La20;

    .line 9
    iget-object v1, v1, La20;->k:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 11
    new-instance v2, Landroid/os/Handler;

    .line 13
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 19
    return-void
.end method
