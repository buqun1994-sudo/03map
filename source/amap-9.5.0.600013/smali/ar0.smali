.class public abstract Lar0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([BLvq0;Lup0$a;Lyp0;)[B
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lup0$a;->i()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 11
    :try_start_0
    invoke-static {p0}, Ljw0;->e([B)[B

    .line 14
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    nop

    .line 17
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lup0$a;->a()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lxp0;->a(Ljava/lang/String;)Lxp0;

    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Lxp0;->d:Lxp0;

    .line 27
    if-ne v0, v1, :cond_3

    .line 29
    invoke-virtual {p2}, Lup0$a;->j()Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 35
    invoke-static {p0}, Lrw0;->a([B)[B

    .line 38
    move-result-object p0

    .line 39
    goto/16 :goto_1

    .line 41
    :cond_2
    invoke-virtual {p2}, Lup0$a;->f()Z

    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_7

    .line 47
    invoke-virtual {p3}, Lyp0;->a()Ljava/util/HashMap;

    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 60
    move-result-object p1

    .line 61
    invoke-static {p0, p1}, Ljx0;->a([B[B)[B

    .line 64
    move-result-object p0

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    sget-object v1, Lxp0;->b:Lxp0;

    .line 68
    if-ne v0, v1, :cond_4

    .line 70
    invoke-virtual {p2}, Lup0$a;->f()Z

    .line 73
    move-result p2

    .line 74
    if-eqz p2, :cond_7

    .line 76
    invoke-virtual {p3}, Lyp0;->a()Ljava/util/HashMap;

    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 89
    move-result-object p1

    .line 90
    invoke-static {p0, p1}, Ljx0;->a([B[B)[B

    .line 93
    move-result-object p0

    .line 94
    goto :goto_1

    .line 95
    :cond_4
    sget-object v1, Lxp0;->c:Lxp0;

    .line 97
    if-ne v0, v1, :cond_6

    .line 99
    invoke-virtual {p2}, Lup0$a;->f()Z

    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_5

    .line 105
    invoke-virtual {p3}, Lyp0;->a()Ljava/util/HashMap;

    .line 108
    move-result-object p3

    .line 109
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 118
    move-result-object p1

    .line 119
    invoke-static {p0, p1}, Ljx0;->a([B[B)[B

    .line 122
    move-result-object p0

    .line 123
    :cond_5
    invoke-virtual {p2}, Lup0$a;->j()Z

    .line 126
    move-result p1

    .line 127
    if-eqz p1, :cond_7

    .line 129
    invoke-static {p0}, Lrw0;->a([B)[B

    .line 132
    move-result-object p0

    .line 133
    goto :goto_1

    .line 134
    :cond_6
    sget-object v1, Lxp0;->e:Lxp0;

    .line 136
    if-ne v0, v1, :cond_7

    .line 138
    invoke-virtual {p2}, Lup0$a;->f()Z

    .line 141
    move-result p2

    .line 142
    if-eqz p2, :cond_7

    .line 144
    invoke-virtual {p3}, Lyp0;->a()Ljava/util/HashMap;

    .line 147
    move-result-object p2

    .line 148
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    move-result-object p1

    .line 152
    check-cast p1, Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 157
    move-result-object p1

    .line 158
    invoke-static {p0, p1}, Ljx0;->a([B[B)[B

    .line 161
    move-result-object p0

    .line 162
    :cond_7
    :goto_1
    return-object p0
.end method
