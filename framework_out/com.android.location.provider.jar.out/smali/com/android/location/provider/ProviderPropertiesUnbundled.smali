.class public final Lcom/android/location/provider/ProviderPropertiesUnbundled;
.super Ljava/lang/Object;
.source "ProviderPropertiesUnbundled.java"


# instance fields
.field private final mProperties:Lcom/android/internal/location/ProviderProperties;


# direct methods
.method private constructor <init>(Lcom/android/internal/location/ProviderProperties;)V
    .locals 0
    .param p1, "properties"    # Lcom/android/internal/location/ProviderProperties;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/location/provider/ProviderPropertiesUnbundled;->mProperties:Lcom/android/internal/location/ProviderProperties;

    .line 42
    return-void
.end method

.method public static create(ZZZZZZZII)Lcom/android/location/provider/ProviderPropertiesUnbundled;
    .locals 11
    .param p0, "requiresNetwork"    # Z
    .param p1, "requiresSatellite"    # Z
    .param p2, "requiresCell"    # Z
    .param p3, "hasMonetaryCost"    # Z
    .param p4, "supportsAltitude"    # Z
    .param p5, "supportsSpeed"    # Z
    .param p6, "supportsBearing"    # Z
    .param p7, "powerRequirement"    # I
    .param p8, "accuracy"    # I

    .prologue
    .line 35
    new-instance v10, Lcom/android/location/provider/ProviderPropertiesUnbundled;

    new-instance v0, Lcom/android/internal/location/ProviderProperties;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    invoke-direct {v10, v0}, Lcom/android/location/provider/ProviderPropertiesUnbundled;-><init>(Lcom/android/internal/location/ProviderProperties;)V

    return-object v10
.end method


# virtual methods
.method public getProviderProperties()Lcom/android/internal/location/ProviderProperties;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/location/provider/ProviderPropertiesUnbundled;->mProperties:Lcom/android/internal/location/ProviderProperties;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/location/provider/ProviderPropertiesUnbundled;->mProperties:Lcom/android/internal/location/ProviderProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
