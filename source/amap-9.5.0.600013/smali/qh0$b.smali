.class public Lqh0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lqh0;


# direct methods
.method public constructor <init>(Lqh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqh0$b;->a:Lqh0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lqh0$b;->a:Lqh0;

    .line 3
    invoke-virtual {v0}, Lqh0;->c()V

    .line 6
    return-void
.end method
