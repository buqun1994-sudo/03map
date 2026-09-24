.class public Lvo0$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/handler/OnLooperPrepared;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvo0;->e(Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lvo0;


# direct methods
.method public constructor <init>(Lvo0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvo0$j;->a:Lvo0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAmapLooperPrepared(Lcom/amap/location/support/handler/AmapLooper;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lvo0$j;->a:Lvo0;

    .line 3
    invoke-static {v0}, Lvo0;->J(Lvo0;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    if-eqz p1, :cond_0

    .line 11
    invoke-interface {p1}, Lcom/amap/location/support/handler/AmapLooper;->quit()V

    .line 14
    :cond_0
    return-void
.end method
