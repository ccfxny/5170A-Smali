.class final Lcom/meizu/stats/UsageStatsProxy$Event$1;
.super Ljava/lang/Object;
.source "UsageStatsProxy.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/stats/UsageStatsProxy$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/meizu/stats/UsageStatsProxy$Event;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/meizu/stats/UsageStatsProxy$Event;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 514
    new-instance v0, Lcom/meizu/stats/UsageStatsProxy$Event;

    invoke-direct {v0, p1}, Lcom/meizu/stats/UsageStatsProxy$Event;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 510
    invoke-virtual {p0, p1}, Lcom/meizu/stats/UsageStatsProxy$Event$1;->createFromParcel(Landroid/os/Parcel;)Lcom/meizu/stats/UsageStatsProxy$Event;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/meizu/stats/UsageStatsProxy$Event;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 519
    new-array v0, p1, [Lcom/meizu/stats/UsageStatsProxy$Event;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 510
    invoke-virtual {p0, p1}, Lcom/meizu/stats/UsageStatsProxy$Event$1;->newArray(I)[Lcom/meizu/stats/UsageStatsProxy$Event;

    move-result-object v0

    return-object v0
.end method
