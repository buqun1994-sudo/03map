.class public Lcz$c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcz$c;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:[Ljava/lang/Object;

.field public final synthetic d:J

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcz$c;


# direct methods
.method public constructor <init>(Lcz$c;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;JLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcz$c$c;->f:Lcz$c;

    .line 3
    iput-object p2, p0, Lcz$c$c;->a:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcz$c$c;->b:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcz$c$c;->c:[Ljava/lang/Object;

    .line 9
    iput-wide p5, p0, Lcz$c$c;->d:J

    .line 11
    iput-object p7, p0, Lcz$c$c;->e:Ljava/lang/String;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcz$c$c;->f:Lcz$c;

    .line 3
    invoke-static {v0}, Lcz$c;->f(Lcz$c;)Lcz$c$g;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcz$c$c;->a:Ljava/lang/String;

    .line 9
    iget-object v2, p0, Lcz$c$c;->b:Ljava/lang/String;

    .line 11
    iget-object v3, p0, Lcz$c$c;->c:[Ljava/lang/Object;

    .line 13
    invoke-interface {v0, v1, v2, v3}, Lcz$c$g;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    move-result-object v9

    .line 17
    invoke-static {}, Lcz;->h()I

    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x4

    .line 22
    invoke-static {v0, v1}, Lcz;->s(II)Z

    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcz$c$c;->a:Ljava/lang/String;

    .line 30
    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    invoke-static {}, Ljl;->e()Ljl;

    .line 36
    move-result-object v4

    .line 37
    iget-object v5, p0, Lcz$c$c;->a:Ljava/lang/String;

    .line 39
    iget-wide v6, p0, Lcz$c$c;->d:J

    .line 41
    iget-object v8, p0, Lcz$c$c;->e:Ljava/lang/String;

    .line 43
    invoke-virtual/range {v4 .. v9}, Ljl;->b(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method
