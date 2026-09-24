.class public Lzm0$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn0$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzm0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lzm0;


# direct methods
.method public constructor <init>(Lzm0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzm0$j;->a:Lzm0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lzm0$j;->a:Lzm0;

    .line 3
    invoke-virtual {v0, p1, p2}, Lzm0;->n0(II)V

    .line 6
    return-void
.end method
