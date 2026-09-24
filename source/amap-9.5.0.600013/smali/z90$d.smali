.class public Lz90$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz90;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz90;


# direct methods
.method public constructor <init>(Lz90;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz90$d;->a:Lz90;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lz90$d;->a:Lz90;

    .line 3
    invoke-static {v0}, Lz90;->c(Lz90;)V

    .line 6
    return-void
.end method
