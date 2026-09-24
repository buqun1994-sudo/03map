.class public Lmh0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmh0$a$b;
    }
.end annotation


# static fields
.field public static d:Landroid/os/Handler;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/view/LayoutInflater;

.field public c:Ljava/lang/ref/SoftReference;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 10
    sput-object v0, Lmh0$a;->d:Landroid/os/Handler;

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lmh0$a;->a:Landroid/content/Context;

    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lmh0$a;->b:Landroid/view/LayoutInflater;

    .line 12
    return-void
.end method

.method public static synthetic a(Lmh0$a;Ljava/lang/CharSequence;ILmh0$a$b;ZZ)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lmh0$a;->f(Ljava/lang/CharSequence;ILmh0$a$b;ZZ)V

    .line 4
    return-void
.end method

.method public static synthetic b(Lmh0$a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lmh0$a;->a:Landroid/content/Context;

    .line 3
    return-object p0
.end method

.method public static synthetic c(Lmh0$a;)Landroid/view/LayoutInflater;
    .locals 0

    .line 1
    iget-object p0, p0, Lmh0$a;->b:Landroid/view/LayoutInflater;

    .line 3
    return-object p0
.end method

.method public static synthetic d(Lmh0$a;)Ljava/lang/ref/SoftReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lmh0$a;->c:Ljava/lang/ref/SoftReference;

    .line 3
    return-object p0
.end method

.method public static synthetic e(Lmh0$a;Ljava/lang/ref/SoftReference;)Ljava/lang/ref/SoftReference;
    .locals 0

    .line 1
    iput-object p1, p0, Lmh0$a;->c:Ljava/lang/ref/SoftReference;

    .line 3
    return-object p1
.end method


# virtual methods
.method public final f(Ljava/lang/CharSequence;ILmh0$a$b;ZZ)V
    .locals 9

    .line 1
    sget-object v0, Lmh0$a;->d:Landroid/os/Handler;

    .line 3
    new-instance v8, Lmh0$a$a;

    .line 5
    move-object v1, v8

    .line 6
    move-object v2, p0

    .line 7
    move v3, p4

    .line 8
    move-object v4, p1

    .line 9
    move v5, p2

    .line 10
    move-object v6, p3

    .line 11
    move v7, p5

    .line 12
    invoke-direct/range {v1 .. v7}, Lmh0$a$a;-><init>(Lmh0$a;ZLjava/lang/CharSequence;ILmh0$a$b;Z)V

    .line 15
    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    return-void
.end method
