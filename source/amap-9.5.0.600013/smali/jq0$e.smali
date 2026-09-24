.class public Ljq0$e;
.super Lxq0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljq0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljq0$e$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/util/List;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lxq0;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Ljq0$e;->j:Ljava/util/List;

    .line 11
    return-void
.end method


# virtual methods
.method public d(ILcq0;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    sparse-switch p1, :sswitch_data_0

    .line 5
    invoke-virtual {p2, p1}, Lcq0;->p(I)Z

    .line 8
    goto/16 :goto_0

    .line 10
    :sswitch_0
    invoke-virtual {p2}, Lcq0;->r()Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Ljq0$e;->n:Ljava/lang/String;

    .line 16
    goto/16 :goto_0

    .line 18
    :sswitch_1
    invoke-virtual {p2}, Lcq0;->r()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Ljq0$e;->m:Ljava/lang/String;

    .line 24
    goto/16 :goto_0

    .line 26
    :sswitch_2
    invoke-virtual {p2}, Lcq0;->r()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Ljq0$e;->l:Ljava/lang/String;

    .line 32
    goto/16 :goto_0

    .line 34
    :sswitch_3
    invoke-virtual {p2}, Lcq0;->r()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Ljq0$e;->k:Ljava/lang/String;

    .line 40
    goto :goto_0

    .line 41
    :sswitch_4
    iget-object p1, p0, Ljq0$e;->j:Ljava/util/List;

    .line 43
    if-nez p1, :cond_0

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    .line 47
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    iput-object p1, p0, Ljq0$e;->j:Ljava/util/List;

    .line 52
    :cond_0
    invoke-virtual {p0, p2}, Lxq0;->e(Lcq0;)I

    .line 55
    move-result p1

    .line 56
    iget-object v1, p0, Ljq0$e;->j:Ljava/util/List;

    .line 58
    new-instance v2, Ljq0$e$a;

    .line 60
    invoke-direct {v2}, Ljq0$e$a;-><init>()V

    .line 63
    invoke-virtual {v2, p2}, Lxq0;->a(Lcq0;)Lxq0;

    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Ljq0$e$a;

    .line 69
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {p0, p2, p1}, Lxq0;->b(Lcq0;I)V

    .line 75
    goto :goto_0

    .line 76
    :sswitch_5
    invoke-virtual {p2}, Lcq0;->r()Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    iput-object p1, p0, Ljq0$e;->i:Ljava/lang/String;

    .line 82
    goto :goto_0

    .line 83
    :sswitch_6
    invoke-virtual {p2}, Lcq0;->r()Ljava/lang/String;

    .line 86
    move-result-object p1

    .line 87
    iput-object p1, p0, Ljq0$e;->h:Ljava/lang/String;

    .line 89
    goto :goto_0

    .line 90
    :sswitch_7
    invoke-virtual {p2}, Lcq0;->r()Ljava/lang/String;

    .line 93
    move-result-object p1

    .line 94
    iput-object p1, p0, Ljq0$e;->g:Ljava/lang/String;

    .line 96
    goto :goto_0

    .line 97
    :sswitch_8
    invoke-virtual {p2}, Lcq0;->r()Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 101
    iput-object p1, p0, Ljq0$e;->f:Ljava/lang/String;

    .line 103
    goto :goto_0

    .line 104
    :sswitch_9
    invoke-virtual {p2}, Lcq0;->r()Ljava/lang/String;

    .line 107
    move-result-object p1

    .line 108
    iput-object p1, p0, Ljq0$e;->e:Ljava/lang/String;

    .line 110
    goto :goto_0

    .line 111
    :sswitch_a
    invoke-virtual {p2}, Lcq0;->r()Ljava/lang/String;

    .line 114
    move-result-object p1

    .line 115
    iput-object p1, p0, Ljq0$e;->d:Ljava/lang/String;

    .line 117
    goto :goto_0

    .line 118
    :sswitch_b
    invoke-virtual {p2}, Lcq0;->r()Ljava/lang/String;

    .line 121
    move-result-object p1

    .line 122
    iput-object p1, p0, Ljq0$e;->c:Ljava/lang/String;

    .line 124
    goto :goto_0

    .line 125
    :sswitch_c
    invoke-virtual {p2}, Lcq0;->r()Ljava/lang/String;

    .line 128
    move-result-object p1

    .line 129
    iput-object p1, p0, Ljq0$e;->b:Ljava/lang/String;

    .line 131
    goto :goto_0

    .line 132
    :sswitch_d
    invoke-virtual {p2}, Lcq0;->r()Ljava/lang/String;

    .line 135
    move-result-object p1

    .line 136
    iput-object p1, p0, Ljq0$e;->a:Ljava/lang/String;

    .line 138
    :goto_0
    return v0

    .line 139
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_d
        0x12 -> :sswitch_c
        0x1a -> :sswitch_b
        0x22 -> :sswitch_a
        0x2a -> :sswitch_9
        0x32 -> :sswitch_8
        0x3a -> :sswitch_7
        0x42 -> :sswitch_6
        0x4a -> :sswitch_5
        0x52 -> :sswitch_4
        0x5a -> :sswitch_3
        0x62 -> :sswitch_2
        0x6a -> :sswitch_1
        0x72 -> :sswitch_0
    .end sparse-switch
.end method
