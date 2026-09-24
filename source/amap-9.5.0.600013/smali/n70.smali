.class public Ln70;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln70$c;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Ln70;->a:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ln70$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln70;-><init>()V

    return-void
.end method

.method public static synthetic a(Ln70;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iput-object p1, p0, Ln70;->b:Ljava/util/HashMap;

    .line 3
    return-object p1
.end method

.method public static synthetic b(Ln70;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Ln70;->a:Ljava/lang/String;

    .line 3
    return-object p1
.end method

.method public static synthetic c(Ln70;III)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Ln70;->m(III)V

    .line 4
    return-void
.end method

.method public static synthetic d(Ln70;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ln70;->l()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static f()Ln70;
    .locals 1

    .line 1
    invoke-static {}, Ln70$c;->a()Ln70;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static j(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    move-result v0

    .line 13
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 15
    if-ltz v0, :cond_2

    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 20
    move-result v2

    .line 21
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_1

    .line 27
    return v1

    .line 28
    :cond_2
    const/4 p0, 0x1

    .line 29
    return p0
.end method


# virtual methods
.method public final e(Ljava/lang/String;)I
    .locals 4

    .line 1
    const-string v0, "PID"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 10
    const-string v1, "%CPU"

    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 18
    const-string v1, "ARGS"

    .line 20
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_1

    .line 26
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_3

    .line 32
    const-string v0, "CPU%"

    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_3

    .line 40
    const-string v0, "Name"

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_3

    .line 48
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    const-string v0, " +"

    .line 54
    const-string v1, " "

    .line 56
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    const/4 v0, 0x0

    .line 65
    :goto_0
    array-length v1, p1

    .line 66
    if-ge v0, v1, :cond_3

    .line 68
    aget-object v1, p1, v0

    .line 70
    const-string v3, "CPU"

    .line 72
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_2

    .line 78
    return v0

    .line 79
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 81
    goto :goto_0

    .line 82
    :cond_3
    return v2
.end method

.method public g()V
    .locals 1

    .line 1
    new-instance v0, Ln70$a;

    .line 3
    invoke-direct {v0, p0}, Ln70$a;-><init>(Ln70;)V

    .line 6
    invoke-static {v0}, Lcom/autonavi/amapauto/framework/PerformanceBridge;->a(Lcom/autonavi/amapauto/framework/OnNativePerformanceBridgeCallBack;)Z

    .line 9
    return-void
.end method

.method public final h(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "Tasks"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const-string v0, "total"

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    const-string v0, "running"

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 25
    :cond_0
    const-string v0, "User"

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 33
    const-string v0, "System"

    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 41
    const-string v0, "IOW"

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_2

    .line 49
    :cond_1
    const/4 p1, 0x1

    .line 50
    return p1

    .line 51
    :cond_2
    const/4 p1, 0x0

    .line 52
    return p1
.end method

.method public final i(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const-string v0, "PID"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 9
    const-string v1, "%CPU"

    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 17
    const-string v1, "ARGS"

    .line 19
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 25
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 31
    const-string v0, "CPU%"

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 39
    const-string v0, "Name"

    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_2

    .line 47
    :cond_1
    const/4 p1, 0x1

    .line 48
    return p1

    .line 49
    :cond_2
    const/4 p1, 0x0

    .line 50
    return p1
.end method

.method public final k(Ljava/lang/String;I)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, " +"

    .line 7
    const-string v1, " "

    .line 9
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    array-length v0, p1

    .line 18
    const/4 v1, 0x1

    .line 19
    sub-int/2addr v0, v1

    .line 20
    new-array v0, v0, [Ljava/lang/String;

    .line 22
    const/4 v2, 0x0

    .line 23
    aget-object v3, p1, v2

    .line 25
    invoke-static {v3}, Ln70;->j(Ljava/lang/String;)Z

    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_0

    .line 31
    array-length v3, p1

    .line 32
    sub-int/2addr v3, v1

    .line 33
    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    move-object p1, v0

    .line 37
    :cond_0
    array-length v0, p1

    .line 38
    sub-int/2addr v0, v1

    .line 39
    if-lez v0, :cond_3

    .line 41
    array-length v2, p1

    .line 42
    if-le v2, p2, :cond_3

    .line 44
    if-le v0, p2, :cond_3

    .line 46
    aget-object p2, p1, p2

    .line 48
    const-string v2, "%"

    .line 50
    const-string v3, ""

    .line 52
    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 55
    move-result-object p2

    .line 56
    iget-object v2, p0, Ln70;->b:Ljava/util/HashMap;

    .line 58
    aget-object v4, p1, v0

    .line 60
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_1

    .line 66
    new-instance v2, Lm70;

    .line 68
    invoke-direct {v2}, Lm70;-><init>()V

    .line 71
    aget-object v3, p1, v0

    .line 73
    iput-object v3, v2, Lm70;->a:Ljava/lang/String;

    .line 75
    iput-object p2, v2, Lm70;->c:Ljava/lang/String;

    .line 77
    iput-object p2, v2, Lm70;->b:Ljava/lang/String;

    .line 79
    iput v1, v2, Lm70;->d:I

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    iget-object v2, p0, Ln70;->b:Ljava/util/HashMap;

    .line 84
    aget-object v4, p1, v0

    .line 86
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Lm70;

    .line 92
    iget-object v4, v2, Lm70;->c:Ljava/lang/String;

    .line 94
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 97
    move-result v4

    .line 98
    iget-object v5, v2, Lm70;->b:Ljava/lang/String;

    .line 100
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 103
    move-result v5

    .line 104
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 107
    move-result v6

    .line 108
    cmpl-float v5, v6, v5

    .line 110
    if-lez v5, :cond_2

    .line 112
    iput-object p2, v2, Lm70;->b:Ljava/lang/String;

    .line 114
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 116
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    iget v5, v2, Lm70;->d:I

    .line 121
    int-to-float v7, v5

    .line 122
    mul-float v4, v4, v7

    .line 124
    add-float/2addr v4, v6

    .line 125
    add-int/2addr v5, v1

    .line 126
    int-to-float v5, v5

    .line 127
    div-float/2addr v4, v5

    .line 128
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    move-result-object p2

    .line 138
    iput-object p2, v2, Lm70;->c:Ljava/lang/String;

    .line 140
    iget p2, v2, Lm70;->d:I

    .line 142
    add-int/2addr p2, v1

    .line 143
    iput p2, v2, Lm70;->d:I

    .line 145
    :goto_0
    iget-object p2, v2, Lm70;->c:Ljava/lang/String;

    .line 147
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 150
    move-result p2

    .line 151
    if-nez p2, :cond_3

    .line 153
    iget-object p2, v2, Lm70;->b:Ljava/lang/String;

    .line 155
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 158
    move-result p2

    .line 159
    if-nez p2, :cond_3

    .line 161
    iget-object p2, p0, Ln70;->b:Ljava/util/HashMap;

    .line 163
    aget-object p1, p1, v0

    .line 165
    invoke-virtual {p2, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_3
    return-void
.end method

.method public final l()Ljava/lang/String;
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Ln70;->a:Ljava/lang/String;

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    iget-object v2, p0, Ln70;->b:Ljava/util/HashMap;

    .line 18
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 25
    new-instance v2, Ln70$b;

    .line 27
    invoke-direct {v2, p0}, Ln70$b;-><init>(Ln70;)V

    .line 30
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 33
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object v1

    .line 37
    const/16 v2, 0xa

    .line 39
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_0

    .line 45
    if-lez v2, :cond_0

    .line 47
    add-int/lit8 v2, v2, -0x1

    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Ljava/util/Map$Entry;

    .line 55
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Lm70;

    .line 61
    iget-object v4, v3, Lm70;->c:Ljava/lang/String;

    .line 63
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 66
    move-result v4

    .line 67
    iget-object v5, v3, Lm70;->b:Ljava/lang/String;

    .line 69
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 72
    move-result v5

    .line 73
    new-instance v6, Ljava/lang/StringBuilder;

    .line 75
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    iget-object v7, v3, Lm70;->a:Ljava/lang/String;

    .line 80
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v7, ","

    .line 85
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const/4 v8, 0x1

    .line 89
    new-array v9, v8, [Ljava/lang/Object;

    .line 91
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 94
    move-result-object v4

    .line 95
    const/4 v10, 0x0

    .line 96
    aput-object v4, v9, v10

    .line 98
    const-string v4, "%.2f"

    .line 100
    invoke-static {v4, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    move-result-object v9

    .line 104
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    new-array v8, v8, [Ljava/lang/Object;

    .line 112
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 115
    move-result-object v5

    .line 116
    aput-object v5, v8, v10

    .line 118
    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    move-result-object v4

    .line 122
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget v3, v3, Lm70;->d:I

    .line 130
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    const-string v3, ";"

    .line 135
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object v0

    .line 150
    return-object v0

    .line 151
    :cond_1
    iget-object v0, p0, Ln70;->a:Ljava/lang/String;

    .line 153
    return-object v0
.end method

.method public final m(III)V
    .locals 10

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 8
    move-result-object v2

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    const-string v4, "top -n "

    .line 16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string p1, " -d "

    .line 24
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v2, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 37
    move-result-object p1

    .line 38
    new-instance p2, Ljava/io/BufferedReader;

    .line 40
    new-instance v2, Ljava/io/InputStreamReader;

    .line 42
    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 45
    move-result-object p1

    .line 46
    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 49
    invoke-direct {p2, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 52
    const/4 p1, 0x0

    .line 53
    const/4 v2, 0x0

    .line 54
    const/4 v3, 0x0

    .line 55
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 58
    move-result-object v4

    .line 59
    if-eqz v4, :cond_3

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 64
    move-result-wide v5

    .line 65
    sub-long/2addr v5, v0

    .line 66
    mul-int/lit16 v7, p3, 0x3e8

    .line 68
    int-to-long v7, v7

    .line 69
    cmp-long v9, v5, v7

    .line 71
    if-gez v9, :cond_3

    .line 73
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 76
    move-result-object v5

    .line 77
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 80
    move-result v5

    .line 81
    const/4 v6, 0x1

    .line 82
    if-le v5, v6, :cond_0

    .line 84
    invoke-virtual {p0, v4}, Ln70;->h(Ljava/lang/String;)Z

    .line 87
    move-result v5

    .line 88
    if-eqz v5, :cond_1

    .line 90
    const/4 v2, 0x1

    .line 91
    goto :goto_1

    .line 92
    :cond_1
    invoke-virtual {p0, v4}, Ln70;->i(Ljava/lang/String;)Z

    .line 95
    move-result v5

    .line 96
    if-eqz v5, :cond_2

    .line 98
    invoke-virtual {p0, v4}, Ln70;->e(Ljava/lang/String;)I

    .line 101
    move-result v3

    .line 102
    const/4 v2, 0x0

    .line 103
    :cond_2
    :goto_1
    if-nez v2, :cond_0

    .line 105
    invoke-virtual {p0, v4}, Ln70;->i(Ljava/lang/String;)Z

    .line 108
    move-result v5

    .line 109
    if-nez v5, :cond_0

    .line 111
    invoke-virtual {p0, v4, v3}, Ln70;->k(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    goto :goto_0

    .line 115
    :catch_0
    move-exception p1

    .line 116
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 119
    const-string p1, "CollectFail"

    .line 121
    iput-object p1, p0, Ln70;->a:Ljava/lang/String;

    .line 123
    :cond_3
    return-void
.end method
