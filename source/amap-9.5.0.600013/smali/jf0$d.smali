.class public Ljf0$d;
.super Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljf0;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljf0;


# direct methods
.method public constructor <init>(Ljf0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljf0$d;->a:Ljf0;

    .line 3
    invoke-direct {p0}, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public isMainActivity(Landroid/app/Activity;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lkc;

    .line 3
    return p1
.end method
