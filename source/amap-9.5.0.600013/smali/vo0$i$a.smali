.class public Lvo0$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvo0$i;->onDataReport(I[BILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:[B

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lvo0$i;


# direct methods
.method public constructor <init>(Lvo0$i;I[BILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvo0$i$a;->e:Lvo0$i;

    .line 3
    iput p2, p0, Lvo0$i$a;->a:I

    .line 5
    iput-object p3, p0, Lvo0$i$a;->b:[B

    .line 7
    iput p4, p0, Lvo0$i$a;->c:I

    .line 9
    iput-object p5, p0, Lvo0$i$a;->d:Ljava/lang/String;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget v0, p0, Lvo0$i$a;->a:I

    .line 3
    iget-object v1, p0, Lvo0$i$a;->b:[B

    .line 5
    iget v2, p0, Lvo0$i$a;->c:I

    .line 7
    iget-object v3, p0, Lvo0$i$a;->d:Ljava/lang/String;

    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/amap/ams/jni/gnss/NativeGnssLocator;->sendDiffData(I[BILjava/lang/String;)V

    .line 12
    const v0, 0x18f3c

    .line 15
    invoke-static {v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 18
    iget v0, p0, Lvo0$i$a;->a:I

    .line 20
    const/4 v1, 0x3

    .line 21
    if-ne v0, v1, :cond_0

    .line 23
    const v0, 0x18f3d

    .line 26
    invoke-static {v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 29
    :cond_0
    return-void
.end method
