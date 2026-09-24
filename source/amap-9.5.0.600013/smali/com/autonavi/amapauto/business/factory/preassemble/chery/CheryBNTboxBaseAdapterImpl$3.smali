.class Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl$3;
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
    iput-object p1, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl$3;->this$0:Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;

    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 4
    iget-object p1, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl$3;->this$0:Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;

    .line 6
    invoke-static {p1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->access$400(Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;)Landroid/database/ContentObserver;

    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p1, v0}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 14
    return-void
.end method
