.class public Lbh$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lls$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbh$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lbh$e;

.field public final synthetic b:Ljava/lang/StringBuilder;

.field public final synthetic c:Lbh$a;


# direct methods
.method public constructor <init>(Lbh$a;Lbh$e;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbh$a$a;->c:Lbh$a;

    .line 3
    iput-object p2, p0, Lbh$a$a;->a:Lbh$e;

    .line 5
    iput-object p3, p0, Lbh$a$a;->b:Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    const-string v0, "heap_dump_pid:"

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 20
    move-result v0

    .line 21
    iget-object v2, p0, Lbh$a$a;->a:Lbh$e;

    .line 23
    add-int/lit8 v0, v0, 0xe

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    iput-object p1, v2, Lbh$e;->a:Ljava/lang/String;

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const-string v0, "exceptionTime:"

    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 43
    move-result v0

    .line 44
    iget-object v2, p0, Lbh$a$a;->a:Lbh$e;

    .line 46
    add-int/lit8 v0, v0, 0xe

    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    iput-object p1, v2, Lbh$e;->b:Ljava/lang/String;

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const-string v0, "app_init_time:"

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_3

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 66
    move-result v0

    .line 67
    iget-object v2, p0, Lbh$a$a;->a:Lbh$e;

    .line 69
    add-int/lit8 v0, v0, 0xe

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    iput-object p1, v2, Lbh$e;->c:Ljava/lang/String;

    .line 77
    goto :goto_0

    .line 78
    :cond_3
    const-string v0, "except_version:"

    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_4

    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 89
    move-result v0

    .line 90
    iget-object v2, p0, Lbh$a$a;->a:Lbh$e;

    .line 92
    add-int/lit8 v0, v0, 0xf

    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 97
    move-result-object p1

    .line 98
    iput-object p1, v2, Lbh$e;->d:Ljava/lang/String;

    .line 100
    goto :goto_0

    .line 101
    :cond_4
    iget-object v0, p0, Lbh$a$a;->b:Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const/16 p1, 0xa

    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    :goto_0
    return v1
.end method
