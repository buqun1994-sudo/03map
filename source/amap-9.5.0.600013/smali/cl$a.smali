.class public Lcl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcl;


# direct methods
.method public constructor <init>(Lcl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcl$a;->a:Lcl;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcl$a;->a:Lcl;

    .line 3
    invoke-static {v0}, Lcl;->x(Lcl;)V

    .line 6
    return-void
.end method
