.class Lfloatapp/tts/ttsService$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfloatapp/tts/ttsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lfloatapp/tts/ttsService;


# direct methods
.method private constructor <init>(Lfloatapp/tts/ttsService;)V
    .locals 0

    iput-object p1, p0, Lfloatapp/tts/ttsService$b;->a:Lfloatapp/tts/ttsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfloatapp/tts/ttsService;Lfloatapp/tts/ttsService$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lfloatapp/tts/ttsService$b;-><init>(Lfloatapp/tts/ttsService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "AutoProtocolManager"

    const-string v0, "\u670d\u52a1\u5df2\u8fde\u63a5"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lfloatapp/tts/ttsService$b;->a:Lfloatapp/tts/ttsService;

    invoke-static {p1, p2}, Lfloatapp/tts/ttsService;->a(Lfloatapp/tts/ttsService;Landroid/os/IBinder;)Landroid/os/IBinder;

    iget-object p1, p0, Lfloatapp/tts/ttsService$b;->a:Lfloatapp/tts/ttsService;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lfloatapp/tts/ttsService;->f:Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "AutoProtocolManager"

    const-string v0, "\u670d\u52a1\u5df2\u65ad\u5f00"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lfloatapp/tts/ttsService$b;->a:Lfloatapp/tts/ttsService;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lfloatapp/tts/ttsService;->f:Z

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lfloatapp/tts/ttsService;->a(Lfloatapp/tts/ttsService;Landroid/os/IBinder;)Landroid/os/IBinder;

    return-void
.end method
