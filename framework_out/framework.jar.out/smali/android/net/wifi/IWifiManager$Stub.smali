.class public abstract Landroid/net/wifi/IWifiManager$Stub;
.super Landroid/os/Binder;
.source "IWifiManager.java"

# interfaces
.implements Landroid/net/wifi/IWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiManager"

.field static final TRANSACTION_acquireMulticastLock:I = 0x20

.field static final TRANSACTION_acquireWifiLock:I = 0x1b

.field static final TRANSACTION_addOrUpdateNetwork:I = 0x5

.field static final TRANSACTION_addToBlacklist:I = 0x28

.field static final TRANSACTION_blockClient:I = 0x47

.field static final TRANSACTION_clearBlacklist:I = 0x29

.field static final TRANSACTION_disableEphemeralNetwork:I = 0x3c

.field static final TRANSACTION_disableNetwork:I = 0x8

.field static final TRANSACTION_disconnect:I = 0xe

.field static final TRANSACTION_doCtiaTestOff:I = 0x40

.field static final TRANSACTION_doCtiaTestOn:I = 0x3f

.field static final TRANSACTION_doCtiaTestRate:I = 0x41

.field static final TRANSACTION_enableAggressiveHandover:I = 0x38

.field static final TRANSACTION_enableNetwork:I = 0x7

.field static final TRANSACTION_enableTdls:I = 0x2d

.field static final TRANSACTION_enableTdlsWithMacAddress:I = 0x2e

.field static final TRANSACTION_enableVerboseLogging:I = 0x35

.field static final TRANSACTION_getAccessPointPreferredChannels:I = 0x3e

.field static final TRANSACTION_getAggressiveHandover:I = 0x37

.field static final TRANSACTION_getAllowScansWithTraffic:I = 0x39

.field static final TRANSACTION_getBatchedScanResults:I = 0x31

.field static final TRANSACTION_getChannelList:I = 0xa

.field static final TRANSACTION_getClientIp:I = 0x46

.field static final TRANSACTION_getConfigFile:I = 0x2b

.field static final TRANSACTION_getConfiguredNetworkKey:I = 0x2c

.field static final TRANSACTION_getConfiguredNetworks:I = 0x3

.field static final TRANSACTION_getConnectionInfo:I = 0x11

.field static final TRANSACTION_getConnectionStatistics:I = 0x3b

.field static final TRANSACTION_getDhcpInfo:I = 0x19

.field static final TRANSACTION_getFrequencyBand:I = 0x16

.field static final TRANSACTION_getHotspotClients:I = 0x45

.field static final TRANSACTION_getPPPOEInfo:I = 0x53

.field static final TRANSACTION_getPoorLinkThreshold:I = 0x4e

.field static final TRANSACTION_getPrivilegedConfiguredNetworks:I = 0x4

.field static final TRANSACTION_getScanResults:I = 0xd

.field static final TRANSACTION_getSupportedFeatures:I = 0x1

.field static final TRANSACTION_getTestEnv:I = 0x59

.field static final TRANSACTION_getVerboseLoggingLevel:I = 0x36

.field static final TRANSACTION_getWifiApConfiguration:I = 0x24

.field static final TRANSACTION_getWifiApEnabledState:I = 0x23

.field static final TRANSACTION_getWifiEnabledState:I = 0x13

.field static final TRANSACTION_getWifiServiceMessenger:I = 0x2a

.field static final TRANSACTION_getWifiStatus:I = 0x51

.field static final TRANSACTION_getWpsNfcConfigurationToken:I = 0x34

.field static final TRANSACTION_hasConnectableAp:I = 0x4c

.field static final TRANSACTION_initializeMulticastFiltering:I = 0x1e

.field static final TRANSACTION_is5gBandSupported:I = 0x56

.field static final TRANSACTION_isBatchedScanSupported:I = 0x32

.field static final TRANSACTION_isDualBandSupported:I = 0x17

.field static final TRANSACTION_isMulticastEnabled:I = 0x1f

.field static final TRANSACTION_isScanAlwaysAvailable:I = 0x1a

.field static final TRANSACTION_pingSupplicant:I = 0x9

.field static final TRANSACTION_pollBatchedScan:I = 0x33

.field static final TRANSACTION_reassociate:I = 0x10

.field static final TRANSACTION_reconnect:I = 0xf

.field static final TRANSACTION_releaseMulticastLock:I = 0x21

.field static final TRANSACTION_releaseWifiLock:I = 0x1d

.field static final TRANSACTION_removeNetwork:I = 0x6

