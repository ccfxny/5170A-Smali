.class public Lcom/immersion/WrappableDevice;
.super Lcom/immersion/Device;
.source "WrappableDevice.java"


# instance fields
.field protected mDevice:Lcom/immersion/Device;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 30
    invoke-direct {p0}, Lcom/immersion/Device;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/immersion/WrappableDevice;->mDevice:Lcom/immersion/Device;

    .line 31
    iput v1, p0, Lcom/immersion/WrappableDevice;->deviceHandle:I

    .line 32
    iput v1, p0, Lcom/immersion/WrappableDevice;->deviceIndex:I

    .line 33
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "iDeviceHandle"    # I
    .param p2, "iDeviceIndex"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/immersion/Device;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/immersion/WrappableDevice;->mDevice:Lcom/immersion/Device;

    .line 43
    invoke-virtual {p0, p1}, Lcom/immersion/WrappableDevice;->setDeviceHandle(I)V

    .line 44
    invoke-virtual {p0, p2}, Lcom/immersion/WrappableDevice;->setDeviceIndex(I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/immersion/Device;)V
    .locals 2
    .param p1, "device"    # Lcom/immersion/Device;

    .prologue
    .line 36
    iget v0, p1, Lcom/immersion/Device;->deviceHandle:I

    iget v1, p1, Lcom/immersion/Device;->deviceIndex:I

    invoke-direct {p0, v0, v1}, Lcom/immersion/WrappableDevice;-><init>(II)V

    .line 39
    iput-object p1, p0, Lcom/immersion/WrappableDevice;->mDevice:Lcom/immersion/Device;

    .line 40
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/immersion/WrappableDevice;->mDevice:Lcom/immersion/Device;

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/immersion/WrappableDevice;->mDevice:Lcom/immersion/Device;

    .line 75
    :cond_0
    return-void
.end method

.method public getDeviceHandle()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/immersion/WrappableDevice;->deviceHandle:I

    return v0
.end method

.method public getDeviceIndex()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/immersion/WrappableDevice;->deviceIndex:I

    return v0
.end method

.method public setDeviceHandle(I)V
    .locals 0
    .param p1, "iDeviceHandle"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/immersion/WrappableDevice;->deviceHandle:I

    .line 53
    return-void
.end method

.method public setDeviceIndex(I)V
    .locals 0
    .param p1, "iDeviceIndex"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/immersion/WrappableDevice;->deviceIndex:I

    .line 61
    return-void
.end method
