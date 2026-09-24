.class public Ldz$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldz$a;->k(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:J

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:[Ljava/lang/Object;

.field public final synthetic e:Ldz$a;


# direct methods
.method public constructor <init>(Ldz$a;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldz$a$c;->e:Ldz$a;

    .line 3
    iput-object p2, p0, Ldz$a$c;->a:Ljava/lang/String;

    .line 5
    iput-wide p3, p0, Ldz$a$c;->b:J

    .line 7
    iput-object p5, p0, Ldz$a$c;->c:Ljava/lang/String;

    .line 9
    iput-object p6, p0, Ldz$a$c;->d:[Ljava/lang/Object;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Ldz$a$c;->e:Ldz$a;

    .line 3
    invoke-static {v0}, Ldz$a;->a(Ldz$a;)V

    .line 6
    invoke-static {}, Ldz;->c()Ldz$b;

    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Ldz$b;->a(Ldz$b;)Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 16
    invoke-static {}, Ldz;->c()Ldz$b;

    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Ldz$a$c;->a:Ljava/lang/String;

    .line 22
    iget-wide v3, p0, Ldz$a$c;->b:J

    .line 24
    iget-object v5, p0, Ldz$a$c;->c:Ljava/lang/String;

    .line 26
    iget-object v6, p0, Ldz$a$c;->d:[Ljava/lang/Object;

    .line 28
    invoke-virtual/range {v1 .. v6}, Ldz$b;->e(Ljava/lang/String;JLjava/lang/String;[Ljava/lang/Object;)V

    .line 31
    :cond_0
    return-void
.end method
