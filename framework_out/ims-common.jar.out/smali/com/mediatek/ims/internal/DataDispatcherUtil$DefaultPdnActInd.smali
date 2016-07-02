.class public Lcom/mediatek/ims/internal/DataDispatcherUtil$DefaultPdnActInd;
.super Ljava/lang/Object;
.source "DataDispatcherUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/DataDispatcherUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultPdnActInd"
.end annotation


# instance fields
.field public emergency_ind:I

.field public pad:[B

.field public pad2:[B

.field public pcscf_discovery:I

.field public qosStatus:Lcom/mediatek/internal/telephony/QosStatus;

.field public signalingFlag:I

.field final synthetic this$0:Lcom/mediatek/ims/internal/DataDispatcherUtil;

.field public transactionId:I


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/internal/DataDispatcherUtil;)V
    .locals 1

    .prologue
    .line 699
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcherUtil$DefaultPdnActInd;->this$0:Lcom/mediatek/ims/internal/DataDispatcherUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 708
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcherUtil$DefaultPdnActInd;->pad:[B

    .line 713
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcherUtil$DefaultPdnActInd;->pad2:[B

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[transactionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/DataDispatcherUtil$DefaultPdnActInd;->transactionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Qos"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcherUtil$DefaultPdnActInd;->qosStatus:Lcom/mediatek/internal/telephony/QosStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emergency_ind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/DataDispatcherUtil$DefaultPdnActInd;->emergency_ind:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pcscf_discorvery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/DataDispatcherUtil$DefaultPdnActInd;->pcscf_discovery:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signalingFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/DataDispatcherUtil$DefaultPdnActInd;->signalingFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
