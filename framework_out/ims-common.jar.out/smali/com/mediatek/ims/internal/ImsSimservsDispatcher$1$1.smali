.class Lcom/mediatek/ims/internal/ImsSimservsDispatcher$1$1;
.super Landroid/os/Handler;
.source "ImsSimservsDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/internal/ImsSimservsDispatcher$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/ims/internal/ImsSimservsDispatcher$1;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/internal/ImsSimservsDispatcher$1;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher$1$1;->this$1:Lcom/mediatek/ims/internal/ImsSimservsDispatcher$1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 43
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    if-eqz v1, :cond_0

    .line 44
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .line 45
    .local v0, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsSimservsDispatcher receives request ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getDataLen()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->access$100(Ljava/lang/String;)V

    .line 47
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsSimservsDispatcher receives unhandled message ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->access$100(Ljava/lang/String;)V

    .line 56
    .end local v0    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    :cond_0
    :goto_0
    return-void

    .line 49
    .restart local v0    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher$1$1;->this$1:Lcom/mediatek/ims/internal/ImsSimservsDispatcher$1;

    iget-object v1, v1, Lcom/mediatek/ims/internal/ImsSimservsDispatcher$1;->this$0:Lcom/mediatek/ims/internal/ImsSimservsDispatcher;

    # invokes: Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->handleXuiUpdate(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    invoke-static {v1, v0}, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->access$200(Lcom/mediatek/ims/internal/ImsSimservsDispatcher;Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x187d0
        :pswitch_0
    .end packed-switch
.end method