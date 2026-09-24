.class public Lem0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lem0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lem0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/ref/SoftReference;


# direct methods
.method public constructor <init>(Lem0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/SoftReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lem0$a;->a:Ljava/lang/ref/SoftReference;

    .line 11
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "WidgetHomeCompanyChecker"

    .line 6
    const-string v3, "loadFailure !!"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v1, p0, Lem0$a;->a:Ljava/lang/ref/SoftReference;

    .line 13
    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lem0;

    .line 21
    if-eqz v1, :cond_0

    .line 23
    const-string v3, "loadFailure notifyCheckSuccess !!"

    .line 25
    new-array v4, v0, [Ljava/lang/Object;

    .line 27
    invoke-static {v2, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    invoke-static {v1, v0}, Lem0;->b(Lem0;Z)V

    .line 33
    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p1, v1, v2

    .line 7
    const-string v3, "WidgetHomeCompanyChecker"

    .line 9
    const-string v4, "loadSuccess bitmap:{?}"

    .line 11
    invoke-static {v3, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-object v1, p0, Lem0$a;->a:Ljava/lang/ref/SoftReference;

    .line 16
    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lem0;

    .line 24
    if-eqz v1, :cond_0

    .line 26
    new-array v4, v0, [Ljava/lang/Object;

    .line 28
    aput-object p1, v4, v2

    .line 30
    const-string v2, "loadSuccess notifyCheckSuccess bitmap:{?}"

    .line 32
    invoke-static {v3, v2, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    invoke-static {v1, p1}, Lem0;->a(Lem0;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 38
    invoke-static {v1, v0}, Lem0;->b(Lem0;Z)V

    .line 41
    :cond_0
    return-void
.end method
