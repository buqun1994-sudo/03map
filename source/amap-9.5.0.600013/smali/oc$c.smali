.class public Loc$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Loc;->c(Lec;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lec;

.field public final synthetic b:Loc;


# direct methods
.method public constructor <init>(Loc;Lec;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loc$c;->b:Loc;

    .line 3
    iput-object p2, p0, Loc$c;->a:Lec;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Loc$c;->b:Loc;

    .line 3
    iget-object v1, p0, Loc$c;->a:Lec;

    .line 5
    invoke-virtual {v0, v1}, Loc;->d(Lec;)V

    .line 8
    return-void
.end method
