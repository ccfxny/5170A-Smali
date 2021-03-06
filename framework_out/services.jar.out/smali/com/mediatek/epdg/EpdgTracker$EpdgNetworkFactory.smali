.class Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;
.super Landroid/net/NetworkFactory;
.source "EpdgTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/epdg/EpdgTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgNetworkFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/epdg/EpdgTracker;


# direct methods
.method constructor <init>(Lcom/mediatek/epdg/EpdgTracker;Ljava/lang/String;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "looper"    # Landroid/os/Looper;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;->this$0:Lcom/mediatek/epdg/EpdgTracker;

    .line 107
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    invoke-direct {p0, p4, p3, p2, v0}, Landroid/net/NetworkFactory;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    .line 108
    return-void
.end method

.method private epdgContextForNetworkRequest(Landroid/net/NetworkRequest;)Lcom/mediatek/epdg/EpdgConnection;
    .locals 8
    .param p1, "nr"    # Landroid/net/NetworkRequest;

    .prologue
    .line 157
    iget-object v3, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 160
    .local v3, "nc":Landroid/net/NetworkCapabilities;
    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_1

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 162
    const/4 v0, 0x0

    .line 204
    :cond_0
    :goto_0
    return-object v0

    .line 167
    :cond_1
    const/4 v4, -0x1

    .line 168
    .local v4, "type":I
    const/4 v1, 0x0

    .line 170
    .local v1, "error":Z
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 171
    const/4 v4, 0x1

    .line 174
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 175
    const/4 v4, 0x0

    .line 178
    :cond_3
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 179
    const/4 v4, 0x0

    .line 182
    :cond_4
    const/16 v5, 0x9

    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 183
    const/4 v4, 0x0

    .line 186
    :cond_5
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 187
    const/4 v4, 0x1

    .line 190
    :cond_6
    const/4 v0, 0x0

    .line 192
    .local v0, "epdgConnection":Lcom/mediatek/epdg/EpdgConnection;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v5, 0x3

    if-ge v2, v5, :cond_7

    .line 193
    iget-object v5, p0, Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;->this$0:Lcom/mediatek/epdg/EpdgTracker;

    # getter for: Lcom/mediatek/epdg/EpdgTracker;->mEpdgConnections:[Lcom/mediatek/epdg/EpdgConnection;
    invoke-static {v5}, Lcom/mediatek/epdg/EpdgTracker;->access$000(Lcom/mediatek/epdg/EpdgTracker;)[Lcom/mediatek/epdg/EpdgConnection;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/mediatek/epdg/EpdgConnection;->getApnType()I

    move-result v5

    if-ne v5, v4, :cond_8

    .line 194
    const-string v5, "EpdgTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v5, p0, Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;->this$0:Lcom/mediatek/epdg/EpdgTracker;

    # getter for: Lcom/mediatek/epdg/EpdgTracker;->mEpdgConnections:[Lcom/mediatek/epdg/EpdgConnection;
    invoke-static {v5}, Lcom/mediatek/epdg/EpdgTracker;->access$000(Lcom/mediatek/epdg/EpdgTracker;)[Lcom/mediatek/epdg/EpdgConnection;

    move-result-object v5

    aget-object v0, v5, v2

    .line 200
    :cond_7
    if-nez v0, :cond_0

    .line 201
    const-string v5, "EpdgTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Request for unsupported EPDG type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 192
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public acceptRequest(Landroid/net/NetworkRequest;I)Z
    .locals 1
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    .prologue
    .line 111
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 112
    const-string v0, "Can\'t accept this request"

    invoke-virtual {p0, v0}, Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;->log(Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x0

    .line 115
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected needNetworkFor(Landroid/net/NetworkRequest;I)V
    .locals 3
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    .prologue
    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EPDG needs Network for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;->log(Ljava/lang/String;)V

    .line 131
    invoke-direct {p0, p1}, Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;->epdgContextForNetworkRequest(Landroid/net/NetworkRequest;)Lcom/mediatek/epdg/EpdgConnection;

    move-result-object v0

    .line 133
    .local v0, "epdgConnection":Lcom/mediatek/epdg/EpdgConnection;
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/mediatek/epdg/EpdgConnection;->incRefCount()V

    .line 136
    :cond_0
    return-void
.end method

.method protected releaseNetworkFor(Landroid/net/NetworkRequest;)V
    .locals 3
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .prologue
    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EPDG releasing Network for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;->log(Ljava/lang/String;)V

    .line 149
    invoke-direct {p0, p1}, Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;->epdgContextForNetworkRequest(Landroid/net/NetworkRequest;)Lcom/mediatek/epdg/EpdgConnection;

    move-result-object v0

    .line 151
    .local v0, "epdgConnection":Lcom/mediatek/epdg/EpdgConnection;
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Lcom/mediatek/epdg/EpdgConnection;->decRefCount()V

    .line 154
    :cond_0
    return-void
.end method
