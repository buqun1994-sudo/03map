.class public Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "name"

    .line 6
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 16
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$a;->a:Ljava/lang/String;

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$a;->a:Ljava/lang/String;

    .line 29
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$a;->b:Ljava/lang/String;

    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    const-string v0, "BaseItemBuilder name "

    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object v0, p0, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$a;->a:Ljava/lang/String;

    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v0, ", value="

    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object v0, p0, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$a;->b:Ljava/lang/String;

    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    invoke-static {p1}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;->access$000(Ljava/lang/String;)V

    .line 75
    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lmo0;->a(Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "BaseItemBuilder setTag "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, "="

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;->access$000(Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$a;->a:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$a;->b:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public synthetic c()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lmo0;->b(Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;)Z

    move-result v0

    return v0
.end method
