.class public Lg2$a;
.super Lur$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg2;


# direct methods
.method public constructor <init>(Lg2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg2$a;->a:Lg2;

    .line 3
    invoke-direct {p0}, Lur$a;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public X(Ljava/lang/String;Lwr;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const-string v1, "[NewProtocol] AidlJsonConnection"

    .line 9
    const-string v2, "registerReceive requestAuthor:{?}"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, Lg2$a;->a:Lg2;

    .line 16
    invoke-static {v0, p1, p2}, Lg2;->m(Lg2;Ljava/lang/String;Lwr;)V

    .line 19
    return-void
.end method

.method public h1(Ljava/lang/String;Ljava/lang/String;)V
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
    const-string v1, "[NewProtocol] AidlJsonConnection"

    .line 12
    const-string v2, "AidlJsonConnection receiveClientRequest requestAuthor:{?}, jsonString:{?}"

    .line 14
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 19
    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 22
    const-string v1, "clientRequestAuthor"

    .line 24
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 30
    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    :goto_0
    iget-object p1, p0, Lg2$a;->a:Lg2;

    .line 38
    invoke-virtual {p1, p2}, Loc;->k(Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method public z0(Ljava/lang/String;Lwr;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const-string v1, "[NewProtocol] AidlJsonConnection"

    .line 9
    const-string v2, "unregisterCallback mRequestAuthor:{?}"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, Lg2$a;->a:Lg2;

    .line 16
    invoke-static {v0, p1, p2}, Lg2;->n(Lg2;Ljava/lang/String;Lwr;)V

    .line 19
    return-void
.end method
