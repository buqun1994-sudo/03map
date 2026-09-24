.class public Lbh$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbh;->m()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/io/File;

.field public final synthetic b:Lbh;


# direct methods
.method public constructor <init>(Lbh;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbh$a;->b:Lbh;

    .line 3
    iput-object p2, p0, Lbh$a;->a:Ljava/io/File;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lbh$a;->a:Ljava/io/File;

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v5, Lbh$e;

    .line 12
    iget-object v0, p0, Lbh$a;->b:Lbh;

    .line 14
    invoke-direct {v5, v0}, Lbh$e;-><init>(Lbh;)V

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    iget-object v1, p0, Lbh$a;->a:Ljava/io/File;

    .line 24
    new-instance v2, Lbh$a$a;

    .line 26
    invoke-direct {v2, p0, v5, v0}, Lbh$a$a;-><init>(Lbh$a;Lbh$e;Ljava/lang/StringBuilder;)V

    .line 29
    invoke-static {v1, v2}, Lls;->c(Ljava/io/File;Lls$a;)V

    .line 32
    iget-object v1, p0, Lbh$a;->a:Ljava/io/File;

    .line 34
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    iput-object v2, v5, Lbh$e;->e:Ljava/lang/String;

    .line 43
    iget-object v1, p0, Lbh$a;->b:Lbh;

    .line 45
    const/4 v3, 0x0

    .line 46
    const/4 v4, 0x1

    .line 47
    const/4 v6, 0x0

    .line 48
    const/4 v7, 0x0

    .line 49
    const/4 v8, 0x0

    .line 50
    invoke-virtual/range {v1 .. v8}, Lbh;->N(Ljava/lang/String;Ljava/lang/Throwable;ZLbh$e;Ljava/lang/Thread;ZZ)V

    .line 53
    return-void
.end method
