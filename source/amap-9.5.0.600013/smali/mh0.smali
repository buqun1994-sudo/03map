.class public abstract Lmh0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmh0$a;
    }
.end annotation


# static fields
.field public static volatile a:Lmh0$a;


# direct methods
.method public static a(Ljava/lang/CharSequence;IZZIII)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p0, v1, v2

    .line 7
    const-string v3, "ToastHelper"

    .line 9
    const-string v4, "showToast: message = {?}"

    .line 11
    invoke-static {v3, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    sget-object v1, Lmh0;->a:Lmh0$a;

    .line 16
    if-nez v1, :cond_0

    .line 18
    new-instance v1, Lmh0$a;

    .line 20
    invoke-static {}, Lrv;->H()Lrv;

    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v4}, Lrv;->z()Landroid/content/Context;

    .line 27
    move-result-object v4

    .line 28
    invoke-direct {v1, v4}, Lmh0$a;-><init>(Landroid/content/Context;)V

    .line 31
    sput-object v1, Lmh0;->a:Lmh0$a;

    .line 33
    :cond_0
    new-instance v6, Lmh0$a$b;

    .line 35
    invoke-direct {v6, p4, p5, p6}, Lmh0$a$b;-><init>(III)V

    .line 38
    invoke-static {}, Lse;->c()Lse;

    .line 41
    move-result-object v1

    .line 42
    const/16 v4, 0x2721

    .line 44
    invoke-virtual {v1, v4}, Lse;->getBooleanValue(I)Z

    .line 47
    move-result v1

    .line 48
    or-int v7, p2, v1

    .line 50
    new-array v0, v0, [Ljava/lang/Object;

    .line 52
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    move-result-object v1

    .line 56
    aput-object v1, v0, v2

    .line 58
    const-string v1, "showToast, useSystemToast={?}"

    .line 60
    invoke-static {v3, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    sget-object v3, Lmh0;->a:Lmh0$a;

    .line 65
    move-object v4, p0

    .line 66
    move v5, p1

    .line 67
    move v8, p3

    .line 68
    invoke-static/range {v3 .. v8}, Lmh0$a;->a(Lmh0$a;Ljava/lang/CharSequence;ILmh0$a$b;ZZ)V

    .line 71
    return-void
.end method
