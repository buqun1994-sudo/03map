.class Lcom/amap/location/support/location/AbstractPriorityLocationFilter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/handler/OnHandleMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/support/location/AbstractPriorityLocationFilter;-><init>(JLcom/amap/location/support/handler/AmapLooper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amap/location/support/location/AbstractPriorityLocationFilter;


# direct methods
.method public constructor <init>(Lcom/amap/location/support/location/AbstractPriorityLocationFilter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/location/AbstractPriorityLocationFilter$1;->this$0:Lcom/amap/location/support/location/AbstractPriorityLocationFilter;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(IIILjava/lang/Object;)V
    .locals 0

    .line 1
    const/4 p2, 0x1

    .line 2
    if-ne p1, p2, :cond_0

    .line 4
    if-eqz p4, :cond_0

    .line 6
    iget-object p1, p0, Lcom/amap/location/support/location/AbstractPriorityLocationFilter$1;->this$0:Lcom/amap/location/support/location/AbstractPriorityLocationFilter;

    .line 8
    check-cast p4, Lcom/amap/location/support/bean/location/AmapLocation;

    .line 10
    invoke-static {p1, p4}, Lcom/amap/location/support/location/AbstractPriorityLocationFilter;->access$000(Lcom/amap/location/support/location/AbstractPriorityLocationFilter;Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p2, 0x2

    .line 15
    if-ne p1, p2, :cond_1

    .line 17
    if-eqz p4, :cond_1

    .line 19
    iget-object p1, p0, Lcom/amap/location/support/location/AbstractPriorityLocationFilter$1;->this$0:Lcom/amap/location/support/location/AbstractPriorityLocationFilter;

    .line 21
    const/4 p2, 0x0

    .line 22
    invoke-static {p1, p2}, Lcom/amap/location/support/location/AbstractPriorityLocationFilter;->access$102(Lcom/amap/location/support/location/AbstractPriorityLocationFilter;Z)Z

    .line 25
    const-string p1, "prilocfilter"

    .line 27
    const-string p2, "delay loc report"

    .line 29
    invoke-static {p1, p2}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lcom/amap/location/support/location/AbstractPriorityLocationFilter$1;->this$0:Lcom/amap/location/support/location/AbstractPriorityLocationFilter;

    .line 34
    check-cast p4, Lcom/amap/location/support/bean/location/AmapLocation;

    .line 36
    invoke-static {p1, p4}, Lcom/amap/location/support/location/AbstractPriorityLocationFilter;->access$000(Lcom/amap/location/support/location/AbstractPriorityLocationFilter;Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 39
    :cond_1
    :goto_0
    return-void
.end method
