.class public Lsu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsu$j;,
        Lsu$i;
    }
.end annotation


# instance fields
.field public a:Landroid/view/ViewGroup;

.field public b:Landroid/view/View;

.field public c:Llh;

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:I

.field public h:I

.field public i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public j:Lsu$j;

.field public k:Lsu$i;

.field public l:Ljava/lang/Runnable;

.field public m:Landroid/widget/TextView$OnEditorActionListener;

.field public n:Landroid/view/View$OnKeyListener;

.field public o:Ljava/lang/Runnable;

.field public p:Z

.field public q:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lsu;->d:I

    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lsu;->g:I

    .line 10
    iput v0, p0, Lsu;->h:I

    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 18
    iput-object v0, p0, Lsu;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    new-instance v0, Lsu$a;

    .line 22
    invoke-direct {v0, p0}, Lsu$a;-><init>(Lsu;)V

    .line 25
    iput-object v0, p0, Lsu;->j:Lsu$j;

    .line 27
    new-instance v0, Lsu$b;

    .line 29
    invoke-direct {v0, p0}, Lsu$b;-><init>(Lsu;)V

    .line 32
    iput-object v0, p0, Lsu;->k:Lsu$i;

    .line 34
    new-instance v0, Lsu$d;

    .line 36
    invoke-direct {v0, p0}, Lsu$d;-><init>(Lsu;)V

    .line 39
    iput-object v0, p0, Lsu;->l:Ljava/lang/Runnable;

    .line 41
    new-instance v0, Lsu$e;

    .line 43
    invoke-direct {v0, p0}, Lsu$e;-><init>(Lsu;)V

    .line 46
    iput-object v0, p0, Lsu;->m:Landroid/widget/TextView$OnEditorActionListener;

    .line 48
    new-instance v0, Lsu$f;

    .line 50
    invoke-direct {v0, p0}, Lsu$f;-><init>(Lsu;)V

    .line 53
    iput-object v0, p0, Lsu;->n:Landroid/view/View$OnKeyListener;

    .line 55
    new-instance v0, Lsu$g;

    .line 57
    invoke-direct {v0, p0}, Lsu$g;-><init>(Lsu;)V

    .line 60
    iput-object v0, p0, Lsu;->o:Ljava/lang/Runnable;

    .line 62
    new-instance v0, Lsu$h;

    .line 64
    invoke-direct {v0, p0}, Lsu$h;-><init>(Lsu;)V

    .line 67
    iput-object v0, p0, Lsu;->q:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 69
    iput p1, p0, Lsu;->h:I

    .line 71
    return-void
.end method

