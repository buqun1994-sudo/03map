.class public Lcom/autonavi/common/tool/dumpcrash$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/common/tool/dumpcrash;->readAnrTraces()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/autonavi/common/tool/dumpcrash$b;Lcom/autonavi/common/tool/dumpcrash$b;)I
    .locals 3

    .line 1
    iget-wide v0, p1, Lcom/autonavi/common/tool/dumpcrash$b;->b:J

    .line 3
    iget-wide p1, p2, Lcom/autonavi/common/tool/dumpcrash$b;->b:J

    .line 5
    cmp-long v2, v0, p1

    .line 7
    if-gez v2, :cond_0

    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    cmp-long v2, v0, p1

    .line 13
    if-lez v2, :cond_1

    .line 15
    const/4 p1, -0x1

    .line 16
    return p1

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/autonavi/common/tool/dumpcrash$b;

    .line 3
    check-cast p2, Lcom/autonavi/common/tool/dumpcrash$b;

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/autonavi/common/tool/dumpcrash$a;->a(Lcom/autonavi/common/tool/dumpcrash$b;Lcom/autonavi/common/tool/dumpcrash$b;)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method
