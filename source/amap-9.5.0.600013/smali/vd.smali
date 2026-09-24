.class public Lvd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvd$a;
    }
.end annotation


# static fields
.field public static r:Lvd;


# instance fields
.field public a:Loh;

.field public b:Landroid/content/Context;

.field public c:Z

.field public d:Z

.field public e:Ljava/util/List;

.field public f:Ljava/util/List;

.field public g:Ljava/util/List;

.field public h:Ljava/util/List;

.field public i:Ljava/util/List;

.field public j:Ljava/util/List;

.field public k:Ljava/util/List;

.field public l:Ljava/util/List;

.field public m:Ljava/util/List;

.field public n:Ljava/util/List;

.field public o:Ljava/util/List;

.field public p:I

.field public q:Lvd$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lvd;->b:Landroid/content/Context;

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lvd;->c:Z

    .line 10
    iput-boolean v0, p0, Lvd;->d:Z

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iput-object v1, p0, Lvd;->f:Ljava/util/List;

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    iput-object v1, p0, Lvd;->g:Ljava/util/List;

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    .line 28
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    iput-object v1, p0, Lvd;->h:Ljava/util/List;

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    .line 35
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    iput-object v1, p0, Lvd;->i:Ljava/util/List;

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    .line 42
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    iput-object v1, p0, Lvd;->j:Ljava/util/List;

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    .line 49
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    iput-object v1, p0, Lvd;->k:Ljava/util/List;

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    .line 56
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    iput-object v1, p0, Lvd;->l:Ljava/util/List;

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    .line 63
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    iput-object v1, p0, Lvd;->m:Ljava/util/List;

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    .line 70
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    iput-object v1, p0, Lvd;->n:Ljava/util/List;

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    .line 77
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    iput-object v1, p0, Lvd;->o:Ljava/util/List;

    .line 82
    iput v0, p0, Lvd;->p:I

    .line 84
    new-instance v0, Lvd$a;

    .line 86
    invoke-direct {v0, p0}, Lvd$a;-><init>(Lvd;)V

    .line 89
    iput-object v0, p0, Lvd;->q:Lvd$a;

    .line 91
    return-void
.end method

.method public static synthetic a(Lvd;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lvd;->c:Z

    .line 3
    return p1
.end method

.method public static synthetic b(Lvd;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lvd;->d:Z

    .line 3
    return p0
.end method

.method public static synthetic c(Lvd;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lvd;->e:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static d()Lvd;
    .locals 1

    .line 1
    sget-object v0, Lvd;->r:Lvd;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lvd;

    .line 7
    invoke-direct {v0}, Lvd;-><init>()V

    .line 10
    sput-object v0, Lvd;->r:Lvd;

    .line 12
    :cond_0
    sget-object v0, Lvd;->r:Lvd;

    .line 14
    return-object v0
.end method


# virtual methods
.method public e(Landroid/content/Context;Lrr;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, " registReceiver initFinishCallback = "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    if-eqz p2, :cond_0

    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v1, "null"

    .line 20
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    new-array v1, v1, [Ljava/lang/Object;

    .line 30
    const-string v2, "CallIfly"

    .line 32
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iput-object p1, p0, Lvd;->b:Landroid/content/Context;

    .line 37
    iget-object p1, p0, Lvd;->q:Lvd$a;

    .line 39
    invoke-virtual {p1, p2}, Lvd$a;->d(Lrr;)V

    .line 42
    iget-object p1, p0, Lvd;->b:Landroid/content/Context;

    .line 44
    iget-object p2, p0, Lvd;->q:Lvd$a;

    .line 46
    invoke-static {p1, p2}, Loh;->j(Landroid/content/Context;Ldr;)Loh;

    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lvd;->a:Loh;

    .line 52
    invoke-virtual {p1}, Loh;->k()V

    .line 55
    return-void
.end method

.method public f()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "CallIfly"

    .line 6
    const-string v3, " releaseWakeup"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iput-boolean v0, p0, Lvd;->c:Z

    .line 13
    iget-object v0, p0, Lvd;->a:Loh;

    .line 15
    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v0}, Loh;->l()I

    .line 20
    :cond_0
    return-void
.end method

.method public g(Ljava/util/List;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lvd;->a:Loh;

    .line 3
    const-string v1, "CallIfly"

    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    const-string p1, " \u8c03\u7528ifly\u76d1\u542c\u5173\u952e\u5b57 mvwSession==null"

    .line 10
    new-array v0, v2, [Ljava/lang/Object;

    .line 12
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    return v2

    .line 16
    :cond_0
    iget-boolean v0, p0, Lvd;->c:Z

    .line 18
    if-nez v0, :cond_1

    .line 20
    const-string p1, " \u8c03\u7528ifly\u76d1\u542c\u5173\u952e\u5b57 !isInited"

    .line 22
    new-array v0, v2, [Ljava/lang/Object;

    .line 24
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iput-boolean v2, p0, Lvd;->d:Z

    .line 29
    return v2

    .line 30
    :cond_1
    iput-object p1, p0, Lvd;->e:Ljava/util/List;

    .line 32
    const/4 v0, 0x1

    .line 33
    new-array v3, v0, [Ljava/lang/Object;

    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    move-result-object v4

    .line 39
    aput-object v4, v3, v2

    .line 41
    const-string v4, " \u8c03\u7528ifly\u76d1\u542c\u5173\u952e\u5b57"

    .line 43
    invoke-static {v1, v4, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object v1, p0, Lvd;->a:Loh;

    .line 48
    invoke-virtual {v1, p1, v2}, Loh;->n(Ljava/util/List;Z)I

    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_2

    .line 54
    iput-boolean v0, p0, Lvd;->d:Z

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    iput-boolean v2, p0, Lvd;->d:Z

    .line 59
    :goto_0
    if-ne p1, v0, :cond_3

    .line 61
    iget-object v0, p0, Lvd;->a:Loh;

    .line 63
    invoke-virtual {v0}, Loh;->k()V

    .line 66
    :cond_3
    return p1
.end method

.method public h()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "stopWakeup,mVoiceOperiationType="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lvd;->p:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, " isInited="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-boolean v1, p0, Lvd;->c:Z

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x0

    .line 31
    new-array v2, v1, [Ljava/lang/Object;

    .line 33
    const-string v3, "CallIfly"

    .line 35
    invoke-static {v3, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    const-string v2, "stopWakeup "

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    new-instance v2, Ljava/lang/Throwable;

    .line 50
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 53
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    new-array v1, v1, [Ljava/lang/Object;

    .line 66
    invoke-static {v3, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    iget-boolean v0, p0, Lvd;->c:Z

    .line 71
    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lvd;->a:Loh;

    .line 75
    if-nez v0, :cond_0

    .line 77
    return-void

    .line 78
    :cond_0
    iget-boolean v0, p0, Lvd;->d:Z

    .line 80
    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lvd;->a:Loh;

    .line 84
    invoke-virtual {v0}, Loh;->p()I

    .line 87
    :cond_1
    return-void
.end method
