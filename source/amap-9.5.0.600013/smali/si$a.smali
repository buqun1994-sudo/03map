.class public Lsi$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsi;->c0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lsi;


# direct methods
.method public constructor <init>(Lsi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsi$a;->a:Lsi;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "DeviceInfo"

    .line 6
    const-string v2, "updateCellInfo"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lrv;->H()Lrv;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lsi;->u(Landroid/content/Context;)Lsi;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lsi;->l()V

    .line 26
    return-void
.end method
