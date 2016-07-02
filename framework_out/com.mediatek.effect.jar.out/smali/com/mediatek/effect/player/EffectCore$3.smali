.class Lcom/mediatek/effect/player/EffectCore$3;
.super Ljava/lang/Object;
.source "EffectCore.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/effect/player/EffectCore;->graphRun()Landroid/graphics/SurfaceTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/effect/player/EffectCore;


# direct methods
.method constructor <init>(Lcom/mediatek/effect/player/EffectCore;)V
    .locals 0

    .prologue
    .line 975
    iput-object p1, p0, Lcom/mediatek/effect/player/EffectCore$3;->this$0:Lcom/mediatek/effect/player/EffectCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 977
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectCore$3;->this$0:Lcom/mediatek/effect/player/EffectCore;

    # getter for: Lcom/mediatek/effect/player/EffectCore;->mSourceFilter:Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;
    invoke-static {v0}, Lcom/mediatek/effect/player/EffectCore;->access$300(Lcom/mediatek/effect/player/EffectCore;)Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectCore$3;->this$0:Lcom/mediatek/effect/player/EffectCore;

    # getter for: Lcom/mediatek/effect/player/EffectCore;->mSourceFilter:Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;
    invoke-static {v0}, Lcom/mediatek/effect/player/EffectCore;->access$300(Lcom/mediatek/effect/player/EffectCore;)Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->setNewFrameAvailable(Z)V

    .line 980
    :cond_0
    return-void
.end method
