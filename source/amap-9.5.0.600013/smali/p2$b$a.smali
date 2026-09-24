.class public Lp2$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp2$b;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lp2$b;


# direct methods
.method public constructor <init>(Lp2$b;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp2$b$a;->b:Lp2$b;

    .line 3
    iput p2, p0, Lp2$b$a;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    iget-object v2, p0, Lp2$b$a;->b:Lp2$b;

    .line 13
    iget-object v2, v2, Lp2$b;->a:Lp2;

    .line 15
    invoke-static {v2}, Lp2;->z(Lp2;)I

    .line 18
    move-result v2

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v2

    .line 23
    const/4 v3, 0x1

    .line 24
    aput-object v2, v0, v3

    .line 26
    iget-object v2, p0, Lp2$b$a;->b:Lp2$b;

    .line 28
    iget-object v2, v2, Lp2$b;->a:Lp2;

    .line 30
    invoke-static {v2}, Lp2;->y(Lp2;)I

    .line 33
    move-result v2

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v2

    .line 38
    const/4 v3, 0x2

    .line 39
    aput-object v2, v0, v3

    .line 41
    iget v2, p0, Lp2$b$a;->a:I

    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v2

    .line 47
    const/4 v3, 0x3

    .line 48
    aput-object v2, v0, v3

    .line 50
    const-string v2, "AidlWidgetExternalScreen"

    .line 52
    const-string v3, "delayed excute === operateType={?}, screenWindow={?}, screenMode={?}, mode = {?}"

    .line 54
    invoke-static {v2, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lp2$b$a;->b:Lp2$b;

    .line 59
    iget-object v0, v0, Lp2$b;->a:Lp2;

    .line 61
    invoke-static {v0}, Lp2;->A(Lp2;)I

    .line 64
    move-result v0

    .line 65
    iget v2, p0, Lp2$b$a;->a:I

    .line 67
    invoke-static {v1, v0, v2}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->onOperateExscreenNotified(III)V

    .line 70
    return-void
.end method
