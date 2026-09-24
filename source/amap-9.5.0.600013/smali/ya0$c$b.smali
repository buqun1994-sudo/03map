.class public Lya0$c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lya0$c;->a(ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lya0$c;


# direct methods
.method public constructor <init>(Lya0$c;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lya0$c$b;->b:Lya0$c;

    .line 3
    iput p2, p0, Lya0$c$b;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lya0$c$b;->b:Lya0$c;

    .line 3
    iget v1, p0, Lya0$c$b;->a:I

    .line 5
    invoke-virtual {v0, v1}, Lya0$c;->d(I)V

    .line 8
    return-void
.end method
