.class public Ljg$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:I

.field public f:Lkg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 6
    iput v0, p0, Ljg$b;->a:F

    .line 8
    iput v0, p0, Ljg$b;->b:F

    .line 10
    iput v0, p0, Ljg$b;->c:F

    .line 12
    iput v0, p0, Ljg$b;->d:F

    .line 14
    const/4 v0, -0x1

    .line 15
    iput v0, p0, Ljg$b;->e:I

    .line 17
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 20
    move-result-object p2

    .line 21
    sget-object v0, Lh90;->N4:[I

    .line 23
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x0

    .line 32
    :goto_0
    if-ge v1, v0, :cond_6

    .line 34
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 37
    move-result v2

    .line 38
    sget v3, Lh90;->O4:I

    .line 40
    if-ne v2, v3, :cond_0

    .line 42
    iget v3, p0, Ljg$b;->e:I

    .line 44
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 47
    move-result v2

    .line 48
    iput v2, p0, Ljg$b;->e:I

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    move-result-object v2

    .line 54
    iget v3, p0, Ljg$b;->e:I

    .line 56
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    move-result-object v3

    .line 64
    iget v4, p0, Ljg$b;->e:I

    .line 66
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 69
    const-string v3, "layout"

    .line 71
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_5

    .line 77
    new-instance v2, Lkg;

    .line 79
    invoke-direct {v2}, Lkg;-><init>()V

    .line 82
    iput-object v2, p0, Ljg$b;->f:Lkg;

    .line 84
    iget v3, p0, Ljg$b;->e:I

    .line 86
    invoke-virtual {v2, p1, v3}, Lkg;->g(Landroid/content/Context;I)V

    .line 89
    goto :goto_1

    .line 90
    :cond_0
    sget v3, Lh90;->P4:I

    .line 92
    if-ne v2, v3, :cond_1

    .line 94
    iget v3, p0, Ljg$b;->d:F

    .line 96
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 99
    move-result v2

    .line 100
    iput v2, p0, Ljg$b;->d:F

    .line 102
    goto :goto_1

    .line 103
    :cond_1
    sget v3, Lh90;->Q4:I

    .line 105
    if-ne v2, v3, :cond_2

    .line 107
    iget v3, p0, Ljg$b;->b:F

    .line 109
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 112
    move-result v2

    .line 113
    iput v2, p0, Ljg$b;->b:F

    .line 115
    goto :goto_1

    .line 116
    :cond_2
    sget v3, Lh90;->R4:I

    .line 118
    if-ne v2, v3, :cond_3

    .line 120
    iget v3, p0, Ljg$b;->c:F

    .line 122
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 125
    move-result v2

    .line 126
    iput v2, p0, Ljg$b;->c:F

    .line 128
    goto :goto_1

    .line 129
    :cond_3
    sget v3, Lh90;->S4:I

    .line 131
    if-ne v2, v3, :cond_4

    .line 133
    iget v3, p0, Ljg$b;->a:F

    .line 135
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 138
    move-result v2

    .line 139
    iput v2, p0, Ljg$b;->a:F

    .line 141
    goto :goto_1

    .line 142
    :cond_4
    const-string v2, "ConstraintLayoutStates"

    .line 144
    const-string v3, "Unknown tag"

    .line 146
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 151
    goto :goto_0

    .line 152
    :cond_6
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 155
    return-void
.end method
