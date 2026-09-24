.class public Lt20$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt20;->s(Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lt20;


# direct methods
.method public constructor <init>(Lt20;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt20$c;->b:Lt20;

    .line 3
    iput p2, p0, Lt20$c;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lt20$c;->b:Lt20;

    .line 3
    iget v1, p0, Lt20$c;->a:I

    .line 5
    const/4 v2, -0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-virtual {v0, v1, v2, v3}, Lt20;->z(IILjava/lang/String;)V

    .line 10
    return-void
.end method
