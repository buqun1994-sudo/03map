.class public Llh;
.super Landroid/widget/EditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llh$b;,
        Llh$c;,
        Llh$d;
    }
.end annotation


# instance fields
.field public a:I

.field public b:[Landroid/text/InputFilter;

.field public c:Llh$b;

.field public d:Landroid/text/InputFilter;

.field public e:Landroid/text/InputFilter$LengthFilter;

.field public f:Llh$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 4
    const/4 p1, 0x6

    .line 5
    iput p1, p0, Llh;->a:I

    .line 7
    new-instance p1, Llh$b;

    .line 9
    invoke-direct {p1, p0}, Llh$b;-><init>(Landroid/widget/EditText;)V

    .line 12
    iput-object p1, p0, Llh;->c:Llh$b;

    .line 14
    new-instance p1, Llh$c;

    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {p1, v0}, Llh$c;-><init>(Llh$a;)V

    .line 20
    iput-object p1, p0, Llh;->f:Llh$c;

    .line 22
    invoke-virtual {p0}, Llh;->b()V

    .line 25
    return-void
.end method

.method public static c(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_3

    const/16 v0, 0x39

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Llh;->d:Landroid/text/InputFilter;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v3, p0, Llh;->e:Landroid/text/InputFilter$LengthFilter;

    .line 9
    if-eqz v3, :cond_0

    .line 11
    const/4 v4, 0x2

    .line 12
    new-array v4, v4, [Landroid/text/InputFilter;

    .line 14
    aput-object v0, v4, v1

    .line 16
    aput-object v3, v4, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-eqz v0, :cond_1

    .line 21
    new-array v4, v2, [Landroid/text/InputFilter;

    .line 23
    aput-object v0, v4, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, p0, Llh;->e:Landroid/text/InputFilter$LengthFilter;

    .line 28
    if-eqz v0, :cond_2

    .line 30
    new-array v4, v2, [Landroid/text/InputFilter;

    .line 32
    aput-object v0, v4, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/4 v4, 0x0

    .line 36
    :goto_0
    if-eqz v4, :cond_3

    .line 38
    invoke-virtual {p0, v4}, Llh;->setFilters([Landroid/text/InputFilter;)V

    .line 41
    :cond_3
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Landroid/text/InputFilter;

    .line 4
    iput-object v0, p0, Llh;->b:[Landroid/text/InputFilter;

    .line 6
    iget-object v0, p0, Llh;->c:Llh$b;

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 11
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

    .line 13
    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 20
    new-instance v0, Llh$a;

    .line 22
    invoke-direct {v0, p0}, Llh$a;-><init>(Llh;)V

    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 28
    return-void
.end method

.method public d(Ljava/lang/String;I)I
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "CustomEditText"

    .line 6
    const-string v3, "transformSelectionHMI2SYS"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    if-gtz p2, :cond_0

    .line 13
    return v0

    .line 14
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 17
    move-result v1

    .line 18
    const/4 v3, 0x1

    .line 19
    const/4 v4, 0x2

    .line 20
    if-gt v1, p2, :cond_1

    .line 22
    new-array v1, v4, [Ljava/lang/Object;

    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 27
    move-result v4

    .line 28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v4

    .line 32
    aput-object v4, v1, v0

    .line 34
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object p2

    .line 38
    aput-object p2, v1, v3

    .line 40
    const-string p2, "text.length() <= inputSelection ,text.length:{?} , inputSelection:{?}"

    .line 42
    invoke-static {v2, p2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 48
    move-result p1

    .line 49
    return p1

    .line 50
    :cond_1
    invoke-static {p1, v4}, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->breakCharacters(Ljava/lang/String;I)[Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    array-length v5, v1

    .line 55
    if-gt v5, p2, :cond_2

    .line 57
    new-array v4, v4, [Ljava/lang/Object;

    .line 59
    array-length v1, v1

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object v1

    .line 64
    aput-object v1, v4, v0

    .line 66
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object p2

    .line 70
    aput-object p2, v4, v3

    .line 72
    const-string p2, "transformSelectionHMI2SYS breakCharacters.length <= inputSelection breakCharacters.length:{?} , inputSelection:{?} "

    .line 74
    invoke-static {v2, p2, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 80
    move-result p1

    .line 81
    return p1

    .line 82
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    const/4 v6, 0x0

    .line 88
    :goto_0
    if-ge v6, p2, :cond_3

    .line 90
    aget-object v7, v1, v6

    .line 92
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    add-int/lit8 v6, v6, 0x1

    .line 97
    goto :goto_0

    .line 98
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 105
    move-result v1

    .line 106
    const/4 v5, 0x3

    .line 107
    new-array v5, v5, [Ljava/lang/Object;

    .line 109
    aput-object p1, v5, v0

    .line 111
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    move-result-object p1

    .line 115
    aput-object p1, v5, v3

    .line 117
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    move-result-object p1

    .line 121
    aput-object p1, v5, v4

    .line 123
    const-string p1, "transformSelectionHMI2SYS text:{?} , transformSelection:{?} ,inputSelection:{?}"

    .line 125
    invoke-static {v2, p1, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    return v1
.end method

.method public e(I)I
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->breakCharacters(Ljava/lang/String;I)[Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v6, 0x0

    .line 22
    :goto_0
    array-length v7, v2

    .line 23
    if-ge v5, v7, :cond_1

    .line 25
    aget-object v7, v2, v5

    .line 27
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 33
    move-result v7

    .line 34
    if-ne v7, p1, :cond_0

    .line 36
    add-int/lit8 v6, v5, 0x1

    .line 38
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 p1, 0x3

    .line 42
    new-array p1, p1, [Ljava/lang/Object;

    .line 44
    aput-object v0, p1, v4

    .line 46
    array-length v0, v2

    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v0

    .line 51
    const/4 v2, 0x1

    .line 52
    aput-object v0, p1, v2

    .line 54
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    move-result-object v0

    .line 58
    aput-object v0, p1, v1

    .line 60
    const-string v0, "CustomEditText"

    .line 62
    const-string v1, "transformSelectionSYS2HMI text:{?}, breakCharacters lenght:{?},transformSelection:{?}"

    .line 64
    invoke-static {v0, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    return v6
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Lib;->g()Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_2

    .line 10
    invoke-static {}, Lib;->f()Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_2

    .line 16
    invoke-static {}, Lib;->e()Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 22
    invoke-static {}, Lib;->d()Z

    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 28
    invoke-static {}, Lib;->c()Z

    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_2

    .line 34
    invoke-static {}, Lib;->b()Z

    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_2

    .line 40
    const/16 v0, 0x2c6

    .line 42
    invoke-static {v0}, Lib;->u(I)Z

    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_2

    .line 48
    array-length v0, p1

    .line 49
    const/4 v1, 0x0

    .line 50
    const/4 v2, 0x0

    .line 51
    :goto_0
    const/4 v3, 0x1

    .line 52
    if-ge v2, v0, :cond_1

    .line 54
    aget-object v4, p1, v2

    .line 56
    iget-object v5, p0, Llh;->f:Llh$c;

    .line 58
    if-ne v4, v5, :cond_0

    .line 60
    goto :goto_1

    .line 61
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const/4 v1, 0x1

    .line 65
    :goto_1
    if-eqz v1, :cond_2

    .line 67
    array-length v0, p1

    .line 68
    add-int/2addr v0, v3

    .line 69
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 72
    move-result-object p1

    .line 73
    check-cast p1, [Landroid/text/InputFilter;

    .line 75
    array-length v0, p1

    .line 76
    sub-int/2addr v0, v3

    .line 77
    iget-object v1, p0, Llh;->f:Llh$c;

    .line 79
    aput-object v1, p1, v0

    .line 81
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 84
    return-void
.end method

.method public setInputType(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Llh;->c:Llh$b;

    .line 3
    invoke-virtual {v0, p1}, Llh$b;->b(I)V

    .line 6
    const/16 v0, 0x9

    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-ne v0, p1, :cond_1

    .line 12
    invoke-static {}, Lzm;->d()Lzm;

    .line 15
    move-result-object v0

    .line 16
    sget-object v3, Lzm;->T:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v3, v2}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 24
    const/4 p1, 0x1

    .line 25
    :cond_0
    const/4 v3, 0x2

    .line 26
    new-array v3, v3, [Ljava/lang/Object;

    .line 28
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 31
    move-result-object v0

    .line 32
    aput-object v0, v3, v2

    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v0

    .line 38
    aput-object v0, v3, v1

    .line 40
    const-string v0, "CustomEditText"

    .line 42
    const-string v4, "setInputType isNeedKeepKeyboardType:{?} type:{?}"

    .line 44
    invoke-static {v0, v4, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Llh;->d:Landroid/text/InputFilter;

    .line 49
    if-nez v0, :cond_2

    .line 51
    new-instance v0, Llh$d;

    .line 53
    const-string v2, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

    .line 55
    invoke-direct {v0, v2}, Llh$d;-><init>(Ljava/lang/String;)V

    .line 58
    iput-object v0, p0, Llh;->d:Landroid/text/InputFilter;

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p0, Llh;->d:Landroid/text/InputFilter;

    .line 63
    if-eqz v0, :cond_2

    .line 65
    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Llh;->d:Landroid/text/InputFilter;

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    const/4 v1, 0x0

    .line 70
    :goto_0
    if-eqz v1, :cond_3

    .line 72
    invoke-virtual {p0}, Llh;->a()V

    .line 75
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 78
    return-void
.end method

.method public setMacTextLenght(I)V
    .locals 1

    .line 1
    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    .line 3
    invoke-direct {v0, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 6
    iput-object v0, p0, Llh;->e:Landroid/text/InputFilter$LengthFilter;

    .line 8
    invoke-virtual {p0}, Llh;->a()V

    .line 11
    return-void
.end method

.method public setSoftInputContent(Lsu$i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Llh;->c:Llh$b;

    .line 3
    invoke-virtual {v0, p1}, Llh$b;->a(Lsu$i;)V

    .line 6
    return-void
.end method

.method public setTransformSelection(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {p0, v0, p1}, Llh;->d(Ljava/lang/String;I)I

    .line 23
    move-result p1

    .line 24
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 27
    return-void
.end method
