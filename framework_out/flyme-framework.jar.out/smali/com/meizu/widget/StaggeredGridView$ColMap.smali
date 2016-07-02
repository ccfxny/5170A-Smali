.class Lcom/meizu/widget/StaggeredGridView$ColMap;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ColMap"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/meizu/widget/StaggeredGridView$ColMap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field tempMap:[I

.field private values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3470
    new-instance v0, Lcom/meizu/widget/StaggeredGridView$ColMap$1;

    invoke-direct {v0}, Lcom/meizu/widget/StaggeredGridView$ColMap$1;-><init>()V

    sput-object v0, Lcom/meizu/widget/StaggeredGridView$ColMap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 3454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3455
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/meizu/widget/StaggeredGridView$ColMap;->tempMap:[I

    .line 3456
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView$ColMap;->tempMap:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 3457
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/StaggeredGridView$ColMap;->values:Ljava/util/ArrayList;

    .line 3458
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView$ColMap;->tempMap:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 3459
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView$ColMap;->values:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView$ColMap;->tempMap:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3458
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3461
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/meizu/widget/StaggeredGridView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/meizu/widget/StaggeredGridView$1;

    .prologue
    .line 3446
    invoke-direct {p0, p1}, Lcom/meizu/widget/StaggeredGridView$ColMap;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3450
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3451
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView$ColMap;->values:Ljava/util/ArrayList;

    .line 3452
    return-void
.end method

.method static synthetic access$2400(Lcom/meizu/widget/StaggeredGridView$ColMap;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView$ColMap;

    .prologue
    .line 3446
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$ColMap;->values:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 3489
    const/4 v0, 0x0

    return v0
.end method

.method toIntArray(Ljava/util/ArrayList;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 3481
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 3482
    .local v1, "ret":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 3483
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 3482
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3484
    :cond_0
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 3465
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$ColMap;->values:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/meizu/widget/StaggeredGridView$ColMap;->toIntArray(Ljava/util/ArrayList;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/StaggeredGridView$ColMap;->tempMap:[I

    .line 3466
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$ColMap;->tempMap:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3467
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$ColMap;->tempMap:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3468
    return-void
.end method
