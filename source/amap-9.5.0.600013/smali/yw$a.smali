.class public Lyw$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyw;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lyw;


# direct methods
.method public constructor <init>(Lyw;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyw$a;->a:Lyw;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    const-string v0, "asyncCopy begin"

    .line 3
    const-string v1, "LibraryLoaderHelper"

    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lyw$a;->a:Lyw;

    .line 10
    invoke-static {v0}, Lyw;->a(Lyw;)Ljava/util/HashSet;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lyw$a;->a:Lyw;

    .line 22
    invoke-static {v0}, Lyw;->b(Lyw;)V

    .line 25
    iget-object v0, p0, Lyw$a;->a:Lyw;

    .line 27
    invoke-static {v0}, Lyw;->f(Lyw;)Ljava/util/ArrayList;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object v0

    .line 35
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_6

    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Ljava/lang/String;

    .line 47
    iget-object v3, p0, Lyw$a;->a:Lyw;

    .line 49
    invoke-static {v3, v2}, Lyw;->g(Lyw;Ljava/lang/String;)V

    .line 52
    iget-object v3, p0, Lyw$a;->a:Lyw;

    .line 54
    invoke-static {v3}, Lyw;->h(Lyw;)Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3, v2}, Lcom/autonavi/amapauto/framework/LibraryLoader;->unblockLibrary(Ljava/lang/String;)V

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lyw$a;->a:Lyw;

    .line 64
    invoke-static {v0}, Lyw;->f(Lyw;)Ljava/util/ArrayList;

    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_1

    .line 74
    iget-object v0, p0, Lyw$a;->a:Lyw;

    .line 76
    invoke-static {v0}, Lyw;->b(Lyw;)V

    .line 79
    :cond_1
    iget-object v0, p0, Lyw$a;->a:Lyw;

    .line 81
    invoke-static {v0}, Lyw;->i(Lyw;)[Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    array-length v2, v0

    .line 86
    const/4 v3, 0x0

    .line 87
    const/4 v4, 0x0

    .line 88
    :goto_1
    if-ge v4, v2, :cond_5

    .line 90
    aget-object v5, v0, v4

    .line 92
    iget-object v6, p0, Lyw$a;->a:Lyw;

    .line 94
    invoke-static {v6, v5}, Lyw;->j(Lyw;Ljava/lang/String;)Z

    .line 97
    move-result v6

    .line 98
    const/4 v7, 0x1

    .line 99
    if-eqz v6, :cond_2

    .line 101
    iget-object v6, p0, Lyw$a;->a:Lyw;

    .line 103
    invoke-static {v6, v5}, Lyw;->g(Lyw;Ljava/lang/String;)V

    .line 106
    const/4 v6, 0x1

    .line 107
    goto :goto_2

    .line 108
    :cond_2
    const/4 v6, 0x0

    .line 109
    :goto_2
    iget-object v8, p0, Lyw$a;->a:Lyw;

    .line 111
    invoke-static {v8, v5}, Lyw;->k(Lyw;Ljava/lang/String;)Z

    .line 114
    move-result v8

    .line 115
    if-eqz v8, :cond_3

    .line 117
    iget-object v6, p0, Lyw$a;->a:Lyw;

    .line 119
    invoke-static {v6, v5}, Lyw;->l(Lyw;Ljava/lang/String;)V

    .line 122
    goto :goto_3

    .line 123
    :cond_3
    move v7, v6

    .line 124
    :goto_3
    if-eqz v7, :cond_4

    .line 126
    iget-object v6, p0, Lyw$a;->a:Lyw;

    .line 128
    invoke-static {v6}, Lyw;->h(Lyw;)Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 131
    move-result-object v6

    .line 132
    invoke-virtual {v6, v5}, Lcom/autonavi/amapauto/framework/LibraryLoader;->unblockLibrary(Ljava/lang/String;)V

    .line 135
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 137
    goto :goto_1

    .line 138
    :cond_5
    iget-object v0, p0, Lyw$a;->a:Lyw;

    .line 140
    invoke-static {v0}, Lyw;->a(Lyw;)Ljava/util/HashSet;

    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 147
    move-result-object v0

    .line 148
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_6

    .line 154
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    move-result-object v2

    .line 158
    check-cast v2, Ljava/lang/String;

    .line 160
    iget-object v3, p0, Lyw$a;->a:Lyw;

    .line 162
    invoke-static {v3, v2}, Lyw;->l(Lyw;Ljava/lang/String;)V

    .line 165
    iget-object v3, p0, Lyw$a;->a:Lyw;

    .line 167
    invoke-static {v3}, Lyw;->h(Lyw;)Lcom/autonavi/amapauto/framework/LibraryLoader;

    .line 170
    move-result-object v3

    .line 171
    invoke-virtual {v3, v2}, Lcom/autonavi/amapauto/framework/LibraryLoader;->unblockLibrary(Ljava/lang/String;)V

    .line 174
    goto :goto_4

    .line 175
    :cond_6
    const-string v0, "asyncCopy end"

    .line 177
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void
.end method
