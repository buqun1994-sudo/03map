.class public Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard;->selectAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Ltu;->c()Ltu;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ltu;->h()V

    .line 8
    return-void
.end method
