.class public Landroid/os/freeze/FlymeFreezeListener;
.super Landroid/os/freeze/IFlymeFreezeListener$Stub;
.source "FlymeFreezeListener.java"


# static fields
.field private static final TYPE_SET_FREEZE:I = 0x1

.field private static final TYPE_SET_UNFREEZE:I = 0x2


# instance fields
.field private mFreezeList:Landroid/os/freeze/FlymeFreezeList;

.field private final mListenerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/os/freeze/FlymeFreezeList;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "freezeList"    # Landroid/os/freeze/FlymeFreezeList;

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/freeze/IFlymeFreezeListener$Stub;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/freeze/FlymeFreezeListener;->mFreezeList:Landroid/os/freeze/FlymeFreezeList;

    .line 22
    iput-object p2, p0, Landroid/os/freeze/FlymeFreezeListener;->mFreezeList:Landroid/os/freeze/FlymeFreezeList;

    .line 24
    if-nez p1, :cond_0

    .line 25
    new-instance v0, Landroid/os/freeze/FlymeFreezeListener$1;

    invoke-direct {v0, p0}, Landroid/os/freeze/FlymeFreezeListener$1;-><init>(Landroid/os/freeze/FlymeFreezeListener;)V

    iput-object v0, p0, Landroid/os/freeze/FlymeFreezeListener;->mListenerHandler:Landroid/os/Handler;

    .line 39
    :goto_0
    return-void

    .line 32
    :cond_0
    new-instance v0, Landroid/os/freeze/FlymeFreezeListener$2;

    invoke-direct {v0, p0, p1}, Landroid/os/freeze/FlymeFreezeListener$2;-><init>(Landroid/os/freeze/FlymeFreezeListener;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/os/freeze/FlymeFreezeListener;->mListenerHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 59
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 69
    :goto_0
    return-void

    .line 61
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 62
    .local v0, "freezeUid":I
    invoke-direct {p0, v0}, Landroid/os/freeze/FlymeFreezeListener;->setFreeze(I)V

    goto :goto_0

    .line 65
    .end local v0    # "freezeUid":I
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 66
    .local v1, "unFreezeUid":I
    invoke-direct {p0, v1}, Landroid/os/freeze/FlymeFreezeListener;->setUnfreeze(I)V

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$000(Landroid/os/freeze/FlymeFreezeListener;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/freeze/FlymeFreezeListener;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/os/freeze/FlymeFreezeListener;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private setFreeze(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 73
    iget-object v0, p0, Landroid/os/freeze/FlymeFreezeListener;->mFreezeList:Landroid/os/freeze/FlymeFreezeList;

    invoke-virtual {v0, p1}, Landroid/os/freeze/FlymeFreezeList;->addUid(I)V

    .line 74
    return-void
.end method

.method private setUnfreeze(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 77
    iget-object v0, p0, Landroid/os/freeze/FlymeFreezeListener;->mFreezeList:Landroid/os/freeze/FlymeFreezeList;

    invoke-virtual {v0, p1}, Landroid/os/freeze/FlymeFreezeList;->remove(I)V

    .line 78
    return-void
.end method


# virtual methods
.method public onFreezeSet(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 43
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 44
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 45
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 46
    iget-object v1, p0, Landroid/os/freeze/FlymeFreezeListener;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 47
    return-void
.end method

.method public onUnfreezeSet(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 51
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 52
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 53
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 54
    iget-object v1, p0, Landroid/os/freeze/FlymeFreezeListener;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 55
    return-void
.end method
