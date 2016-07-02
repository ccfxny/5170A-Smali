.class Lmeizu/samba/client/SambaClientManager$ListenerTransport$2;
.super Landroid/os/Handler;
.source "SambaClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmeizu/samba/client/SambaClientManager$ListenerTransport;-><init>(Lmeizu/samba/client/SambaClientManager;Lmeizu/samba/client/SambaStatusListener;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmeizu/samba/client/SambaClientManager$ListenerTransport;

.field final synthetic val$this$0:Lmeizu/samba/client/SambaClientManager;


# direct methods
.method constructor <init>(Lmeizu/samba/client/SambaClientManager$ListenerTransport;Landroid/os/Looper;Lmeizu/samba/client/SambaClientManager;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 80
    iput-object p1, p0, Lmeizu/samba/client/SambaClientManager$ListenerTransport$2;->this$1:Lmeizu/samba/client/SambaClientManager$ListenerTransport;

    iput-object p3, p0, Lmeizu/samba/client/SambaClientManager$ListenerTransport$2;->val$this$0:Lmeizu/samba/client/SambaClientManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 83
    iget-object v0, p0, Lmeizu/samba/client/SambaClientManager$ListenerTransport$2;->this$1:Lmeizu/samba/client/SambaClientManager$ListenerTransport;

    # invokes: Lmeizu/samba/client/SambaClientManager$ListenerTransport;->_handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lmeizu/samba/client/SambaClientManager$ListenerTransport;->access$000(Lmeizu/samba/client/SambaClientManager$ListenerTransport;Landroid/os/Message;)V

    .line 84
    return-void
.end method
