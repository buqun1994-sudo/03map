.class public abstract Lsq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqw0;


# instance fields
.field public a:Lzp0;

.field public b:Ljava/util/Map;

.field public c:Ljava/util/Map;

.field public d:Lvq0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lzp0;->d:Lzp0;

    .line 6
    iput-object v0, p0, Lsq0;->a:Lzp0;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    iput-object v0, p0, Lsq0;->b:Ljava/util/Map;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    iput-object v0, p0, Lsq0;->c:Ljava/util/Map;

    .line 22
    sget-object v0, Lvq0;->c:Lvq0;

    .line 24
    iput-object v0, p0, Lsq0;->d:Lvq0;

    .line 26
    return-void
.end method


# virtual methods
.method public a(Lzp0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsq0;->a:Lzp0;

    .line 3
    return-void
.end method

.method public b(Lvq0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsq0;->d:Lvq0;

    .line 3
    return-void
.end method

.method public abstract c()Lvq0;
.end method

.method public d()Lzp0;
    .locals 1

    .line 1
    iget-object v0, p0, Lsq0;->a:Lzp0;

    .line 3
    return-object v0
.end method
