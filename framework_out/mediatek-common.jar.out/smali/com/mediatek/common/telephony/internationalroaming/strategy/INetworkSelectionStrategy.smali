.class public interface abstract Lcom/mediatek/common/telephony/internationalroaming/strategy/INetworkSelectionStrategy;
.super Ljava/lang/Object;
.source "INetworkSelectionStrategy.java"

# interfaces
.implements Lcom/mediatek/common/telephony/internationalroaming/strategy/IBaseStrategy;


# virtual methods
.method public abstract needToBootOnCdma()Z
.end method

.method public abstract needToBootOnGsm()Z
.end method

.method public abstract onCdmaPlmnChanged(Ljava/lang/String;)V
.end method

.method public abstract onGsmSuspend([Ljava/lang/String;I)V
.end method

.method public abstract onNoService(I)V
.end method

.method public abstract onPostSwitchPhone()V
.end method

.method public abstract onPreSwitchPhone()I
.end method
