.class public final Lum$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lum$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:[Lum$c;


# direct methods
.method public constructor <init>([Lum$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lum$b;->a:[Lum$c;

    .line 6
    return-void
.end method


# virtual methods
.method public a()[Lum$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lum$b;->a:[Lum$c;

    .line 3
    return-object v0
.end method
