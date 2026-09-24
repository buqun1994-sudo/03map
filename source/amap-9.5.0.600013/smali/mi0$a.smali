.class public Lmi0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmi0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmi0;->f([Lwm$b;I)Lwm$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmi0;


# direct methods
.method public constructor <init>(Lmi0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmi0$a;->a:Lmi0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lwm$b;

    .line 3
    invoke-virtual {p0, p1}, Lmi0$a;->c(Lwm$b;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lwm$b;

    .line 3
    invoke-virtual {p0, p1}, Lmi0$a;->d(Lwm$b;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public c(Lwm$b;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lwm$b;->e()I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public d(Lwm$b;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lwm$b;->f()Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method
