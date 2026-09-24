.class public Lf$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf$c;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:[Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:J

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lf$c;


# direct methods
.method public constructor <init>(Lf$c;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf$c$a;->f:Lf$c;

    .line 3
    iput-object p2, p0, Lf$c$a;->a:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lf$c$a;->b:[Ljava/lang/Object;

    .line 7
    iput-object p4, p0, Lf$c$a;->c:Ljava/lang/String;

    .line 9
    iput-wide p5, p0, Lf$c$a;->d:J

    .line 11
    iput-object p7, p0, Lf$c$a;->e:Ljava/lang/String;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lf$c$a;->a:Ljava/lang/String;

    .line 8
    iget-object v2, p0, Lf$c$a;->b:[Ljava/lang/Object;

    .line 10
    invoke-static {v0, v1, v2}, Lf;->f(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    iget-object v1, p0, Lf$c$a;->c:Ljava/lang/String;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-static {}, Ljl;->e()Ljl;

    .line 25
    move-result-object v3

    .line 26
    iget-object v4, p0, Lf$c$a;->c:Ljava/lang/String;

    .line 28
    iget-wide v5, p0, Lf$c$a;->d:J

    .line 30
    iget-object v7, p0, Lf$c$a;->e:Ljava/lang/String;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v8

    .line 36
    invoke-virtual/range {v3 .. v8}, Ljl;->b(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method
