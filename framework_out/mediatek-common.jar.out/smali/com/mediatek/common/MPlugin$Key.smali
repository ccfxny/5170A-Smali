.class Lcom/mediatek/common/MPlugin$Key;
.super Ljava/lang/Object;
.source "MPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/MPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Key"
.end annotation


# instance fields
.field private mLoader:Ljava/lang/ClassLoader;

.field private mSourcePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/mediatek/common/MPlugin$Key;->mSourcePath:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/mediatek/common/MPlugin$Key;->mLoader:Ljava/lang/ClassLoader;

    .line 70
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    if-ne p0, p1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v1

    .line 77
    :cond_1
    instance-of v3, p1, Lcom/mediatek/common/MPlugin$Key;

    if-nez v3, :cond_2

    move v1, v2

    .line 78
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 80
    check-cast v0, Lcom/mediatek/common/MPlugin$Key;

    .line 82
    .local v0, "key":Lcom/mediatek/common/MPlugin$Key;
    iget-object v3, p0, Lcom/mediatek/common/MPlugin$Key;->mLoader:Ljava/lang/ClassLoader;

    iget-object v4, v0, Lcom/mediatek/common/MPlugin$Key;->mLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    .line 83
    goto :goto_0

    .line 85
    :cond_3
    iget-object v3, p0, Lcom/mediatek/common/MPlugin$Key;->mSourcePath:Ljava/lang/String;

    iget-object v4, v0, Lcom/mediatek/common/MPlugin$Key;->mSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 86
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 93
    iget-object v1, p0, Lcom/mediatek/common/MPlugin$Key;->mSourcePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 94
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/mediatek/common/MPlugin$Key;->mLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 95
    return v0
.end method
