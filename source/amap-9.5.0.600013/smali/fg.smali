.class public Lfg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfg$b;
    }
.end annotation


# instance fields
.field public a:Ljava/util/HashSet;

.field public b:I

.field public c:Z

.field public final d:Llg;

.field public final e:Lfg$b;

.field public f:Lfg;

.field public g:I

.field public h:I

.field public i:Lle0;


# direct methods
.method public constructor <init>(Llg;Lfg$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lfg;->a:Ljava/util/HashSet;

    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lfg;->g:I

    .line 10
    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lfg;->h:I

    .line 13
    iput-object p1, p0, Lfg;->d:Llg;

    .line 15
    iput-object p2, p0, Lfg;->e:Lfg$b;

    .line 17
    return-void
.end method


# virtual methods
.method public a(Lfg;IIZ)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lfg;->p()V

    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    if-nez p4, :cond_1

    .line 11
    invoke-virtual {p0, p1}, Lfg;->o(Lfg;)Z

    .line 14
    move-result p4

    .line 15
    if-nez p4, :cond_1

    .line 17
    return v1

    .line 18
    :cond_1
    iput-object p1, p0, Lfg;->f:Lfg;

    .line 20
    iget-object p4, p1, Lfg;->a:Ljava/util/HashSet;

    .line 22
    if-nez p4, :cond_2

    .line 24
    new-instance p4, Ljava/util/HashSet;

    .line 26
    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    .line 29
    iput-object p4, p1, Lfg;->a:Ljava/util/HashSet;

    .line 31
    :cond_2
    iget-object p1, p0, Lfg;->f:Lfg;

    .line 33
    iget-object p1, p1, Lfg;->a:Ljava/util/HashSet;

    .line 35
    if-eqz p1, :cond_3

    .line 37
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_3
    if-lez p2, :cond_4

    .line 42
    iput p2, p0, Lfg;->g:I

    .line 44
    goto :goto_0

    .line 45
    :cond_4
    iput v1, p0, Lfg;->g:I

    .line 47
    :goto_0
    iput p3, p0, Lfg;->h:I

    .line 49
    return v0
.end method

.method public b(ILjava/util/ArrayList;Lcm0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lfg;->a:Ljava/util/HashSet;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lfg;

    .line 21
    iget-object v1, v1, Lfg;->d:Llg;

    .line 23
    invoke-static {v1, p1, p2, p3}, Lko;->a(Llg;ILjava/util/ArrayList;Lcm0;)Lcm0;

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public c()Ljava/util/HashSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lfg;->a:Ljava/util/HashSet;

    .line 3
    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfg;->c:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    iget v0, p0, Lfg;->b:I

    .line 9
    return v0
.end method

.method public e()I
    .locals 3

    .line 1
    iget-object v0, p0, Lfg;->d:Llg;

    .line 3
    invoke-virtual {v0}, Llg;->Q()I

    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 9
    if-ne v0, v1, :cond_0

    .line 11
    const/4 v0, 0x0

    .line 12
    return v0

    .line 13
    :cond_0
    iget v0, p0, Lfg;->h:I

    .line 15
    const/4 v2, -0x1

    .line 16
    if-le v0, v2, :cond_1

    .line 18
    iget-object v0, p0, Lfg;->f:Lfg;

    .line 20
    if-eqz v0, :cond_1

    .line 22
    iget-object v0, v0, Lfg;->d:Llg;

    .line 24
    invoke-virtual {v0}, Llg;->Q()I

    .line 27
    move-result v0

    .line 28
    if-ne v0, v1, :cond_1

    .line 30
    iget v0, p0, Lfg;->h:I

    .line 32
    return v0

    .line 33
    :cond_1
    iget v0, p0, Lfg;->g:I

    .line 35
    return v0
.end method

.method public final f()Lfg;
    .locals 2

    .line 1
    sget-object v0, Lfg$a;->a:[I

    .line 3
    iget-object v1, p0, Lfg;->e:Lfg$b;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 14
    new-instance v0, Ljava/lang/AssertionError;

    .line 16
    iget-object v1, p0, Lfg;->e:Lfg$b;

    .line 18
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 25
    throw v0

    .line 26
    :pswitch_0
    iget-object v0, p0, Lfg;->d:Llg;

    .line 28
    iget-object v0, v0, Llg;->I:Lfg;

    .line 30
    return-object v0

    .line 31
    :pswitch_1
    iget-object v0, p0, Lfg;->d:Llg;

    .line 33
    iget-object v0, v0, Llg;->K:Lfg;

    .line 35
    return-object v0

    .line 36
    :pswitch_2
    iget-object v0, p0, Lfg;->d:Llg;

    .line 38
    iget-object v0, v0, Llg;->H:Lfg;

    .line 40
    return-object v0

    .line 41
    :pswitch_3
    iget-object v0, p0, Lfg;->d:Llg;

    .line 43
    iget-object v0, v0, Llg;->J:Lfg;

    .line 45
    return-object v0

    .line 46
    :pswitch_4
    const/4 v0, 0x0

    .line 47
    return-object v0

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public g()Llg;
    .locals 1

    .line 1
    iget-object v0, p0, Lfg;->d:Llg;

    .line 3
    return-object v0
.end method

.method public h()Lle0;
    .locals 1

    .line 1
    iget-object v0, p0, Lfg;->i:Lle0;

    .line 3
    return-object v0
.end method

.method public i()Lfg;
    .locals 1

    .line 1
    iget-object v0, p0, Lfg;->f:Lfg;

    .line 3
    return-object v0
.end method

.method public j()Lfg$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lfg;->e:Lfg$b;

    .line 3
    return-object v0
.end method

.method public k()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lfg;->a:Ljava/util/HashSet;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_2

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lfg;

    .line 23
    invoke-virtual {v2}, Lfg;->f()Lfg;

    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lfg;->n()Z

    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 33
    const/4 v0, 0x1

    .line 34
    return v0

    .line 35
    :cond_2
    return v1
.end method

.method public l()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lfg;->a:Ljava/util/HashSet;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_1

    .line 13
    const/4 v1, 0x1

    .line 14
    :cond_1
    return v1
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfg;->c:Z

    .line 3
    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfg;->f:Lfg;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public o(Lfg;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lfg;->j()Lfg$b;

    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lfg;->e:Lfg$b;

    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v1, v2, :cond_3

    .line 14
    sget-object v1, Lfg$b;->f:Lfg$b;

    .line 16
    if-ne v2, v1, :cond_2

    .line 18
    invoke-virtual {p1}, Lfg;->g()Llg;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Llg;->U()Z

    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 28
    invoke-virtual {p0}, Lfg;->g()Llg;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Llg;->U()Z

    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_2

    .line 38
    :cond_1
    return v0

    .line 39
    :cond_2
    return v3

    .line 40
    :cond_3
    sget-object v4, Lfg$a;->a:[I

    .line 42
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 45
    move-result v2

    .line 46
    aget v2, v4, v2

    .line 48
    packed-switch v2, :pswitch_data_0

    .line 51
    new-instance p1, Ljava/lang/AssertionError;

    .line 53
    iget-object v0, p0, Lfg;->e:Lfg$b;

    .line 55
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 62
    throw p1

    .line 63
    :pswitch_0
    return v0

    .line 64
    :pswitch_1
    sget-object v2, Lfg$b;->c:Lfg$b;

    .line 66
    if-eq v1, v2, :cond_5

    .line 68
    sget-object v2, Lfg$b;->e:Lfg$b;

    .line 70
    if-ne v1, v2, :cond_4

    .line 72
    goto :goto_0

    .line 73
    :cond_4
    const/4 v2, 0x0

    .line 74
    goto :goto_1

    .line 75
    :cond_5
    :goto_0
    const/4 v2, 0x1

    .line 76
    :goto_1
    invoke-virtual {p1}, Lfg;->g()Llg;

    .line 79
    move-result-object p1

    .line 80
    instance-of p1, p1, Lro;

    .line 82
    if-eqz p1, :cond_8

    .line 84
    if-nez v2, :cond_6

    .line 86
    sget-object p1, Lfg$b;->i:Lfg$b;

    .line 88
    if-ne v1, p1, :cond_7

    .line 90
    :cond_6
    const/4 v0, 0x1

    .line 91
    :cond_7
    move v2, v0

    .line 92
    :cond_8
    return v2

    .line 93
    :pswitch_2
    sget-object v2, Lfg$b;->b:Lfg$b;

    .line 95
    if-eq v1, v2, :cond_a

    .line 97
    sget-object v2, Lfg$b;->d:Lfg$b;

    .line 99
    if-ne v1, v2, :cond_9

    .line 101
    goto :goto_2

    .line 102
    :cond_9
    const/4 v2, 0x0

    .line 103
    goto :goto_3

    .line 104
    :cond_a
    :goto_2
    const/4 v2, 0x1

    .line 105
    :goto_3
    invoke-virtual {p1}, Lfg;->g()Llg;

    .line 108
    move-result-object p1

    .line 109
    instance-of p1, p1, Lro;

    .line 111
    if-eqz p1, :cond_d

    .line 113
    if-nez v2, :cond_b

    .line 115
    sget-object p1, Lfg$b;->h:Lfg$b;

    .line 117
    if-ne v1, p1, :cond_c

    .line 119
    :cond_b
    const/4 v0, 0x1

    .line 120
    :cond_c
    move v2, v0

    .line 121
    :cond_d
    return v2

    .line 122
    :pswitch_3
    sget-object p1, Lfg$b;->f:Lfg$b;

    .line 124
    if-eq v1, p1, :cond_e

    .line 126
    sget-object p1, Lfg$b;->h:Lfg$b;

    .line 128
    if-eq v1, p1, :cond_e

    .line 130
    sget-object p1, Lfg$b;->i:Lfg$b;

    .line 132
    if-eq v1, p1, :cond_e

    .line 134
    const/4 v0, 0x1

    .line 135
    :cond_e
    return v0

    .line 136
    nop

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lfg;->f:Lfg;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, v0, Lfg;->a:Ljava/util/HashSet;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, p0, Lfg;->f:Lfg;

    .line 15
    iget-object v0, v0, Lfg;->a:Ljava/util/HashSet;

    .line 17
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 23
    iget-object v0, p0, Lfg;->f:Lfg;

    .line 25
    iput-object v1, v0, Lfg;->a:Ljava/util/HashSet;

    .line 27
    :cond_0
    iput-object v1, p0, Lfg;->a:Ljava/util/HashSet;

    .line 29
    iput-object v1, p0, Lfg;->f:Lfg;

    .line 31
    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lfg;->g:I

    .line 34
    const/4 v1, -0x1

    .line 35
    iput v1, p0, Lfg;->h:I

    .line 37
    iput-boolean v0, p0, Lfg;->c:Z

    .line 39
    iput v0, p0, Lfg;->b:I

    .line 41
    return-void
.end method

.method public q()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lfg;->c:Z

    .line 4
    iput v0, p0, Lfg;->b:I

    .line 6
    return-void
.end method

.method public r(Lud;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lfg;->i:Lle0;

    .line 3
    if-nez p1, :cond_0

    .line 5
    new-instance p1, Lle0;

    .line 7
    sget-object v0, Lle0$a;->a:Lle0$a;

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p1, v0, v1}, Lle0;-><init>(Lle0$a;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lfg;->i:Lle0;

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Lle0;->d()V

    .line 19
    :goto_0
    return-void
.end method

.method public s(I)V
    .locals 0

    .line 1
    iput p1, p0, Lfg;->b:I

    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lfg;->c:Z

    .line 6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lfg;->d:Llg;

    .line 8
    invoke-virtual {v1}, Llg;->r()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, ":"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object v1, p0, Lfg;->e:Lfg$b;

    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method
