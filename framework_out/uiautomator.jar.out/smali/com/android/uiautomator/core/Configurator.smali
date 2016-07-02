.class public final Lcom/android/uiautomator/core/Configurator;
.super Ljava/lang/Object;
.source "Configurator.java"


# static fields
.field private static sConfigurator:Lcom/android/uiautomator/core/Configurator;


# instance fields
.field private mKeyInjectionDelay:J

.field private mScrollEventWaitTimeout:J

.field private mWaitForActionAcknowledgment:J

.field private mWaitForIdleTimeout:J

.field private mWaitForSelector:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x2710

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide v0, p0, Lcom/android/uiautomator/core/Configurator;->mWaitForIdleTimeout:J

    .line 31
    iput-wide v0, p0, Lcom/android/uiautomator/core/Configurator;->mWaitForSelector:J

    .line 32
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/android/uiautomator/core/Configurator;->mWaitForActionAcknowledgment:J

    .line 36
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/android/uiautomator/core/Configurator;->mScrollEventWaitTimeout:J

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/uiautomator/core/Configurator;->mKeyInjectionDelay:J

    .line 46
    return-void
.end method

.method public static getInstance()Lcom/android/uiautomator/core/Configurator;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/uiautomator/core/Configurator;->sConfigurator:Lcom/android/uiautomator/core/Configurator;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/android/uiautomator/core/Configurator;

    invoke-direct {v0}, Lcom/android/uiautomator/core/Configurator;-><init>()V

    sput-object v0, Lcom/android/uiautomator/core/Configurator;->sConfigurator:Lcom/android/uiautomator/core/Configurator;

    .line 58
    :cond_0
    sget-object v0, Lcom/android/uiautomator/core/Configurator;->sConfigurator:Lcom/android/uiautomator/core/Configurator;

    return-object v0
.end method


# virtual methods
.method public getActionAcknowledgmentTimeout()J
    .locals 2

    .prologue
    .line 198
    iget-wide v0, p0, Lcom/android/uiautomator/core/Configurator;->mWaitForActionAcknowledgment:J

    return-wide v0
.end method

.method public getKeyInjectionDelay()J
    .locals 2

    .prologue
    .line 222
    iget-wide v0, p0, Lcom/android/uiautomator/core/Configurator;->mKeyInjectionDelay:J

    return-wide v0
.end method

.method public getScrollAcknowledgmentTimeout()J
    .locals 2

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/android/uiautomator/core/Configurator;->mScrollEventWaitTimeout:J

    return-wide v0
.end method

.method public getWaitForIdleTimeout()J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/android/uiautomator/core/Configurator;->mWaitForIdleTimeout:J

    return-wide v0
.end method

.method public getWaitForSelectorTimeout()J
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/android/uiautomator/core/Configurator;->mWaitForSelector:J

    return-wide v0
.end method

.method public setActionAcknowledgmentTimeout(J)Lcom/android/uiautomator/core/Configurator;
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 181
    iput-wide p1, p0, Lcom/android/uiautomator/core/Configurator;->mWaitForActionAcknowledgment:J

    .line 182
    return-object p0
.end method

.method public setKeyInjectionDelay(J)Lcom/android/uiautomator/core/Configurator;
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 210
    iput-wide p1, p0, Lcom/android/uiautomator/core/Configurator;->mKeyInjectionDelay:J

    .line 211
    return-object p0
.end method

.method public setScrollAcknowledgmentTimeout(J)Lcom/android/uiautomator/core/Configurator;
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 147
    iput-wide p1, p0, Lcom/android/uiautomator/core/Configurator;->mScrollEventWaitTimeout:J

    .line 148
    return-object p0
.end method

.method public setWaitForIdleTimeout(J)Lcom/android/uiautomator/core/Configurator;
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/android/uiautomator/core/Configurator;->mWaitForIdleTimeout:J

    .line 78
    return-object p0
.end method

.method public setWaitForSelectorTimeout(J)Lcom/android/uiautomator/core/Configurator;
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 113
    iput-wide p1, p0, Lcom/android/uiautomator/core/Configurator;->mWaitForSelector:J

    .line 114
    return-object p0
.end method