.field static final TRANSACTION_reportActivityInfo:I = 0x2

.field static final TRANSACTION_requestBatchedScan:I = 0x2f

.field static final TRANSACTION_saveConfiguration:I = 0x18

.field static final TRANSACTION_setAllowScansWithTraffic:I = 0x3a

.field static final TRANSACTION_setApProbeRequestEnabled:I = 0x49

.field static final TRANSACTION_setAutoJoinScanWhenConnected:I = 0x58

.field static final TRANSACTION_setCountryCode:I = 0x14

.field static final TRANSACTION_setFrequencyBand:I = 0x15

.field static final TRANSACTION_setHotspotOptimization:I = 0x57

.field static final TRANSACTION_setPoorLinkProfilingOn:I = 0x50

.field static final TRANSACTION_setPoorLinkThreshold:I = 0x4f

.field static final TRANSACTION_setPowerSavingMode:I = 0x52

.field static final TRANSACTION_setTxPower:I = 0x43

.field static final TRANSACTION_setTxPowerEnabled:I = 0x42

.field static final TRANSACTION_setWifiApConfiguration:I = 0x25

.field static final TRANSACTION_setWifiApEnabled:I = 0x22

.field static final TRANSACTION_setWifiEnabled:I = 0x12

.field static final TRANSACTION_setWifiEnabledForIPO:I = 0x4a

.field static final TRANSACTION_setWifiPowerSave:I = 0x3d

.field static final TRANSACTION_setWoWlanMagicMode:I = 0x55

.field static final TRANSACTION_setWoWlanNormalMode:I = 0x54

.field static final TRANSACTION_startApWps:I = 0x44

.field static final TRANSACTION_startLocationRestrictedScan:I = 0xc

.field static final TRANSACTION_startScan:I = 0xb

.field static final TRANSACTION_startWifi:I = 0x26

.field static final TRANSACTION_stopBatchedScan:I = 0x30

.field static final TRANSACTION_stopWifi:I = 0x27

.field static final TRANSACTION_suspendNotification:I = 0x4b

.field static final TRANSACTION_syncGetConnectingNetworkId:I = 0x4d

.field static final TRANSACTION_unblockClient:I = 0x48

