.class public final Lcom/android/location/provider/GmsFusedBatchOptions$SourceTechnologies;
.super Ljava/lang/Object;
.source "GmsFusedBatchOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/location/provider/GmsFusedBatchOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SourceTechnologies"
.end annotation


# static fields
.field public static BLUETOOTH:I

.field public static CELL:I

.field public static GNSS:I

.field public static SENSORS:I

.field public static WIFI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    sput v0, Lcom/android/location/provider/GmsFusedBatchOptions$SourceTechnologies;->GNSS:I

    .line 85
    const/4 v0, 0x2

    sput v0, Lcom/android/location/provider/GmsFusedBatchOptions$SourceTechnologies;->WIFI:I

    .line 86
    const/4 v0, 0x4

    sput v0, Lcom/android/location/provider/GmsFusedBatchOptions$SourceTechnologies;->SENSORS:I

    .line 87
    const/16 v0, 0x8

    sput v0, Lcom/android/location/provider/GmsFusedBatchOptions$SourceTechnologies;->CELL:I

    .line 88
    const/16 v0, 0x10

    sput v0, Lcom/android/location/provider/GmsFusedBatchOptions$SourceTechnologies;->BLUETOOTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
