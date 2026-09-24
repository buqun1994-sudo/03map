.class public La$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicLong;

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final c:J

.field public final d:I

.field public final e:Ljava/util/Map;

.field public f:Ljava/io/File;

.field public final synthetic g:La;


# direct methods
.method public constructor <init>(La;Ljava/io/File;JI)V
    .locals 0

    .line 2
    iput-object p1, p0, La$b;->g:La;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, La$b;->e:Ljava/util/Map;

    .line 4
    iput-object p2, p0, La$b;->f:Ljava/io/File;

    .line 5
    iput-wide p3, p0, La$b;->c:J

    .line 6
    iput p5, p0, La$b;->d:I

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, La$b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, La$b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    invoke-virtual {p0}, La$b;->e()V

    return-void
.end method

.method public synthetic constructor <init>(La;Ljava/io/File;JILa$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, La$b;-><init>(La;Ljava/io/File;JI)V

    return-void
.end method

.method public static synthetic a(La$b;Ljava/io/File;)J
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, La$b;->f(Ljava/io/File;)J

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static synthetic b(La$b;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, La$b;->e:Ljava/util/Map;

    .line 3
    return-object p0
.end method

.method public static synthetic c(La$b;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 1
    iget-object p0, p0, La$b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    return-object p0
.end method

.method public static synthetic d(La$b;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, La$b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    return-object p0
.end method


# virtual methods
.method public final e()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 3
    new-instance v1, La$b$a;

    .line 5
    invoke-direct {v1, p0}, La$b$a;-><init>(La$b;)V

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 14
    return-void
.end method

.method public final f(Ljava/io/File;)J
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method
