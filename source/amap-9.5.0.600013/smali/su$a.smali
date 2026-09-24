.class public Lsu$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsu$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lsu;


# direct methods
.method public constructor <init>(Lsu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsu$a;->a:Lsu;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lsu$a;->a:Lsu;

    .line 3
    iget-object v0, v0, Lsu;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    const/4 v0, 0x1

    .line 9
    new-array v0, v0, [Ljava/lang/Object;

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    move-result-object v2

    .line 16
    aput-object v2, v0, v1

    .line 18
    const-string v1, "InputMethodWrapper"

    .line 20
    const-string v2, "ISoftInputEventCall changeStatus:{?}"

    .line 22
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-static {}, Ltu;->c()Ltu;

    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lsu$a;->a:Lsu;

    .line 31
    invoke-static {v1}, Lsu;->a(Lsu;)I

    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, p1, v1}, Ltu;->w(ZI)V

    .line 38
    return-void
.end method

.method public b()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "InputMethodWrapper"

    .line 6
    const-string v2, "ISoftInputEventCall onEditorAction"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard;->onEditorAction()Z

    .line 14
    move-result v0

    .line 15
    return v0
.end method
