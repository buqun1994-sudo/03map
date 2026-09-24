.class public Lrx$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lrx;


# direct methods
.method public constructor <init>(Lrx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx$c;->a:Lrx;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx$c;->a:Lrx;

    .line 3
    invoke-virtual {v0}, Lrx;->f()V

    .line 6
    return-void
.end method
