.class public Lnm$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnm;->l(Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

.field public final synthetic b:Lnm;


# direct methods
.method public constructor <init>(Lnm;Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnm$a;->b:Lnm;

    .line 3
    iput-object p2, p0, Lnm$a;->a:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lnm$a;->a:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 3
    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getType()I

    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;->b(I)Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;

    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    sget-object v1, Lnm$f;->a:[I

    .line 16
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 19
    move-result v0

    .line 20
    aget v0, v1, v0

    .line 22
    const/4 v1, 0x1

    .line 23
    if-eq v0, v1, :cond_2

    .line 25
    const/4 v1, 0x2

    .line 26
    if-eq v0, v1, :cond_2

    .line 28
    const/4 v1, 0x3

    .line 29
    if-eq v0, v1, :cond_1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v0, p0, Lnm$a;->a:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 34
    invoke-static {v0}, Lgh;->m(Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)Lgh;

    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lnm$a;->b:Lnm;

    .line 40
    invoke-static {v1}, Lnm;->a(Lnm;)Lfc;

    .line 43
    move-result-object v1

    .line 44
    instance-of v1, v1, Ljm;

    .line 46
    if-eqz v1, :cond_4

    .line 48
    iget-object v1, p0, Lnm$a;->b:Lnm;

    .line 50
    invoke-static {v1}, Lnm;->a(Lnm;)Lfc;

    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Ljm;

    .line 56
    invoke-virtual {v1, v0}, Ljm;->u(Lgh;)V

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iget-object v0, p0, Lnm$a;->b:Lnm;

    .line 62
    invoke-static {v0}, Lnm;->a(Lnm;)Lfc;

    .line 65
    move-result-object v0

    .line 66
    instance-of v0, v0, Lkm;

    .line 68
    if-eqz v0, :cond_3

    .line 70
    iget-object v0, p0, Lnm$a;->a:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 72
    invoke-static {v0}, Lno;->t(Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)Lno;

    .line 75
    move-result-object v0

    .line 76
    iget-object v1, p0, Lnm$a;->b:Lnm;

    .line 78
    invoke-static {v1}, Lnm;->a(Lnm;)Lfc;

    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Lkm;

    .line 84
    sget-object v2, Lkm$f;->e:Lkm$f;

    .line 86
    invoke-virtual {v1, v2}, Lkm;->x(Lkm$f;)V

    .line 89
    iget-object v1, p0, Lnm$a;->b:Lnm;

    .line 91
    invoke-static {v1}, Lnm;->a(Lnm;)Lfc;

    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Lkm;

    .line 97
    invoke-virtual {v1, v0}, Lkm;->y(Lno;)V

    .line 100
    goto :goto_0

    .line 101
    :cond_3
    iget-object v0, p0, Lnm$a;->b:Lnm;

    .line 103
    invoke-static {v0}, Lnm;->a(Lnm;)Lfc;

    .line 106
    move-result-object v0

    .line 107
    instance-of v0, v0, Ljm;

    .line 109
    if-eqz v0, :cond_4

    .line 111
    iget-object v0, p0, Lnm$a;->a:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 113
    invoke-static {v0}, Lgh;->m(Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)Lgh;

    .line 116
    move-result-object v0

    .line 117
    iget-object v1, p0, Lnm$a;->b:Lnm;

    .line 119
    invoke-static {v1}, Lnm;->a(Lnm;)Lfc;

    .line 122
    move-result-object v1

    .line 123
    check-cast v1, Ljm;

    .line 125
    invoke-virtual {v1, v0}, Ljm;->u(Lgh;)V

    .line 128
    :cond_4
    :goto_0
    return-void
.end method
