.class public Lhx0$d;
.super Lhx0$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhx0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public g:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lhx0$b;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public m(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhx0$d;->g:Ljava/lang/Integer;

    .line 3
    return-void
.end method

.method public n()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lhx0$d;->g:Ljava/lang/Integer;

    .line 3
    return-object v0
.end method
