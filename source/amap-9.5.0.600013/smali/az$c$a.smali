.class public Laz$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laz$c;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:[Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Laz$c;


# direct methods
.method public constructor <init>(Laz$c;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Laz$c$a;->d:Laz$c;

    .line 3
    iput-object p2, p0, Laz$c$a;->a:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Laz$c$a;->b:[Ljava/lang/Object;

    .line 7
    iput-object p4, p0, Laz$c$a;->c:Ljava/lang/String;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 6
    iget-object v1, p0, Laz$c$a;->a:Ljava/lang/String;

    .line 8
    iget-object v2, p0, Laz$c$a;->b:[Ljava/lang/Object;

    .line 10
    invoke-static {v0, v1, v2}, Laz;->c(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    iget-object v1, p0, Laz$c$a;->c:Ljava/lang/String;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void
.end method
