.class Landroid/app/ContextImpl$FlymeHipsServiceFetcher;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlymeHipsServiceFetcher"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2756
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ContextImpl$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/ContextImpl$1;

    .prologue
    .line 2756
    invoke-direct {p0}, Landroid/app/ContextImpl$FlymeHipsServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 2758
    invoke-static {}, Lmeizu/hips/FlymeHipsServiceManager;->getInstance()Lmeizu/hips/FlymeHipsServiceManager;

    move-result-object v0

    return-object v0
.end method
