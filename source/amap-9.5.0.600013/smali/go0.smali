.class public abstract Lgo0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 3
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 6
    sput-object v0, Lgo0;->a:Landroid/view/WindowManager$LayoutParams;

    .line 8
    return-void
.end method

.method public static a()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 1
    sget-object v0, Lgo0;->a:Landroid/view/WindowManager$LayoutParams;

    .line 3
    return-object v0
.end method
