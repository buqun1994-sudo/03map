.class public Lve$a;
.super Lbe$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lve;


# direct methods
.method public constructor <init>(Lve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lve$a;->a:Lve;

    .line 3
    invoke-direct {p0}, Lbe$a;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public g1(Landroid/os/ParcelFileDescriptor;III)V
    .locals 7

    .line 1
    iget-object v0, p0, Lve$a;->a:Lve;

    .line 3
    invoke-static {v0}, Lve;->m(Lve;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x3

    .line 8
    new-array v2, v1, [Ljava/lang/Object;

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v3

    .line 14
    const/4 v4, 0x0

    .line 15
    aput-object v3, v2, v4

    .line 17
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v3

    .line 21
    const/4 v5, 0x1

    .line 22
    aput-object v3, v2, v5

    .line 24
    const/4 v3, 0x2

    .line 25
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v6

    .line 29
    aput-object v6, v2, v3

    .line 31
    const-string v3, "receiverMemory: size = {?},width = {?},height = {?}"

    .line 33
    invoke-static {v0, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    :try_start_0
    const-string v0, "adas"

    .line 38
    invoke-static {p1, p2, v1, v0}, Laf;->b(Landroid/os/ParcelFileDescriptor;IILjava/lang/String;)Landroid/os/MemoryFile;

    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_1

    .line 44
    iget-object v0, p0, Lve$a;->a:Lve;

    .line 46
    invoke-static {v0}, Lve;->n(Lve;)Lve$c;

    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Lve$c;->a(Lve$c;)[B

    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p1, v0, v4, v4, v5}, Landroid/os/MemoryFile;->readBytes([BIII)I

    .line 57
    iget-object v0, p0, Lve$a;->a:Lve;

    .line 59
    invoke-static {v0}, Lve;->n(Lve;)Lve$c;

    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Lve$c;->a(Lve$c;)[B

    .line 66
    move-result-object v0

    .line 67
    aget-byte v0, v0, v4

    .line 69
    if-ne v0, v5, :cond_0

    .line 71
    iget-object v0, p0, Lve$a;->a:Lve;

    .line 73
    invoke-static {v0}, Lve;->n(Lve;)Lve$c;

    .line 76
    move-result-object v0

    .line 77
    invoke-static {v0}, Lve$c;->a(Lve$c;)[B

    .line 80
    move-result-object v0

    .line 81
    aput-byte v4, v0, v4

    .line 83
    iget-object v0, p0, Lve$a;->a:Lve;

    .line 85
    invoke-static {v0}, Lve;->n(Lve;)Lve$c;

    .line 88
    move-result-object v0

    .line 89
    invoke-static {v0}, Lve$c;->a(Lve$c;)[B

    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {p1, v0, v4, v4, v5}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 96
    iget-object v0, p0, Lve$a;->a:Lve;

    .line 98
    invoke-static {v0, p1, p3, p4, p2}, Lve;->o(Lve;Landroid/os/MemoryFile;III)V

    .line 101
    goto :goto_0

    .line 102
    :cond_0
    iget-object p2, p0, Lve$a;->a:Lve;

    .line 104
    invoke-static {p2}, Lve;->m(Lve;)Ljava/lang/String;

    .line 107
    move-result-object p2

    .line 108
    const-string p3, "receiverMemory: first byte is not 1!!!"

    .line 110
    new-array p4, v4, [Ljava/lang/Object;

    .line 112
    invoke-static {p2, p3, p4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    :goto_0
    invoke-virtual {p1}, Landroid/os/MemoryFile;->close()V

    .line 118
    goto :goto_1

    .line 119
    :cond_1
    iget-object p1, p0, Lve$a;->a:Lve;

    .line 121
    invoke-static {p1}, Lve;->m(Lve;)Ljava/lang/String;

    .line 124
    move-result-object p1

    .line 125
    const-string p2, "receiverMemory: memoryFile is null"

    .line 127
    new-array p3, v4, [Ljava/lang/Object;

    .line 129
    invoke-static {p1, p2, p3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    goto :goto_1

    .line 133
    :catch_0
    move-exception p1

    .line 134
    iget-object p2, p0, Lve$a;->a:Lve;

    .line 136
    invoke-static {p2}, Lve;->m(Lve;)Ljava/lang/String;

    .line 139
    move-result-object p2

    .line 140
    new-array p3, v5, [Ljava/lang/Object;

    .line 142
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 145
    move-result-object p1

    .line 146
    aput-object p1, p3, v4

    .line 148
    const-string p1, "receiverMemory: e = {?}"

    .line 150
    invoke-static {p2, p1, p3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    :goto_1
    return-void
.end method
