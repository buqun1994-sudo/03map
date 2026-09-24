.class public Lnm$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnm;->n(Lcom/autonavi/amapauto/widget/jni/LaneInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/amapauto/widget/jni/LaneInfo;

.field public final synthetic b:Lnm;


# direct methods
.method public constructor <init>(Lnm;Lcom/autonavi/amapauto/widget/jni/LaneInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnm$c;->b:Lnm;

    .line 3
    iput-object p2, p0, Lnm$c;->a:Lcom/autonavi/amapauto/widget/jni/LaneInfo;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnm$c;->b:Lnm;

    .line 3
    invoke-static {v0}, Lnm;->a(Lnm;)Lfc;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lnm$c;->a:Lcom/autonavi/amapauto/widget/jni/LaneInfo;

    .line 9
    invoke-virtual {v0, v1}, Lfc;->f(Lcom/autonavi/amapauto/widget/jni/LaneInfo;)V

    .line 12
    return-void
.end method
