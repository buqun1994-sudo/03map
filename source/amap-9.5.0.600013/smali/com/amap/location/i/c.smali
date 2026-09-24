.class public Lcom/amap/location/i/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/i/c$a;,
        Lcom/amap/location/i/c$b;
    }
.end annotation


# static fields
.field public static a:Z = false

.field public static b:Z = true


# instance fields
.field public c:B

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Z

.field public m:[Ljava/lang/String;

.field public n:Lcom/amap/location/i/c$b;

.field public o:Lcom/amap/location/i/c/a;

.field public p:Lcom/amap/location/i/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput-byte v0, p0, Lcom/amap/location/i/c;->c:B

    .line 7
    const-string v0, ""

    .line 9
    iput-object v0, p0, Lcom/amap/location/i/c;->d:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/amap/location/i/c;->e:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/amap/location/i/c;->f:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/amap/location/i/c;->g:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/amap/location/i/c;->h:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/amap/location/i/c;->i:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/amap/location/i/c;->j:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/amap/location/i/c;->k:Ljava/lang/String;

    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/amap/location/i/c;->l:Z

    .line 28
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/amap/location/i/c;->m:[Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/amap/location/i/c;->n:Lcom/amap/location/i/c$b;

    .line 33
    iput-object v0, p0, Lcom/amap/location/i/c;->o:Lcom/amap/location/i/c/a;

    .line 35
    iput-object v0, p0, Lcom/amap/location/i/c;->p:Lcom/amap/location/i/c$a;

    .line 37
    return-void
.end method
