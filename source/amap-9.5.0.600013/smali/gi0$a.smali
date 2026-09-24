.class public Lgi0$a;
.super Lwm$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgi0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lya0$c;


# direct methods
.method public constructor <init>(Lya0$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lwm$c;-><init>()V

    .line 4
    iput-object p1, p0, Lgi0$a;->a:Lya0$c;

    .line 6
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgi0$a;->a:Lya0$c;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lya0$c;->d(I)V

    .line 8
    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgi0$a;->a:Lya0$c;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lya0$c;->e(Landroid/graphics/Typeface;)V

    .line 8
    :cond_0
    return-void
.end method
