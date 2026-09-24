.class public Lcom/iflytek/navigationservice/NavigationService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static b:Lcom/iflytek/navigationservice/NavigationService; = null

.field public static c:Lm20; = null

.field public static d:Ljava/lang/String; = "connect_action"

.field public static e:Li20; = null

.field public static f:Ljava/lang/String; = "NavigationService"


# instance fields
.field public final a:Lg20$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 4
    new-instance v0, Lcom/iflytek/navigationservice/NavigationService$a;

    .line 6
    invoke-direct {v0, p0}, Lcom/iflytek/navigationservice/NavigationService$a;-><init>(Lcom/iflytek/navigationservice/NavigationService;)V

    .line 9
    iput-object v0, p0, Lcom/iflytek/navigationservice/NavigationService;->a:Lg20$a;

    .line 11
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    sput-object p0, Lcom/iflytek/navigationservice/NavigationService;->b:Lcom/iflytek/navigationservice/NavigationService;

    .line 3
    iget-object p1, p0, Lcom/iflytek/navigationservice/NavigationService;->a:Lg20$a;

    .line 5
    return-object p1
.end method
