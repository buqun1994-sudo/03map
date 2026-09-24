.class public Lax$b;
.super Lb6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic g:Lax;


# direct methods
.method public constructor <init>(Lax;Lud;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lax$b;->g:Lax;

    .line 3
    invoke-direct {p0}, Lb6;-><init>()V

    .line 6
    new-instance p1, Lme0;

    .line 8
    invoke-direct {p1, p0, p2}, Lme0;-><init>(Lb6;Lud;)V

    .line 11
    iput-object p1, p0, Lb6;->e:Lb6$a;

    .line 13
    return-void
.end method
