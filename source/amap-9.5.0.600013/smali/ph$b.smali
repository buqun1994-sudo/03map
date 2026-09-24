.class public Lph$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lph;


# direct methods
.method public constructor <init>(Lph;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lph$b;->a:Lph;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lph$b;->a:Lph;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lph;->a(Lph;Z)Z

    .line 7
    iget-object v0, p0, Lph$b;->a:Lph;

    .line 9
    invoke-static {v0}, Lph;->b(Lph;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    const-string v2, "onSensorDataReceived: timeout!"

    .line 15
    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    return-void
.end method
