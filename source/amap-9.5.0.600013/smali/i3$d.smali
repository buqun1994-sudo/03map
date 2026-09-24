.class public Li3$d;
.super Li3$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Lj3;


# direct methods
.method public constructor <init>(Lj3;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Li3$g;-><init>(Li3$a;)V

    .line 5
    iput-object p1, p0, Li3$d;->a:Lj3;

    .line 7
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Li3$d;->a:Lj3;

    .line 3
    invoke-virtual {v0}, Lj3;->start()V

    .line 6
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Li3$d;->a:Lj3;

    .line 3
    invoke-virtual {v0}, Lj3;->stop()V

    .line 6
    return-void
.end method
