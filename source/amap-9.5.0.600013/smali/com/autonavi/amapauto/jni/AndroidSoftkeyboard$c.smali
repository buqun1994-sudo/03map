.class public Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard;->setEditTextSelection(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$c;->a:I

    .line 3
    iput p2, p0, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$c;->b:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Ltu;->c()Ltu;

    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$c;->a:I

    .line 7
    iget v2, p0, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$c;->b:I

    .line 9
    invoke-virtual {v0, v1, v2}, Ltu;->m(II)V

    .line 12
    return-void
.end method
