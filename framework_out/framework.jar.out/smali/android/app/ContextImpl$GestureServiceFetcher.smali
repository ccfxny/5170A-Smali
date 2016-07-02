.class Landroid/app/ContextImpl$GestureServiceFetcher;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GestureServiceFetcher"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2720
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ContextImpl$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/ContextImpl$1;

    .prologue
    .line 2720
    invoke-direct {p0}, Landroid/app/ContextImpl$GestureServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 2722
    const-string v2, "gesture_manager"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2723
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/IGestureManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IGestureManager;

    move-result-object v1

    .line 2724
    .local v1, "service":Landroid/view/IGestureManager;
    new-instance v2, Landroid/view/GestureManager;

    invoke-direct {v2, p1, v1}, Landroid/view/GestureManager;-><init>(Landroid/content/Context;Landroid/view/IGestureManager;)V

    return-object v2
.end method
