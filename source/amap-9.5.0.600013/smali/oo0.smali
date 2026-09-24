.class public Loo0;
.super Lei;
.source "SourceFile"


# instance fields
.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lei;-><init>()V

    .line 4
    const-string v0, "ialno"

    .line 6
    iput-object v0, p0, Loo0;->e:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public final e(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string p1, "no."

    goto :goto_0

    :cond_0
    const-string p1, "ro."

    :goto_0
    return-object p1
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 1

    .line 1
    const v0, 0x9c43

    .line 4
    if-eq p1, v0, :cond_0

    .line 6
    invoke-super {p0, p1}, Lei;->getStringValue(I)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :cond_0
    invoke-virtual {p0}, Loo0;->getUUID()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final getUUID()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Loo0;->e:Ljava/lang/String;

    .line 3
    invoke-static {}, Lib;->k()Z

    .line 6
    move-result v1

    .line 7
    const-string v2, "XuGongStandardInteractionImpl"

    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {p0, v3}, Loo0;->e(I)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    new-array v5, v3, [Ljava/lang/Object;

    .line 19
    aput-object v1, v5, v4

    .line 21
    const-string v6, "over490:{?};"

    .line 23
    invoke-static {v2, v6, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0, v4}, Loo0;->e(I)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v1, "ser"

    .line 41
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Luf0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_1

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const-string v0, ""

    .line 60
    :goto_1
    new-array v1, v3, [Ljava/lang/Object;

    .line 62
    aput-object v0, v1, v4

    .line 64
    const-string v3, "uuid:{?};"

    .line 66
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    return-object v0
.end method
