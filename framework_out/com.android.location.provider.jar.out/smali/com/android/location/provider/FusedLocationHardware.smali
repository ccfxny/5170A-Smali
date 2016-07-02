.class public final Lcom/android/location/provider/FusedLocationHardware;
.super Ljava/lang/Object;
.source "FusedLocationHardware.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/location/provider/FusedLocationHardware$MessageCommand;,
        Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mInternalSink:Landroid/hardware/location/IFusedLocationHardwareSink;

.field private mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

.field mSinkList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/location/provider/FusedLocationHardwareSink;",
            "Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/location/IFusedLocationHardware;)V
    .locals 1
    .param p1, "locationHardware"    # Landroid/hardware/location/IFusedLocationHardware;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "FusedLocationHardware"

    iput-object v0, p0, Lcom/android/location/provider/FusedLocationHardware;->TAG:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/location/provider/FusedLocationHardware;->mSinkList:Ljava/util/HashMap;

    .line 45
    new-instance v0, Lcom/android/location/provider/FusedLocationHardware$1;

    invoke-direct {v0, p0}, Lcom/android/location/provider/FusedLocationHardware$1;-><init>(Lcom/android/location/provider/FusedLocationHardware;)V

    iput-object v0, p0, Lcom/android/location/provider/FusedLocationHardware;->mInternalSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    .line 61
    iput-object p1, p0, Lcom/android/location/provider/FusedLocationHardware;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/location/provider/FusedLocationHardware;[Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/location/provider/FusedLocationHardware;
    .param p1, "x1"    # [Landroid/location/Location;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/location/provider/FusedLocationHardware;->dispatchLocations([Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/location/provider/FusedLocationHardware;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/location/provider/FusedLocationHardware;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/location/provider/FusedLocationHardware;->dispatchDiagnosticData(Ljava/lang/String;)V

    return-void
.end method

.method private dispatchDiagnosticData(Ljava/lang/String;)V
    .locals 9
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 268
    iget-object v5, p0, Lcom/android/location/provider/FusedLocationHardware;->mSinkList:Ljava/util/HashMap;

    monitor-enter v5

    .line 269
    :try_start_0
    iget-object v3, p0, Lcom/android/location/provider/FusedLocationHardware;->mSinkList:Ljava/util/HashMap;

    .line 270
    .local v3, "sinks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/location/provider/FusedLocationHardwareSink;Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;>;"
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 273
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/location/provider/FusedLocationHardwareSink;Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    const/4 v6, 0x2

    new-instance v7, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/location/provider/FusedLocationHardwareSink;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v5, v8, p1}, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;-><init>(Lcom/android/location/provider/FusedLocationHardware;Lcom/android/location/provider/FusedLocationHardwareSink;[Landroid/location/Location;Ljava/lang/String;)V

    invoke-static {v4, v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 277
    .local v2, "message":Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 270
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/location/provider/FusedLocationHardwareSink;Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "message":Landroid/os/Message;
    .end local v3    # "sinks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/location/provider/FusedLocationHardwareSink;Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;>;"
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 279
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "sinks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/location/provider/FusedLocationHardwareSink;Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;>;"
    :cond_0
    return-void
.end method

.method private dispatchLocations([Landroid/location/Location;)V
    .locals 9
    .param p1, "locations"    # [Landroid/location/Location;

    .prologue
    .line 253
    iget-object v5, p0, Lcom/android/location/provider/FusedLocationHardware;->mSinkList:Ljava/util/HashMap;

    monitor-enter v5

    .line 254
    :try_start_0
    iget-object v3, p0, Lcom/android/location/provider/FusedLocationHardware;->mSinkList:Ljava/util/HashMap;

    .line 255
    .local v3, "sinks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/location/provider/FusedLocationHardwareSink;Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;>;"
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 258
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/location/provider/FusedLocationHardwareSink;Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    const/4 v6, 0x1

    new-instance v7, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/location/provider/FusedLocationHardwareSink;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v5, p1, v8}, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;-><init>(Lcom/android/location/provider/FusedLocationHardware;Lcom/android/location/provider/FusedLocationHardwareSink;[Landroid/location/Location;Ljava/lang/String;)V

    invoke-static {v4, v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 262
    .local v2, "message":Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 255
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/location/provider/FusedLocationHardwareSink;Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "message":Landroid/os/Message;
    .end local v3    # "sinks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/location/provider/FusedLocationHardwareSink;Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;>;"
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 264
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "sinks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/location/provider/FusedLocationHardwareSink;Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public getSupportedBatchSize()I
    .locals 3

    .prologue
    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/android/location/provider/FusedLocationHardware;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    invoke-interface {v1}, Landroid/hardware/location/IFusedLocationHardware;->getSupportedBatchSize()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 131
    :goto_0
    return v1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FusedLocationHardware"

    const-string v2, "RemoteException at getSupportedBatchSize"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public injectDeviceContext(I)V
    .locals 3
    .param p1, "deviceEnabledContext"    # I

    .prologue
    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/android/location/provider/FusedLocationHardware;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    invoke-interface {v1, p1}, Landroid/hardware/location/IFusedLocationHardware;->injectDeviceContext(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FusedLocationHardware"

    const-string v2, "RemoteException at injectDeviceContext"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public injectDiagnosticData(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/android/location/provider/FusedLocationHardware;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    invoke-interface {v1, p1}, Landroid/hardware/location/IFusedLocationHardware;->injectDiagnosticData(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FusedLocationHardware"

    const-string v2, "RemoteException at injectDiagnosticData"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerSink(Lcom/android/location/provider/FusedLocationHardwareSink;Landroid/os/Looper;)V
    .locals 5
    .param p1, "sink"    # Lcom/android/location/provider/FusedLocationHardwareSink;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 68
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 69
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Parameter sink and looper cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 73
    :cond_1
    iget-object v4, p0, Lcom/android/location/provider/FusedLocationHardware;->mSinkList:Ljava/util/HashMap;

    monitor-enter v4

    .line 75
    :try_start_0
    iget-object v3, p0, Lcom/android/location/provider/FusedLocationHardware;->mSinkList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_3

    const/4 v2, 0x1

    .line 77
    .local v2, "registerSink":Z
    :goto_0
    iget-object v3, p0, Lcom/android/location/provider/FusedLocationHardware;->mSinkList:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 78
    monitor-exit v4

    .line 94
    :cond_2
    :goto_1
    return-void

    .line 75
    .end local v2    # "registerSink":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 81
    .restart local v2    # "registerSink":Z
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/location/provider/FusedLocationHardware;->mSinkList:Ljava/util/HashMap;

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 83
    .local v1, "newSinkList":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/location/provider/FusedLocationHardwareSink;Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;>;"
    new-instance v3, Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;

    invoke-direct {v3, p0, p2}, Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;-><init>(Lcom/android/location/provider/FusedLocationHardware;Landroid/os/Looper;)V

    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iput-object v1, p0, Lcom/android/location/provider/FusedLocationHardware;->mSinkList:Ljava/util/HashMap;

    .line 85
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    if-eqz v2, :cond_2

    .line 89
    :try_start_1
    iget-object v3, p0, Lcom/android/location/provider/FusedLocationHardware;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    iget-object v4, p0, Lcom/android/location/provider/FusedLocationHardware;->mInternalSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    invoke-interface {v3, v4}, Landroid/hardware/location/IFusedLocationHardware;->registerSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "FusedLocationHardware"

    const-string v4, "RemoteException at registerSink"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 85
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "newSinkList":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/location/provider/FusedLocationHardwareSink;Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;>;"
    .end local v2    # "registerSink":Z
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public requestBatchOfLocations(I)V
    .locals 3
    .param p1, "batchSizeRequest"    # I

    .prologue
    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/android/location/provider/FusedLocationHardware;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    invoke-interface {v1, p1}, Landroid/hardware/location/IFusedLocationHardware;->requestBatchOfLocations(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FusedLocationHardware"

    const-string v2, "RemoteException at requestBatchOfLocations"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startBatching(ILcom/android/location/provider/GmsFusedBatchOptions;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "batchOptions"    # Lcom/android/location/provider/GmsFusedBatchOptions;

    .prologue
    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/android/location/provider/FusedLocationHardware;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    invoke-virtual {p2}, Lcom/android/location/provider/GmsFusedBatchOptions;->getParcelableOptions()Landroid/location/FusedBatchOptions;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/hardware/location/IFusedLocationHardware;->startBatching(ILandroid/location/FusedBatchOptions;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FusedLocationHardware"

    const-string v2, "RemoteException at startBatching"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopBatching(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/android/location/provider/FusedLocationHardware;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    invoke-interface {v1, p1}, Landroid/hardware/location/IFusedLocationHardware;->stopBatching(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FusedLocationHardware"

    const-string v2, "RemoteException at stopBatching"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public supportsDeviceContextInjection()Z
    .locals 3

    .prologue
    .line 186
    :try_start_0
    iget-object v1, p0, Lcom/android/location/provider/FusedLocationHardware;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    invoke-interface {v1}, Landroid/hardware/location/IFusedLocationHardware;->supportsDeviceContextInjection()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 189
    :goto_0
    return v1

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FusedLocationHardware"

    const-string v2, "RemoteException at supportsDeviceContextInjection"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public supportsDiagnosticDataInjection()Z
    .locals 3

    .prologue
    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/android/location/provider/FusedLocationHardware;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    invoke-interface {v1}, Landroid/hardware/location/IFusedLocationHardware;->supportsDiagnosticDataInjection()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 172
    :goto_0
    return v1

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FusedLocationHardware"

    const-string v2, "RemoteException at supportsDiagnisticDataInjection"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unregisterSink(Lcom/android/location/provider/FusedLocationHardwareSink;)V
    .locals 5
    .param p1, "sink"    # Lcom/android/location/provider/FusedLocationHardwareSink;

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 98
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Parameter sink cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 102
    :cond_0
    iget-object v4, p0, Lcom/android/location/provider/FusedLocationHardware;->mSinkList:Ljava/util/HashMap;

    monitor-enter v4

    .line 103
    :try_start_0
    iget-object v3, p0, Lcom/android/location/provider/FusedLocationHardware;->mSinkList:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 105
    monitor-exit v4

    .line 124
    :cond_1
    :goto_0
    return-void

    .line 108
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/location/provider/FusedLocationHardware;->mSinkList:Ljava/util/HashMap;

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 110
    .local v1, "newSinkList":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/location/provider/FusedLocationHardwareSink;Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;>;"
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_3

    const/4 v2, 0x1

    .line 114
    .local v2, "unregisterSink":Z
    :goto_1
    iput-object v1, p0, Lcom/android/location/provider/FusedLocationHardware;->mSinkList:Ljava/util/HashMap;

    .line 115
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    if-eqz v2, :cond_1

    .line 119
    :try_start_1
    iget-object v3, p0, Lcom/android/location/provider/FusedLocationHardware;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    iget-object v4, p0, Lcom/android/location/provider/FusedLocationHardware;->mInternalSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    invoke-interface {v3, v4}, Landroid/hardware/location/IFusedLocationHardware;->unregisterSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "FusedLocationHardware"

    const-string v4, "RemoteException at unregisterSink"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "unregisterSink":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 115
    .end local v1    # "newSinkList":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/location/provider/FusedLocationHardwareSink;Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;>;"
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public updateBatchingOptions(ILcom/android/location/provider/GmsFusedBatchOptions;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "batchOptions"    # Lcom/android/location/provider/GmsFusedBatchOptions;

    .prologue
    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/android/location/provider/FusedLocationHardware;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    invoke-virtual {p2}, Lcom/android/location/provider/GmsFusedBatchOptions;->getParcelableOptions()Landroid/location/FusedBatchOptions;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/hardware/location/IFusedLocationHardware;->updateBatchingOptions(ILandroid/location/FusedBatchOptions;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FusedLocationHardware"

    const-string v2, "RemoteException at updateBatchingOptions"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
