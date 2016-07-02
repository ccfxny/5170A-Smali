.class Lcom/mediatek/ims/internal/DataDispatcher$2;
.super Ljava/lang/Thread;
.source "DataDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/DataDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/internal/DataDispatcher;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/internal/DataDispatcher;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 252
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 253
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    new-instance v1, Lcom/mediatek/ims/internal/DataDispatcher$2$1;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/DataDispatcher$2$1;-><init>(Lcom/mediatek/ims/internal/DataDispatcher$2;)V

    # setter for: Lcom/mediatek/ims/internal/DataDispatcher;->mHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$102(Lcom/mediatek/ims/internal/DataDispatcher;Landroid/os/Handler;)Landroid/os/Handler;

    .line 451
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 452
    return-void
.end method
