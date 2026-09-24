.class public Lq2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq2;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lq2;


# direct methods
.method public constructor <init>(Lq2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq2$a;->a:Lq2;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lq2$a;->a:Lq2;

    .line 3
    invoke-static {v0}, Lq2;->v(Lq2;)Lfo0;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lq2$a;->a:Lq2;

    .line 9
    invoke-virtual {v1}, Lhl;->h()Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lfo0;->c(Lcom/autonavi/amapauto/jni/ViewInfo;)V

    .line 16
    return-void
.end method
