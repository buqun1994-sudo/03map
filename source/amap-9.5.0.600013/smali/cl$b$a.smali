.class public Lcl$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl$b;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcl$b;


# direct methods
.method public constructor <init>(Lcl$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcl$b$a;->a:Lcl$b;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcl$b$a;->a:Lcl$b;

    .line 6
    iget-object v1, v1, Lcl$b;->a:Lcl;

    .line 8
    invoke-static {v1}, Lcl;->y(Lcl;)I

    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    aput-object v1, v0, v2

    .line 19
    iget-object v1, p0, Lcl$b$a;->a:Lcl$b;

    .line 21
    iget-object v1, v1, Lcl$b;->a:Lcl;

    .line 23
    invoke-static {v1}, Lcl;->z(Lcl;)I

    .line 26
    move-result v1

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x1

    .line 32
    aput-object v1, v0, v2

    .line 34
    iget-object v1, p0, Lcl$b$a;->a:Lcl$b;

    .line 36
    iget-object v1, v1, Lcl$b;->a:Lcl;

    .line 38
    invoke-static {v1}, Lcl;->A(Lcl;)I

    .line 41
    move-result v1

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v1

    .line 46
    const/4 v2, 0x2

    .line 47
    aput-object v1, v0, v2

    .line 49
    const-string v1, "ExScreenOperaAction"

    .line 51
    const-string v2, "delayed excute === operateType={?}, screenWindow={?}, screenMode={?}"

    .line 53
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lcl$b$a;->a:Lcl$b;

    .line 58
    iget-object v0, v0, Lcl$b;->a:Lcl;

    .line 60
    invoke-static {v0}, Lcl;->B(Lcl;)V

    .line 63
    return-void
.end method
