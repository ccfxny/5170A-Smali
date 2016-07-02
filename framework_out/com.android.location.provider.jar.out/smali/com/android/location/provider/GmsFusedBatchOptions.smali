.class public Lcom/android/location/provider/GmsFusedBatchOptions;
.super Ljava/lang/Object;
.source "GmsFusedBatchOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/location/provider/GmsFusedBatchOptions$BatchFlags;,
        Lcom/android/location/provider/GmsFusedBatchOptions$SourceTechnologies;
    }
.end annotation


# instance fields
.field private mOptions:Landroid/location/FusedBatchOptions;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/location/FusedBatchOptions;

    invoke-direct {v0}, Landroid/location/FusedBatchOptions;-><init>()V

    iput-object v0, p0, Lcom/android/location/provider/GmsFusedBatchOptions;->mOptions:Landroid/location/FusedBatchOptions;

    .line 91
    return-void
.end method


# virtual methods
.method public getFlags()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/location/provider/GmsFusedBatchOptions;->mOptions:Landroid/location/FusedBatchOptions;

    invoke-virtual {v0}, Landroid/location/FusedBatchOptions;->getFlags()I

    move-result v0

    return v0
.end method

.method public getMaxPowerAllocationInMW()D
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/location/provider/GmsFusedBatchOptions;->mOptions:Landroid/location/FusedBatchOptions;

    invoke-virtual {v0}, Landroid/location/FusedBatchOptions;->getMaxPowerAllocationInMW()D

    move-result-wide v0

    return-wide v0
.end method

.method public getParcelableOptions()Landroid/location/FusedBatchOptions;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/location/provider/GmsFusedBatchOptions;->mOptions:Landroid/location/FusedBatchOptions;

    return-object v0
.end method

.method public getPeriodInNS()J
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/location/provider/GmsFusedBatchOptions;->mOptions:Landroid/location/FusedBatchOptions;

    invoke-virtual {v0}, Landroid/location/FusedBatchOptions;->getPeriodInNS()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSourcesToUse()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/location/provider/GmsFusedBatchOptions;->mOptions:Landroid/location/FusedBatchOptions;

    invoke-virtual {v0}, Landroid/location/FusedBatchOptions;->getSourcesToUse()I

    move-result v0

    return v0
.end method

.method public isFlagSet(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/location/provider/GmsFusedBatchOptions;->mOptions:Landroid/location/FusedBatchOptions;

    invoke-virtual {v0, p1}, Landroid/location/FusedBatchOptions;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public isSourceToUseSet(I)Z
    .locals 1
    .param p1, "source"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/location/provider/GmsFusedBatchOptions;->mOptions:Landroid/location/FusedBatchOptions;

    invoke-virtual {v0, p1}, Landroid/location/FusedBatchOptions;->isSourceToUseSet(I)Z

    move-result v0

    return v0
.end method

.method public resetFlag(I)V
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/location/provider/GmsFusedBatchOptions;->mOptions:Landroid/location/FusedBatchOptions;

    invoke-virtual {v0, p1}, Landroid/location/FusedBatchOptions;->resetFlag(I)V

    .line 68
    return-void
.end method

.method public resetSourceToUse(I)V
    .locals 1
    .param p1, "source"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/location/provider/GmsFusedBatchOptions;->mOptions:Landroid/location/FusedBatchOptions;

    invoke-virtual {v0, p1}, Landroid/location/FusedBatchOptions;->resetSourceToUse(I)V

    .line 52
    return-void
.end method

.method public setFlag(I)V
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/location/provider/GmsFusedBatchOptions;->mOptions:Landroid/location/FusedBatchOptions;

    invoke-virtual {v0, p1}, Landroid/location/FusedBatchOptions;->setFlag(I)V

    .line 64
    return-void
.end method

.method public setMaxPowerAllocationInMW(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/location/provider/GmsFusedBatchOptions;->mOptions:Landroid/location/FusedBatchOptions;

    invoke-virtual {v0, p1, p2}, Landroid/location/FusedBatchOptions;->setMaxPowerAllocationInMW(D)V

    .line 32
    return-void
.end method

.method public setPeriodInNS(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/location/provider/GmsFusedBatchOptions;->mOptions:Landroid/location/FusedBatchOptions;

    invoke-virtual {v0, p1, p2}, Landroid/location/FusedBatchOptions;->setPeriodInNS(J)V

    .line 40
    return-void
.end method

.method public setSourceToUse(I)V
    .locals 1
    .param p1, "source"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/location/provider/GmsFusedBatchOptions;->mOptions:Landroid/location/FusedBatchOptions;

    invoke-virtual {v0, p1}, Landroid/location/FusedBatchOptions;->setSourceToUse(I)V

    .line 48
    return-void
.end method
