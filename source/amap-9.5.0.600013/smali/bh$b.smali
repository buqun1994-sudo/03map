.class public Lbh$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lls$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbh;->k(Ljava/io/File;)Lbh$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lbh$f;

.field public final synthetic b:Ljava/lang/StringBuilder;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Lbh;


# direct methods
.method public constructor <init>(Lbh;Lbh$f;Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbh$b;->d:Lbh;

    .line 3
    iput-object p2, p0, Lbh$b;->a:Lbh$f;

    .line 5
    iput-object p3, p0, Lbh$b;->b:Ljava/lang/StringBuilder;

    .line 7
    iput-object p4, p0, Lbh$b;->c:Ljava/util/ArrayList;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    const-string v0, "AppVersion:"

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 17
    const-string v0, "AppVersion: "

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 22
    move-result v0

    .line 23
    iget-object v2, p0, Lbh$b;->a:Lbh$f;

    .line 25
    add-int/lit8 v0, v0, 0xc

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    iput-object p1, v2, Lbh$f;->c:Ljava/lang/String;

    .line 33
    goto/16 :goto_0

    .line 35
    :cond_1
    const-string v0, "CrashTime: "

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_2

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 46
    move-result v0

    .line 47
    iget-object v2, p0, Lbh$b;->a:Lbh$f;

    .line 49
    add-int/lit8 v0, v0, 0xb

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    iput-object p1, v2, Lbh$f;->b:Ljava/lang/String;

    .line 57
    goto/16 :goto_0

    .line 59
    :cond_2
    const-string v0, "StartTime: "

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_3

    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 70
    move-result v0

    .line 71
    iget-object v2, p0, Lbh$b;->a:Lbh$f;

    .line 73
    add-int/lit8 v0, v0, 0xb

    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    iput-object p1, v2, Lbh$f;->a:Ljava/lang/String;

    .line 81
    goto :goto_0

    .line 82
    :cond_3
    const-string v0, "FD List:"

    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 87
    move-result v0

    .line 88
    const/4 v2, 0x1

    .line 89
    const/16 v3, 0xa

    .line 91
    if-eqz v0, :cond_4

    .line 93
    iget-object v0, p0, Lbh$b;->a:Lbh$f;

    .line 95
    iput-boolean v2, v0, Lbh$f;->f:Z

    .line 97
    iget-object v0, p0, Lbh$b;->b:Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    goto :goto_0

    .line 106
    :cond_4
    const-string v0, "TrimMaps:"

    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_5

    .line 114
    iget-object v0, p0, Lbh$b;->a:Lbh$f;

    .line 116
    iput-boolean v2, v0, Lbh$f;->e:Z

    .line 118
    iget-object v0, p0, Lbh$b;->b:Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    goto :goto_0

    .line 127
    :cond_5
    const-string v0, "logcat:"

    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_6

    .line 135
    iget-object v0, p0, Lbh$b;->a:Lbh$f;

    .line 137
    iput-boolean v2, v0, Lbh$f;->g:Z

    .line 139
    iget-object v0, p0, Lbh$b;->b:Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    goto :goto_0

    .line 148
    :cond_6
    iget-object v0, p0, Lbh$b;->b:Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 156
    const-string v0, " "

    .line 158
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_7

    .line 164
    const-string v0, "#"

    .line 166
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_7

    .line 172
    const-string v0, " pc "

    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_7

    .line 180
    iget-object v0, p0, Lbh$b;->c:Ljava/util/ArrayList;

    .line 182
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_7
    :goto_0
    return v1
.end method
