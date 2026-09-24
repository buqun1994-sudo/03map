.class public Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;
.super Lcom/autonavi/eaglet/surfacemng/cfg/Config$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/eaglet/surfacemng/cfg/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final c:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;->c:Ljava/util/List;

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object p1, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;->c:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic c()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;->c:Ljava/util/List;

    .line 3
    return-object v0
.end method


# virtual methods
.method public d()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;->e(I)I

    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public e(I)I
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$a;->a()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 8
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return p1

    .line 10
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    const-string v1, "getInt error:"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object v1, p0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$a;->a:Ljava/lang/String;

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, "="

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$a;->a()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->debugLog(Ljava/lang/String;)V

    .line 44
    return p1
.end method

.method public f()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$a;->a()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$a;->a()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 17
    const-string v0, "false"

    .line 19
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$a;->a()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$a;->a()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    const-string v1, "true"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 42
    const/4 v0, 0x1

    .line 43
    return v0

    .line 44
    :cond_1
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/Adapter;->JNIContext()Ltr;

    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v0}, Ltr;->d()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$a;->a()Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 59
    move-result v0

    .line 60
    return v0

    .line 61
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 62
    return v0
.end method
