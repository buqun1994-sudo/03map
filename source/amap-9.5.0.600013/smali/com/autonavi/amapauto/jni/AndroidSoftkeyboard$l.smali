.class public Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard;->setMaxTextLenght(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$l;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Ltu;->c()Ltu;

    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$l;->a:I

    .line 7
    invoke-virtual {v0, v1}, Ltu;->t(I)V

    .line 10
    return-void
.end method
