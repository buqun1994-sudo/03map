.class Lcom/autonavi/amapauto/alink/test/AlinkTest$SingletonHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/alink/test/AlinkTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/autonavi/amapauto/alink/test/AlinkTest;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/alink/test/AlinkTest;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/alink/test/AlinkTest;-><init>(Lcom/autonavi/amapauto/alink/test/AlinkTest$1;)V

    .line 7
    sput-object v0, Lcom/autonavi/amapauto/alink/test/AlinkTest$SingletonHolder;->INSTANCE:Lcom/autonavi/amapauto/alink/test/AlinkTest;

    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Lcom/autonavi/amapauto/alink/test/AlinkTest;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/alink/test/AlinkTest$SingletonHolder;->INSTANCE:Lcom/autonavi/amapauto/alink/test/AlinkTest;

    .line 3
    return-object v0
.end method