.field static final TRANSACTION_updateWifiLockWorkSource:I = 0x1c


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.net.wifi.IWifiManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-string v1, "android.net.wifi.IWifiManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/IWifiManager;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Landroid/net/wifi/IWifiManager;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Landroid/net/wifi/IWifiManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/wifi/IWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 968
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v14

    :goto_0
    return v14

    .line 48
    :sswitch_0
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    const/4 v14, 0x1

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getSupportedFeatures()I

    move-result v8

    .line 55
    .local v8, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    const/4 v14, 0x1

    goto :goto_0

    .line 61
    .end local v8    # "_result":I
    :sswitch_2
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object v8

    .line 63
    .local v8, "_result":Landroid/net/wifi/WifiActivityEnergyInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v8, :cond_0

    .line 65
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v14}, Landroid/net/wifi/WifiActivityEnergyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 71
    :goto_1
    const/4 v14, 0x1

    goto :goto_0

    .line 69
    :cond_0
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 75
    .end local v8    # "_result":Landroid/net/wifi/WifiActivityEnergyInfo;
    :sswitch_3
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v13

    .line 77
    .local v13, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 79
    const/4 v14, 0x1

    goto :goto_0

    .line 83
    .end local v13    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_4
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v13

    .line 85
    .restart local v13    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 87
    const/4 v14, 0x1

    goto :goto_0

    .line 91
    .end local v13    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_5
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_1

    .line 94
    sget-object v14, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 99
    .local v2, "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_2
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v8

    .line 100
    .local v8, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 97
    .end local v2    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v8    # "_result":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_2

    .line 106
    .end local v2    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_6
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 109
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->removeNetwork(I)Z

    move-result v8

    .line 110
    .local v8, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v8, :cond_2

    const/4 v14, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 111
    :cond_2
    const/4 v14, 0x0

    goto :goto_3

    .line 116
    .end local v2    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_7
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 120
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_3

    const/4 v4, 0x1

    .line 121
    .local v4, "_arg1":Z
    :goto_4
    invoke-virtual {p0, v2, v4}, Landroid/net/wifi/IWifiManager$Stub;->enableNetwork(IZ)Z

    move-result v8

    .line 122
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v8, :cond_4

    const/4 v14, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 120
    .end local v4    # "_arg1":Z
    .end local v8    # "_result":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_4

    .line 123
    .restart local v4    # "_arg1":Z
    .restart local v8    # "_result":Z
    :cond_4
    const/4 v14, 0x0

    goto :goto_5

    .line 128
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Z
    .end local v8    # "_result":Z
    :sswitch_8
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 131
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->disableNetwork(I)Z

    move-result v8

    .line 132
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    if-eqz v8, :cond_5

    const/4 v14, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 133
    :cond_5
    const/4 v14, 0x0

    goto :goto_6

    .line 138
    .end local v2    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_9
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->pingSupplicant()Z

    move-result v8

    .line 140
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v8, :cond_6

    const/4 v14, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 141
    :cond_6
    const/4 v14, 0x0

    goto :goto_7

    .line 146
    .end local v8    # "_result":Z
    :sswitch_a
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getChannelList()Ljava/util/List;

    move-result-object v12

    .line 148
    .local v12, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 150
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 154
    .end local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    :sswitch_b
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_7

    .line 157
    sget-object v14, Landroid/net/wifi/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanSettings;

    .line 163
    .local v2, "_arg0":Landroid/net/wifi/ScanSettings;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_8

    .line 164
    sget-object v14, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/WorkSource;

    .line 169
    .local v4, "_arg1":Landroid/os/WorkSource;
    :goto_9
    invoke-virtual {p0, v2, v4}, Landroid/net/wifi/IWifiManager$Stub;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    .line 170
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 160
    .end local v2    # "_arg0":Landroid/net/wifi/ScanSettings;
    .end local v4    # "_arg1":Landroid/os/WorkSource;
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/net/wifi/ScanSettings;
    goto :goto_8

    .line 167
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/os/WorkSource;
    goto :goto_9

    .line 175
    .end local v2    # "_arg0":Landroid/net/wifi/ScanSettings;
    .end local v4    # "_arg1":Landroid/os/WorkSource;
    :sswitch_c
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_9

    .line 178
    sget-object v14, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 183
    .local v2, "_arg0":Landroid/os/WorkSource;
    :goto_a
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->startLocationRestrictedScan(Landroid/os/WorkSource;)V

    .line 184
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 181
    .end local v2    # "_arg0":Landroid/os/WorkSource;
    :cond_9
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/os/WorkSource;
    goto :goto_a

    .line 189
    .end local v2    # "_arg0":Landroid/os/WorkSource;
    :sswitch_d
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->getScanResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 193
    .local v11, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 195
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 199
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :sswitch_e
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->disconnect()V

    .line 201
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 206
    :sswitch_f
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reconnect()V

    .line 208
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 213
    :sswitch_10
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reassociate()V

    .line 215
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 220
    :sswitch_11
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    .line 222
    .local v8, "_result":Landroid/net/wifi/WifiInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    if-eqz v8, :cond_a

    .line 224
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v14}, Landroid/net/wifi/WifiInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 230
    :goto_b
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 228
    :cond_a
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 234
    .end local v8    # "_result":Landroid/net/wifi/WifiInfo;
    :sswitch_12
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_b

    const/4 v2, 0x1

    .line 237
    .local v2, "_arg0":Z
    :goto_c
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabled(Z)Z

    move-result v8

    .line 238
    .local v8, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    if-eqz v8, :cond_c

    const/4 v14, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 236
    .end local v2    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_b
    const/4 v2, 0x0

    goto :goto_c

    .line 239
    .restart local v2    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_c
    const/4 v14, 0x0

    goto :goto_d

    .line 244
    .end local v2    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_13
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiEnabledState()I

    move-result v8

    .line 246
    .local v8, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 252
    .end local v8    # "_result":I
    :sswitch_14
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_d

    const/4 v4, 0x1

    .line 257
    .local v4, "_arg1":Z
    :goto_e
    invoke-virtual {p0, v2, v4}, Landroid/net/wifi/IWifiManager$Stub;->setCountryCode(Ljava/lang/String;Z)V

    .line 258
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 256
    .end local v4    # "_arg1":Z
    :cond_d
    const/4 v4, 0x0

    goto :goto_e

    .line 263
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_15
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 267
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_e

    const/4 v4, 0x1

    .line 268
    .restart local v4    # "_arg1":Z
    :goto_f
    invoke-virtual {p0, v2, v4}, Landroid/net/wifi/IWifiManager$Stub;->setFrequencyBand(IZ)V

    .line 269
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 267
    .end local v4    # "_arg1":Z
    :cond_e
    const/4 v4, 0x0

    goto :goto_f

    .line 274
    .end local v2    # "_arg0":I
    :sswitch_16
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getFrequencyBand()I

    move-result v8

    .line 276
    .restart local v8    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 282
    .end local v8    # "_result":I
    :sswitch_17
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isDualBandSupported()Z

    move-result v8

    .line 284
    .local v8, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    if-eqz v8, :cond_f

    const/4 v14, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 285
    :cond_f
    const/4 v14, 0x0

    goto :goto_10

    .line 290
    .end local v8    # "_result":Z
    :sswitch_18
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->saveConfiguration()Z

    move-result v8

    .line 292
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    if-eqz v8, :cond_10

    const/4 v14, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 293
    :cond_10
    const/4 v14, 0x0

    goto :goto_11

    .line 298
    .end local v8    # "_result":Z
    :sswitch_19
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v8

    .line 300
    .local v8, "_result":Landroid/net/DhcpInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    if-eqz v8, :cond_11

    .line 302
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v14}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 308
    :goto_12
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 306
    :cond_11
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    .line 312
    .end local v8    # "_result":Landroid/net/DhcpInfo;
    :sswitch_1a
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isScanAlwaysAvailable()Z

    move-result v8

    .line 314
    .local v8, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    if-eqz v8, :cond_12

    const/4 v14, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 315
    :cond_12
    const/4 v14, 0x0

    goto :goto_13

    .line 320
    .end local v8    # "_result":Z
    :sswitch_1b
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 324
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 326
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 328
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_13

    .line 329
    sget-object v14, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/WorkSource;

    .line 334
    .local v6, "_arg3":Landroid/os/WorkSource;
    :goto_14
    invoke-virtual {p0, v2, v4, v3, v6}, Landroid/net/wifi/IWifiManager$Stub;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    move-result v8

    .line 335
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    if-eqz v8, :cond_14

    const/4 v14, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 332
    .end local v6    # "_arg3":Landroid/os/WorkSource;
    .end local v8    # "_result":Z
    :cond_13
    const/4 v6, 0x0

    .restart local v6    # "_arg3":Landroid/os/WorkSource;
    goto :goto_14

    .line 336
    .restart local v8    # "_result":Z
    :cond_14
    const/4 v14, 0x0

    goto :goto_15

    .line 341
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v6    # "_arg3":Landroid/os/WorkSource;
    .end local v8    # "_result":Z
    :sswitch_1c
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 345
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_15

    .line 346
    sget-object v14, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/WorkSource;

    .line 351
    .local v4, "_arg1":Landroid/os/WorkSource;
    :goto_16
    invoke-virtual {p0, v2, v4}, Landroid/net/wifi/IWifiManager$Stub;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 352
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 349
    .end local v4    # "_arg1":Landroid/os/WorkSource;
    :cond_15
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/os/WorkSource;
    goto :goto_16

    .line 357
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Landroid/os/WorkSource;
    :sswitch_1d
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 360
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->releaseWifiLock(Landroid/os/IBinder;)Z

    move-result v8

    .line 361
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    if-eqz v8, :cond_16

    const/4 v14, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 362
    :cond_16
    const/4 v14, 0x0

    goto :goto_17

    .line 367
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_result":Z
    :sswitch_1e
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->initializeMulticastFiltering()V

    .line 369
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 374
    :sswitch_1f
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isMulticastEnabled()Z

    move-result v8

    .line 376
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    if-eqz v8, :cond_17

    const/4 v14, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 377
    :cond_17
    const/4 v14, 0x0

    goto :goto_18

    .line 382
    .end local v8    # "_result":Z
    :sswitch_20
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 386
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 387
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Landroid/net/wifi/IWifiManager$Stub;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 388
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 393
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_21
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->releaseMulticastLock()V

    .line 395
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 400
    :sswitch_22
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_18

    .line 403
    sget-object v14, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 409
    .local v2, "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_19

    const/4 v4, 0x1

    .line 410
    .local v4, "_arg1":Z
    :goto_1a
    invoke-virtual {p0, v2, v4}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 411
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 406
    .end local v2    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "_arg1":Z
    :cond_18
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_19

    .line 409
    :cond_19
    const/4 v4, 0x0

    goto :goto_1a

    .line 416
    .end local v2    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_23
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApEnabledState()I

    move-result v8

    .line 418
    .local v8, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 424
    .end local v8    # "_result":I
    :sswitch_24
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 426
    .local v8, "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    if-eqz v8, :cond_1a

    .line 428
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 429
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v14}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 434
    :goto_1b
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 432
    :cond_1a
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1b

    .line 438
    .end local v8    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_25
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_1b

    .line 441
    sget-object v14, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 446
    .restart local v2    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_1c
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 447
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 444
    .end local v2    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :cond_1b
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_1c

    .line 452
    .end local v2    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_26
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->startWifi()V

    .line 454
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 459
    :sswitch_27
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->stopWifi()V

    .line 461
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 466
    :sswitch_28
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 469
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->addToBlacklist(Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 475
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_29
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->clearBlacklist()V

    .line 477
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 482
    :sswitch_2a
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v8

    .line 484
    .local v8, "_result":Landroid/os/Messenger;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    if-eqz v8, :cond_1c

    .line 486
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v14}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    .line 492
    :goto_1d
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 490
    :cond_1c
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    .line 496
    .end local v8    # "_result":Landroid/os/Messenger;
    :sswitch_2b
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfigFile()Ljava/lang/String;

    move-result-object v8

    .line 498
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 500
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 504
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_2c
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 507
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->getConfiguredNetworkKey(I)Ljava/lang/String;

    move-result-object v8

    .line 508
    .restart local v8    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 510
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 514
    .end local v2    # "_arg0":I
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_2d
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 518
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_1d

    const/4 v4, 0x1

    .line 519
    .restart local v4    # "_arg1":Z
    :goto_1e
    invoke-virtual {p0, v2, v4}, Landroid/net/wifi/IWifiManager$Stub;->enableTdls(Ljava/lang/String;Z)V

    .line 520
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 518
    .end local v4    # "_arg1":Z
    :cond_1d
    const/4 v4, 0x0

    goto :goto_1e

    .line 525
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_2e
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 529
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_1e

    const/4 v4, 0x1

    .line 530
    .restart local v4    # "_arg1":Z
    :goto_1f
    invoke-virtual {p0, v2, v4}, Landroid/net/wifi/IWifiManager$Stub;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V

    .line 531
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 529
    .end local v4    # "_arg1":Z
    :cond_1e
    const/4 v4, 0x0

    goto :goto_1f

    .line 536
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_2f
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_1f

    .line 539
    sget-object v14, Landroid/net/wifi/BatchedScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/BatchedScanSettings;

    .line 545
    .local v2, "_arg0":Landroid/net/wifi/BatchedScanSettings;
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 547
    .local v4, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_20

    .line 548
    sget-object v14, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource;

    .line 553
    .local v3, "_arg2":Landroid/os/WorkSource;
    :goto_21
    invoke-virtual {p0, v2, v4, v3}, Landroid/net/wifi/IWifiManager$Stub;->requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)Z

    move-result v8

    .line 554
    .local v8, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    if-eqz v8, :cond_21

    const/4 v14, 0x1

    :goto_22
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 556
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 542
    .end local v2    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    .end local v3    # "_arg2":Landroid/os/WorkSource;
    .end local v4    # "_arg1":Landroid/os/IBinder;
    .end local v8    # "_result":Z
    :cond_1f
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    goto :goto_20

    .line 551
    .restart local v4    # "_arg1":Landroid/os/IBinder;
    :cond_20
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/os/WorkSource;
    goto :goto_21

    .line 555
    .restart local v8    # "_result":Z
    :cond_21
    const/4 v14, 0x0

    goto :goto_22

    .line 560
    .end local v2    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    .end local v3    # "_arg2":Landroid/os/WorkSource;
    .end local v4    # "_arg1":Landroid/os/IBinder;
    .end local v8    # "_result":Z
    :sswitch_30
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_22

    .line 563
    sget-object v14, Landroid/net/wifi/BatchedScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/BatchedScanSettings;

    .line 568
    .restart local v2    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    :goto_23
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;)V

    .line 569
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 566
    .end local v2    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    :cond_22
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    goto :goto_23

    .line 574
    .end local v2    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    :sswitch_31
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 577
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->getBatchedScanResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 578
    .local v7, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/BatchedScanResult;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 580
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 584
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/BatchedScanResult;>;"
    :sswitch_32
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isBatchedScanSupported()Z

    move-result v8

    .line 586
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    if-eqz v8, :cond_23

    const/4 v14, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 587
    :cond_23
    const/4 v14, 0x0

    goto :goto_24

    .line 592
    .end local v8    # "_result":Z
    :sswitch_33
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->pollBatchedScan()V

    .line 594
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 599
    :sswitch_34
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 601
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 602
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->getWpsNfcConfigurationToken(I)Ljava/lang/String;

    move-result-object v8

    .line 603
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 605
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 609
    .end local v2    # "_arg0":I
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_35
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 612
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->enableVerboseLogging(I)V

    .line 613
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 618
    .end local v2    # "_arg0":I
    :sswitch_36
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getVerboseLoggingLevel()I

    move-result v8

    .line 620
    .local v8, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 626
    .end local v8    # "_result":I
    :sswitch_37
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getAggressiveHandover()I

    move-result v8

    .line 628
    .restart local v8    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 630
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 634
    .end local v8    # "_result":I
    :sswitch_38
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 637
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->enableAggressiveHandover(I)V

    .line 638
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 643
    .end local v2    # "_arg0":I
    :sswitch_39
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 644
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getAllowScansWithTraffic()I

    move-result v8

    .line 645
    .restart local v8    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 647
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 651
    .end local v8    # "_result":I
    :sswitch_3a
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 653
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 654
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->setAllowScansWithTraffic(I)V

    .line 655
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 660
    .end local v2    # "_arg0":I
    :sswitch_3b
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionStatistics()Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v8

    .line 662
    .local v8, "_result":Landroid/net/wifi/WifiConnectionStatistics;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    if-eqz v8, :cond_24

    .line 664
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 665
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v14}, Landroid/net/wifi/WifiConnectionStatistics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 670
    :goto_25
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 668
    :cond_24
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25

    .line 674
    .end local v8    # "_result":Landroid/net/wifi/WifiConnectionStatistics;
    :sswitch_3c
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 676
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 677
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->disableEphemeralNetwork(Ljava/lang/String;)V

    .line 678
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 683
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_3d
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 685
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_25

    const/4 v2, 0x1

    .line 686
    .local v2, "_arg0":Z
    :goto_26
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->setWifiPowerSave(Z)V

    .line 687
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 685
    .end local v2    # "_arg0":Z
    :cond_25
    const/4 v2, 0x0

    goto :goto_26

    .line 692
    :sswitch_3e
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 693
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getAccessPointPreferredChannels()[Ljava/lang/String;

    move-result-object v8

    .line 694
    .local v8, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 696
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 700
    .end local v8    # "_result":[Ljava/lang/String;
    :sswitch_3f
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->doCtiaTestOn()Z

    move-result v8

    .line 702
    .local v8, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    if-eqz v8, :cond_26

    const/4 v14, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 704
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 703
    :cond_26
    const/4 v14, 0x0

    goto :goto_27

    .line 708
    .end local v8    # "_result":Z
    :sswitch_40
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->doCtiaTestOff()Z

    move-result v8

    .line 710
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    if-eqz v8, :cond_27

    const/4 v14, 0x1

    :goto_28
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 712
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 711
    :cond_27
    const/4 v14, 0x0

    goto :goto_28

    .line 716
    .end local v8    # "_result":Z
    :sswitch_41
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 718
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 719
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->doCtiaTestRate(I)Z

    move-result v8

    .line 720
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    if-eqz v8, :cond_28

    const/4 v14, 0x1

    :goto_29
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 722
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 721
    :cond_28
    const/4 v14, 0x0

    goto :goto_29

    .line 726
    .end local v2    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_42
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_29

    const/4 v2, 0x1

    .line 729
    .local v2, "_arg0":Z
    :goto_2a
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->setTxPowerEnabled(Z)Z

    move-result v8

    .line 730
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    if-eqz v8, :cond_2a

    const/4 v14, 0x1

    :goto_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 732
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 728
    .end local v2    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_29
    const/4 v2, 0x0

    goto :goto_2a

    .line 731
    .restart local v2    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_2a
    const/4 v14, 0x0

    goto :goto_2b

    .line 736
    .end local v2    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_43
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 738
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 739
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->setTxPower(I)Z

    move-result v8

    .line 740
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 741
    if-eqz v8, :cond_2b

    const/4 v14, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 742
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 741
    :cond_2b
    const/4 v14, 0x0

    goto :goto_2c

    .line 746
    .end local v2    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_44
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 748
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_2c

    .line 749
    sget-object v14, Landroid/net/wifi/WpsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WpsInfo;

    .line 754
    .local v2, "_arg0":Landroid/net/wifi/WpsInfo;
    :goto_2d
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->startApWps(Landroid/net/wifi/WpsInfo;)V

    .line 755
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 752
    .end local v2    # "_arg0":Landroid/net/wifi/WpsInfo;
    :cond_2c
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/net/wifi/WpsInfo;
    goto :goto_2d

    .line 760
    .end local v2    # "_arg0":Landroid/net/wifi/WpsInfo;
    :sswitch_45
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 761
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getHotspotClients()Ljava/util/List;

    move-result-object v10

    .line 762
    .local v10, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/HotspotClient;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 763
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 764
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 768
    .end local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/HotspotClient;>;"
    :sswitch_46
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 770
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 771
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->getClientIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 772
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 773
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 774
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 778
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_47
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 780
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_2d

    .line 781
    sget-object v14, Landroid/net/wifi/HotspotClient;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/HotspotClient;

    .line 786
    .local v2, "_arg0":Landroid/net/wifi/HotspotClient;
    :goto_2e
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->blockClient(Landroid/net/wifi/HotspotClient;)Z

    move-result v8

    .line 787
    .local v8, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    if-eqz v8, :cond_2e

    const/4 v14, 0x1

    :goto_2f
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 789
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 784
    .end local v2    # "_arg0":Landroid/net/wifi/HotspotClient;
    .end local v8    # "_result":Z
    :cond_2d
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/net/wifi/HotspotClient;
    goto :goto_2e

    .line 788
    .restart local v8    # "_result":Z
    :cond_2e
    const/4 v14, 0x0

    goto :goto_2f

    .line 793
    .end local v2    # "_arg0":Landroid/net/wifi/HotspotClient;
    .end local v8    # "_result":Z
    :sswitch_48
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 795
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_2f

    .line 796
    sget-object v14, Landroid/net/wifi/HotspotClient;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/HotspotClient;

    .line 801
    .restart local v2    # "_arg0":Landroid/net/wifi/HotspotClient;
    :goto_30
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->unblockClient(Landroid/net/wifi/HotspotClient;)Z

    move-result v8

    .line 802
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 803
    if-eqz v8, :cond_30

    const/4 v14, 0x1

    :goto_31
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 804
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 799
    .end local v2    # "_arg0":Landroid/net/wifi/HotspotClient;
    .end local v8    # "_result":Z
    :cond_2f
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/net/wifi/HotspotClient;
    goto :goto_30

    .line 803
    .restart local v8    # "_result":Z
    :cond_30
    const/4 v14, 0x0

    goto :goto_31

    .line 808
    .end local v2    # "_arg0":Landroid/net/wifi/HotspotClient;
    .end local v8    # "_result":Z
    :sswitch_49
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 810
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_31

    const/4 v2, 0x1

    .line 811
    .local v2, "_arg0":Z
    :goto_32
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->setApProbeRequestEnabled(Z)Z

    move-result v8

    .line 812
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 813
    if-eqz v8, :cond_32

    const/4 v14, 0x1

    :goto_33
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 814
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 810
    .end local v2    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_31
    const/4 v2, 0x0

    goto :goto_32

    .line 813
    .restart local v2    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_32
    const/4 v14, 0x0

    goto :goto_33

    .line 818
    .end local v2    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_4a
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 820
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_33

    const/4 v2, 0x1

    .line 821
    .restart local v2    # "_arg0":Z
    :goto_34
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabledForIPO(Z)Z

    move-result v8

    .line 822
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 823
    if-eqz v8, :cond_34

    const/4 v14, 0x1

    :goto_35
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 824
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 820
    .end local v2    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_33
    const/4 v2, 0x0

    goto :goto_34

    .line 823
    .restart local v2    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_34
    const/4 v14, 0x0

    goto :goto_35

    .line 828
    .end local v2    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_4b
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 830
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 831
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->suspendNotification(I)V

    .line 832
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 833
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 837
    .end local v2    # "_arg0":I
    :sswitch_4c
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 838
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->hasConnectableAp()Z

    move-result v8

    .line 839
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 840
    if-eqz v8, :cond_35

    const/4 v14, 0x1

    :goto_36
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 841
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 840
    :cond_35
    const/4 v14, 0x0

    goto :goto_36

    .line 845
    .end local v8    # "_result":Z
    :sswitch_4d
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 846
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->syncGetConnectingNetworkId()I

    move-result v8

    .line 847
    .local v8, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 848
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 849
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 853
    .end local v8    # "_result":I
    :sswitch_4e
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 855
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_36

    const/4 v2, 0x1

    .line 856
    .local v2, "_arg0":Z
    :goto_37
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->getPoorLinkThreshold(Z)D

    move-result-wide v8

    .line 857
    .local v8, "_result":D
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 858
    move-object/from16 v0, p3

    invoke-virtual {v0, v8, v9}, Landroid/os/Parcel;->writeDouble(D)V

    .line 859
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 855
    .end local v2    # "_arg0":Z
    .end local v8    # "_result":D
    :cond_36
    const/4 v2, 0x0

    goto :goto_37

    .line 863
    :sswitch_4f
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 865
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 867
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .line 868
    .local v4, "_arg1":D
    invoke-virtual {p0, v2, v4, v5}, Landroid/net/wifi/IWifiManager$Stub;->setPoorLinkThreshold(Ljava/lang/String;D)Z

    move-result v8

    .line 869
    .local v8, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 870
    if-eqz v8, :cond_37

    const/4 v14, 0x1

    :goto_38
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 871
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 870
    :cond_37
    const/4 v14, 0x0

    goto :goto_38

    .line 875
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":D
    .end local v8    # "_result":Z
    :sswitch_50
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 877
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_38

    const/4 v2, 0x1

    .line 878
    .local v2, "_arg0":Z
    :goto_39
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->setPoorLinkProfilingOn(Z)V

    .line 879
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 880
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 877
    .end local v2    # "_arg0":Z
    :cond_38
    const/4 v2, 0x0

    goto :goto_39

    .line 884
    :sswitch_51
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 885
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiStatus()Ljava/lang/String;

    move-result-object v8

    .line 886
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 887
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 888
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 892
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_52
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 894
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_39

    const/4 v2, 0x1

    .line 895
    .restart local v2    # "_arg0":Z
    :goto_3a
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->setPowerSavingMode(Z)V

    .line 896
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 897
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 894
    .end local v2    # "_arg0":Z
    :cond_39
    const/4 v2, 0x0

    goto :goto_3a

    .line 901
    :sswitch_53
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 902
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;

    move-result-object v8

    .line 903
    .local v8, "_result":Landroid/net/wifi/PPPOEInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 904
    if-eqz v8, :cond_3a

    .line 905
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 906
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v14}, Landroid/net/wifi/PPPOEInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 911
    :goto_3b
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 909
    :cond_3a
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3b

    .line 915
    .end local v8    # "_result":Landroid/net/wifi/PPPOEInfo;
    :sswitch_54
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 916
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->setWoWlanNormalMode()Z

    move-result v8

    .line 917
    .local v8, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 918
    if-eqz v8, :cond_3b

    const/4 v14, 0x1

    :goto_3c
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 919
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 918
    :cond_3b
    const/4 v14, 0x0

    goto :goto_3c

    .line 923
    .end local v8    # "_result":Z
    :sswitch_55
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 924
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->setWoWlanMagicMode()Z

    move-result v8

    .line 925
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    if-eqz v8, :cond_3c

    const/4 v14, 0x1

    :goto_3d
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 927
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 926
    :cond_3c
    const/4 v14, 0x0

    goto :goto_3d

    .line 931
    .end local v8    # "_result":Z
    :sswitch_56
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 932
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->is5gBandSupported()Z

    move-result v8

    .line 933
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 934
    if-eqz v8, :cond_3d

    const/4 v14, 0x1

    :goto_3e
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 935
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 934
    :cond_3d
    const/4 v14, 0x0

    goto :goto_3e

    .line 939
    .end local v8    # "_result":Z
    :sswitch_57
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 941
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_3e

    const/4 v2, 0x1

    .line 942
    .restart local v2    # "_arg0":Z
    :goto_3f
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->setHotspotOptimization(Z)Z

    move-result v8

    .line 943
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 944
    if-eqz v8, :cond_3f

    const/4 v14, 0x1

    :goto_40
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 945
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 941
    .end local v2    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_3e
    const/4 v2, 0x0

    goto :goto_3f

    .line 944
    .restart local v2    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_3f
    const/4 v14, 0x0

    goto :goto_40

    .line 949
    .end local v2    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_58
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 951
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_40

    const/4 v2, 0x1

    .line 952
    .restart local v2    # "_arg0":Z
    :goto_41
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->setAutoJoinScanWhenConnected(Z)Z

    move-result v8

    .line 953
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    if-eqz v8, :cond_41

    const/4 v14, 0x1

    :goto_42
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 955
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 951
    .end local v2    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_40
    const/4 v2, 0x0

    goto :goto_41

    .line 954
    .restart local v2    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_41
    const/4 v14, 0x0

    goto :goto_42

    .line 959
    .end local v2    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_59
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 961
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 962
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->getTestEnv(I)Ljava/lang/String;

    move-result-object v8

    .line 963
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 964
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 965
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 44
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
