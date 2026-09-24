.class public Ldp$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/nio/channels/SocketChannel;

.field public final synthetic c:Ldp;


# direct methods
.method public constructor <init>(Ldp;Ljava/lang/String;Ljava/nio/channels/SocketChannel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldp$c;->c:Ldp;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Ldp$c;->a:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Ldp$c;->b:Ljava/nio/channels/SocketChannel;

    .line 10
    return-void
.end method

.method public static synthetic a(Ldp$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ldp$c;->a:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Ldp$c;)Ljava/nio/channels/SocketChannel;
    .locals 0

    .line 1
    iget-object p0, p0, Ldp$c;->b:Ljava/nio/channels/SocketChannel;

    .line 3
    return-object p0
.end method
