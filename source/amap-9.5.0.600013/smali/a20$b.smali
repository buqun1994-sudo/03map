.class public La20$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La20;


# direct methods
.method public constructor <init>(La20;)V
    .locals 0

    .line 1
    iput-object p1, p0, La20$b;->a:La20;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 11
    const-string v2, "MultiScreenManager"

    .line 13
    const-string v4, "onDisplayAdded displayId={?}"

    .line 15
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-object v1, p0, La20$b;->a:La20;

    .line 20
    invoke-static {v1}, La20;->b(La20;)V

    .line 23
    iget-object v1, p0, La20$b;->a:La20;

    .line 25
    invoke-static {v1}, La20;->c(La20;)Ljava/util/List;

    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_4

    .line 31
    iget-object v1, p0, La20$b;->a:La20;

    .line 33
    invoke-static {v1}, La20;->c(La20;)Ljava/util/List;

    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    iget-object v1, p0, La20$b;->a:La20;

    .line 46
    invoke-static {v1}, La20;->d(La20;)Ljava/util/List;

    .line 49
    move-result-object v1

    .line 50
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object v1

    .line 54
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_4

    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Lcom/autonavi/extscreen/dto/PresentationConfig;

    .line 66
    if-nez v4, :cond_2

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    iget-object v5, v4, Lcom/autonavi/extscreen/dto/PresentationConfig;->displayName:Ljava/lang/String;

    .line 71
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    move-result v5

    .line 75
    if-nez v5, :cond_3

    .line 77
    iget-object v5, v4, Lcom/autonavi/extscreen/dto/PresentationConfig;->displayName:Ljava/lang/String;

    .line 79
    iget-object v6, p0, La20$b;->a:La20;

    .line 81
    invoke-static {v6, p1}, La20;->e(La20;I)Ljava/lang/String;

    .line 84
    move-result-object v6

    .line 85
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    move-result v5

    .line 89
    if-eqz v5, :cond_3

    .line 91
    iget-object p1, p0, La20$b;->a:La20;

    .line 93
    invoke-virtual {p1, v4}, La20;->i(Lcom/autonavi/extscreen/dto/PresentationConfig;)V

    .line 96
    goto :goto_1

    .line 97
    :cond_3
    iget v5, v4, Lcom/autonavi/extscreen/dto/PresentationConfig;->deviceId:I

    .line 99
    add-int/lit16 v5, v5, -0x3e8

    .line 101
    new-array v6, v0, [Ljava/lang/Object;

    .line 103
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    move-result-object v7

    .line 107
    aput-object v7, v6, v3

    .line 109
    const-string v7, "onDisplayAdded configDisplayId={?}"

    .line 111
    invoke-static {v2, v7, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    if-ne v5, p1, :cond_1

    .line 116
    iget-object p1, p0, La20$b;->a:La20;

    .line 118
    invoke-virtual {p1, v4}, La20;->i(Lcom/autonavi/extscreen/dto/PresentationConfig;)V

    .line 121
    :cond_4
    :goto_1
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p1

    .line 9
    aput-object p1, v0, v1

    .line 11
    const-string p1, "MultiScreenManager"

    .line 13
    const-string v1, "onDisplayChanged displayId={?}"

    .line 15
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 8

    .line 1
    iget-object v0, p0, La20$b;->a:La20;

    .line 3
    invoke-static {v0}, La20;->f(La20;)Ljava/util/HashMap;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/autonavi/extscreen/dto/PresentationConfig;

    .line 17
    iget-object v1, p0, La20$b;->a:La20;

    .line 19
    invoke-virtual {v1, p1}, La20;->k(I)Lhl;

    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, La20$b;->a:La20;

    .line 25
    invoke-static {v2}, La20;->g(La20;)Ljava/util/List;

    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x2

    .line 31
    const-string v5, "MultiScreenManager"

    .line 33
    const/4 v6, 0x1

    .line 34
    if-eqz v2, :cond_0

    .line 36
    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {v1}, Lhl;->h()Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 41
    move-result-object v2

    .line 42
    iget v2, v2, Lcom/autonavi/amapauto/jni/ViewInfo;->i:I

    .line 44
    if-ne v2, v6, :cond_0

    .line 46
    invoke-virtual {v1}, Lhl;->h()Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 49
    move-result-object v2

    .line 50
    iget-object v7, p0, La20$b;->a:La20;

    .line 52
    invoke-static {v7}, La20;->g(La20;)Ljava/util/List;

    .line 55
    move-result-object v7

    .line 56
    invoke-interface {v7, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 59
    new-array v1, v4, [Ljava/lang/Object;

    .line 61
    iget v7, v2, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 63
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object v7

    .line 67
    aput-object v7, v1, v3

    .line 69
    iget-object v2, v2, Lcom/autonavi/amapauto/jni/ViewInfo;->a:Ljava/lang/String;

    .line 71
    aput-object v2, v1, v6

    .line 73
    const-string v2, "extScreens remove id={?}, name={?}"

    .line 75
    invoke-static {v5, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    :cond_0
    new-array v1, v4, [Ljava/lang/Object;

    .line 80
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    move-result-object p1

    .line 84
    aput-object p1, v1, v3

    .line 86
    aput-object v0, v1, v6

    .line 88
    const-string p1, "onDisplayRemoved displayId={?}, config = {?}"

    .line 90
    invoke-static {v5, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    if-eqz v0, :cond_1

    .line 95
    iget-object p1, p0, La20$b;->a:La20;

    .line 97
    invoke-static {p1}, La20;->d(La20;)Ljava/util/List;

    .line 100
    move-result-object p1

    .line 101
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 104
    move-result p1

    .line 105
    if-nez p1, :cond_1

    .line 107
    iget-object p1, p0, La20$b;->a:La20;

    .line 109
    invoke-static {p1}, La20;->d(La20;)Ljava/util/List;

    .line 112
    move-result-object p1

    .line 113
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_1
    return-void
.end method
