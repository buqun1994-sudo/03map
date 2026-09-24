.class public Ltm$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltm;->e(Landroid/content/Context;Lsm;Lwd;II)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lsm;

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lsm;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltm$a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Ltm$a;->b:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Ltm$a;->c:Lsm;

    .line 7
    iput p4, p0, Ltm$a;->d:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public a()Ltm$e;
    .locals 4

    .line 1
    iget-object v0, p0, Ltm$a;->a:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Ltm$a;->b:Landroid/content/Context;

    .line 5
    iget-object v2, p0, Ltm$a;->c:Lsm;

    .line 7
    iget v3, p0, Ltm$a;->d:I

    .line 9
    invoke-static {v0, v1, v2, v3}, Ltm;->c(Ljava/lang/String;Landroid/content/Context;Lsm;I)Ltm$e;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ltm$a;->a()Ltm$e;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
