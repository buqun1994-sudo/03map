.class public Lja0$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lja0$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Log;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lja0$b;


# direct methods
.method public constructor <init>(Lja0$b;Log;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lja0$b$a;->c:Lja0$b;

    .line 3
    iput-object p2, p0, Lja0$b$a;->a:Log;

    .line 5
    iput-object p3, p0, Lja0$b$a;->b:Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lja0$b$a;->a:Log;

    .line 3
    iget-object v1, p0, Lja0$b$a;->b:Ljava/lang/Object;

    .line 5
    invoke-interface {v0, v1}, Log;->a(Ljava/lang/Object;)V

    .line 8
    return-void
.end method
