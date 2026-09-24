.class public interface abstract Lp10;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "classes(?:[2-9]{0,1}|[1-9][0-9]+)\\.dex(\\.jar)?"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lp10;->a:Ljava/util/regex/Pattern;

    .line 9
    return-void
.end method
