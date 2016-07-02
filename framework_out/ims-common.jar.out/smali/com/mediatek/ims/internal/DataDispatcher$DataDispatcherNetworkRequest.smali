.class Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;
.super Ljava/lang/Object;
.source "DataDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/DataDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataDispatcherNetworkRequest"
.end annotation


# instance fields
.field apnType:Ljava/lang/String;

.field currentNw:Landroid/net/Network;

.field nwCap:Landroid/net/NetworkCapabilities;

.field nwCb:Landroid/net/ConnectivityManager$NetworkCallback;

.field nwRequest:Landroid/net/NetworkRequest;


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityManager$NetworkCallback;Ljava/lang/String;)V
    .locals 1
    .param p1, "nwCb"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    .line 2714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2712
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;->apnType:Ljava/lang/String;

    .line 2715
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;->nwCb:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 2716
    iput-object p2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;->apnType:Ljava/lang/String;

    .line 2717
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apnType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;->apnType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nwRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;->nwRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", network: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;->currentNw:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
