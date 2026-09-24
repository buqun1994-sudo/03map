.class public Lz90$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz90;->p(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lz90;


# direct methods
.method public constructor <init>(Lz90;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz90$g;->b:Lz90;

    .line 3
    iput p2, p0, Lz90$g;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lz90$g;->b:Lz90;

    .line 3
    iget v1, p0, Lz90$g;->a:I

    .line 5
    invoke-static {v0, v1}, Lz90;->d(Lz90;I)V

    .line 8
    return-void
.end method
