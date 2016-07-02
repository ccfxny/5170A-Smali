.class public Landroid/os/freeze/FlymeFreezeList;
.super Ljava/lang/Object;
.source "FlymeFreezeList.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Landroid/os/freeze/FlymeFreezeListener;

.field private mUidSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/os/freeze/FlymeFreezeList;->mUidSet:Ljava/util/Set;

    .line 17
    iput-object p1, p0, Landroid/os/freeze/FlymeFreezeList;->mContext:Landroid/content/Context;

    .line 18
    new-instance v0, Landroid/os/freeze/FlymeFreezeListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/os/freeze/FlymeFreezeListener;-><init>(Landroid/os/Looper;Landroid/os/freeze/FlymeFreezeList;)V

    iput-object v0, p0, Landroid/os/freeze/FlymeFreezeList;->mListener:Landroid/os/freeze/FlymeFreezeListener;

    .line 19
    return-void
.end method


# virtual methods
.method public addUid(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 24
    iget-object v0, p0, Landroid/os/freeze/FlymeFreezeList;->mUidSet:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 25
    return-void
.end method

.method public freezeRegisterListener()V
    .locals 3

    .prologue
    .line 42
    iget-object v1, p0, Landroid/os/freeze/FlymeFreezeList;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 43
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v1, p0, Landroid/os/freeze/FlymeFreezeList;->mListener:Landroid/os/freeze/FlymeFreezeListener;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->freezeRegisterListener(Landroid/os/freeze/FlymeFreezeListener;)V

    .line 44
    return-void
.end method

.method public isFreeze(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 34
    iget-object v0, p0, Landroid/os/freeze/FlymeFreezeList;->mUidSet:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const/4 v0, 0x1

    .line 37
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 28
    iget-object v0, p0, Landroid/os/freeze/FlymeFreezeList;->mUidSet:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Landroid/os/freeze/FlymeFreezeList;->mUidSet:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 31
    :cond_0
    return-void
.end method
