.class public abstract Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public static synthetic a(Ljava/lang/String;Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;)Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$c;->g(Ljava/lang/String;Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;)Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Ljava/io/InputStream;Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;)Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$c;->f(Ljava/io/InputStream;Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;)Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static c(Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;Lorg/w3c/dom/Element;)V
    .locals 2

    .line 1
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 12
    invoke-static {p0, p1, p2}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$c;->d(Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;Lorg/w3c/dom/Element;)V

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p2, p0}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$c;->e(Lorg/w3c/dom/Element;Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;)Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;

    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_1

    .line 22
    invoke-interface {p1, p0}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;->a(Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;)V

    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method public static d(Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;Lorg/w3c/dom/Element;)V
    .locals 1

    .line 1
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;->access$300(Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;Ljava/lang/String;)Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;

    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_0

    .line 11
    new-instance p0, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$a;

    .line 13
    invoke-direct {p0, p2}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$a;-><init>(Lorg/w3c/dom/Element;)V

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v0, "name"

    .line 19
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    .line 26
    move-result-object p2

    .line 27
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 34
    move-result-object p2

    .line 35
    invoke-interface {p0, v0, p2}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :goto_0
    invoke-interface {p1, p0}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;->a(Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;)V

    .line 41
    return-void
.end method

.method public static e(Lorg/w3c/dom/Element;Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;)Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "readXmlByDOM: parseElement="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;->access$000(Ljava/lang/String;)V

    .line 25
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    invoke-static {p1, v0}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;->access$300(Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;Ljava/lang/String;)Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;

    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x0

    .line 34
    if-nez v0, :cond_0

    .line 36
    return-object v1

    .line 37
    :cond_0
    invoke-static {p0, v0}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$c;->h(Lorg/w3c/dom/Element;Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;)V

    .line 40
    invoke-interface {v0}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;->c()Z

    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    const-string v0, "readXmlByDOM: ignoredItem="

    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 67
    invoke-static {p0}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;->access$000(Ljava/lang/String;)V

    .line 70
    return-object v1

    .line 71
    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 74
    move-result-object p0

    .line 75
    const/4 v1, 0x0

    .line 76
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 79
    move-result v2

    .line 80
    if-ge v1, v2, :cond_3

    .line 82
    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 85
    move-result-object v2

    .line 86
    instance-of v3, v2, Lorg/w3c/dom/Element;

    .line 88
    if-nez v3, :cond_2

    .line 90
    goto :goto_1

    .line 91
    :cond_2
    check-cast v2, Lorg/w3c/dom/Element;

    .line 93
    invoke-static {p1, v0, v2}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$c;->c(Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;Lorg/w3c/dom/Element;)V

    .line 96
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 98
    goto :goto_0

    .line 99
    :cond_3
    return-object v0
.end method

.method public static f(Ljava/io/InputStream;Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;)Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0, p1}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$c;->e(Lorg/w3c/dom/Element;Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;)Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;

    .line 20
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return-object p0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method public static g(Ljava/lang/String;Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;)Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    .line 3
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :try_start_1
    invoke-static {v0, p1}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$c;->f(Ljava/io/InputStream;Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;)Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;

    .line 9
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 13
    return-object p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 18
    goto :goto_0

    .line 19
    :catchall_1
    move-exception p1

    .line 20
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 23
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;->access$000(Ljava/lang/String;)V

    .line 32
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method public static h(Lorg/w3c/dom/Element;Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 5
    move-result-object v1

    .line 6
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    .line 9
    move-result v1

    .line 10
    if-ge v0, v1, :cond_0

    .line 12
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    const-string v3, "readXmlByDOM: attr nodeName="

    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string v3, ", nodeValue="

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v2

    .line 53
    invoke-static {v2}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;->access$000(Ljava/lang/String;)V

    .line 56
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 59
    move-result-object v2

    .line 60
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    invoke-interface {p1, v2, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    add-int/lit8 v0, v0, 0x1

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method
