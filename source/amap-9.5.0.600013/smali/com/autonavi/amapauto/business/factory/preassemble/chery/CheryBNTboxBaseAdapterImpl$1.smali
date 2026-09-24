.class Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl$1;->this$0:Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;

    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 4
    iget-object p1, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl$1;->this$0:Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;

    .line 6
    invoke-static {p1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->access$000(Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;)I

    .line 9
    move-result p1

    .line 10
    const/4 v0, 0x2

    .line 11
    new-array v0, v0, [Ljava/lang/Object;

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    aput-object v1, v0, v2

    .line 20
    iget-object v1, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl$1;->this$0:Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;

    .line 22
    invoke-static {v1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->access$100(Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;)I

    .line 25
    move-result v1

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v1

    .line 30
    const/4 v3, 0x1

    .line 31
    aput-object v1, v0, v3

    .line 33
    const-string v1, "CheryBNTboxBase_InteractionImpl"

    .line 35
    const-string v4, "tbox mNetTypeObserver netWorkType={?},mNetWorkType={?}"

    .line 37
    invoke-static {v1, v4, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl$1;->this$0:Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;

    .line 42
    invoke-static {v0}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->access$100(Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;)I

    .line 45
    move-result v0

    .line 46
    if-eq v0, p1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl$1;->this$0:Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;

    .line 50
    invoke-static {v0, p1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->access$102(Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;I)I

    .line 53
    iget-object p1, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl$1;->this$0:Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;

    .line 55
    iget-object p1, p1, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->mContext:Landroid/content/Context;

    .line 57
    invoke-static {p1}, Lpa;->o(Landroid/content/Context;)Z

    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_0

    .line 63
    new-array p1, v3, [Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl$1;->this$0:Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;

    .line 67
    invoke-static {v0}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->access$100(Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;)I

    .line 70
    move-result v0

    .line 71
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    move-result-object v0

    .line 75
    aput-object v0, p1, v2

    .line 77
    const-string v0, "tbox mNetTypeObserver mNetWorkType = {?}"

    .line 79
    invoke-static {v1, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    iget-object p1, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl$1;->this$0:Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;

    .line 84
    invoke-static {p1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->access$100(Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;)I

    .line 87
    move-result p1

    .line 88
    invoke-static {p1}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeSetNetWorkState(I)V

    .line 91
    :cond_0
    return-void
.end method
