.class public Lz90$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz90;->D(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lz90;


# direct methods
.method public constructor <init>(Lz90;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz90$b;->b:Lz90;

    .line 3
    iput-object p2, p0, Lz90$b;->a:Landroid/content/Context;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    new-instance v0, Lyc;

    .line 3
    invoke-direct {v0}, Lyc;-><init>()V

    .line 6
    iget-object v1, p0, Lz90$b;->a:Landroid/content/Context;

    .line 8
    invoke-virtual {v0, v1}, Lyc;->d(Landroid/content/Context;)V

    .line 11
    return-void
.end method
