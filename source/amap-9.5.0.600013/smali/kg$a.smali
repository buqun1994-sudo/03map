.class public Lkg$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public final b:Lkg$d;

.field public final c:Lkg$c;

.field public final d:Lkg$b;

.field public final e:Lkg$e;

.field public f:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lkg$d;

    .line 6
    invoke-direct {v0}, Lkg$d;-><init>()V

    .line 9
    iput-object v0, p0, Lkg$a;->b:Lkg$d;

    .line 11
    new-instance v0, Lkg$c;

    .line 13
    invoke-direct {v0}, Lkg$c;-><init>()V

    .line 16
    iput-object v0, p0, Lkg$a;->c:Lkg$c;

    .line 18
    new-instance v0, Lkg$b;

    .line 20
    invoke-direct {v0}, Lkg$b;-><init>()V

    .line 23
    iput-object v0, p0, Lkg$a;->d:Lkg$b;

    .line 25
    new-instance v0, Lkg$e;

    .line 27
    invoke-direct {v0}, Lkg$e;-><init>()V

    .line 30
    iput-object v0, p0, Lkg$a;->e:Lkg$e;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    .line 34
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    iput-object v0, p0, Lkg$a;->f:Ljava/util/HashMap;

    .line 39
    return-void
.end method

.method public static synthetic a(Lkg$a;ILig$b;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lkg$a;->d(ILig$b;)V

    .line 4
    return-void
.end method


# virtual methods
.method public b(Lig$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lkg$a;->d:Lkg$b;

    .line 3
    iget v1, v0, Lkg$b;->h:I

    .line 5
    iput v1, p1, Lig$b;->d:I

    .line 7
    iget v1, v0, Lkg$b;->i:I

    .line 9
    iput v1, p1, Lig$b;->e:I

    .line 11
    iget v1, v0, Lkg$b;->j:I

    .line 13
    iput v1, p1, Lig$b;->f:I

    .line 15
    iget v1, v0, Lkg$b;->k:I

    .line 17
    iput v1, p1, Lig$b;->g:I

    .line 19
    iget v1, v0, Lkg$b;->l:I

    .line 21
    iput v1, p1, Lig$b;->h:I

    .line 23
    iget v1, v0, Lkg$b;->m:I

    .line 25
    iput v1, p1, Lig$b;->i:I

    .line 27
    iget v1, v0, Lkg$b;->n:I

    .line 29
    iput v1, p1, Lig$b;->j:I

    .line 31
    iget v1, v0, Lkg$b;->o:I

    .line 33
    iput v1, p1, Lig$b;->k:I

    .line 35
    iget v1, v0, Lkg$b;->p:I

    .line 37
    iput v1, p1, Lig$b;->l:I

    .line 39
    iget v1, v0, Lkg$b;->q:I

    .line 41
    iput v1, p1, Lig$b;->p:I

    .line 43
    iget v1, v0, Lkg$b;->r:I

    .line 45
    iput v1, p1, Lig$b;->q:I

    .line 47
    iget v1, v0, Lkg$b;->s:I

    .line 49
    iput v1, p1, Lig$b;->r:I

    .line 51
    iget v1, v0, Lkg$b;->t:I

    .line 53
    iput v1, p1, Lig$b;->s:I

    .line 55
    iget v1, v0, Lkg$b;->D:I

    .line 57
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 59
    iget v1, v0, Lkg$b;->E:I

    .line 61
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 63
    iget v1, v0, Lkg$b;->F:I

    .line 65
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 67
    iget v1, v0, Lkg$b;->G:I

    .line 69
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 71
    iget v1, v0, Lkg$b;->O:I

    .line 73
    iput v1, p1, Lig$b;->x:I

    .line 75
    iget v1, v0, Lkg$b;->N:I

    .line 77
    iput v1, p1, Lig$b;->y:I

    .line 79
    iget v1, v0, Lkg$b;->K:I

    .line 81
    iput v1, p1, Lig$b;->u:I

    .line 83
    iget v1, v0, Lkg$b;->M:I

    .line 85
    iput v1, p1, Lig$b;->w:I

    .line 87
    iget v1, v0, Lkg$b;->u:F

    .line 89
    iput v1, p1, Lig$b;->z:F

    .line 91
    iget v1, v0, Lkg$b;->v:F

    .line 93
    iput v1, p1, Lig$b;->A:F

    .line 95
    iget v1, v0, Lkg$b;->x:I

    .line 97
    iput v1, p1, Lig$b;->m:I

    .line 99
    iget v1, v0, Lkg$b;->y:I

    .line 101
    iput v1, p1, Lig$b;->n:I

    .line 103
    iget v1, v0, Lkg$b;->z:F

    .line 105
    iput v1, p1, Lig$b;->o:F

    .line 107
    iget-object v1, v0, Lkg$b;->w:Ljava/lang/String;

    .line 109
    iput-object v1, p1, Lig$b;->B:Ljava/lang/String;

    .line 111
    iget v1, v0, Lkg$b;->A:I

    .line 113
    iput v1, p1, Lig$b;->Q:I

    .line 115
    iget v1, v0, Lkg$b;->B:I

    .line 117
    iput v1, p1, Lig$b;->R:I

    .line 119
    iget v1, v0, Lkg$b;->P:F

    .line 121
    iput v1, p1, Lig$b;->F:F

    .line 123
    iget v1, v0, Lkg$b;->Q:F

    .line 125
    iput v1, p1, Lig$b;->E:F

    .line 127
    iget v1, v0, Lkg$b;->S:I

    .line 129
    iput v1, p1, Lig$b;->H:I

    .line 131
    iget v1, v0, Lkg$b;->R:I

    .line 133
    iput v1, p1, Lig$b;->G:I

    .line 135
    iget-boolean v1, v0, Lkg$b;->h0:Z

    .line 137
    iput-boolean v1, p1, Lig$b;->T:Z

    .line 139
    iget-boolean v1, v0, Lkg$b;->i0:Z

    .line 141
    iput-boolean v1, p1, Lig$b;->U:Z

    .line 143
    iget v1, v0, Lkg$b;->T:I

    .line 145
    iput v1, p1, Lig$b;->I:I

    .line 147
    iget v1, v0, Lkg$b;->U:I

    .line 149
    iput v1, p1, Lig$b;->J:I

    .line 151
    iget v1, v0, Lkg$b;->V:I

    .line 153
    iput v1, p1, Lig$b;->M:I

    .line 155
    iget v1, v0, Lkg$b;->W:I

    .line 157
    iput v1, p1, Lig$b;->N:I

    .line 159
    iget v1, v0, Lkg$b;->X:I

    .line 161
    iput v1, p1, Lig$b;->K:I

    .line 163
    iget v1, v0, Lkg$b;->Y:I

    .line 165
    iput v1, p1, Lig$b;->L:I

    .line 167
    iget v1, v0, Lkg$b;->Z:F

    .line 169
    iput v1, p1, Lig$b;->O:F

    .line 171
    iget v1, v0, Lkg$b;->a0:F

    .line 173
    iput v1, p1, Lig$b;->P:F

    .line 175
    iget v1, v0, Lkg$b;->C:I

    .line 177
    iput v1, p1, Lig$b;->S:I

    .line 179
    iget v1, v0, Lkg$b;->g:F

    .line 181
    iput v1, p1, Lig$b;->c:F

    .line 183
    iget v1, v0, Lkg$b;->e:I

    .line 185
    iput v1, p1, Lig$b;->a:I

    .line 187
    iget v1, v0, Lkg$b;->f:I

    .line 189
    iput v1, p1, Lig$b;->b:I

    .line 191
    iget v1, v0, Lkg$b;->c:I

    .line 193
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 195
    iget v1, v0, Lkg$b;->d:I

    .line 197
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 199
    iget-object v1, v0, Lkg$b;->g0:Ljava/lang/String;

    .line 201
    if-eqz v1, :cond_0

    .line 203
    iput-object v1, p1, Lig$b;->V:Ljava/lang/String;

    .line 205
    :cond_0
    iget v0, v0, Lkg$b;->I:I

    .line 207
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 210
    iget-object v0, p0, Lkg$a;->d:Lkg$b;

    .line 212
    iget v0, v0, Lkg$b;->H:I

    .line 214
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 217
    invoke-virtual {p1}, Lig$b;->a()V

    .line 220
    return-void
.end method

.method public c()Lkg$a;
    .locals 3

    .line 1
    new-instance v0, Lkg$a;

    .line 3
    invoke-direct {v0}, Lkg$a;-><init>()V

    .line 6
    iget-object v1, v0, Lkg$a;->d:Lkg$b;

    .line 8
    iget-object v2, p0, Lkg$a;->d:Lkg$b;

    .line 10
    invoke-virtual {v1, v2}, Lkg$b;->a(Lkg$b;)V

    .line 13
    iget-object v1, v0, Lkg$a;->c:Lkg$c;

    .line 15
    iget-object v2, p0, Lkg$a;->c:Lkg$c;

    .line 17
    invoke-virtual {v1, v2}, Lkg$c;->a(Lkg$c;)V

    .line 20
    iget-object v1, v0, Lkg$a;->b:Lkg$d;

    .line 22
    iget-object v2, p0, Lkg$a;->b:Lkg$d;

    .line 24
    invoke-virtual {v1, v2}, Lkg$d;->a(Lkg$d;)V

    .line 27
    iget-object v1, v0, Lkg$a;->e:Lkg$e;

    .line 29
    iget-object v2, p0, Lkg$a;->e:Lkg$e;

    .line 31
    invoke-virtual {v1, v2}, Lkg$e;->a(Lkg$e;)V

    .line 34
    iget v1, p0, Lkg$a;->a:I

    .line 36
    iput v1, v0, Lkg$a;->a:I

    .line 38
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkg$a;->c()Lkg$a;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final d(ILig$b;)V
    .locals 1

    .line 1
    iput p1, p0, Lkg$a;->a:I

    .line 3
    iget-object p1, p0, Lkg$a;->d:Lkg$b;

    .line 5
    iget v0, p2, Lig$b;->d:I

    .line 7
    iput v0, p1, Lkg$b;->h:I

    .line 9
    iget v0, p2, Lig$b;->e:I

    .line 11
    iput v0, p1, Lkg$b;->i:I

    .line 13
    iget v0, p2, Lig$b;->f:I

    .line 15
    iput v0, p1, Lkg$b;->j:I

    .line 17
    iget v0, p2, Lig$b;->g:I

    .line 19
    iput v0, p1, Lkg$b;->k:I

    .line 21
    iget v0, p2, Lig$b;->h:I

    .line 23
    iput v0, p1, Lkg$b;->l:I

    .line 25
    iget v0, p2, Lig$b;->i:I

    .line 27
    iput v0, p1, Lkg$b;->m:I

    .line 29
    iget v0, p2, Lig$b;->j:I

    .line 31
    iput v0, p1, Lkg$b;->n:I

    .line 33
    iget v0, p2, Lig$b;->k:I

    .line 35
    iput v0, p1, Lkg$b;->o:I

    .line 37
    iget v0, p2, Lig$b;->l:I

    .line 39
    iput v0, p1, Lkg$b;->p:I

    .line 41
    iget v0, p2, Lig$b;->p:I

    .line 43
    iput v0, p1, Lkg$b;->q:I

    .line 45
    iget v0, p2, Lig$b;->q:I

    .line 47
    iput v0, p1, Lkg$b;->r:I

    .line 49
    iget v0, p2, Lig$b;->r:I

    .line 51
    iput v0, p1, Lkg$b;->s:I

    .line 53
    iget v0, p2, Lig$b;->s:I

    .line 55
    iput v0, p1, Lkg$b;->t:I

    .line 57
    iget v0, p2, Lig$b;->z:F

    .line 59
    iput v0, p1, Lkg$b;->u:F

    .line 61
    iget v0, p2, Lig$b;->A:F

    .line 63
    iput v0, p1, Lkg$b;->v:F

    .line 65
    iget-object v0, p2, Lig$b;->B:Ljava/lang/String;

    .line 67
    iput-object v0, p1, Lkg$b;->w:Ljava/lang/String;

    .line 69
    iget v0, p2, Lig$b;->m:I

    .line 71
    iput v0, p1, Lkg$b;->x:I

    .line 73
    iget v0, p2, Lig$b;->n:I

    .line 75
    iput v0, p1, Lkg$b;->y:I

    .line 77
    iget v0, p2, Lig$b;->o:F

    .line 79
    iput v0, p1, Lkg$b;->z:F

    .line 81
    iget v0, p2, Lig$b;->Q:I

    .line 83
    iput v0, p1, Lkg$b;->A:I

    .line 85
    iget v0, p2, Lig$b;->R:I

    .line 87
    iput v0, p1, Lkg$b;->B:I

    .line 89
    iget v0, p2, Lig$b;->S:I

    .line 91
    iput v0, p1, Lkg$b;->C:I

    .line 93
    iget v0, p2, Lig$b;->c:F

    .line 95
    iput v0, p1, Lkg$b;->g:F

    .line 97
    iget v0, p2, Lig$b;->a:I

    .line 99
    iput v0, p1, Lkg$b;->e:I

    .line 101
    iget v0, p2, Lig$b;->b:I

    .line 103
    iput v0, p1, Lkg$b;->f:I

    .line 105
    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 107
    iput v0, p1, Lkg$b;->c:I

    .line 109
    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 111
    iput v0, p1, Lkg$b;->d:I

    .line 113
    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 115
    iput v0, p1, Lkg$b;->D:I

    .line 117
    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 119
    iput v0, p1, Lkg$b;->E:I

    .line 121
    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 123
    iput v0, p1, Lkg$b;->F:I

    .line 125
    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 127
    iput v0, p1, Lkg$b;->G:I

    .line 129
    iget v0, p2, Lig$b;->F:F

    .line 131
    iput v0, p1, Lkg$b;->P:F

    .line 133
    iget v0, p2, Lig$b;->E:F

    .line 135
    iput v0, p1, Lkg$b;->Q:F

    .line 137
    iget v0, p2, Lig$b;->H:I

    .line 139
    iput v0, p1, Lkg$b;->S:I

    .line 141
    iget v0, p2, Lig$b;->G:I

    .line 143
    iput v0, p1, Lkg$b;->R:I

    .line 145
    iget-boolean v0, p2, Lig$b;->T:Z

    .line 147
    iput-boolean v0, p1, Lkg$b;->h0:Z

    .line 149
    iget-boolean v0, p2, Lig$b;->U:Z

    .line 151
    iput-boolean v0, p1, Lkg$b;->i0:Z

    .line 153
    iget v0, p2, Lig$b;->I:I

    .line 155
    iput v0, p1, Lkg$b;->T:I

    .line 157
    iget v0, p2, Lig$b;->J:I

    .line 159
    iput v0, p1, Lkg$b;->U:I

    .line 161
    iget v0, p2, Lig$b;->M:I

    .line 163
    iput v0, p1, Lkg$b;->V:I

    .line 165
    iget v0, p2, Lig$b;->N:I

    .line 167
    iput v0, p1, Lkg$b;->W:I

    .line 169
    iget v0, p2, Lig$b;->K:I

    .line 171
    iput v0, p1, Lkg$b;->X:I

    .line 173
    iget v0, p2, Lig$b;->L:I

    .line 175
    iput v0, p1, Lkg$b;->Y:I

    .line 177
    iget v0, p2, Lig$b;->O:F

    .line 179
    iput v0, p1, Lkg$b;->Z:F

    .line 181
    iget v0, p2, Lig$b;->P:F

    .line 183
    iput v0, p1, Lkg$b;->a0:F

    .line 185
    iget-object v0, p2, Lig$b;->V:Ljava/lang/String;

    .line 187
    iput-object v0, p1, Lkg$b;->g0:Ljava/lang/String;

    .line 189
    iget v0, p2, Lig$b;->u:I

    .line 191
    iput v0, p1, Lkg$b;->K:I

    .line 193
    iget v0, p2, Lig$b;->w:I

    .line 195
    iput v0, p1, Lkg$b;->M:I

    .line 197
    iget v0, p2, Lig$b;->t:I

    .line 199
    iput v0, p1, Lkg$b;->J:I

    .line 201
    iget v0, p2, Lig$b;->v:I

    .line 203
    iput v0, p1, Lkg$b;->L:I

    .line 205
    iget v0, p2, Lig$b;->x:I

    .line 207
    iput v0, p1, Lkg$b;->O:I

    .line 209
    iget v0, p2, Lig$b;->y:I

    .line 211
    iput v0, p1, Lkg$b;->N:I

    .line 213
    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 216
    move-result v0

    .line 217
    iput v0, p1, Lkg$b;->H:I

    .line 219
    iget-object p1, p0, Lkg$a;->d:Lkg$b;

    .line 221
    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 224
    move-result p2

    .line 225
    iput p2, p1, Lkg$b;->I:I

    .line 227
    return-void
.end method
