.class public Lt00;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt00$b;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lt00$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lt00;-><init>()V

    return-void
.end method

.method public static a()Lt00;
    .locals 1

    .line 1
    invoke-static {}, Lt00$b;->a()Lt00;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lt00;->a:Ljava/lang/Thread;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/Thread;

    .line 7
    new-instance v1, Lt00$a;

    .line 9
    invoke-direct {v1, p0}, Lt00$a;-><init>(Lt00;)V

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 15
    iput-object v0, p0, Lt00;->a:Ljava/lang/Thread;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 20
    :cond_0
    return-void
.end method
