.class public Lh30$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh30;->j(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lh30;


# direct methods
.method public constructor <init>(Lh30;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh30$a;->b:Lh30;

    .line 3
    iput-object p2, p0, Lh30$a;->a:Landroid/content/Context;

    .line 5
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lh30$a;->b:Lh30;

    .line 3
    iget-object v1, p0, Lh30$a;->a:Landroid/content/Context;

    .line 5
    invoke-static {v0, v1}, Lh30;->a(Lh30;Landroid/content/Context;)V

    .line 8
    return-void
.end method
