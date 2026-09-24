.class public abstract Lk60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lss;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk60$d;
    }
.end annotation


# static fields
.field public static a:Lk60$d;

.field public static b:Lk60$d;

.field public static c:Lk60$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lk60$a;

    .line 3
    invoke-direct {v0}, Lk60$a;-><init>()V

    .line 6
    sput-object v0, Lk60;->a:Lk60$d;

    .line 8
    new-instance v0, Lk60$b;

    .line 10
    invoke-direct {v0}, Lk60$b;-><init>()V

    .line 13
    sput-object v0, Lk60;->b:Lk60$d;

    .line 15
    new-instance v0, Lk60$c;

    .line 17
    invoke-direct {v0}, Lk60$c;-><init>()V

    .line 20
    sput-object v0, Lk60;->c:Lk60$d;

    .line 22
    return-void
.end method

.method public static b()V
    .locals 0

    .line 1
    return-void
.end method
