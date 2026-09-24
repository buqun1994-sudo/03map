.class public abstract Lky;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Lqy$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lqy$b;

    .line 4
    new-instance v1, Lky$a;

    .line 6
    invoke-direct {v1}, Lky$a;-><init>()V

    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object v1, v0, v2

    .line 12
    sput-object v0, Lky;->a:[Lqy$b;

    .line 14
    return-void
.end method
