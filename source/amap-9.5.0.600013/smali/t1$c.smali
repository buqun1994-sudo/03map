.class public Lt1$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt1$c$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lt1$c;->a:Ljava/util/List;

    .line 11
    return-void
.end method


# virtual methods
.method public a(Lt1$b;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lt1$c;->c(Lt1$b;)Lt1$c$a;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 7
    iget p1, p1, Lt1$c$a;->b:I

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    return p1
.end method

.method public b(II)Lt1$c$a;
    .locals 4

    .line 1
    iget-object v0, p0, Lt1$c;->a:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lt1$c$a;

    .line 19
    iget-object v2, v1, Lt1$c$a;->a:Lt1$b;

    .line 21
    iget v3, v2, Lt1$b;->a:I

    .line 23
    if-ne p1, v3, :cond_0

    .line 25
    iget v2, v2, Lt1$b;->b:I

    .line 27
    if-ne p2, v2, :cond_0

    .line 29
    return-object v1

    .line 30
    :cond_1
    const/4 p1, 0x0

    .line 31
    return-object p1
.end method

.method public c(Lt1$b;)Lt1$c$a;
    .locals 1

    .line 1
    iget v0, p1, Lt1$b;->a:I

    .line 3
    iget p1, p1, Lt1$b;->b:I

    .line 5
    invoke-virtual {p0, v0, p1}, Lt1$c;->b(II)Lt1$c$a;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public d(Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lt1$b;

    .line 17
    iget v1, v0, Lt1$b;->a:I

    .line 19
    iget v2, v0, Lt1$b;->b:I

    .line 21
    invoke-virtual {p0, v1, v2}, Lt1$c;->b(II)Lt1$c$a;

    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x1

    .line 26
    if-eqz v1, :cond_0

    .line 28
    iget v0, v1, Lt1$c$a;->b:I

    .line 30
    add-int/2addr v0, v2

    .line 31
    iput v0, v1, Lt1$c$a;->b:I

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v1, Lt1$c$a;

    .line 36
    invoke-direct {v1}, Lt1$c$a;-><init>()V

    .line 39
    iput-object v0, v1, Lt1$c$a;->a:Lt1$b;

    .line 41
    iput v2, v1, Lt1$c$a;->b:I

    .line 43
    iget-object v0, p0, Lt1$c;->a:Ljava/util/List;

    .line 45
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    return-void
.end method

.method public e(Lp1;)V
    .locals 4

    .line 1
    const-string v0, "surveyedContent"

    .line 3
    const-string v1, ""

    .line 5
    invoke-virtual {p1, v0, v1}, Lp1;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x1

    .line 10
    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    const/4 v1, 0x0

    .line 13
    aput-object p1, v0, v1

    .line 15
    const-string v2, "AdapterSurveyManager"

    .line 17
    const-string v3, "initAdapterItemList, surveyContent={?}"

    .line 19
    invoke-static {v2, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    const-string v0, "#"

    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    array-length v0, p1

    .line 29
    :goto_0
    if-ge v1, v0, :cond_1

    .line 31
    aget-object v2, p1, v1

    .line 33
    invoke-static {v2}, Lt1$c$a;->a(Ljava/lang/String;)Lt1$c$a;

    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_0

    .line 39
    iget-object v3, p0, Lt1$c;->a:Ljava/util/List;

    .line 41
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    return-void
.end method

.method public f(Ljava/util/List;)V
    .locals 6

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lt1$b;

    .line 17
    invoke-virtual {p0, v0}, Lt1$c;->c(Lt1$b;)Lt1$c$a;

    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 23
    iget-object v2, v0, Lt1$b;->c:Ljava/lang/String;

    .line 25
    iget-object v3, v1, Lt1$c$a;->a:Lt1$b;

    .line 27
    iget-object v3, v3, Lt1$b;->c:Ljava/lang/String;

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_0

    .line 35
    const/4 v2, 0x4

    .line 36
    new-array v2, v2, [Ljava/lang/Object;

    .line 38
    iget v3, v0, Lt1$b;->a:I

    .line 40
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object v3

    .line 44
    const/4 v4, 0x0

    .line 45
    aput-object v3, v2, v4

    .line 47
    iget v3, v0, Lt1$b;->b:I

    .line 49
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object v3

    .line 53
    const/4 v5, 0x1

    .line 54
    aput-object v3, v2, v5

    .line 56
    const/4 v3, 0x2

    .line 57
    iget-object v5, v0, Lt1$b;->c:Ljava/lang/String;

    .line 59
    aput-object v5, v2, v3

    .line 61
    iget-object v3, v1, Lt1$c$a;->a:Lt1$b;

    .line 63
    iget-object v3, v3, Lt1$b;->c:Ljava/lang/String;

    .line 65
    const/4 v5, 0x3

    .line 66
    aput-object v3, v2, v5

    .line 68
    const-string v3, "AdapterSurveyManager"

    .line 70
    const-string v5, "resetAppearTimesByAdapter, moduleType={?},keyType={?}, newValue={?}, oldValue={?}"

    .line 72
    invoke-static {v3, v5, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    iput v4, v1, Lt1$c$a;->b:I

    .line 77
    iput-object v0, v1, Lt1$c$a;->a:Lt1$b;

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    return-void
.end method

.method public g(Lp1;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lt1$c;->a:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    iget-object v3, p0, Lt1$c;->a:Ljava/util/List;

    .line 19
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x1

    .line 24
    if-ge v2, v3, :cond_2

    .line 26
    iget-object v3, p0, Lt1$c;->a:Ljava/util/List;

    .line 28
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Lt1$c$a;

    .line 34
    invoke-virtual {v3}, Lt1$c$a;->b()Ljava/lang/String;

    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v3, p0, Lt1$c;->a:Ljava/util/List;

    .line 43
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 46
    move-result v3

    .line 47
    sub-int/2addr v3, v4

    .line 48
    if-ge v2, v3, :cond_1

    .line 50
    const-string v3, "#"

    .line 52
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    new-array v2, v4, [Ljava/lang/Object;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v3

    .line 64
    aput-object v3, v2, v1

    .line 66
    const-string v1, "AdapterSurveyManager"

    .line 68
    const-string v3, "saveTo content={?}"

    .line 70
    invoke-static {v1, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    const-string v1, "surveyedContent"

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p1, v1, v0}, Lp1;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public h(Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterAnswer;

    .line 17
    iget v1, v0, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterAnswer;->optionsIndex:I

    .line 19
    const/4 v2, -0x1

    .line 20
    if-eq v1, v2, :cond_0

    .line 22
    const/4 v2, 0x2

    .line 23
    if-eq v1, v2, :cond_0

    .line 25
    iget v1, v0, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterAnswer;->id:I

    .line 27
    invoke-static {v1}, Lt1;->c(I)I

    .line 30
    move-result v1

    .line 31
    iget v0, v0, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterAnswer;->id:I

    .line 33
    invoke-static {v0}, Lt1;->d(I)I

    .line 36
    move-result v0

    .line 37
    invoke-virtual {p0, v1, v0}, Lt1$c;->b(II)Lt1$c$a;

    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    .line 43
    const/16 v1, 0x64

    .line 45
    iput v1, v0, Lt1$c$a;->b:I

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-void
.end method