.method public static E(Landroid/view/View;)V
    .locals 7

    .line 1
    const-string v0, "InputMethodWrapper"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v2

    .line 8
    const-string v3, "input_method"

    .line 10
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 16
    invoke-virtual {v2, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 19
    move-result p0

    .line 20
    const-string v3, "showSystemKeyboard isShowSoftInput is {?}"

    .line 22
    const/4 v4, 0x1

    .line 23
    new-array v5, v4, [Ljava/lang/Object;

    .line 25
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    move-result-object p0

    .line 29
    aput-object p0, v5, v1

    .line 31
    invoke-static {v0, v3, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    invoke-static {}, Lse;->c()Lse;

    .line 37
    move-result-object p0

    .line 38
    const/16 v3, 0x2736

    .line 40
    invoke-virtual {p0, v3}, Lse;->getBooleanValue(I)Z

    .line 43
    move-result p0

    .line 44
    const-string v3, "showSystemKeyboard isShowForced is {?}"

    .line 46
    new-array v5, v4, [Ljava/lang/Object;

    .line 48
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 51
    move-result-object v6

    .line 52
    aput-object v6, v5, v1

    .line 54
    invoke-static {v0, v3, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    if-eqz p0, :cond_0

    .line 59
    const/4 p0, 0x2

    .line 60
    invoke-virtual {v2, p0, v4}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 63
    :cond_0
    const-string p0, "showSystemKeyboard done"

    .line 65
    new-array v2, v1, [Ljava/lang/Object;

    .line 67
    invoke-static {v0, p0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    .line 71
    :catch_0
    move-exception p0

    .line 72
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 75
    move-result-object v2

    .line 76
    new-array v1, v1, [Ljava/lang/Object;

    .line 78
    invoke-static {v0, v2, p0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 81
    :goto_0
    return-void
.end method

.method public static synthetic a(Lsu;)I
    .locals 0

    .line 1
    iget p0, p0, Lsu;->h:I

    .line 3
    return p0
.end method

.method public static synthetic b(Lsu;)Llh;
    .locals 0

    .line 1
    iget-object p0, p0, Lsu;->c:Llh;

    .line 3
    return-object p0
.end method

.method public static synthetic c(Lsu;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lsu;->p:Z

    .line 3
    return p0
.end method

.method public static synthetic d(Lsu;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsu;->p:Z

    .line 3
    return p1
.end method

.method public static synthetic e(Lsu;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lsu;->q:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 3
    return-object p0
.end method

.method public static synthetic f(Lsu;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lsu;->a:Landroid/view/ViewGroup;

    .line 3
    return-object p0
.end method

.method public static synthetic g(Lsu;)I
    .locals 0

    .line 1
    iget p0, p0, Lsu;->g:I

    .line 3
    return p0
.end method

.method public static synthetic h(Lsu;)Lsu$j;
    .locals 0

    .line 1
    iget-object p0, p0, Lsu;->j:Lsu$j;

    .line 3
    return-object p0
.end method

.method public static synthetic i(Lsu;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lsu;->o(I)V

    .line 4
    return-void
.end method

.method public static synthetic j(Lsu;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsu;->z()V

    .line 4
    return-void
.end method

.method public static synthetic k(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lsu;->E(Landroid/view/View;)V

    .line 4
    return-void
.end method

.method public static synthetic l(Lsu;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lsu;->b:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method public static n()Ltu;
    .locals 1

    .line 1
    invoke-static {}, Ltu;->c()Ltu;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static q(Landroid/view/View;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "InputMethodWrapper"

    .line 6
    const-string v3, "hideSystemKeyboard"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v1

    .line 15
    const-string v3, "input_method"

    .line 17
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    new-array v0, v0, [Ljava/lang/Object;

    .line 38
    invoke-static {v2, v1, p0, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 41
    :goto_0
    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 1

    .line 1
    iput p1, p0, Lsu;->d:I

    .line 3
    iget-object v0, p0, Lsu;->c:Llh;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1}, Llh;->setInputType(I)V

    .line 10
    :cond_0
    return-void
.end method

.method public B(I)V
    .locals 2

    .line 1
    iput p1, p0, Lsu;->e:I

    .line 3
    if-lez p1, :cond_0

    .line 5
    iget-object p1, p0, Lsu;->c:Llh;

    .line 7
    if-eqz p1, :cond_0

    .line 9
    const/4 p1, 0x1

    .line 10
    new-array p1, p1, [Landroid/text/InputFilter;

    .line 12
    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    .line 14
    iget v1, p0, Lsu;->e:I

    .line 16
    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 19
    const/4 v1, 0x0

    .line 20
    aput-object v0, p1, v1

    .line 22
    iget-object v0, p0, Lsu;->c:Llh;

    .line 24
    invoke-virtual {v0, p1}, Llh;->setFilters([Landroid/text/InputFilter;)V

    .line 27
    :cond_0
    return-void
.end method

.method public final C(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lsu;->c:Llh;

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lsu;->r(I)V

    .line 8
    :cond_0
    invoke-static {}, Ltu;->c()Ltu;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ltu;->g()Z

    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    const-string v2, "InputMethodWrapper"

    .line 19
    if-eqz v0, :cond_1

    .line 21
    invoke-static {}, Lzm;->d()Lzm;

    .line 24
    move-result-object v0

    .line 25
    sget-object v3, Lzm;->W:Ljava/lang/String;

    .line 27
    const/4 v4, 0x1

    .line 28
    invoke-virtual {v0, v3, v4}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 31
    move-result v0

    .line 32
    iget-object v3, p0, Lsu;->a:Landroid/view/ViewGroup;

    .line 34
    if-eqz v3, :cond_1

    .line 36
    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 41
    move-result-object v0

    .line 42
    iget-object v3, p0, Lsu;->q:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 44
    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 47
    invoke-static {}, Lvo;->c()Landroid/os/Handler;

    .line 50
    move-result-object v0

    .line 51
    new-instance v3, Lsu$c;

    .line 53
    invoke-direct {v3, p0}, Lsu$c;-><init>(Lsu;)V

    .line 56
    const-wide/16 v4, 0x3c

    .line 58
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    const-string v0, "showSoftInput addOnGlobalLayoutListener"

    .line 63
    new-array v3, v1, [Ljava/lang/Object;

    .line 65
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    :cond_1
    iget-object v0, p0, Lsu;->c:Llh;

    .line 70
    if-eqz v0, :cond_2

    .line 72
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 75
    move-result-object v0

    .line 76
    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p0, Lsu;->c:Llh;

    .line 80
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    const-string v0, "showSoftInput Before requestFocus: isFocused="

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object v0, p0, Lsu;->c:Llh;

    .line 95
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 98
    move-result v0

    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p1

    .line 106
    new-array v0, v1, [Ljava/lang/Object;

    .line 108
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iget-object p1, p0, Lsu;->c:Llh;

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 116
    move-result p1

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    .line 119
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    const-string v3, "showSoftInput After requestFocus: isGainFocus="

    .line 124
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 130
    const-string p1, ", isFocused="

    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-object p1, p0, Lsu;->c:Llh;

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    .line 140
    move-result p1

    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object p1

    .line 148
    new-array v0, v1, [Ljava/lang/Object;

    .line 150
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    invoke-virtual {p0}, Lsu;->z()V

    .line 156
    iget-object p1, p0, Lsu;->c:Llh;

    .line 158
    invoke-static {p1}, Lsu;->E(Landroid/view/View;)V

    .line 161
    :cond_2
    return-void
.end method

.method public D(IZ)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lsu;->m()Landroid/app/Activity;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "InputMethodWrapper"

    .line 8
    if-nez v0, :cond_0

    .line 10
    const-string p1, "inputMethodWrapper hostActivity is null"

    .line 12
    new-array p2, v1, [Ljava/lang/Object;

    .line 14
    invoke-static {v2, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    return-void

    .line 18
    :cond_0
    const/4 v0, 0x2

    .line 19
    new-array v0, v0, [Ljava/lang/Object;

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v3

    .line 25
    aput-object v3, v0, v1

    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 31
    move-result-object v4

    .line 32
    aput-object v4, v0, v3

    .line 34
    const-string v3, "showSystemInputMethod imeOptions:{?} isShow:{?}"

    .line 36
    invoke-static {v2, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    if-eqz p2, :cond_3

    .line 41
    iget-object p2, p0, Lsu;->a:Landroid/view/ViewGroup;

    .line 43
    if-nez p2, :cond_1

    .line 45
    invoke-virtual {p0}, Lsu;->s()V

    .line 48
    :cond_1
    iget-object p2, p0, Lsu;->a:Landroid/view/ViewGroup;

    .line 50
    if-nez p2, :cond_2

    .line 52
    const-string p1, "showSystemInputMethod show rootView not init"

    .line 54
    new-array p2, v1, [Ljava/lang/Object;

    .line 56
    invoke-static {v2, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    return-void

    .line 60
    :cond_2
    invoke-virtual {p0, p1}, Lsu;->C(I)V

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    invoke-virtual {p0}, Lsu;->p()V

    .line 67
    :goto_0
    return-void
.end method

.method public final m()Landroid/app/Activity;
    .locals 2

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lsu;->h:I

    .line 7
    invoke-virtual {v0, v1}, Lse;->getInputAttachActivity(I)Landroid/app/Activity;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final o(I)V
    .locals 2

    .line 1
    const/16 v0, 0x7a

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq p1, v0, :cond_1

    .line 6
    const/16 v0, 0x7b

    .line 8
    if-eq p1, v0, :cond_0

    .line 10
    packed-switch p1, :pswitch_data_0

    .line 13
    goto :goto_0

    .line 14
    :pswitch_0
    iget-object p1, p0, Lsu;->c:Llh;

    .line 16
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 27
    move-result p1

    .line 28
    iget-object v0, p0, Lsu;->c:Llh;

    .line 30
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 33
    move-result v0

    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 36
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 39
    move-result p1

    .line 40
    invoke-virtual {p0, p1}, Lsu;->w(I)V

    .line 43
    goto :goto_0

    .line 44
    :pswitch_1
    iget-object p1, p0, Lsu;->c:Llh;

    .line 46
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    .line 49
    move-result p1

    .line 50
    add-int/lit8 p1, p1, -0x1

    .line 52
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 55
    move-result p1

    .line 56
    invoke-virtual {p0, p1}, Lsu;->w(I)V

    .line 59
    goto :goto_0

    .line 60
    :pswitch_2
    iget p1, p0, Lsu;->g:I

    .line 62
    invoke-virtual {p0, p1}, Lsu;->w(I)V

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    iget-object p1, p0, Lsu;->c:Llh;

    .line 68
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 79
    move-result p1

    .line 80
    invoke-virtual {p0, p1}, Lsu;->w(I)V

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p0, v1}, Lsu;->w(I)V

    .line 87
    :goto_0
    return-void

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public p()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "InputMethodWrapper"

    .line 6
    const-string v3, "hideSoftInput "

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v1, p0, Lsu;->j:Lsu$j;

    .line 13
    if-eqz v1, :cond_1

    .line 15
    invoke-static {}, Lse;->c()Lse;

    .line 18
    move-result-object v1

    .line 19
    const v3, 0xea61

    .line 22
    invoke-virtual {v1, v3}, Lse;->getOptionalValue(I)Leq$a;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Leq$a;->b()Z

    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 32
    iget-object v1, p0, Lsu;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 40
    iget-object v1, p0, Lsu;->j:Lsu$j;

    .line 42
    invoke-interface {v1, v0}, Lsu$j;->a(Z)V

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object v1, p0, Lsu;->j:Lsu$j;

    .line 48
    invoke-interface {v1, v0}, Lsu$j;->a(Z)V

    .line 51
    :cond_1
    :goto_0
    invoke-static {}, Ltu;->c()Ltu;

    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Ltu;->g()Z

    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_2

    .line 61
    invoke-static {}, Lzm;->d()Lzm;

    .line 64
    move-result-object v1

    .line 65
    sget-object v3, Lzm;->W:Ljava/lang/String;

    .line 67
    const/4 v4, 0x1

    .line 68
    invoke-virtual {v1, v3, v4}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 71
    move-result v1

    .line 72
    iget-object v3, p0, Lsu;->a:Landroid/view/ViewGroup;

    .line 74
    if-eqz v3, :cond_2

    .line 76
    if-eqz v1, :cond_2

    .line 78
    iput-boolean v0, p0, Lsu;->p:Z

    .line 80
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 83
    move-result-object v1

    .line 84
    iget-object v3, p0, Lsu;->q:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 86
    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 89
    const-string v1, "hideSoftInput removeOnGlobalLayoutListener"

    .line 91
    new-array v0, v0, [Ljava/lang/Object;

    .line 93
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    :cond_2
    iget-object v0, p0, Lsu;->c:Llh;

    .line 98
    if-eqz v0, :cond_3

    .line 100
    invoke-static {v0}, Lsu;->q(Landroid/view/View;)V

    .line 103
    invoke-virtual {p0}, Lsu;->u()V

    .line 106
    :cond_3
    return-void
.end method

.method public final r(I)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lsu;->m()Landroid/app/Activity;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Llh;

    .line 10
    invoke-direct {v1, v0}, Llh;-><init>(Landroid/content/Context;)V

    .line 13
    iput-object v1, p0, Lsu;->c:Llh;

    .line 15
    iget v0, p0, Lsu;->d:I

    .line 17
    invoke-virtual {v1, v0}, Llh;->setInputType(I)V

    .line 20
    iget-object v0, p0, Lsu;->f:Ljava/lang/String;

    .line 22
    if-eqz v0, :cond_1

    .line 24
    iget-object v1, p0, Lsu;->c:Llh;

    .line 26
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    :cond_1
    iget-object v0, p0, Lsu;->c:Llh;

    .line 31
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 34
    iget p1, p0, Lsu;->e:I

    .line 36
    if-lez p1, :cond_2

    .line 38
    iget-object v0, p0, Lsu;->c:Llh;

    .line 40
    invoke-virtual {v0, p1}, Llh;->setMacTextLenght(I)V

    .line 43
    :cond_2
    iget-object p1, p0, Lsu;->c:Llh;

    .line 45
    iget-object v0, p0, Lsu;->k:Lsu$i;

    .line 47
    invoke-virtual {p1, v0}, Llh;->setSoftInputContent(Lsu$i;)V

    .line 50
    iget-object p1, p0, Lsu;->c:Llh;

    .line 52
    iget-object v0, p0, Lsu;->m:Landroid/widget/TextView$OnEditorActionListener;

    .line 54
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 57
    iget-object p1, p0, Lsu;->c:Llh;

    .line 59
    iget-object v0, p0, Lsu;->n:Landroid/view/View$OnKeyListener;

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 64
    const/4 p1, 0x5

    .line 65
    new-array p1, p1, [Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lsu;->c:Llh;

    .line 69
    const/4 v1, 0x0

    .line 70
    aput-object v0, p1, v1

    .line 72
    iget v0, p0, Lsu;->d:I

    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    move-result-object v0

    .line 78
    const/4 v2, 0x1

    .line 79
    aput-object v0, p1, v2

    .line 81
    iget-object v0, p0, Lsu;->f:Ljava/lang/String;

    .line 83
    const/4 v3, 0x2

    .line 84
    aput-object v0, p1, v3

    .line 86
    iget-object v0, p0, Lsu;->k:Lsu$i;

    .line 88
    const/4 v4, 0x3

    .line 89
    aput-object v0, p1, v4

    .line 91
    iget v0, p0, Lsu;->e:I

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    move-result-object v0

    .line 97
    const/4 v5, 0x4

    .line 98
    aput-object v0, p1, v5

    .line 100
    const-string v0, "InputMethodWrapper"

    .line 102
    const-string v6, "initEditText info mCustomEditText={?},mKeyboardType={?},mInputContent={?},mSoftInputContent={?},mMaxTextLenght={?}"

    .line 104
    invoke-static {v0, v6, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    iget-object p1, p0, Lsu;->a:Landroid/view/ViewGroup;

    .line 109
    instance-of p1, p1, Landroid/widget/FrameLayout;

    .line 111
    if-eqz p1, :cond_3

    .line 113
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 115
    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 118
    goto :goto_0

    .line 119
    :cond_3
    new-instance p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 121
    invoke-direct {p1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 124
    :goto_0
    invoke-static {}, Lsk;->c()Lsk;

    .line 127
    move-result-object v6

    .line 128
    invoke-virtual {v6}, Lsk;->b()Lrk;

    .line 131
    move-result-object v6

    .line 132
    invoke-virtual {v6}, Lrk;->e()Z

    .line 135
    move-result v6

    .line 136
    if-eqz v6, :cond_4

    .line 138
    invoke-static {}, Lsk;->c()Lsk;

    .line 141
    move-result-object v6

    .line 142
    invoke-virtual {v6}, Lsk;->b()Lrk;

    .line 145
    move-result-object v6

    .line 146
    invoke-virtual {v6}, Lrk;->d()I

    .line 149
    move-result v6

    .line 150
    add-int/2addr v6, v5

    .line 151
    iput v6, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 153
    invoke-static {}, Lsk;->c()Lsk;

    .line 156
    move-result-object v6

    .line 157
    invoke-virtual {v6}, Lsk;->b()Lrk;

    .line 160
    move-result-object v6

    .line 161
    invoke-virtual {v6}, Lrk;->b()I

    .line 164
    move-result v6

    .line 165
    add-int/2addr v6, v5

    .line 166
    iput v6, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 168
    goto :goto_1

    .line 169
    :cond_4
    invoke-static {}, Ltu;->c()Ltu;

    .line 172
    move-result-object v6

    .line 173
    invoke-virtual {v6}, Ltu;->d()I

    .line 176
    move-result v6

    .line 177
    if-lez v6, :cond_5

    .line 179
    invoke-static {}, Ltu;->c()Ltu;

    .line 182
    move-result-object v6

    .line 183
    invoke-virtual {v6}, Ltu;->d()I

    .line 186
    move-result v6

    .line 187
    add-int/2addr v6, v5

    .line 188
    iput v6, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 190
    iput v5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 192
    :cond_5
    :goto_1
    new-array v4, v4, [Ljava/lang/Object;

    .line 194
    iget-object v5, p0, Lsu;->a:Landroid/view/ViewGroup;

    .line 196
    aput-object v5, v4, v1

    .line 198
    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 200
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    move-result-object v1

    .line 204
    aput-object v1, v4, v2

    .line 206
    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 208
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    move-result-object v1

    .line 212
    aput-object v1, v4, v3

    .line 214
    const-string v1, "initEditText,mRootView={?},layoutParams,topMargin={?},leftMargin={?}"

    .line 216
    invoke-static {v0, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lsu;->c:Llh;

    .line 221
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    iget-object p1, p0, Lsu;->c:Llh;

    .line 226
    const v0, 0x106000d

    .line 229
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 232
    iget-object p1, p0, Lsu;->c:Llh;

    .line 234
    iget-object v0, p0, Lsu;->o:Ljava/lang/Runnable;

    .line 236
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 239
    iget-object p1, p0, Lsu;->a:Landroid/view/ViewGroup;

    .line 241
    iget-object v0, p0, Lsu;->c:Llh;

    .line 243
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 246
    return-void
.end method

.method public final s()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lsu;->m()Landroid/app/Activity;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "InputMethodWrapper"

    .line 8
    if-nez v0, :cond_0

    .line 10
    const-string v0, "initSoftInput hostActivity is null"

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    return-void

    .line 18
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lsu;->b:Landroid/view/View;

    .line 28
    const v3, 0x1020002

    .line 31
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/view/ViewGroup;

    .line 37
    iput-object v0, p0, Lsu;->a:Landroid/view/ViewGroup;

    .line 39
    invoke-static {}, Ltu;->c()Ltu;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ltu;->g()Z

    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 49
    invoke-static {}, Lzm;->d()Lzm;

    .line 52
    move-result-object v0

    .line 53
    sget-object v3, Lzm;->W:Ljava/lang/String;

    .line 55
    const/4 v4, 0x1

    .line 56
    invoke-virtual {v0, v3, v4}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lsu;->a:Landroid/view/ViewGroup;

    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 67
    move-result-object v0

    .line 68
    iget-object v3, p0, Lsu;->q:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 70
    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 73
    const-string v0, "initSoftInput addOnGlobalLayoutListener"

    .line 75
    new-array v3, v1, [Ljava/lang/Object;

    .line 77
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 85
    move-result-object v3

    .line 86
    new-array v1, v1, [Ljava/lang/Object;

    .line 88
    invoke-static {v2, v3, v0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 91
    :cond_1
    :goto_0
    return-void
.end method

.method public t()V
    .locals 3

    .line 1
    iget-object v0, p0, Lsu;->a:Landroid/view/ViewGroup;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lzm;->d()Lzm;

    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lzm;->W:Ljava/lang/String;

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v0, v1, v2}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 18
    const/4 v0, 0x0

    .line 19
    new-array v0, v0, [Ljava/lang/Object;

    .line 21
    const-string v1, "InputMethodWrapper"

    .line 23
    const-string v2, "onDestory removeOnGlobalLayoutListener"

    .line 25
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lsu;->a:Landroid/view/ViewGroup;

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lsu;->q:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lsu;->a:Landroid/view/ViewGroup;

    .line 42
    iput-object v0, p0, Lsu;->b:Landroid/view/View;

    .line 44
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "InputMethodWrapper{mRootView="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lsu;->a:Landroid/view/ViewGroup;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", mDisplayId="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v1, p0, Lsu;->h:I

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", mCustomEditText="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v1, p0, Lsu;->c:Llh;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", isSoftKeyboardShow="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-boolean v1, p0, Lsu;->p:Z

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    const/16 v1, 0x7d

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method

.method public final u()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "InputMethodWrapper"

    .line 6
    const-string v3, "removeEditText"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v1, 0x1

    .line 12
    iput v1, p0, Lsu;->d:I

    .line 14
    iput v0, p0, Lsu;->e:I

    .line 16
    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lsu;->f:Ljava/lang/String;

    .line 19
    const/4 v4, -0x1

    .line 20
    iput v4, p0, Lsu;->g:I

    .line 22
    iget-object v4, p0, Lsu;->c:Llh;

    .line 24
    if-eqz v4, :cond_0

    .line 26
    new-array v0, v0, [Ljava/lang/Object;

    .line 28
    invoke-static {v2, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lsu;->c:Llh;

    .line 33
    iget-object v2, p0, Lsu;->o:Ljava/lang/Runnable;

    .line 35
    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 38
    iget-object v0, p0, Lsu;->c:Llh;

    .line 40
    iget-object v2, p0, Lsu;->l:Ljava/lang/Runnable;

    .line 42
    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 45
    iget-object v0, p0, Lsu;->c:Llh;

    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/view/ViewGroup;

    .line 53
    iget-object v2, p0, Lsu;->c:Llh;

    .line 55
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 58
    iput-object v1, p0, Lsu;->c:Llh;

    .line 60
    :cond_0
    return-void
.end method

.method public v()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsu;->c:Llh;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lsu;->g:I

    .line 11
    :cond_0
    return-void
.end method

.method public w(I)V
    .locals 2

    .line 1
    iput p1, p0, Lsu;->g:I

    .line 3
    iget-object p1, p0, Lsu;->c:Llh;

    .line 5
    if-eqz p1, :cond_0

    .line 7
    iget-object v0, p0, Lsu;->l:Ljava/lang/Runnable;

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    new-array p1, p1, [Ljava/lang/Object;

    .line 16
    const-string v0, "InputMethodWrapper"

    .line 18
    const-string v1, "setEditTextSelection mCustomEditText is null"

    .line 20
    invoke-static {v0, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    :goto_0
    return-void
.end method

.method public x(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsu;->c:Llh;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setSelection(II)V

    .line 8
    :cond_0
    return-void
.end method

.method public y(Ljava/lang/String;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lsu;->f:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lsu;->c:Llh;

    .line 5
    if-eqz v0, :cond_1

    .line 7
    const/4 v1, 0x2

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v0, v1, v2

    .line 13
    const/4 v0, 0x1

    .line 14
    aput-object p1, v1, v0

    .line 16
    const-string v0, "InputMethodWrapper"

    .line 18
    const-string v3, "setInputContent mCustomEditText={?},setText={?}"

    .line 20
    invoke-static {v0, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 29
    iget-object v1, p0, Lsu;->c:Llh;

    .line 31
    invoke-virtual {v1}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_0

    .line 37
    iget-object p1, p0, Lsu;->c:Llh;

    .line 39
    invoke-virtual {p1}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    .line 42
    move-result-object p1

    .line 43
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 46
    const-string p1, "setInputContent clear content done"

    .line 48
    new-array v1, v2, [Ljava/lang/Object;

    .line 50
    invoke-static {v0, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lsu;->c:Llh;

    .line 56
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :cond_1
    return-void
.end method

.method public final z()V
    .locals 7

    .line 1
    iget-object v0, p0, Lsu;->c:Llh;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getInputExtras(Z)Landroid/os/Bundle;

    .line 7
    move-result-object v0

    .line 8
    invoke-static {}, Lse;->c()Lse;

    .line 11
    move-result-object v1

    .line 12
    const v2, 0xea60

    .line 15
    invoke-virtual {v1, v2}, Lse;->getOptionalValue(I)Leq$a;

    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 21
    invoke-virtual {v1}, Leq$a;->a()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/os/Bundle;

    .line 27
    if-eqz v1, :cond_0

    .line 29
    const-string v2, "appFromKey"

    .line 31
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    const-string v3, "appFromVal"

    .line 37
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    const-string v4, "appFromKey "

    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v4, " appFromVal "

    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v3

    .line 66
    const/4 v4, 0x0

    .line 67
    new-array v5, v4, [Ljava/lang/Object;

    .line 69
    const-string v6, "InputMethodWrapper"

    .line 71
    invoke-static {v6, v3, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    const-string v2, "extras "

    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 94
    new-array v1, v4, [Ljava/lang/Object;

    .line 96
    invoke-static {v6, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    :cond_0
    return-void
.end method
