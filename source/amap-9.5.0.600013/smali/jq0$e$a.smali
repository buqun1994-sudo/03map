.class public Ljq0$e$a;
.super Lxq0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljq0$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lxq0;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public d(ILcq0;)Z
    .locals 0

    .line 1
    sparse-switch p1, :sswitch_data_0

    .line 4
    const/4 p1, 0x0

    .line 5
    return p1

    .line 6
    :sswitch_0
    invoke-virtual {p2}, Lcq0;->q()[B

    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Ljq0$e$a;->k:[B

    .line 12
    goto :goto_0

    .line 13
    :sswitch_1
    invoke-virtual {p2}, Lcq0;->r()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Ljq0$e$a;->j:Ljava/lang/String;

    .line 19
    goto :goto_0

    .line 20
    :sswitch_2
    invoke-virtual {p2}, Lcq0;->r()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Ljq0$e$a;->i:Ljava/lang/String;

    .line 26
    goto :goto_0

    .line 27
    :sswitch_3
    invoke-virtual {p2}, Lcq0;->r()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Ljq0$e$a;->h:Ljava/lang/String;

    .line 33
    goto :goto_0

    .line 34
    :sswitch_4
    invoke-virtual {p2}, Lcq0;->r()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Ljq0$e$a;->g:Ljava/lang/String;

    .line 40
    goto :goto_0

    .line 41
    :sswitch_5
    invoke-virtual {p2}, Lcq0;->u()I

    .line 44
    move-result p1

    .line 45
    iput p1, p0, Ljq0$e$a;->f:I

    .line 47
    goto :goto_0

    .line 48
    :sswitch_6
    invoke-virtual {p2}, Lcq0;->u()I

    .line 51
    move-result p1

    .line 52
    iput p1, p0, Ljq0$e$a;->e:I

    .line 54
    goto :goto_0

    .line 55
    :sswitch_7
    invoke-virtual {p2}, Lcq0;->u()I

    .line 58
    move-result p1

    .line 59
    iput p1, p0, Ljq0$e$a;->d:I

    .line 61
    goto :goto_0

    .line 62
    :sswitch_8
    invoke-virtual {p2}, Lcq0;->r()Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    iput-object p1, p0, Ljq0$e$a;->c:Ljava/lang/String;

    .line 68
    goto :goto_0

    .line 69
    :sswitch_9
    invoke-virtual {p2}, Lcq0;->r()Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    iput-object p1, p0, Ljq0$e$a;->b:Ljava/lang/String;

    .line 75
    goto :goto_0

    .line 76
    :sswitch_a
    invoke-virtual {p2}, Lcq0;->r()Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    iput-object p1, p0, Ljq0$e$a;->a:Ljava/lang/String;

    .line 82
    :goto_0
    const/4 p1, 0x1

    .line 83
    return p1

    .line 84
    nop

    .line 85
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_a
        0x12 -> :sswitch_9
        0x1a -> :sswitch_8
        0x20 -> :sswitch_7
        0x28 -> :sswitch_6
        0x30 -> :sswitch_5
        0x3a -> :sswitch_4
        0x42 -> :sswitch_3
        0x4a -> :sswitch_2
        0x52 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method
