.class public Lcom/android/server/ethernet/EthernetConfigStore;
.super Lcom/android/server/net/IpConfigStore;
.source "EthernetConfigStore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EthernetConfigStore"

.field private static final ipConfigFile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/ethernet/ipconfig.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ethernet/EthernetConfigStore;->ipConfigFile:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/server/net/IpConfigStore;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public readIpAndProxyConfigurations()Landroid/net/IpConfiguration;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 42
    sget-object v1, Lcom/android/server/ethernet/EthernetConfigStore;->ipConfigFile:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/ethernet/EthernetConfigStore;->readIpAndProxyConfigurations(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 44
    .local v0, "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 45
    const-string v1, "EthernetConfigStore"

    const-string v2, "No Ethernet configuration found. Using default."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v1, Landroid/net/IpConfiguration;

    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v3, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    invoke-direct {v1, v2, v3, v4, v4}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    .line 54
    :goto_0
    return-object v1

    .line 49
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 51
    const-string v1, "EthernetConfigStore"

    const-string v2, "Multiple Ethernet configurations detected. Only reading first one."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/IpConfiguration;

    goto :goto_0
.end method

.method public writeIpAndProxyConfigurations(Landroid/net/IpConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/IpConfiguration;

    .prologue
    .line 58
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 59
    .local v0, "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    sget-object v1, Lcom/android/server/ethernet/EthernetConfigStore;->ipConfigFile:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/ethernet/EthernetConfigStore;->writeIpAndProxyConfigurations(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 61
    return-void
.end method
