.class public final Lcom/android/location/provider/GmsFusedBatchOptions$BatchFlags;
.super Ljava/lang/Object;
.source "GmsFusedBatchOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/location/provider/GmsFusedBatchOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BatchFlags"
.end annotation


# static fields
.field public static CALLBACK_ON_LOCATION_FIX:I

.field public static WAKEUP_ON_FIFO_FULL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    sput v0, Lcom/android/location/provider/GmsFusedBatchOptions$BatchFlags;->WAKEUP_ON_FIFO_FULL:I

    .line 93
    const/4 v0, 0x2

    sput v0, Lcom/android/location/provider/GmsFusedBatchOptions$BatchFlags;->CALLBACK_ON_LOCATION_FIX:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
