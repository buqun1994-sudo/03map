.class public Lvd$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lrr;

.field public final synthetic b:Lvd;


# direct methods
.method public constructor <init>(Lvd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvd$a;->b:Lvd;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lvd$a;->a:Lrr;

    .line 9
    return-void
.end method


# virtual methods
.method public a(ZI)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, " initMvwCallback state = "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, ",errId ="

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p2

    .line 26
    const/4 v0, 0x0

    .line 27
    new-array v1, v0, [Ljava/lang/Object;

    .line 29
    const-string v2, "CallIfly"

    .line 31
    invoke-static {v2, p2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    if-eqz p1, :cond_0

    .line 36
    iget-object p1, p0, Lvd$a;->b:Lvd;

    .line 38
    const/4 p2, 0x1

    .line 39
    invoke-static {p1, p2}, Lvd;->a(Lvd;Z)Z

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object p1, p0, Lvd$a;->b:Lvd;

    .line 45
    invoke-static {p1, v0}, Lvd;->a(Lvd;Z)Z

    .line 48
    :goto_0
    return-void
.end method

.method public b(ZI)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, " initCallback state"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, ",errId ="

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p2

    .line 26
    const/4 v0, 0x0

    .line 27
    new-array v1, v0, [Ljava/lang/Object;

    .line 29
    const-string v2, "CallIfly"

    .line 31
    invoke-static {v2, p2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    if-eqz p1, :cond_1

    .line 36
    iget-object p1, p0, Lvd$a;->b:Lvd;

    .line 38
    const/4 p2, 0x1

    .line 39
    invoke-static {p1, p2}, Lvd;->a(Lvd;Z)Z

    .line 42
    iget-object p1, p0, Lvd$a;->a:Lrr;

    .line 44
    if-eqz p1, :cond_0

    .line 46
    const-string p1, " initCallback initFinishCallback != null"

    .line 48
    new-array p2, v0, [Ljava/lang/Object;

    .line 50
    invoke-static {v2, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-object p1, p0, Lvd$a;->a:Lrr;

    .line 55
    invoke-interface {p1}, Lrr;->a()V

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const-string p1, " mIInitFinishCallback == null"

    .line 61
    new-array p2, v0, [Ljava/lang/Object;

    .line 63
    invoke-static {v2, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const-string p1, " initCallback ! state"

    .line 69
    new-array p2, v0, [Ljava/lang/Object;

    .line 71
    invoke-static {v2, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object p1, p0, Lvd$a;->b:Lvd;

    .line 76
    invoke-static {p1, v0}, Lvd;->a(Lvd;Z)Z

    .line 79
    :goto_0
    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Lvd$a;->a:Lrr;

    .line 82
    return-void
.end method

.method public c(II)V
    .locals 4

    .line 1
    const/4 p2, 0x1

    .line 2
    new-array v0, p2, [Ljava/lang/Object;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v2, "isStarted =="

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v2, p0, Lvd$a;->b:Lvd;

    .line 19
    invoke-static {v2}, Lvd;->b(Lvd;)Z

    .line 22
    move-result v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    const/4 v2, 0x0

    .line 31
    aput-object v1, v0, v2

    .line 33
    const-string v1, "CallIfly"

    .line 35
    const-string v3, " onWakeupResult nMvwId==={?}"

    .line 37
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lvd$a;->b:Lvd;

    .line 42
    invoke-static {v0}, Lvd;->b(Lvd;)Z

    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_0

    .line 48
    const-string p1, " onWakeupResult !isStarted"

    .line 50
    new-array p2, v2, [Ljava/lang/Object;

    .line 52
    invoke-static {v1, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lvd$a;->b:Lvd;

    .line 58
    invoke-static {v0}, Lvd;->c(Lvd;)Ljava/util/List;

    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_3

    .line 64
    iget-object v0, p0, Lvd$a;->b:Lvd;

    .line 66
    invoke-static {v0}, Lvd;->c(Lvd;)Ljava/util/List;

    .line 69
    move-result-object v0

    .line 70
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 73
    move-result v0

    .line 74
    if-le v0, p1, :cond_3

    .line 76
    new-array p2, p2, [Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lvd$a;->b:Lvd;

    .line 80
    invoke-static {v0}, Lvd;->c(Lvd;)Ljava/util/List;

    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    aput-object v0, p2, v2

    .line 90
    const-string v0, " onWakeupResult currentKeywords != null && currentKeywords.size() > nMvwId currentKeywords = {?}"

    .line 92
    invoke-static {v1, v0, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    const/4 p2, -0x1

    .line 96
    if-eq p1, p2, :cond_2

    .line 98
    iget-object p2, p0, Lvd$a;->b:Lvd;

    .line 100
    invoke-static {p2}, Lvd;->c(Lvd;)Ljava/util/List;

    .line 103
    move-result-object p2

    .line 104
    if-eqz p2, :cond_2

    .line 106
    iget-object p2, p0, Lvd$a;->b:Lvd;

    .line 108
    invoke-static {p2}, Lvd;->c(Lvd;)Ljava/util/List;

    .line 111
    move-result-object p2

    .line 112
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 115
    move-result p2

    .line 116
    if-eqz p2, :cond_1

    .line 118
    goto :goto_0

    .line 119
    :cond_1
    invoke-static {p1}, Lcom/autonavi/amapauto/vr/WakeUp;->wakeUpResult(I)V

    .line 122
    goto :goto_1

    .line 123
    :cond_2
    :goto_0
    const-string p1, " onWakeupResult nMvwId == -1 || currentKeywords ==null || currentKeywords.isEmpty()"

    .line 125
    new-array p2, v2, [Ljava/lang/Object;

    .line 127
    invoke-static {v1, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    return-void

    .line 131
    :cond_3
    const-string p1, " onWakeupResult ! ( currentKeywords != null && currentKeywords.size() > nMvwId"

    .line 133
    new-array p2, v2, [Ljava/lang/Object;

    .line 135
    invoke-static {v1, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    :goto_1
    return-void
.end method

.method public d(Lrr;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, " callback setmIInitFinishCallback mIInitFinishCallback = "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

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
    iput-object p1, p0, Lvd$a;->a:Lrr;

    .line 37
    return-void
.end method
