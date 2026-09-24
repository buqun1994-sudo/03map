.class public Lf20$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf20$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "NanoHTTPD-"

    .line 6
    const-string v1, ""

    .line 8
    invoke-static {v0, v1, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lf20$h;->a:Ljava/io/File;

    .line 14
    new-instance v0, Ljava/io/FileOutputStream;

    .line 16
    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 19
    iput-object v0, p0, Lf20$h;->b:Ljava/io/OutputStream;

    .line 21
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf20$h;->b:Ljava/io/OutputStream;

    .line 3
    invoke-static {v0}, Lf20;->a(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lf20$h;->a:Ljava/io/File;

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    return-void

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    new-array v0, v0, [Ljava/lang/Object;

    .line 18
    const-string v1, "DefaultTempFile"

    .line 20
    const-string v2, "delete-----------> "

    .line 22
    invoke-static {v1, v2, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    new-instance v0, Ljava/lang/Exception;

    .line 27
    const-string v1, "could not delete temporary file"

    .line 29
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 32
    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf20$h;->a:Ljava/io/File;

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
