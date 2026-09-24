.class public Lcl$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhl$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcl;


# direct methods
.method public constructor <init>(Lcl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcl$b;->a:Lcl;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "ExScreenOperaAction"

    .line 6
    const-string v3, "onOperationFinished(). shouldDelay"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    if-eqz p1, :cond_0

    .line 13
    new-instance p1, Lcl$b$a;

    .line 15
    invoke-direct {p1, p0}, Lcl$b$a;-><init>(Lcl$b;)V

    .line 18
    const-wide/16 v0, 0x64

    .line 20
    invoke-static {p1, v0, v1}, Lbg0;->d(Ljava/lang/Runnable;J)V

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x3

    .line 25
    new-array p1, p1, [Ljava/lang/Object;

    .line 27
    iget-object v1, p0, Lcl$b;->a:Lcl;

    .line 29
    invoke-static {v1}, Lcl;->y(Lcl;)I

    .line 32
    move-result v1

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v1

    .line 37
    aput-object v1, p1, v0

    .line 39
    iget-object v0, p0, Lcl$b;->a:Lcl;

    .line 41
    invoke-static {v0}, Lcl;->z(Lcl;)I

    .line 44
    move-result v0

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v0

    .line 49
    const/4 v1, 0x1

    .line 50
    aput-object v0, p1, v1

    .line 52
    iget-object v0, p0, Lcl$b;->a:Lcl;

    .line 54
    invoke-static {v0}, Lcl;->A(Lcl;)I

    .line 57
    move-result v0

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v0

    .line 62
    const/4 v1, 0x2

    .line 63
    aput-object v0, p1, v1

    .line 65
    const-string v0, "excute === operateType={?}, screenWindow={?}, screenMode={?}"

    .line 67
    invoke-static {v2, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object p1, p0, Lcl$b;->a:Lcl;

    .line 72
    invoke-static {p1}, Lcl;->B(Lcl;)V

    .line 75
    :goto_0
    return-void
.end method
