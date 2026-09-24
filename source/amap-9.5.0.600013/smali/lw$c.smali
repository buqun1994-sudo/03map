.class public Llw$c;
.super Lwr$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Llw;


# direct methods
.method public constructor <init>(Llw;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llw$c;->a:Llw;

    .line 3
    invoke-direct {p0}, Lwr$a;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public O(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "received : = "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    const-string v2, "[ALSimulate] JsonProtocolManager"

    .line 23
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    iget-object v0, p0, Llw$c;->a:Llw;

    .line 28
    invoke-static {v0, p1}, Llw;->h(Llw;Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Llw$c;->a:Llw;

    .line 33
    invoke-static {p1}, Llw;->i(Llw;)Lvr;

    .line 36
    return-void
.end method

.method public V0(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "receivedSync:"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    new-array v2, v1, [Ljava/lang/Object;

    .line 21
    const-string v3, "[ALSimulate] JsonProtocolManager"

    .line 23
    invoke-static {v3, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    iget-object v0, p0, Llw$c;->a:Llw;

    .line 28
    invoke-static {v0, p1}, Llw;->h(Llw;Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Llw$c;->a:Llw;

    .line 33
    invoke-static {p1}, Llw;->i(Llw;)Lvr;

    .line 36
    const-string p1, "receivedSyn cmJsonProtocolReceive is null"

    .line 38
    new-array v0, v1, [Ljava/lang/Object;

    .line 40
    invoke-static {v3, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    const/4 p1, 0x0

    .line 44
    return-object p1
.end method
