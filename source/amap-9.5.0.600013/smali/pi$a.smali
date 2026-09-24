.class public Lpi$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpi;->u(Landroid/content/Context;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lpi;


# direct methods
.method public constructor <init>(Lpi;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpi$a;->b:Lpi;

    .line 3
    iput-object p2, p0, Lpi$a;->a:Landroid/content/Context;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public a(ZZLoi;J)V
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v1, v0, v2

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    move-result-object v3

    .line 16
    aput-object v3, v0, v1

    .line 18
    if-eqz p3, :cond_0

    .line 20
    iget-object v1, p3, Loi;->a:Ljava/lang/String;

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v1, ""

    .line 25
    :goto_0
    const/4 v3, 0x2

    .line 26
    aput-object v1, v0, v3

    .line 28
    const-string v1, "DeviceAdapterManager"

    .line 30
    const-string v3, "onLoaded, isAdapted={?}, isCloudControl={?}, data.id={?}"

    .line 32
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lpi$a;->b:Lpi;

    .line 37
    invoke-static {v0, p3}, Lpi;->a(Lpi;Loi;)Loi;

    .line 40
    iget-object v0, p0, Lpi$a;->b:Lpi;

    .line 42
    invoke-static {v0}, Lpi;->b(Lpi;)V

    .line 45
    iget-object v0, p0, Lpi$a;->b:Lpi;

    .line 47
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 50
    move-result-object p4

    .line 51
    invoke-static {v0, p4}, Lpi;->d(Lpi;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    if-nez p3, :cond_1

    .line 56
    const-string p1, "onLoaded, data == null"

    .line 58
    new-array p2, v2, [Ljava/lang/Object;

    .line 60
    invoke-static {v1, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    return-void

    .line 64
    :cond_1
    if-eqz p1, :cond_2

    .line 66
    invoke-static {}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->getInstance()Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;

    .line 69
    move-result-object p1

    .line 70
    iget-object p4, p0, Lpi$a;->a:Landroid/content/Context;

    .line 72
    invoke-virtual {p1, p4}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->init(Landroid/content/Context;)V

    .line 75
    iget-object p1, p0, Lpi$a;->b:Lpi;

    .line 77
    invoke-static {p1}, Lpi;->e(Lpi;)V

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    .line 82
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    const-string p4, "id="

    .line 87
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-object p3, p3, Loi;->a:Ljava/lang/String;

    .line 92
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string p3, ",brand="

    .line 97
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    sget-object p3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 102
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string p3, ",isEmpty="

    .line 107
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object p3, p0, Lpi$a;->b:Lpi;

    .line 112
    invoke-virtual {p3}, Lpi;->q()Z

    .line 115
    move-result p3

    .line 116
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    const-string p3, ",businessType="

    .line 121
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object p3, p0, Lpi$a;->b:Lpi;

    .line 126
    invoke-virtual {p3}, Lpi;->l()I

    .line 129
    move-result p3

    .line 130
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    const-string p3, ",isCloudControl="

    .line 135
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 141
    const/4 v0, 0x0

    .line 142
    const/4 v1, 0x0

    .line 143
    const/4 v2, 0x1

    .line 144
    const/4 v3, 0x2

    .line 145
    iget-object p2, p0, Lpi$a;->b:Lpi;

    .line 147
    invoke-static {p2}, Lpi;->c(Lpi;)Ljava/lang/String;

    .line 150
    move-result-object v4

    .line 151
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    move-result-object v5

    .line 155
    invoke-static/range {v0 .. v5}, Ll1;->a(IIIILjava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_2
    return-void
.end method

.method public b(Loi;J)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-object v1, p1, Loi;->a:Ljava/lang/String;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 9
    const-string v1, "DeviceAdapterManager"

    .line 11
    const-string v2, "onUpdated, data={?}"

    .line 13
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iget-object v0, p0, Lpi$a;->b:Lpi;

    .line 18
    invoke-static {v0, p1}, Lpi;->a(Lpi;Loi;)Loi;

    .line 21
    iget-object p1, p0, Lpi$a;->b:Lpi;

    .line 23
    invoke-static {p1}, Lpi;->b(Lpi;)V

    .line 26
    iget-object p1, p0, Lpi$a;->b:Lpi;

    .line 28
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 31
    move-result-object p2

    .line 32
    invoke-static {p1, p2}, Lpi;->d(Lpi;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    iget-object p1, p0, Lpi$a;->b:Lpi;

    .line 37
    invoke-static {p1}, Lpi;->f(Lpi;)V

    .line 40
    iget-object p1, p0, Lpi$a;->b:Lpi;

    .line 42
    invoke-static {p1}, Lpi;->e(Lpi;)V

    .line 45
    return-void
.end method
