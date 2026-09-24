.class public Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard;->setSoftInputVisiable(IZI)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Leq$a;

.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Leq$a;IZI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$e;->a:Leq$a;

    .line 3
    iput p2, p0, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$e;->b:I

    .line 5
    iput-boolean p3, p0, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$e;->c:Z

    .line 7
    iput p4, p0, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$e;->d:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$e;->a:Leq$a;

    .line 3
    invoke-virtual {v0}, Leq$a;->b()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget v0, p0, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$e;->b:I

    .line 11
    const/16 v1, 0x3ea

    .line 13
    if-eq v0, v1, :cond_0

    .line 15
    invoke-static {}, Lk6;->g()Lk6;

    .line 18
    move-result-object v0

    .line 19
    iget v1, p0, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$e;->b:I

    .line 21
    invoke-virtual {v0, v1}, Lk6;->l(I)Z

    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 27
    iget-boolean v0, p0, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$e;->c:Z

    .line 29
    if-eqz v0, :cond_0

    .line 31
    return-void

    .line 32
    :cond_0
    invoke-static {}, Ltu;->c()Ltu;

    .line 35
    move-result-object v0

    .line 36
    iget v1, p0, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$e;->d:I

    .line 38
    iget-boolean v2, p0, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$e;->c:Z

    .line 40
    iget v3, p0, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$e;->b:I

    .line 42
    invoke-virtual {v0, v1, v2, v3}, Ltu;->x(IZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    const/4 v2, 0x0

    .line 52
    new-array v2, v2, [Ljava/lang/Object;

    .line 54
    const-string v3, "AndroidSoftkeyboard"

    .line 56
    invoke-static {v3, v1, v0, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 59
    :goto_0
    return-void
.end method
