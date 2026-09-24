.class public Lvo0$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvo0$a;->onAmapLooperPrepared(Lcom/amap/location/support/handler/AmapLooper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lvo0$a;


# direct methods
.method public constructor <init>(Lvo0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvo0$a$b;->b:Lvo0$a;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lvo0$a$b;->a:I

    .line 9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget v0, p0, Lvo0$a$b;->a:I

    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 5
    iput v0, p0, Lvo0$a$b;->a:I

    .line 7
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getAdCode()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 17
    const-string v0, "0"

    .line 19
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getAdCode()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lvo0$a$b;->b:Lvo0$a;

    .line 31
    iget-object v0, v0, Lvo0$a;->a:Lvo0;

    .line 33
    invoke-static {v0}, Lvo0;->G(Lvo0;)Lcom/amap/location/support/model/ModelLoader;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/amap/location/support/model/ModelLoader;->toDownLoad()V

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lvo0$a$b;->b:Lvo0$a;

    .line 43
    iget-object v0, v0, Lvo0$a;->a:Lvo0;

    .line 45
    invoke-static {v0}, Lvo0;->J(Lvo0;)Z

    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_1

    .line 51
    iget v0, p0, Lvo0$a$b;->a:I

    .line 53
    const/4 v1, 0x3

    .line 54
    if-gt v0, v1, :cond_1

    .line 56
    iget-object v0, p0, Lvo0$a$b;->b:Lvo0$a;

    .line 58
    iget-object v0, v0, Lvo0$a;->a:Lvo0;

    .line 60
    invoke-static {v0, p0}, Lvo0;->o(Lvo0;Ljava/lang/Runnable;)V

    .line 63
    iget-object v0, p0, Lvo0$a$b;->b:Lvo0$a;

    .line 65
    iget-object v0, v0, Lvo0$a;->a:Lvo0;

    .line 67
    const-wide/16 v1, 0x1388

    .line 69
    invoke-static {v0, p0, v1, v2}, Lvo0;->p(Lvo0;Ljava/lang/Runnable;J)V

    .line 72
    :cond_1
    :goto_0
    return-void
.end method
