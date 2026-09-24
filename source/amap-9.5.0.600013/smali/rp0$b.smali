.class public Lrp0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrp0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lvq0;

.field public b:Lxp0;

.field public c:Lzw0;

.field public d:Z

.field public e:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lvq0;->c:Lvq0;

    .line 6
    iput-object v0, p0, Lrp0$b;->a:Lvq0;

    .line 8
    sget-object v0, Lxp0;->d:Lxp0;

    .line 10
    iput-object v0, p0, Lrp0$b;->b:Lxp0;

    .line 12
    sget-object v0, Lzw0;->b:Lzw0;

    .line 14
    iput-object v0, p0, Lrp0$b;->c:Lzw0;

    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lrp0$b;->d:Z

    .line 19
    new-instance v0, Ljava/util/HashMap;

    .line 21
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    iput-object v0, p0, Lrp0$b;->e:Ljava/util/Map;

    .line 26
    return-void
.end method


# virtual methods
.method public a(Lxp0;)Lrp0$b;
    .locals 2

    .line 1
    iput-object p1, p0, Lrp0$b;->b:Lxp0;

    .line 3
    const-string v0, "rt"

    .line 5
    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Lrp0$b;->e:Ljava/util/Map;

    .line 9
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, p0, Lrp0$b;->e:Ljava/util/Map;

    .line 15
    invoke-virtual {p1}, Lxp0;->toString()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :goto_0
    return-object p0
.end method

.method public b(Lvq0;)Lrp0$b;
    .locals 2

    .line 1
    iput-object p1, p0, Lrp0$b;->a:Lvq0;

    .line 3
    const-string v0, "ver"

    .line 5
    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Lrp0$b;->e:Ljava/util/Map;

    .line 9
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Lvq0;->a()F

    .line 16
    move-result p1

    .line 17
    sget-object v1, Lvq0;->g:Lvq0;

    .line 19
    invoke-virtual {v1}, Lvq0;->a()F

    .line 22
    move-result v1

    .line 23
    cmpg-float p1, p1, v1

    .line 25
    if-gtz p1, :cond_1

    .line 27
    iget-object p1, p0, Lrp0$b;->e:Ljava/util/Map;

    .line 29
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object p1, p0, Lrp0$b;->e:Ljava/util/Map;

    .line 35
    iget-object v1, p0, Lrp0$b;->a:Lvq0;

    .line 37
    invoke-virtual {v1}, Lvq0;->toString()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :goto_0
    return-object p0
.end method

.method public c()Lvq0;
    .locals 1

    .line 1
    iget-object v0, p0, Lrp0$b;->a:Lvq0;

    .line 3
    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lrp0$b;->e:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 9
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "Params{version="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lrp0$b;->a:Lvq0;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", responseType="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object v1, p0, Lrp0$b;->b:Lxp0;

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", rgeoLanguage="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v1, p0, Lrp0$b;->c:Lzw0;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", samsungSkyhookQ="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-boolean v1, p0, Lrp0$b;->d:Z

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ", paramsMap="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v1, p0, Lrp0$b;->e:Ljava/util/Map;

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    const/16 v1, 0x7d

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method
