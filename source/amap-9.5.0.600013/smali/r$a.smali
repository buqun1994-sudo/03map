.class public Lr$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lr;


# direct methods
.method public constructor <init>(Lr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr$a;->a:Lr;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lr$a;->a:Lr;

    .line 3
    iget-object v0, v0, Lr;->e:Ljava/util/List;

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    move-result v0

    .line 12
    if-lez v0, :cond_2

    .line 14
    iget-object v0, p0, Lr$a;->a:Lr;

    .line 16
    iget-object v2, v0, Lr;->c:Ljava/lang/String;

    .line 18
    const/4 v3, 0x1

    .line 19
    new-array v4, v3, [Ljava/lang/Object;

    .line 21
    iget-object v0, v0, Lr;->e:Ljava/util/List;

    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v0

    .line 31
    aput-object v0, v4, v1

    .line 33
    const-string v0, "showAssertUI errorAssertModelList.size() = {?}"

    .line 35
    invoke-static {v2, v0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    new-instance v0, Ljava/lang/StringBuffer;

    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    iget-object v4, p0, Lr$a;->a:Lr;

    .line 50
    iget-object v4, v4, Lr;->g:Ljava/text/SimpleDateFormat;

    .line 52
    new-instance v5, Ljava/util/Date;

    .line 54
    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 57
    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v4, "\n"

    .line 66
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    iget-object v2, p0, Lr$a;->a:Lr;

    .line 78
    iget-object v2, v2, Lr;->e:Ljava/util/List;

    .line 80
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 83
    move-result-object v2

    .line 84
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    move-result v5

    .line 88
    if-eqz v5, :cond_0

    .line 90
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    move-result-object v5

    .line 94
    check-cast v5, Lal;

    .line 96
    new-instance v6, Ljava/lang/StringBuilder;

    .line 98
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    invoke-virtual {v5}, Lal;->toString()Ljava/lang/String;

    .line 104
    move-result-object v5

    .line 105
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object v5

    .line 115
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    goto :goto_0

    .line 119
    :cond_0
    iget-object v2, p0, Lr$a;->a:Lr;

    .line 121
    iget-object v2, v2, Lr;->c:Ljava/lang/String;

    .line 123
    new-array v3, v3, [Ljava/lang/Object;

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 128
    move-result-object v4

    .line 129
    aput-object v4, v3, v1

    .line 131
    const-string v1, "showAssertUI errorAssertModelList = \n{?}"

    .line 133
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iget-object v1, p0, Lr$a;->a:Lr;

    .line 138
    iget-boolean v2, v1, Lr;->f:Z

    .line 140
    if-nez v2, :cond_3

    .line 142
    iget-object v1, v1, Lr;->d:Lsa;

    .line 144
    if-eqz v1, :cond_3

    .line 146
    invoke-virtual {v1}, Lsa;->e()Z

    .line 149
    move-result v1

    .line 150
    if-nez v1, :cond_1

    .line 152
    iget-object v1, p0, Lr$a;->a:Lr;

    .line 154
    iget-object v1, v1, Lr;->d:Lsa;

    .line 156
    invoke-virtual {v1}, Lsa;->f()V

    .line 159
    iget-object v1, p0, Lr$a;->a:Lr;

    .line 161
    iget-object v1, v1, Lr;->d:Lsa;

    .line 163
    invoke-static {}, Lrv;->H()Lrv;

    .line 166
    move-result-object v2

    .line 167
    invoke-virtual {v2}, Lrv;->F()Landroid/app/Activity;

    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {v1, v2}, Lsa;->d(Landroid/app/Activity;)V

    .line 174
    :cond_1
    iget-object v1, p0, Lr$a;->a:Lr;

    .line 176
    iget-object v1, v1, Lr;->d:Lsa;

    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v1, v0}, Lsa;->g(Ljava/lang/String;)V

    .line 185
    goto :goto_1

    .line 186
    :cond_2
    iget-object v0, p0, Lr$a;->a:Lr;

    .line 188
    iget-object v0, v0, Lr;->c:Ljava/lang/String;

    .line 190
    const-string v2, "showAssertUI errorAssertModelList==null || errorAssertModelList.size()<0"

    .line 192
    new-array v1, v1, [Ljava/lang/Object;

    .line 194
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    :cond_3
    :goto_1
    return-void
.end method
