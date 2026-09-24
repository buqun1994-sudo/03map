.class public Lvo0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvo0;
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
    iput-object p1, p0, Lvo0$b;->a:Lvo0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lvo0$b;->a:Lvo0;

    .line 3
    invoke-static {v0}, Lvo0;->W(Lvo0;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 13
    iget-object v0, p0, Lvo0$b;->a:Lvo0;

    .line 15
    invoke-static {v0}, Lvo0;->W(Lvo0;)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Lcom/amap/ams/jni/gnss/NativeGnssLocator;->updateEphemeris(Ljava/lang/String;)I

    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x1

    .line 24
    if-ne v1, v2, :cond_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v2, 0x0

    .line 28
    :goto_0
    invoke-static {v0, v2}, Lvo0;->E(Lvo0;Z)Z

    .line 31
    :cond_1
    iget-object v0, p0, Lvo0$b;->a:Lvo0;

    .line 33
    invoke-static {v0}, Lvo0;->X(Lvo0;)Z

    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 39
    iget-object v0, p0, Lvo0$b;->a:Lvo0;

    .line 41
    invoke-static {v0}, Lvo0;->Y(Lvo0;)Ljava/lang/Runnable;

    .line 44
    move-result-object v1

    .line 45
    const-wide/16 v2, 0x7d0

    .line 47
    invoke-static {v0, v1, v2, v3}, Lvo0;->p(Lvo0;Ljava/lang/Runnable;J)V

    .line 50
    :cond_2
    return-void
.end method
