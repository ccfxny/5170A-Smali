.class public Lcom/mediatek/perfservice/IPerfServiceManager$CpuPowerMode;
.super Ljava/lang/Object;
.source "IPerfServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/perfservice/IPerfServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CpuPowerMode"
.end annotation


# static fields
.field public static final BENCHMARK:I = 0x3

.field public static final HIGH:I = 0x0

.field public static final LOW:I = 0x2

.field public static final NORMAL:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
