.class public Loy$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Loy;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Loy;


# direct methods
.method public constructor <init>(Loy;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loy$c;->b:Loy;

    .line 3
    iput-object p2, p0, Loy$c;->a:Landroid/content/Context;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Loy$c;->b:Loy;

    .line 3
    iget-object v1, p0, Loy$c;->a:Landroid/content/Context;

    .line 5
    invoke-static {v0, v1}, Loy;->r(Loy;Landroid/content/Context;)V

    .line 8
    return-void
.end method
