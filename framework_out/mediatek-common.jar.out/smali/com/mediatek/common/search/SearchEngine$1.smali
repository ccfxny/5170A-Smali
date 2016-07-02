.class final Lcom/mediatek/common/search/SearchEngine$1;
.super Ljava/lang/Object;
.source "SearchEngine.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/search/SearchEngine;
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
        "Lcom/mediatek/common/search/SearchEngine;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/common/search/SearchEngine;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 226
    new-instance v0, Lcom/mediatek/common/search/SearchEngine;

    invoke-direct {v0, p1}, Lcom/mediatek/common/search/SearchEngine;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Lcom/mediatek/common/search/SearchEngine$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/common/search/SearchEngine;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/common/search/SearchEngine;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 230
    new-array v0, p1, [Lcom/mediatek/common/search/SearchEngine;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Lcom/mediatek/common/search/SearchEngine$1;->newArray(I)[Lcom/mediatek/common/search/SearchEngine;

    move-result-object v0

    return-object v0
.end method
