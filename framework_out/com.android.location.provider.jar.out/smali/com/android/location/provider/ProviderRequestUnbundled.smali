.class public final Lcom/android/location/provider/ProviderRequestUnbundled;
.super Ljava/lang/Object;
.source "ProviderRequestUnbundled.java"


# instance fields
.field private final mRequest:Lcom/android/internal/location/ProviderRequest;


# direct methods
.method public constructor <init>(Lcom/android/internal/location/ProviderRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/location/provider/ProviderRequestUnbundled;->mRequest:Lcom/android/internal/location/ProviderRequest;

    .line 38
    return-void
.end method


# virtual methods
.method public getInterval()J
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/location/provider/ProviderRequestUnbundled;->mRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v0, v0, Lcom/android/internal/location/ProviderRequest;->interval:J

    return-wide v0
.end method

.method public getLocationRequests()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/location/provider/LocationRequestUnbundled;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/location/provider/ProviderRequestUnbundled;->mRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v3, v3, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 54
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/location/provider/LocationRequestUnbundled;>;"
    iget-object v3, p0, Lcom/android/location/provider/ProviderRequestUnbundled;->mRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v3, v3, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationRequest;

    .line 55
    .local v1, "r":Landroid/location/LocationRequest;
    new-instance v3, Lcom/android/location/provider/LocationRequestUnbundled;

    invoke-direct {v3, v1}, Lcom/android/location/provider/LocationRequestUnbundled;-><init>(Landroid/location/LocationRequest;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    .end local v1    # "r":Landroid/location/LocationRequest;
    :cond_0
    return-object v2
.end method

.method public getReportLocation()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/location/provider/ProviderRequestUnbundled;->mRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/location/provider/ProviderRequestUnbundled;->mRequest:Lcom/android/internal/location/ProviderRequest;

    invoke-virtual {v0}, Lcom/android/internal/location/ProviderRequest;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
