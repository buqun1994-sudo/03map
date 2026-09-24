.class public abstract Lv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv$f;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = "AccOffOnFuncRepository"

.field public static final b:[Lfq;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [Lfq;

    .line 4
    const-string v1, "android.intent.action.POWER_OFF"

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v2, v1}, Lv;->b(Ljava/lang/String;Ljava/lang/String;)Ldk0$a;

    .line 10
    move-result-object v1

    .line 11
    const/4 v3, 0x0

    .line 12
    aput-object v1, v0, v3

    .line 14
    const-string v1, "gaei.action.POWER_OFF"

    .line 16
    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    .line 18
    invoke-static {v2, v1, v3}, Lv;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ldk0$a;

    .line 21
    move-result-object v1

    .line 22
    const/4 v3, 0x1

    .line 23
    aput-object v1, v0, v3

    .line 25
    const-string v1, "com.hsae.auto.ACTION_ACC_STATE"

    .line 27
    invoke-static {v2, v1}, Lv;->b(Ljava/lang/String;Ljava/lang/String;)Ldk0$a;

    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x2

    .line 32
    aput-object v1, v0, v2

    .line 34
    new-instance v1, Lv$b;

    .line 36
    invoke-direct {v1}, Lv$b;-><init>()V

    .line 39
    const/4 v2, 0x3

    .line 40
    aput-object v1, v0, v2

    .line 42
    new-instance v1, Lv$c;

    .line 44
    invoke-direct {v1}, Lv$c;-><init>()V

    .line 47
    const/4 v2, 0x4

    .line 48
    aput-object v1, v0, v2

    .line 50
    new-instance v1, Lv$d;

    .line 52
    invoke-direct {v1}, Lv$d;-><init>()V

    .line 55
    const/4 v2, 0x5

    .line 56
    aput-object v1, v0, v2

    .line 58
    new-instance v1, Lv$e;

    .line 60
    invoke-direct {v1}, Lv$e;-><init>()V

    .line 63
    const/4 v2, 0x6

    .line 64
    aput-object v1, v0, v2

    .line 66
    sput-object v0, Lv;->b:[Lfq;

    .line 68
    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lv;->a:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ldk0$a;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lv;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ldk0$a;

    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ldk0$a;
    .locals 1

    .line 1
    new-instance v0, Lv$a;

    .line 3
    invoke-direct {v0, p0, p1, p2}, Lv$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    return-object v0
.end method
