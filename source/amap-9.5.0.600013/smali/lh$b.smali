.class public Llh$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lsu$i;

.field public b:Landroid/widget/EditText;

.field public c:I


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Llh$b;->b:Landroid/widget/EditText;

    .line 6
    invoke-virtual {p1}, Landroid/widget/TextView;->getInputType()I

    .line 9
    move-result p1

    .line 10
    iput p1, p0, Llh$b;->c:I

    .line 12
    return-void
.end method


# virtual methods
.method public a(Lsu$i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llh$b;->a:Lsu$i;

    .line 3
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const-string p1, "CustomEditText"

    .line 9
    const-string v1, "afterTextChanged s:{?} "

    .line 11
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    return-void
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Llh$b;->c:I

    .line 3
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object p2

    .line 12
    aput-object p2, v0, p1

    .line 14
    const/4 p1, 0x2

    .line 15
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object p2

    .line 19
    aput-object p2, v0, p1

    .line 21
    const/4 p1, 0x3

    .line 22
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object p2

    .line 26
    aput-object p2, v0, p1

    .line 28
    const-string p1, "CustomEditText"

    .line 30
    const-string p2, "beforeTextChanged s:{?} start:{?} count:{?} after:{?}"

    .line 32
    invoke-static {p1, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object p2

    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object p2, v0, v2

    .line 14
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object p2

    .line 18
    const/4 p3, 0x2

    .line 19
    aput-object p2, v0, p3

    .line 21
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object p2

    .line 25
    const/4 p4, 0x3

    .line 26
    aput-object p2, v0, p4

    .line 28
    const-string p2, "CustomEditText"

    .line 30
    const-string v3, "onTextChanged buffer:{?} start:{?} before:{?} count:{?}"

    .line 32
    invoke-static {p2, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Llh$b;->b:Landroid/widget/EditText;

    .line 37
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 40
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    new-array v3, v2, [Ljava/lang/Object;

    .line 46
    iget v4, p0, Llh$b;->c:I

    .line 48
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object v4

    .line 52
    aput-object v4, v3, v1

    .line 54
    const-string v4, "onTextChanged getInputType:{?} "

    .line 56
    invoke-static {p2, v4, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    const/16 v3, 0x9

    .line 61
    iget v4, p0, Llh$b;->c:I

    .line 63
    if-ne v3, v4, :cond_5

    .line 65
    iget-object v0, p0, Llh$b;->b:Landroid/widget/EditText;

    .line 67
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 70
    move-result v0

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    .line 73
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 77
    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 83
    move-result p1

    .line 84
    if-lez p1, :cond_2

    .line 86
    sub-int/2addr p1, v2

    .line 87
    move v4, v0

    .line 88
    const/4 v5, 0x0

    .line 89
    :goto_0
    if-ltz p1, :cond_3

    .line 91
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 94
    move-result v6

    .line 95
    invoke-static {v6}, Llh;->c(C)Z

    .line 98
    move-result v6

    .line 99
    if-nez v6, :cond_1

    .line 101
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 104
    if-gt p1, v4, :cond_0

    .line 106
    add-int/lit8 v4, v4, -0x1

    .line 108
    :cond_0
    const/4 v5, 0x1

    .line 109
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 111
    goto :goto_0

    .line 112
    :cond_2
    move v4, v0

    .line 113
    const/4 v5, 0x0

    .line 114
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object p1

    .line 118
    if-eqz v5, :cond_4

    .line 120
    iget-object v5, p0, Llh$b;->b:Landroid/widget/EditText;

    .line 122
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    if-ltz v4, :cond_4

    .line 127
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 130
    move-result v3

    .line 131
    if-gt v4, v3, :cond_4

    .line 133
    iget-object v3, p0, Llh$b;->b:Landroid/widget/EditText;

    .line 135
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 138
    :cond_4
    new-array p4, p4, [Ljava/lang/Object;

    .line 140
    aput-object p1, p4, v1

    .line 142
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    move-result-object v0

    .line 146
    aput-object v0, p4, v2

    .line 148
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    move-result-object v0

    .line 152
    aput-object v0, p4, p3

    .line 154
    const-string v0, "onTextChanged afterContent:{?} beforeStratIndex:{?} current:{?}"

    .line 156
    invoke-static {p2, v0, p4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    move-object v0, p1

    .line 160
    :cond_5
    iget-object p1, p0, Llh$b;->a:Lsu$i;

    .line 162
    if-eqz p1, :cond_6

    .line 164
    invoke-interface {p1, v0}, Lsu$i;->a(Ljava/lang/String;)V

    .line 167
    :cond_6
    new-array p1, p3, [Ljava/lang/Object;

    .line 169
    aput-object v0, p1, v1

    .line 171
    iget-object p3, p0, Llh$b;->b:Landroid/widget/EditText;

    .line 173
    aput-object p3, p1, v2

    .line 175
    const-string p3, "onTextChanged updateContent content:{?},hostEText={?}"

    .line 177
    invoke-static {p2, p3, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    iget-object p1, p0, Llh$b;->b:Landroid/widget/EditText;

    .line 182
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 185
    return-void
.end method
