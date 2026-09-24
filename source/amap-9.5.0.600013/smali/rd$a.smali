.class public Lrd$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrd;->b(Ljava/lang/String;)Leq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lrd;


# direct methods
.method public constructor <init>(Lrd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrd$a;->a:Lrd;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Lp3;->b()Lp3;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lp3;->c()V

    .line 8
    return-void
.end method
