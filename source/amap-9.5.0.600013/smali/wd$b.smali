.class public Lwd$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwd;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lwm$c;

.field public final synthetic b:I

.field public final synthetic c:Lwd;


# direct methods
.method public constructor <init>(Lwd;Lwm$c;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwd$b;->c:Lwd;

    .line 3
    iput-object p2, p0, Lwd$b;->a:Lwm$c;

    .line 5
    iput p3, p0, Lwd$b;->b:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lwd$b;->a:Lwm$c;

    .line 3
    iget v1, p0, Lwd$b;->b:I

    .line 5
    invoke-virtual {v0, v1}, Lwm$c;->a(I)V

    .line 8
    return-void
.end method
