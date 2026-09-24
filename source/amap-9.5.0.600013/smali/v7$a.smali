.class public Lv7$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_2

    .line 10
    const-string v0, "\\."

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    array-length v0, p1

    .line 17
    const/4 v1, 0x2

    .line 18
    if-le v0, v1, :cond_2

    .line 20
    const/4 v0, 0x0

    .line 21
    aget-object v0, p1, v0

    .line 23
    iput-object v0, p0, Lv7$a;->a:Ljava/lang/String;

    .line 25
    const/4 v1, 0x1

    .line 26
    aget-object p1, p1, v1

    .line 28
    iput-object p1, p0, Lv7$a;->b:Ljava/lang/String;

    .line 30
    const-string p1, "N60"

    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_0

    .line 38
    const-string p1, "N98Z"

    .line 40
    iget-object v0, p0, Lv7$a;->a:Ljava/lang/String;

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_0

    .line 48
    const-string p1, "N98A"

    .line 50
    iget-object v0, p0, Lv7$a;->a:Ljava/lang/String;

    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_2

    .line 58
    :cond_0
    const-string p1, "W320"

    .line 60
    iget-object v0, p0, Lv7$a;->b:Ljava/lang/String;

    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_1

    .line 68
    const-string p1, "W1280"

    .line 70
    iget-object v0, p0, Lv7$a;->b:Ljava/lang/String;

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result p1

    .line 76
    if-nez p1, :cond_1

    .line 78
    const-string p1, "W1600"

    .line 80
    iget-object v0, p0, Lv7$a;->b:Ljava/lang/String;

    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_2

    .line 88
    :cond_1
    iput-boolean v1, p0, Lv7$a;->c:Z

    .line 90
    :cond_2
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lv7$a;->a:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lv7$a;->b:Ljava/lang/String;

    .line 3
    return-object v0
.end method
