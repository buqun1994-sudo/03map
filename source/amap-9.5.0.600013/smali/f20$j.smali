.class public Lf20$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf20$t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "j"
.end annotation


# instance fields
.field public final synthetic a:Lf20;


# direct methods
.method public constructor <init>(Lf20;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf20$j;->a:Lf20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lf20;Lf20$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lf20$j;-><init>(Lf20;)V

    return-void
.end method


# virtual methods
.method public a()Lf20$s;
    .locals 1

    .line 1
    new-instance v0, Lf20$i;

    .line 3
    invoke-direct {v0}, Lf20$i;-><init>()V

    .line 6
    return-object v0
.end method
