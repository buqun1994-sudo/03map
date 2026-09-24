.class public final synthetic Llx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lmx;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lmx;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llx;->a:Lmx;

    iput p2, p0, Llx;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Llx;->a:Lmx;

    iget v1, p0, Llx;->b:I

    invoke-static {v0, v1}, Lmx;->u(Lmx;I)V

    return-void
.end method
