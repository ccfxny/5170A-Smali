.class public Lcom/mediatek/ims/ImsEventDispatcher;
.super Landroid/os/Handler;
.source "ImsEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/ImsEventDispatcher$VaEventDispatcher;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsEventDispatcher"


# instance fields
.field private mCallControlDispatcher:Lcom/mediatek/ims/internal/CallControlDispatcher;

.field private mContext:Landroid/content/Context;

.field private mDataDispatcher:Lcom/mediatek/ims/internal/DataDispatcher;

.field private mSimDispatcher:Lcom/mediatek/ims/internal/SimDispatcher;

.field private mSimservsDispatcher:Lcom/mediatek/ims/internal/ImsSimservsDispatcher;

.field private mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

.field private mTimerDispatcher:Lcom/mediatek/ims/internal/TimerDispatcher;

.field private mVaEventDispatcher:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/ims/ImsEventDispatcher$VaEventDispatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/ims/ImsAdapter$VaSocketIO;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "IO"    # Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mVaEventDispatcher:Ljava/util/ArrayList;

    .line 67
    iput-object p1, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .line 70
    invoke-direct {p0}, Lcom/mediatek/ims/ImsEventDispatcher;->createDispatcher()V

    .line 71
    return-void
.end method

.method private createDispatcher()V
    .locals 3

    .prologue
    .line 102
    new-instance v0, Lcom/mediatek/ims/internal/SimDispatcher;

    iget-object v1, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/internal/SimDispatcher;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ImsAdapter$VaSocketIO;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mSimDispatcher:Lcom/mediatek/ims/internal/SimDispatcher;

    .line 103
    iget-object v0, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mVaEventDispatcher:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mSimDispatcher:Lcom/mediatek/ims/internal/SimDispatcher;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v0, Lcom/mediatek/ims/internal/CallControlDispatcher;

    iget-object v1, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/internal/CallControlDispatcher;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ImsAdapter$VaSocketIO;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mCallControlDispatcher:Lcom/mediatek/ims/internal/CallControlDispatcher;

    .line 106
    iget-object v0, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mVaEventDispatcher:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mCallControlDispatcher:Lcom/mediatek/ims/internal/CallControlDispatcher;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcher;

    iget-object v1, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ImsAdapter$VaSocketIO;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mDataDispatcher:Lcom/mediatek/ims/internal/DataDispatcher;

    .line 109
    iget-object v0, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mVaEventDispatcher:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mDataDispatcher:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v0, Lcom/mediatek/ims/internal/TimerDispatcher;

    iget-object v1, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/internal/TimerDispatcher;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ImsAdapter$VaSocketIO;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mTimerDispatcher:Lcom/mediatek/ims/internal/TimerDispatcher;

    .line 112
    iget-object v0, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mVaEventDispatcher:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mTimerDispatcher:Lcom/mediatek/ims/internal/TimerDispatcher;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;

    iget-object v1, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ImsAdapter$VaSocketIO;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mSimservsDispatcher:Lcom/mediatek/ims/internal/ImsSimservsDispatcher;

    .line 115
    iget-object v0, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mVaEventDispatcher:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mSimservsDispatcher:Lcom/mediatek/ims/internal/ImsSimservsDispatcher;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method


# virtual methods
.method disableRequest()V
    .locals 3

    .prologue
    .line 86
    iget-object v2, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mVaEventDispatcher:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ImsEventDispatcher$VaEventDispatcher;

    .line 87
    .local v0, "dispatcher":Lcom/mediatek/ims/ImsEventDispatcher$VaEventDispatcher;
    invoke-interface {v0}, Lcom/mediatek/ims/ImsEventDispatcher$VaEventDispatcher;->disableRequest()V

    goto :goto_0

    .line 89
    .end local v0    # "dispatcher":Lcom/mediatek/ims/ImsEventDispatcher$VaEventDispatcher;
    :cond_0
    return-void
.end method

.method dispatchCallback(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    .line 126
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 156
    :goto_0
    return-void

    .line 131
    :sswitch_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mSimDispatcher:Lcom/mediatek/ims/internal/SimDispatcher;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/SimDispatcher;->vaEventCallback(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    goto :goto_0

    .line 134
    :sswitch_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mSimservsDispatcher:Lcom/mediatek/ims/internal/ImsSimservsDispatcher;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->vaEventCallback(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    goto :goto_0

    .line 138
    :sswitch_2
    iget-object v0, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mCallControlDispatcher:Lcom/mediatek/ims/internal/CallControlDispatcher;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/CallControlDispatcher;->vaEventCallback(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    goto :goto_0

    .line 146
    :sswitch_3
    iget-object v0, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mDataDispatcher:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->vaEventCallback(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    goto :goto_0

    .line 150
    :sswitch_4
    iget-object v0, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mTimerDispatcher:Lcom/mediatek/ims/internal/TimerDispatcher;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/TimerDispatcher;->vaEventCallback(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    goto :goto_0

    .line 153
    :sswitch_5
    invoke-static {}, Lcom/mediatek/ims/ImsAdapter;->getInstance()Lcom/mediatek/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsAdapter;->ImsServiceUp()V

    goto :goto_0

    .line 126
    :sswitch_data_0
    .sparse-switch
        0x187d0 -> :sswitch_1
        0x187d1 -> :sswitch_2
        0x187d4 -> :sswitch_0
        0x187d6 -> :sswitch_0
        0x187d8 -> :sswitch_0
        0x187da -> :sswitch_0
        0x187dc -> :sswitch_3
        0x187df -> :sswitch_3
        0x187e3 -> :sswitch_3
        0x187e7 -> :sswitch_3
        0x187ed -> :sswitch_3
        0x18830 -> :sswitch_4
        0x18832 -> :sswitch_4
        0x18894 -> :sswitch_5
    .end sparse-switch
.end method

.method enableRequest()V
    .locals 3

    .prologue
    .line 80
    iget-object v2, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mVaEventDispatcher:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ImsEventDispatcher$VaEventDispatcher;

    .line 81
    .local v0, "dispatcher":Lcom/mediatek/ims/ImsEventDispatcher$VaEventDispatcher;
    invoke-interface {v0}, Lcom/mediatek/ims/ImsEventDispatcher$VaEventDispatcher;->enableRequest()V

    goto :goto_0

    .line 83
    .end local v0    # "dispatcher":Lcom/mediatek/ims/ImsEventDispatcher$VaEventDispatcher;
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 120
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ImsEventDispatcher;->dispatchCallback(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 121
    return-void
.end method
