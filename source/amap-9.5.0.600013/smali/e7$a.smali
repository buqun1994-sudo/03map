.class public Le7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le7;->f(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le7;


# direct methods
.method public constructor <init>(Le7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le7$a;->a:Le7;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/MapApplication;->q:Lcom/autonavi/amapauto/MapApplication;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/MapApplication;->q(Z)V

    .line 7
    return-void
.end method
