.class Lcom/google/protobuf/aq$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/aq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field private static final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/aq$c$1;

    .line 3
    invoke-direct {v0}, Lcom/google/protobuf/aq$c$1;-><init>()V

    .line 6
    sput-object v0, Lcom/google/protobuf/aq$c;->a:Ljava/util/Iterator;

    .line 8
    new-instance v0, Lcom/google/protobuf/aq$c$2;

    .line 10
    invoke-direct {v0}, Lcom/google/protobuf/aq$c$2;-><init>()V

    .line 13
    sput-object v0, Lcom/google/protobuf/aq$c;->b:Ljava/lang/Iterable;

    .line 15
    return-void
.end method

.method public static a()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/aq$c;->b:Ljava/lang/Iterable;

    .line 3
    return-object v0
.end method

.method public static synthetic b()Ljava/util/Iterator;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/aq$c;->a:Ljava/util/Iterator;

    .line 3
    return-object v0
.end method
