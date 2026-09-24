.class public Lo6$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo6;->D(II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lo6;


# direct methods
.method public constructor <init>(Lo6;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo6$d;->b:Lo6;

    .line 3
    iput p2, p0, Lo6$d;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lo6;->j()Lo6;

    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lo6$d;->a:I

    .line 7
    invoke-virtual {v0, v1}, Lo6;->a(I)Z

    .line 10
    return-void
.end method
