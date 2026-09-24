.class public Ldz$a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldz$a;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ldz$a;


# direct methods
.method public constructor <init>(Ldz$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldz$a$d;->a:Ldz$a;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Ldz$a$d;->a:Ldz$a;

    .line 3
    invoke-static {v0}, Ldz$a;->a(Ldz$a;)V

    .line 6
    :goto_0
    iget-object v0, p0, Ldz$a$d;->a:Ldz$a;

    .line 8
    invoke-static {v0}, Ldz$a;->b(Ldz$a;)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    :try_start_0
    iget-object v0, p0, Ldz$a$d;->a:Ldz$a;

    .line 16
    invoke-static {v0}, Ldz$a;->c(Ldz$a;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method
