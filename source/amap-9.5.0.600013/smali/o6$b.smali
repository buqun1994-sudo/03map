.class public Lo6$b;
.super Lo6$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo6;


# direct methods
.method public constructor <init>(Lo6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo6$b;->a:Lo6;

    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lo6$h;-><init>(Lo6$a;)V

    .line 7
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Wav"

    return-object v0
.end method

.method public onAudioFocusChange(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lo6$h;->onAudioFocusChange(I)V

    .line 4
    return-void
.end method
