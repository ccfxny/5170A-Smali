.class public final Lcom/android/server/ethernet/EthernetService;
.super Lcom/android/server/SystemService;
.source "EthernetService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EthernetService"


# instance fields
.field final mImpl:Lcom/android/server/ethernet/EthernetServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Lcom/android/server/ethernet/EthernetServiceImpl;

    invoke-direct {v0, p1}, Lcom/android/server/ethernet/EthernetServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/ethernet/EthernetService;->mImpl:Lcom/android/server/ethernet/EthernetServiceImpl;

    .line 31
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .prologue
    .line 41
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetService;->mImpl:Lcom/android/server/ethernet/EthernetServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/ethernet/EthernetServiceImpl;->start()V

    .line 44
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 35
    const-string v0, "EthernetService"

    const-string v1, "Registering service ethernet"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-string v0, "ethernet"

    iget-object v1, p0, Lcom/android/server/ethernet/EthernetService;->mImpl:Lcom/android/server/ethernet/EthernetServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ethernet/EthernetService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 37
    return-void
.end method
