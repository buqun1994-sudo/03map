.class public Lcv$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;

.field public b:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcv$b;->a:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcv$b;->b:Ljava/util/HashMap;

    .line 18
    return-void
.end method


# virtual methods
.method public a(Ljava/util/HashMap;)Lcv$b;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lcv$b;->b:Ljava/util/HashMap;

    .line 5
    :cond_0
    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcv$b;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const/4 v1, 0x1

    .line 8
    aput-object p2, v0, v1

    .line 10
    const-string v1, "[ALSimulate] IntentCreator"

    .line 12
    const-string v2, "Builder addKeyValue standardProtocolKey = {?}, standardProtocolValue={?}"

    .line 14
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    iget-object v0, p0, Lcv$b;->a:Ljava/util/ArrayList;

    .line 19
    new-instance v1, Lcv$c;

    .line 21
    const-string v2, ""

    .line 23
    invoke-direct {v1, p1, p2, v2}, Lcv$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    return-object p0
.end method

.method public c(Ljava/util/ArrayList;)Lcv$b;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 9
    move-result-object v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v2, "null"

    .line 13
    :goto_0
    const/4 v3, 0x0

    .line 14
    aput-object v2, v1, v3

    .line 16
    const-string v2, "[ALSimulate] IntentCreator"

    .line 18
    const-string v4, "Builder addKeyValueArray simulateIntentDataArrayList = {?}"

    .line 20
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    if-eqz p1, :cond_2

    .line 25
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object p1

    .line 29
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 39
    check-cast v1, [Ljava/lang/String;

    .line 41
    if-eqz v1, :cond_1

    .line 43
    array-length v4, v1

    .line 44
    const/4 v5, 0x2

    .line 45
    if-ne v4, v5, :cond_1

    .line 47
    aget-object v4, v1, v3

    .line 49
    aget-object v1, v1, v0

    .line 51
    invoke-virtual {p0, v4, v1}, Lcv$b;->b(Ljava/lang/String;Ljava/lang/String;)Lcv$b;

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const-string v1, "Builder addKeyValueArray simulateIntentData == null || simulateIntentData.length != 2"

    .line 57
    new-array v4, v3, [Ljava/lang/Object;

    .line 59
    invoke-static {v2, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    return-object p0
.end method

.method public d()Landroid/content/Intent;
    .locals 4

    .line 1
    new-instance v0, Lcv;

    .line 3
    iget-object v1, p0, Lcv$b;->b:Ljava/util/HashMap;

    .line 5
    iget-object v2, p0, Lcv$b;->a:Ljava/util/ArrayList;

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcv;-><init>(Ljava/util/HashMap;Ljava/util/ArrayList;Lcv$a;)V

    .line 11
    invoke-virtual {v0}, Lcv;->b()Landroid/content/Intent;

    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method
