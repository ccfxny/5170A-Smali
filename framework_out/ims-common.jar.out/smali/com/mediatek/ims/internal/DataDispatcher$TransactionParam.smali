.class Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
.super Ljava/lang/Object;
.source "DataDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/DataDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransactionParam"
.end annotation


# instance fields
.field public cid:I

.field public ddcId:I

.field public isEmergency:Z

.field public phoneId:I

.field public requestId:I

.field final synthetic this$0:Lcom/mediatek/ims/internal/DataDispatcher;

.field public transactionId:I


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/internal/DataDispatcher;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1915
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1910
    iput v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->cid:I

    .line 1911
    iput v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->ddcId:I

    .line 1912
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->isEmergency:Z

    .line 1913
    iput v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->phoneId:I

    .line 1916
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/ims/internal/DataDispatcher;III)V
    .locals 2
    .param p2, "tid"    # I
    .param p3, "reqId"    # I
    .param p4, "phoneId"    # I

    .prologue
    const/4 v1, -0x1

    .line 1918
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1910
    iput v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->cid:I

    .line 1911
    iput v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->ddcId:I

    .line 1912
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->isEmergency:Z

    .line 1913
    iput v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->phoneId:I

    .line 1919
    iput p2, p0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->transactionId:I

    .line 1920
    iput p3, p0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->requestId:I

    .line 1921
    iput p4, p0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->phoneId:I

    .line 1922
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[transactionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->requestId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->cid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ddcid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->ddcId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->phoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
