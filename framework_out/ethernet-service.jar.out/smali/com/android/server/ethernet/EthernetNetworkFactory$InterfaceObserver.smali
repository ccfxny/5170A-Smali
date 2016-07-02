.class Lcom/android/server/ethernet/EthernetNetworkFactory$InterfaceObserver;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "EthernetNetworkFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ethernet/EthernetNetworkFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterfaceObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;


# direct methods
.method private constructor <init>(Lcom/android/server/ethernet/EthernetNetworkFactory;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$InterfaceObserver;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ethernet/EthernetNetworkFactory;Lcom/android/server/ethernet/EthernetNetworkFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/ethernet/EthernetNetworkFactory;
    .param p2, "x1"    # Lcom/android/server/ethernet/EthernetNetworkFactory$1;

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/ethernet/EthernetNetworkFactory$InterfaceObserver;-><init>(Lcom/android/server/ethernet/EthernetNetworkFactory;)V

    return-void
.end method


# virtual methods
.method public interfaceAdded(Ljava/lang/String;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$InterfaceObserver;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    # invokes: Lcom/android/server/ethernet/EthernetNetworkFactory;->maybeTrackInterface(Ljava/lang/String;)Z
    invoke-static {v0, p1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->access$100(Lcom/android/server/ethernet/EthernetNetworkFactory;Ljava/lang/String;)Z

    .line 158
    return-void
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$InterfaceObserver;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    # invokes: Lcom/android/server/ethernet/EthernetNetworkFactory;->updateInterfaceState(Ljava/lang/String;Z)V
    invoke-static {v0, p1, p2}, Lcom/android/server/ethernet/EthernetNetworkFactory;->access$000(Lcom/android/server/ethernet/EthernetNetworkFactory;Ljava/lang/String;Z)V

    .line 153
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$InterfaceObserver;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    # invokes: Lcom/android/server/ethernet/EthernetNetworkFactory;->stopTrackingInterface(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->access$200(Lcom/android/server/ethernet/EthernetNetworkFactory;Ljava/lang/String;)V

    .line 163
    return-void
.end method
