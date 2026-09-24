.class public abstract Ltk$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final a:Lcom/autonavi/eaglet/multiscreen/MultiScreenImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/eaglet/multiscreen/MultiScreenImpl;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/eaglet/multiscreen/MultiScreenImpl;-><init>()V

    .line 6
    sput-object v0, Ltk$c;->a:Lcom/autonavi/eaglet/multiscreen/MultiScreenImpl;

    .line 8
    return-void
.end method

.method public static synthetic a()Lcom/autonavi/eaglet/multiscreen/MultiScreenImpl;
    .locals 1

    .line 1
    sget-object v0, Ltk$c;->a:Lcom/autonavi/eaglet/multiscreen/MultiScreenImpl;

    .line 3
    return-object v0
.end method
