.class public Lve$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:[B

.field public final synthetic b:Lve;


# direct methods
.method public constructor <init>(Lve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lve$c;->b:Lve;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 p1, 0x1

    .line 7
    new-array p1, p1, [B

    .line 9
    iput-object p1, p0, Lve$c;->a:[B

    .line 11
    return-void
.end method

.method public static synthetic a(Lve$c;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lve$c;->a:[B

    .line 3
    return-object p0
.end method
