.class public Lcom/autonavi/adiu/storage/AdiuContentProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# instance fields
.field public a:La2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "/"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 13
    array-length v0, p1

    .line 14
    const/4 v1, 0x2

    .line 15
    if-lt v0, v1, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    aget-object p1, p1, v0

    .line 20
    iget-object v0, p0, Lcom/autonavi/adiu/storage/AdiuContentProvider;->a:La2;

    .line 22
    invoke-virtual {v0, p1}, La2;->e(Ljava/lang/String;)V

    .line 25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_0

    .line 31
    iget-object p1, p0, Lcom/autonavi/adiu/storage/AdiuContentProvider;->a:La2;

    .line 33
    invoke-virtual {p1}, La2;->b()Ljava/util/List;

    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Ljava/lang/String;

    .line 46
    return-object p1

    .line 47
    :cond_0
    const/4 p1, 0x0

    .line 48
    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "/"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 13
    array-length v0, p1

    .line 14
    const/4 v1, 0x2

    .line 15
    if-lt v0, v1, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    aget-object p1, p1, v0

    .line 20
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/autonavi/adiu/storage/AdiuContentProvider;->a:La2;

    .line 28
    invoke-virtual {v0, p1}, La2;->e(Ljava/lang/String;)V

    .line 31
    if-eqz p2, :cond_0

    .line 33
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    iget-object p2, p0, Lcom/autonavi/adiu/storage/AdiuContentProvider;->a:La2;

    .line 39
    invoke-virtual {p2, p1}, La2;->d(Ljava/lang/String;)V

    .line 42
    :cond_0
    const/4 p1, 0x0

    .line 43
    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, La2;->c(Landroid/content/Context;)La2;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/autonavi/adiu/storage/AdiuContentProvider;->a:La2;

    .line 11
    const/4 v0, 0x1

    .line 12
    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 4
    move-result-object p2

    .line 5
    const-string p3, "/"

    .line 7
    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 10
    move-result-object p2

    .line 11
    const/4 p3, 0x1

    .line 12
    new-array p4, p3, [Ljava/lang/Object;

    .line 14
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    const/4 p5, 0x0

    .line 19
    aput-object p1, p4, p5

    .line 21
    const-string p1, "AdiuContentProvider"

    .line 23
    const-string v0, "query path:{?}"

    .line 25
    invoke-static {p1, v0, p4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    if-eqz p2, :cond_1

    .line 30
    array-length p1, p2

    .line 31
    const/4 p4, 0x2

    .line 32
    if-lt p1, p4, :cond_1

    .line 34
    aget-object p1, p2, p3

    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    move-result p2

    .line 40
    if-nez p2, :cond_1

    .line 42
    iget-object p2, p0, Lcom/autonavi/adiu/storage/AdiuContentProvider;->a:La2;

    .line 44
    invoke-virtual {p2, p1}, La2;->e(Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lcom/autonavi/adiu/storage/AdiuContentProvider;->a:La2;

    .line 49
    invoke-virtual {p1}, La2;->b()Ljava/util/List;

    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_1

    .line 55
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 58
    move-result p2

    .line 59
    if-lez p2, :cond_1

    .line 61
    new-instance p2, Landroid/database/MatrixCursor;

    .line 63
    const-string p4, "cursor_value"

    .line 65
    filled-new-array {p4}, [Ljava/lang/String;

    .line 68
    move-result-object p4

    .line 69
    invoke-direct {p2, p4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 72
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 75
    move-result-object p1

    .line 76
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    move-result p4

    .line 80
    if-eqz p4, :cond_0

    .line 82
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    move-result-object p4

    .line 86
    check-cast p4, Ljava/lang/String;

    .line 88
    new-array v0, p3, [Ljava/lang/Object;

    .line 90
    aput-object p4, v0, p5

    .line 92
    invoke-virtual {p2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 95
    goto :goto_0

    .line 96
    :cond_0
    return-object p2

    .line 97
    :cond_1
    const/4 p1, 0x0

    .line 98
    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/autonavi/adiu/storage/AdiuContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 4
    const/4 p1, 0x0

    .line 5
    return p1
.end method
