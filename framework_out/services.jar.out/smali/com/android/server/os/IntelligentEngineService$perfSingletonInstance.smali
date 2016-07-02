.class Lcom/android/server/os/IntelligentEngineService$perfSingletonInstance;
.super Ljava/lang/Object;
.source "IntelligentEngineService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/IntelligentEngineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "perfSingletonInstance"
.end annotation


# static fields
.field private static perfInstance:Lcom/android/server/os/IntelligentEngineService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/android/server/os/IntelligentEngineService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/os/IntelligentEngineService;-><init>(Lcom/android/server/os/IntelligentEngineService$1;)V

    sput-object v0, Lcom/android/server/os/IntelligentEngineService$perfSingletonInstance;->perfInstance:Lcom/android/server/os/IntelligentEngineService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/server/os/IntelligentEngineService;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/server/os/IntelligentEngineService$perfSingletonInstance;->perfInstance:Lcom/android/server/os/IntelligentEngineService;

    return-object v0
.end method
