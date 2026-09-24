.class Lfloatapp/tts/ttsService$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfloatapp/tts/ttsService;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lfloatapp/tts/ttsService;


# direct methods
.method constructor <init>(Lfloatapp/tts/ttsService;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lfloatapp/tts/ttsService$a;->b:Lfloatapp/tts/ttsService;

    iput-object p2, p0, Lfloatapp/tts/ttsService$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lfloatapp/tts/ttsService$a;->b:Lfloatapp/tts/ttsService;

    iget-object v1, p0, Lfloatapp/tts/ttsService$a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lfloatapp/tts/ttsService;->b(Landroid/content/Context;)V

    return-void
.end method
