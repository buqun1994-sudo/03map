.class public Lcom/autonavi/amapauto/user/UserPhone;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/autonavi/amapauto/user/UserPhone;",
        ">;"
    }
.end annotation


# static fields
.field public static final FIRST_LETTER:Ljava/lang/String; = "\u5386"

.field private static final SPECIAL_LETTER:Ljava/lang/String; = "#"


# instance fields
.field private firstLetter:Ljava/lang/String;

.field private isHistory:Z

.field private name:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private pinyin:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/autonavi/amapauto/user/UserPhone;->name:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/autonavi/amapauto/user/UserPhone;->phone:Ljava/lang/String;

    .line 8
    iput-boolean p3, p0, Lcom/autonavi/amapauto/user/UserPhone;->isHistory:Z

    .line 10
    if-eqz p3, :cond_0

    .line 12
    const-string p1, "\u5386"

    .line 14
    iput-object p1, p0, Lcom/autonavi/amapauto/user/UserPhone;->pinyin:Ljava/lang/String;

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result p2

    .line 21
    const-string p3, "#"

    .line 23
    if-eqz p2, :cond_1

    .line 25
    iput-object p3, p0, Lcom/autonavi/amapauto/user/UserPhone;->pinyin:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/autonavi/amapauto/user/UserPhone;->firstLetter:Ljava/lang/String;

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const-string p2, "[\u4e00-\u9fa5]"

    .line 32
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_3

    .line 46
    invoke-static {p1}, Ly50;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Lcom/autonavi/amapauto/user/UserPhone;->pinyin:Ljava/lang/String;

    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_2

    .line 62
    iput-object p3, p0, Lcom/autonavi/amapauto/user/UserPhone;->pinyin:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/autonavi/amapauto/user/UserPhone;->firstLetter:Ljava/lang/String;

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget-object p1, p0, Lcom/autonavi/amapauto/user/UserPhone;->pinyin:Ljava/lang/String;

    .line 69
    const/4 p2, 0x0

    .line 70
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    .line 73
    move-result p1

    .line 74
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 78
    iput-object p1, p0, Lcom/autonavi/amapauto/user/UserPhone;->firstLetter:Ljava/lang/String;

    .line 80
    goto :goto_0

    .line 81
    :cond_3
    iput-object p3, p0, Lcom/autonavi/amapauto/user/UserPhone;->pinyin:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/autonavi/amapauto/user/UserPhone;->firstLetter:Ljava/lang/String;

    .line 85
    :goto_0
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/autonavi/amapauto/user/UserPhone;)I
    .locals 6

    .line 2
    invoke-virtual {p1}, Lcom/autonavi/amapauto/user/UserPhone;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/autonavi/amapauto/user/UserPhone;->getPinyin()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lcom/autonavi/amapauto/user/UserPhone;->pinyin:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/autonavi/amapauto/user/UserPhone;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v1, :cond_0

    if-nez v3, :cond_0

    .line 8
    iget-object v1, p0, Lcom/autonavi/amapauto/user/UserPhone;->pinyin:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    if-nez v4, :cond_1

    .line 9
    iget-object v1, p0, Lcom/autonavi/amapauto/user/UserPhone;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    if-nez v4, :cond_2

    .line 10
    iget-object v1, p0, Lcom/autonavi/amapauto/user/UserPhone;->pinyin:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    .line 11
    iget-object v1, p0, Lcom/autonavi/amapauto/user/UserPhone;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    .line 12
    iget-object v3, p0, Lcom/autonavi/amapauto/user/UserPhone;->pinyin:Ljava/lang/String;

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/autonavi/amapauto/user/UserPhone;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const/4 p1, 0x3

    aput-object v0, v2, p1

    const/4 p1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, p1

    const-string p1, "UserPhoneCompare"

    const-string v0, "pinyin={?};name={?};pinyinToCompare={?};nameToCompare={?};result={?}"

    invoke-static {p1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/autonavi/amapauto/user/UserPhone;

    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/user/UserPhone;->compareTo(Lcom/autonavi/amapauto/user/UserPhone;)I

    move-result p1

    return p1
.end method

.method public getFirstLetter()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/user/UserPhone;->firstLetter:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getIsHistory()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/user/UserPhone;->isHistory:Z

    .line 3
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/user/UserPhone;->name:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/user/UserPhone;->phone:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getPinyin()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/user/UserPhone;->pinyin:Ljava/lang/String;

    .line 3
    return-object v0
.end method
