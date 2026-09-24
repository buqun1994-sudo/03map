.class public Lh6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh6$c;,
        Lh6$b;
    }
.end annotation


# static fields
.field public static final d:[Ljava/lang/String;

.field public static final e:[Ljava/util/regex/Pattern;


# instance fields
.field public final a:Lh6$b;

.field public b:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "\u51fa\u96a7\u9053\u540e"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lh6;->d:[Ljava/lang/String;

    .line 9
    const/16 v0, 0x9

    .line 11
    new-array v0, v0, [Ljava/util/regex/Pattern;

    .line 13
    const-string v1, ".*\u5f00\u59cb\u4e3a\u60a8\u7eed\u822a.*"

    .line 15
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    aput-object v1, v0, v2

    .line 22
    const-string v1, ".*\u8fdb\u5165.*\u96a7\u9053.*\u5168\u957f.*"

    .line 24
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x1

    .line 29
    aput-object v1, v0, v2

    .line 31
    const-string v1, ".*\u6709\u591a\u4e2a\u8fdd\u6cd5\u62cd\u7167.*"

    .line 33
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x2

    .line 38
    aput-object v1, v0, v2

    .line 40
    const-string v1, ".*\u51fa\u96a7\u9053\u540e.*\u8c03\u5934.*"

    .line 42
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 45
    move-result-object v1

    .line 46
    const/4 v2, 0x3

    .line 47
    aput-object v1, v0, v2

    .line 49
    const-string v1, "\u524d\u65b9.*\u5185,\u6709\u591a\u4e2a\u95ef\u7ea2\u706f\u62cd\u7167"

    .line 51
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 54
    move-result-object v1

    .line 55
    const/4 v2, 0x4

    .line 56
    aput-object v1, v0, v2

    .line 58
    const-string v1, ".*\u5411.*\u884c\u9a76,\u968f\u540e.*\u884c\u9a76.*"

    .line 60
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 63
    move-result-object v1

    .line 64
    const/4 v2, 0x5

    .line 65
    aput-object v1, v0, v2

    .line 67
    const-string v1, "\u51fa\u96a7\u9053\u540e.*,\u8fdb\u5165.*"

    .line 69
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 72
    move-result-object v1

    .line 73
    const/4 v2, 0x6

    .line 74
    aput-object v1, v0, v2

    .line 76
    const-string v1, ".*\u5168\u7a0b.*,\u5927\u7ea6\u9700\u8981.*"

    .line 78
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 81
    move-result-object v1

    .line 82
    const/4 v2, 0x7

    .line 83
    aput-object v1, v0, v2

    .line 85
    const-string v1, ".*\u968f\u540e.*\u540e\u5230\u8fbe\u76ee\u7684\u5730\u9644\u8fd1"

    .line 87
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 90
    move-result-object v1

    .line 91
    const/16 v2, 0x8

    .line 93
    aput-object v1, v0, v2

    .line 95
    sput-object v0, Lh6;->e:[Ljava/util/regex/Pattern;

    .line 97
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lh6$b;

    invoke-direct {v0}, Lh6$b;-><init>()V

    iput-object v0, p0, Lh6;->a:Lh6$b;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lh6;->b:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lh6;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lh6$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lh6;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 11

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    sget-object v0, Lh6;->d:[Ljava/lang/String;

    .line 11
    array-length v2, v0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    :goto_0
    const-string v5, "AudioDelayObserver"

    .line 16
    const/4 v6, 0x1

    .line 17
    if-ge v4, v2, :cond_2

    .line 19
    aget-object v7, v0, v4

    .line 21
    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 24
    move-result v7

    .line 25
    if-le v7, v1, :cond_1

    .line 27
    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    new-array v0, v6, [Ljava/lang/Object;

    .line 33
    aput-object p0, v0, v3

    .line 35
    const-string v2, "extractDistance, extractDistance from:"

    .line 37
    invoke-static {v5, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    :goto_1
    const-string v0, "\u516c\u91cc"

    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 49
    move-result v2

    .line 50
    const-string v4, "\u7c73"

    .line 52
    if-nez v2, :cond_3

    .line 54
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_3

    .line 60
    new-array v0, v6, [Ljava/lang/Object;

    .line 62
    aput-object p0, v0, v3

    .line 64
    const-string p0, "extractDistance, no included units\uff0cignore:"

    .line 66
    invoke-static {v5, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    const/4 p0, -0x2

    .line 70
    return p0

    .line 71
    :cond_3
    sget-object v2, Lh6;->e:[Ljava/util/regex/Pattern;

    .line 73
    array-length v7, v2

    .line 74
    const/4 v8, 0x0

    .line 75
    :goto_2
    if-ge v8, v7, :cond_5

    .line 77
    aget-object v9, v2, v8

    .line 79
    invoke-virtual {v9, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 82
    move-result-object v10

    .line 83
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    .line 86
    move-result v10

    .line 87
    if-eqz v10, :cond_4

    .line 89
    const/4 v0, 0x2

    .line 90
    new-array v0, v0, [Ljava/lang/Object;

    .line 92
    aput-object v9, v0, v3

    .line 94
    aput-object p0, v0, v6

    .line 96
    const-string p0, "extractDistance, match pattern:{?}\uff0cignore:{?}"

    .line 98
    invoke-static {v5, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    const/4 p0, -0x3

    .line 102
    return p0

    .line 103
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 105
    goto :goto_2

    .line 106
    :cond_5
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 109
    move-result v2

    .line 110
    if-ltz v2, :cond_6

    .line 112
    const/4 v0, 0x1

    .line 113
    goto :goto_3

    .line 114
    :cond_6
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 117
    move-result v2

    .line 118
    if-ltz v2, :cond_7

    .line 120
    const/16 v0, 0x3e8

    .line 122
    goto :goto_3

    .line 123
    :cond_7
    const/4 v0, 0x0

    .line 124
    :goto_3
    if-eqz v0, :cond_d

    .line 126
    if-gez v2, :cond_8

    .line 128
    goto :goto_6

    .line 129
    :cond_8
    add-int/lit8 v4, v2, -0x1

    .line 131
    :goto_4
    if-ltz v4, :cond_b

    .line 133
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 136
    move-result v7

    .line 137
    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 140
    move-result-object v7

    .line 141
    const-string v8, "\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341\u767e\u5343\u4e07\u70b9"

    .line 143
    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 146
    move-result v7

    .line 147
    if-nez v7, :cond_9

    .line 149
    move v1, v4

    .line 150
    goto :goto_5

    .line 151
    :cond_9
    if-nez v4, :cond_a

    .line 153
    const/4 v1, 0x0

    .line 154
    :cond_a
    add-int/lit8 v4, v4, -0x1

    .line 156
    goto :goto_4

    .line 157
    :cond_b
    :goto_5
    if-gez v1, :cond_c

    .line 159
    new-array v0, v6, [Ljava/lang/Object;

    .line 161
    aput-object p0, v0, v3

    .line 163
    const-string p0, "extractDistance, parse beginIndex error:{?}"

    .line 165
    invoke-static {v5, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    const/4 p0, -0x5

    .line 169
    return p0

    .line 170
    :cond_c
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 173
    move-result-object p0

    .line 174
    int-to-float v0, v0

    .line 175
    invoke-static {p0}, Lh6;->j(Ljava/lang/String;)F

    .line 178
    move-result p0

    .line 179
    mul-float v0, v0, p0

    .line 181
    float-to-int p0, v0

    .line 182
    return p0

    .line 183
    :cond_d
    :goto_6
    new-array v0, v6, [Ljava/lang/Object;

    .line 185
    aput-object p0, v0, v3

    .line 187
    const-string p0, "extractDistance, parse unit & endIndex error:{?}"

    .line 189
    invoke-static {v5, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    const/4 p0, -0x4

    .line 193
    return p0
.end method

.method public static c()Lh6;
    .locals 1

    .line 1
    invoke-static {}, Lh6$c;->a()Lh6;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static j(Ljava/lang/String;)F
    .locals 13

    .line 1
    const-string v0, "\u70b9"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x2

    .line 9
    const/high16 v3, -0x40800000    # -1.0f

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    if-ne v1, v2, :cond_0

    .line 15
    aget-object v1, v0, v4

    .line 17
    aget-object v0, v0, v5

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    array-length v1, v0

    .line 21
    if-ne v1, v5, :cond_8

    .line 23
    aget-object v1, v0, v4

    .line 25
    const-string v0, ""

    .line 27
    :goto_0
    const-string v2, "\u4e24"

    .line 29
    const-string v6, "\u4e8c"

    .line 31
    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    new-instance v2, Ljava/util/Stack;

    .line 37
    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    .line 40
    const/4 v6, 0x0

    .line 41
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 44
    move-result v7

    .line 45
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    .line 47
    const-string v10, "\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d"

    .line 49
    if-ge v6, v7, :cond_4

    .line 51
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    .line 54
    move-result v7

    .line 55
    invoke-virtual {v10, v7}, Ljava/lang/String;->indexOf(I)I

    .line 58
    move-result v7

    .line 59
    const-string v10, "\u5341\u767e\u5343\u4e07"

    .line 61
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    .line 64
    move-result v11

    .line 65
    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    .line 68
    move-result v10

    .line 69
    const/4 v11, -0x1

    .line 70
    if-eq v7, v11, :cond_1

    .line 72
    int-to-float v7, v7

    .line 73
    const/high16 v8, 0x3f800000    # 1.0f

    .line 75
    add-float/2addr v7, v8

    .line 76
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 79
    move-result-object v7

    .line 80
    invoke-virtual {v2, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    goto :goto_2

    .line 84
    :cond_1
    if-eq v10, v11, :cond_3

    .line 86
    add-int/lit8 v10, v10, 0x1

    .line 88
    int-to-double v10, v10

    .line 89
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 92
    move-result-wide v7

    .line 93
    double-to-float v7, v7

    .line 94
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 97
    move-result v8

    .line 98
    if-eqz v8, :cond_2

    .line 100
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 103
    move-result-object v7

    .line 104
    invoke-virtual {v2, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    goto :goto_2

    .line 108
    :cond_2
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 111
    move-result-object v8

    .line 112
    check-cast v8, Ljava/lang/Float;

    .line 114
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    .line 117
    move-result v8

    .line 118
    mul-float v8, v8, v7

    .line 120
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 123
    move-result-object v7

    .line 124
    invoke-virtual {v2, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 129
    goto :goto_1

    .line 130
    :cond_4
    if-eqz v0, :cond_5

    .line 132
    const/4 v1, 0x0

    .line 133
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 136
    move-result v6

    .line 137
    if-ge v1, v6, :cond_5

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 142
    move-result v6

    .line 143
    invoke-virtual {v10, v6}, Ljava/lang/String;->indexOf(I)I

    .line 146
    move-result v6

    .line 147
    add-int/2addr v6, v5

    .line 148
    int-to-float v6, v6

    .line 149
    add-int/lit8 v1, v1, 0x1

    .line 151
    int-to-double v11, v1

    .line 152
    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 155
    move-result-wide v11

    .line 156
    double-to-float v7, v11

    .line 157
    div-float/2addr v6, v7

    .line 158
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 161
    move-result-object v6

    .line 162
    invoke-virtual {v2, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    goto :goto_3

    .line 166
    :cond_5
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_6

    .line 172
    new-array v0, v5, [Ljava/lang/Object;

    .line 174
    aput-object p0, v0, v4

    .line 176
    const-string p0, "AudioDelayObserver"

    .line 178
    const-string v1, "zh2number stack.isEmpty:{?}"

    .line 180
    invoke-static {p0, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    return v3

    .line 184
    :cond_6
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 187
    move-result-object p0

    .line 188
    const/4 v0, 0x0

    .line 189
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 192
    move-result v1

    .line 193
    if-eqz v1, :cond_7

    .line 195
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 198
    move-result-object v1

    .line 199
    check-cast v1, Ljava/lang/Float;

    .line 201
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 204
    move-result v1

    .line 205
    add-float/2addr v0, v1

    .line 206
    goto :goto_4

    .line 207
    :cond_7
    return v0

    .line 208
    :cond_8
    return v3
.end method


# virtual methods
.method public b()Lh6$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lh6;->a:Lh6$b;

    .line 3
    invoke-virtual {v0}, Lh6$b;->a()Lh6$b;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lh6;->a:Lh6$b;

    .line 9
    invoke-virtual {v1}, Lh6$b;->b()V

    .line 12
    return-object v0
.end method

.method public d()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lh6;->c:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lh6;->b:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 7
    if-eqz v0, :cond_1

    .line 9
    iget-object v1, p0, Lh6;->a:Lh6$b;

    .line 11
    iget v2, v1, Lh6$b;->c:I

    .line 13
    const/4 v3, 0x1

    .line 14
    if-ne v2, v3, :cond_1

    .line 16
    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getSegRemainDis()I

    .line 19
    move-result v0

    .line 20
    iput v0, v1, Lh6$b;->e:I

    .line 22
    iget-object v0, p0, Lh6;->a:Lh6$b;

    .line 24
    iget-object v1, p0, Lh6;->b:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 26
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCurSpeed()I

    .line 29
    move-result v1

    .line 30
    iput v1, v0, Lh6$b;->j:I

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    new-array v0, v0, [Ljava/lang/Object;

    .line 36
    const-string v1, "AudioDelayObserver"

    .line 38
    const-string v2, "onCompoundStart, mNeedCheckDelay is false"

    .line 40
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    :cond_1
    :goto_0
    return-void
.end method

.method public e(Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh6;->b:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 3
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_6

    .line 7
    const-string v0, ";playCount="

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    goto/16 :goto_0

    .line 17
    :cond_0
    invoke-static {p1}, Lgg0;->a(Ljava/lang/String;)Lgg0;

    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    const-string v2, "AudioDelayObserver"

    .line 24
    const/4 v3, 0x1

    .line 25
    if-nez v0, :cond_1

    .line 27
    new-array v0, v3, [Ljava/lang/Object;

    .line 29
    aput-object p1, v0, v1

    .line 31
    const-string p1, "onReceiveTbtSoundInfo, ignore: {?}"

    .line 33
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    return-void

    .line 37
    :cond_1
    iget p1, v0, Lgg0;->d:I

    .line 39
    if-eq p1, v3, :cond_2

    .line 41
    return-void

    .line 42
    :cond_2
    :try_start_0
    iget-object p1, v0, Lgg0;->a:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Lh6;->a(Ljava/lang/String;)I

    .line 47
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    if-gez p1, :cond_3

    .line 50
    return-void

    .line 51
    :cond_3
    iget-object v4, p0, Lh6;->a:Lh6$b;

    .line 53
    invoke-virtual {v4}, Lh6$b;->c()V

    .line 56
    iget-object v4, p0, Lh6;->a:Lh6$b;

    .line 58
    iget-object v5, v0, Lgg0;->a:Ljava/lang/String;

    .line 60
    iput-object v5, v4, Lh6$b;->a:Ljava/lang/String;

    .line 62
    iput p1, v4, Lh6$b;->d:I

    .line 64
    iget v0, v0, Lgg0;->d:I

    .line 66
    iput v0, v4, Lh6$b;->c:I

    .line 68
    const/4 v0, 0x2

    .line 69
    new-array v0, v0, [Ljava/lang/Object;

    .line 71
    aput-object v5, v0, v1

    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    move-result-object p1

    .line 77
    aput-object p1, v0, v3

    .line 79
    const-string p1, "onReceiveTbtSoundInfo, text={?}, tbtDistance={?}"

    .line 81
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iget-object p1, p0, Lh6;->b:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 86
    if-eqz p1, :cond_5

    .line 88
    iget-object v0, p0, Lh6;->a:Lh6$b;

    .line 90
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getType()I

    .line 93
    move-result p1

    .line 94
    iput p1, v0, Lh6$b;->b:I

    .line 96
    iget-object p1, p0, Lh6;->a:Lh6$b;

    .line 98
    iget v0, p1, Lh6$b;->c:I

    .line 100
    if-ne v0, v3, :cond_4

    .line 102
    iget-object v0, p0, Lh6;->b:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 104
    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getSegRemainDis()I

    .line 107
    move-result v0

    .line 108
    iput v0, p1, Lh6$b;->g:I

    .line 110
    iget-object p1, p0, Lh6;->a:Lh6$b;

    .line 112
    iget-object v0, p0, Lh6;->b:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 114
    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCurSpeed()I

    .line 117
    move-result v0

    .line 118
    iput v0, p1, Lh6$b;->i:I

    .line 120
    :cond_4
    new-array p1, v3, [Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lh6;->b:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 124
    aput-object v0, p1, v1

    .line 126
    const-string v0, "onReceiveTbtSoundInfo, guideInfo:{?}"

    .line 128
    invoke-static {v2, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    iput-boolean v3, p0, Lh6;->c:Z

    .line 133
    :cond_5
    return-void

    .line 134
    :catch_0
    move-exception p1

    .line 135
    const-string v0, "extractDistFromText exception:"

    .line 137
    new-array v1, v1, [Ljava/lang/Object;

    .line 139
    invoke-static {v2, v0, p1, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 142
    :cond_6
    :goto_0
    return-void
.end method

.method public g(Ljava/lang/String;I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lh6;->c:Z

    .line 3
    const-string v1, "AudioDelayObserver"

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v0, :cond_2

    .line 9
    iput-boolean v2, p0, Lh6;->c:Z

    .line 11
    const/4 v0, 0x2

    .line 12
    new-array v0, v0, [Ljava/lang/Object;

    .line 14
    aput-object p1, v0, v2

    .line 16
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object p1

    .line 20
    aput-object p1, v0, v3

    .line 22
    const-string p1, "onStartPlaying, text:{?}, ttsShakeDelay:{?}"

    .line 24
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iget-object p1, p0, Lh6;->a:Lh6$b;

    .line 29
    iput p2, p1, Lh6$b;->m:I

    .line 31
    iget-object p2, p0, Lh6;->b:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 33
    if-eqz p2, :cond_1

    .line 35
    iget v0, p1, Lh6$b;->c:I

    .line 37
    if-ne v0, v3, :cond_0

    .line 39
    invoke-virtual {p2}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getSegRemainDis()I

    .line 42
    move-result p2

    .line 43
    iput p2, p1, Lh6$b;->h:I

    .line 45
    iget-object p1, p0, Lh6;->a:Lh6$b;

    .line 47
    iget-object p2, p0, Lh6;->b:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 49
    invoke-virtual {p2}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCurSpeed()I

    .line 52
    move-result p2

    .line 53
    iput p2, p1, Lh6$b;->l:I

    .line 55
    :cond_0
    new-array p1, v3, [Ljava/lang/Object;

    .line 57
    iget-object p2, p0, Lh6;->b:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 59
    aput-object p2, p1, v2

    .line 61
    const-string p2, "onStartPlaying, guideInfo:{?}"

    .line 63
    invoke-static {v1, p2, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    :cond_1
    invoke-virtual {p0}, Lh6;->i()V

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    new-array p2, v3, [Ljava/lang/Object;

    .line 72
    aput-object p1, p2, v2

    .line 74
    const-string p1, "onStartPlaying, mNeedCheckDelay is false, text:{?}"

    .line 76
    invoke-static {v1, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    :goto_0
    return-void
.end method

.method public h()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lh6;->c:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lh6;->b:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 7
    if-eqz v0, :cond_1

    .line 9
    iget-object v1, p0, Lh6;->a:Lh6$b;

    .line 11
    iget v2, v1, Lh6$b;->c:I

    .line 13
    const/4 v3, 0x1

    .line 14
    if-ne v2, v3, :cond_1

    .line 16
    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getSegRemainDis()I

    .line 19
    move-result v0

    .line 20
    iput v0, v1, Lh6$b;->f:I

    .line 22
    iget-object v0, p0, Lh6;->a:Lh6$b;

    .line 24
    iget-object v1, p0, Lh6;->b:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 26
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCurSpeed()I

    .line 29
    move-result v1

    .line 30
    iput v1, v0, Lh6$b;->k:I

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    new-array v0, v0, [Ljava/lang/Object;

    .line 36
    const-string v1, "AudioDelayObserver"

    .line 38
    const-string v2, "onWriteEmptyDataFinish, mNeedCheckDelay is false"

    .line 40
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    :cond_1
    :goto_0
    return-void
.end method

.method public final i()V
    .locals 10

    .line 1
    iget-object v0, p0, Lh6;->a:Lh6$b;

    .line 3
    iget v1, v0, Lh6$b;->o:I

    .line 5
    const/4 v2, 0x1

    .line 6
    add-int/2addr v1, v2

    .line 7
    iput v1, v0, Lh6$b;->o:I

    .line 9
    iget v1, v0, Lh6$b;->d:I

    .line 11
    iget v3, v0, Lh6$b;->h:I

    .line 13
    const/4 v4, 0x0

    .line 14
    if-le v1, v3, :cond_0

    .line 16
    const/4 v1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    const/4 v3, 0x2

    .line 20
    const-string v5, "AudioDelayObserver"

    .line 22
    if-eqz v1, :cond_1

    .line 24
    iget v6, v0, Lh6$b;->p:I

    .line 26
    add-int/2addr v6, v2

    .line 27
    iput v6, v0, Lh6$b;->p:I

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    const-string v6, "playCount="

    .line 36
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v6, p0, Lh6;->a:Lh6$b;

    .line 41
    iget v6, v6, Lh6$b;->o:I

    .line 43
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const-string v6, ",delayCount="

    .line 48
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v6, p0, Lh6;->a:Lh6$b;

    .line 53
    iget v6, v6, Lh6$b;->p:I

    .line 55
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    const-string v6, ",naviType="

    .line 60
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object v6, p0, Lh6;->a:Lh6$b;

    .line 65
    iget v6, v6, Lh6$b;->b:I

    .line 67
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    const-string v6, ",ttsShakeDelay="

    .line 72
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v6, p0, Lh6;->a:Lh6$b;

    .line 77
    iget v6, v6, Lh6$b;->m:I

    .line 79
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    const-string v6, ",compoundDistance="

    .line 84
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v6, p0, Lh6;->a:Lh6$b;

    .line 89
    iget v6, v6, Lh6$b;->e:I

    .line 91
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    const-string v6, ",writeEmptyDistance="

    .line 96
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v6, p0, Lh6;->a:Lh6$b;

    .line 101
    iget v6, v6, Lh6$b;->f:I

    .line 103
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    const-string v6, ",receivedTbtSpeed="

    .line 108
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v6, p0, Lh6;->a:Lh6$b;

    .line 113
    iget v6, v6, Lh6$b;->i:I

    .line 115
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    const-string v6, ",compoundStartSpeed="

    .line 120
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v6, p0, Lh6;->a:Lh6$b;

    .line 125
    iget v6, v6, Lh6$b;->j:I

    .line 127
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    const-string v6, ",writeEmptySpeed="

    .line 132
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-object v6, p0, Lh6;->a:Lh6$b;

    .line 137
    iget v6, v6, Lh6$b;->k:I

    .line 139
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    const-string v6, ",startPlayingSpeed="

    .line 144
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v6, p0, Lh6;->a:Lh6$b;

    .line 149
    iget v6, v6, Lh6$b;->l:I

    .line 151
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    move-result-object v0

    .line 158
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 160
    const/4 v7, 0x7

    .line 161
    new-array v7, v7, [Ljava/lang/Object;

    .line 163
    iget-object v8, p0, Lh6;->a:Lh6$b;

    .line 165
    iget-object v9, v8, Lh6$b;->a:Ljava/lang/String;

    .line 167
    aput-object v9, v7, v4

    .line 169
    iget v8, v8, Lh6$b;->d:I

    .line 171
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    move-result-object v8

    .line 175
    aput-object v8, v7, v2

    .line 177
    iget-object v8, p0, Lh6;->a:Lh6$b;

    .line 179
    iget v8, v8, Lh6$b;->g:I

    .line 181
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    move-result-object v8

    .line 185
    aput-object v8, v7, v3

    .line 187
    iget-object v8, p0, Lh6;->a:Lh6$b;

    .line 189
    iget v8, v8, Lh6$b;->h:I

    .line 191
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    move-result-object v8

    .line 195
    const/4 v9, 0x3

    .line 196
    aput-object v8, v7, v9

    .line 198
    iget-object v8, p0, Lh6;->a:Lh6$b;

    .line 200
    iget v8, v8, Lh6$b;->n:I

    .line 202
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    move-result-object v8

    .line 206
    const/4 v9, 0x4

    .line 207
    aput-object v8, v7, v9

    .line 209
    const/4 v8, 0x5

    .line 210
    aput-object v0, v7, v8

    .line 212
    const/4 v0, 0x6

    .line 213
    const-string v8, ""

    .line 215
    aput-object v8, v7, v0

    .line 217
    const-string v0, "[100000194][7][%s][%d][%d][%d][%d][%s][%s]"

    .line 219
    invoke-static {v6, v0, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 222
    move-result-object v0

    .line 223
    const v6, 0x5f5e1c2

    .line 226
    const/16 v7, 0x64

    .line 228
    const-string v8, "AUTO_AL"

    .line 230
    invoke-static {v8, v6, v0, v7}, Len;->c(Ljava/lang/String;ILjava/lang/String;I)V

    .line 233
    new-array v6, v2, [Ljava/lang/Object;

    .line 235
    aput-object v0, v6, v4

    .line 237
    const-string v0, "collectDataEx:{?}"

    .line 239
    invoke-static {v5, v0, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    .line 244
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 247
    move-result-object v1

    .line 248
    aput-object v1, v0, v4

    .line 250
    iget-object v1, p0, Lh6;->a:Lh6$b;

    .line 252
    aput-object v1, v0, v2

    .line 254
    const-string v1, "reportOnceDelayInfo, isDelay={?}, {?}"

    .line 256
    invoke-static {v5, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    iget-object v0, p0, Lh6;->a:Lh6$b;

    .line 261
    invoke-virtual {v0}, Lh6$b;->c()V

    .line 264
    return-void
.end method
