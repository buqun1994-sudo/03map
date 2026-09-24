.class public Lsa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Landroid/view/WindowManager;

.field public c:Landroid/view/WindowManager$LayoutParams;

.field public d:Le20;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/CheckBox;

.field public g:Landroid/view/View;

.field public h:Landroid/widget/ScrollView;

.field public i:Landroid/os/Handler;

.field public j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lsa;->b:Landroid/view/WindowManager;

    .line 7
    iput-object v0, p0, Lsa;->d:Le20;

    .line 9
    new-instance v0, Landroid/os/Handler;

    .line 11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 18
    iput-object v0, p0, Lsa;->i:Landroid/os/Handler;

    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lsa;->j:Z

    .line 23
    return-void
.end method

.method public static synthetic a(Lsa;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lsa;->e:Landroid/widget/TextView;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lsa;)Landroid/widget/ScrollView;
    .locals 0

    .line 1
    iget-object p0, p0, Lsa;->h:Landroid/widget/ScrollView;

    .line 3
    return-object p0
.end method

.method public static synthetic c(Lsa;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsa;->j:Z

    .line 3
    return p1
.end method


# virtual methods
.method public d(Landroid/app/Activity;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lsa;->a:Landroid/app/Activity;

    .line 6
    new-instance p1, Le20;

    .line 8
    iget-object v0, p0, Lsa;->a:Landroid/app/Activity;

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    move-result-object v0

    .line 14
    invoke-direct {p1, v0}, Le20;-><init>(Landroid/content/Context;)V

    .line 17
    iput-object p1, p0, Lsa;->d:Le20;

    .line 19
    iget-object p1, p0, Lsa;->a:Landroid/app/Activity;

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 24
    move-result-object p1

    .line 25
    const-string v0, "window"

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Landroid/view/WindowManager;

    .line 33
    iput-object p1, p0, Lsa;->b:Landroid/view/WindowManager;

    .line 35
    invoke-static {}, Lgo0;->a()Landroid/view/WindowManager$LayoutParams;

    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lsa;->c:Landroid/view/WindowManager$LayoutParams;

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 43
    const/16 v1, 0x18

    .line 45
    if-le v0, v1, :cond_1

    .line 47
    const/16 v0, 0x7d2

    .line 49
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/16 v0, 0x7d5

    .line 54
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 56
    :goto_0
    const/4 v0, 0x1

    .line 57
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 59
    const/16 v1, 0x28

    .line 61
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 63
    const/16 v1, 0x33

    .line 65
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 67
    const/16 v1, 0x190

    .line 69
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 71
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 73
    iget-object v1, p0, Lsa;->a:Landroid/app/Activity;

    .line 75
    const/high16 v2, 0x43c80000    # 400.0f

    .line 77
    invoke-static {v1, v2}, Lmj0;->a(Landroid/content/Context;F)I

    .line 80
    move-result v1

    .line 81
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 83
    iget-object p1, p0, Lsa;->c:Landroid/view/WindowManager$LayoutParams;

    .line 85
    iget-object v1, p0, Lsa;->a:Landroid/app/Activity;

    .line 87
    const/high16 v2, 0x43960000    # 300.0f

    .line 89
    invoke-static {v1, v2}, Lmj0;->a(Landroid/content/Context;F)I

    .line 92
    move-result v1

    .line 93
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 95
    iget-object p1, p0, Lsa;->a:Landroid/app/Activity;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 100
    move-result-object p1

    .line 101
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 104
    move-result-object p1

    .line 105
    sget v1, Lb90;->e:I

    .line 107
    const/4 v2, 0x0

    .line 108
    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 111
    move-result-object p1

    .line 112
    iput-object p1, p0, Lsa;->g:Landroid/view/View;

    .line 114
    sget v1, Ly80;->i:I

    .line 116
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    move-result-object p1

    .line 120
    check-cast p1, Landroid/widget/Button;

    .line 122
    iget-object v1, p0, Lsa;->g:Landroid/view/View;

    .line 124
    sget v2, Ly80;->p0:I

    .line 126
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 129
    move-result-object v1

    .line 130
    check-cast v1, Landroid/widget/TextView;

    .line 132
    iput-object v1, p0, Lsa;->e:Landroid/widget/TextView;

    .line 134
    iget-object v1, p0, Lsa;->g:Landroid/view/View;

    .line 136
    sget v2, Ly80;->k:I

    .line 138
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    move-result-object v1

    .line 142
    new-instance v2, Lsa$b;

    .line 144
    invoke-direct {v2, p0}, Lsa$b;-><init>(Lsa;)V

    .line 147
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v1, p0, Lsa;->e:Landroid/widget/TextView;

    .line 152
    const/4 v2, 0x0

    .line 153
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object v1, p0, Lsa;->g:Landroid/view/View;

    .line 158
    sget v2, Ly80;->j:I

    .line 160
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 163
    move-result-object v1

    .line 164
    check-cast v1, Landroid/widget/CheckBox;

    .line 166
    iput-object v1, p0, Lsa;->f:Landroid/widget/CheckBox;

    .line 168
    new-instance v2, Lsa$c;

    .line 170
    invoke-direct {v2, p0}, Lsa$c;-><init>(Lsa;)V

    .line 173
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 176
    iget-object v1, p0, Lsa;->g:Landroid/view/View;

    .line 178
    sget v2, Ly80;->s0:I

    .line 180
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 183
    move-result-object v1

    .line 184
    check-cast v1, Landroid/widget/ScrollView;

    .line 186
    iput-object v1, p0, Lsa;->h:Landroid/widget/ScrollView;

    .line 188
    new-instance v1, Lsa$d;

    .line 190
    invoke-direct {v1, p0}, Lsa$d;-><init>(Lsa;)V

    .line 193
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object p1, p0, Lsa;->d:Le20;

    .line 198
    iget-object v1, p0, Lsa;->g:Landroid/view/View;

    .line 200
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 203
    iget-object p1, p0, Lsa;->b:Landroid/view/WindowManager;

    .line 205
    iget-object v1, p0, Lsa;->d:Le20;

    .line 207
    iget-object v2, p0, Lsa;->c:Landroid/view/WindowManager$LayoutParams;

    .line 209
    invoke-interface {p1, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    iput-boolean v0, p0, Lsa;->j:Z

    .line 214
    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsa;->j:Z

    .line 3
    return v0
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsa;->b:Landroid/view/WindowManager;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    iget-object v1, p0, Lsa;->d:Le20;

    .line 7
    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    const-string v1, "AutoReceiveManager"

    .line 14
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_0
    :goto_0
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    const-string v1, ""

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "showResultContent"

    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object v0, p0, Lsa;->e:Landroid/widget/TextView;

    .line 25
    if-eqz v0, :cond_0

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string p1, "\n"

    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-object p1, p0, Lsa;->e:Landroid/widget/TextView;

    .line 42
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    :cond_0
    iget-object v0, p0, Lsa;->i:Landroid/os/Handler;

    .line 55
    new-instance v1, Lsa$a;

    .line 57
    invoke-direct {v1, p0, p1}, Lsa$a;-><init>(Lsa;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    return-void
.end method
