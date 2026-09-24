.class public Lsh0;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;


# instance fields
.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 4
    iput p1, p0, Lsh0;->d:I

    .line 6
    return-void
.end method


# virtual methods
.method public c()Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    const-string v1, "KEY_TYPE"

    .line 8
    const/16 v2, 0x2f45

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    iget v1, p0, Lsh0;->d:I

    .line 15
    packed-switch v1, :pswitch_data_0

    .line 18
    goto :goto_0

    .line 19
    :pswitch_0
    const/4 v1, 0x4

    .line 20
    iput v1, p0, Lsh0;->e:I

    .line 22
    goto :goto_0

    .line 23
    :pswitch_1
    const/4 v1, 0x2

    .line 24
    iput v1, p0, Lsh0;->e:I

    .line 26
    goto :goto_0

    .line 27
    :pswitch_2
    const/4 v1, 0x1

    .line 28
    iput v1, p0, Lsh0;->e:I

    .line 30
    goto :goto_0

    .line 31
    :pswitch_3
    const/4 v1, 0x0

    .line 32
    iput v1, p0, Lsh0;->e:I

    .line 34
    :goto_0
    const-string v1, "EXTRA_EVENT_TOUCH_FRAGMENT"

    .line 36
    iget v2, p0, Lsh0;->e:I

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    return-object v0

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
