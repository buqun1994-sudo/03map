.class public Lnf0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnf0;->c(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnf0$a;->a:Ljava/util/Map;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/io/File;)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 4
    if-nez p2, :cond_0

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v1, -0x1

    .line 8
    if-nez p1, :cond_1

    .line 10
    return v1

    .line 11
    :cond_1
    const/4 v2, 0x1

    .line 12
    if-nez p2, :cond_2

    .line 14
    return v2

    .line 15
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_3

    .line 29
    return v0

    .line 30
    :cond_3
    const-string v3, "test.dex"

    .line 32
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_4

    .line 38
    return v2

    .line 39
    :cond_4
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_5

    .line 45
    return v1

    .line 46
    :cond_5
    iget-object v3, p0, Lnf0$a;->a:Ljava/util/Map;

    .line 48
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Ljava/lang/Boolean;

    .line 54
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 57
    move-result v3

    .line 58
    iget-object v4, p0, Lnf0$a;->a:Ljava/util/Map;

    .line 60
    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Ljava/lang/Boolean;

    .line 66
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 69
    move-result v4

    .line 70
    if-eqz v3, :cond_a

    .line 72
    if-eqz v4, :cond_a

    .line 74
    const/16 v3, 0x2e

    .line 76
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    .line 79
    move-result v4

    .line 80
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    .line 83
    move-result v3

    .line 84
    const/4 v5, 0x7

    .line 85
    if-le v4, v5, :cond_6

    .line 87
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 90
    move-result-object p1

    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 94
    move-result p1

    .line 95
    goto :goto_0

    .line 96
    :cond_6
    const/4 p1, 0x1

    .line 97
    :goto_0
    if-le v3, v5, :cond_7

    .line 99
    invoke-virtual {p2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 102
    move-result-object p2

    .line 103
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 106
    move-result p2

    .line 107
    goto :goto_1

    .line 108
    :cond_7
    const/4 p2, 0x1

    .line 109
    :goto_1
    if-ne p1, p2, :cond_8

    .line 111
    goto :goto_2

    .line 112
    :cond_8
    if-ge p1, p2, :cond_9

    .line 114
    const/4 v0, -0x1

    .line 115
    goto :goto_2

    .line 116
    :cond_9
    const/4 v0, 0x1

    .line 117
    :goto_2
    return v0

    .line 118
    :cond_a
    if-eqz v3, :cond_b

    .line 120
    return v1

    .line 121
    :cond_b
    if-eqz v4, :cond_c

    .line 123
    return v2

    .line 124
    :cond_c
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 127
    move-result p1

    .line 128
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    .line 3
    check-cast p2, Ljava/io/File;

    .line 5
    invoke-virtual {p0, p1, p2}, Lnf0$a;->a(Ljava/io/File;Ljava/io/File;)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method
