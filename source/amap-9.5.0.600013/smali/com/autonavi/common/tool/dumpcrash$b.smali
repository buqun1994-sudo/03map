.class public Lcom/autonavi/common/tool/dumpcrash$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/common/tool/dumpcrash;->readAnrTraces()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/io/File;

.field public b:J


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/autonavi/common/tool/dumpcrash$b;->a:Ljava/io/File;

    .line 6
    iput-wide p2, p0, Lcom/autonavi/common/tool/dumpcrash$b;->b:J

    .line 8
    return-void
.end method
