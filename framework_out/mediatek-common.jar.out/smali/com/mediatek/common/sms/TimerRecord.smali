.class public Lcom/mediatek/common/sms/TimerRecord;
.super Ljava/lang/Object;
.source "TimerRecord.java"


# instance fields
.field public address:Ljava/lang/String;

.field public msgCount:I

.field public refNumber:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "refNumber"    # I
    .param p3, "msgCount"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/mediatek/common/sms/TimerRecord;->address:Ljava/lang/String;

    .line 68
    iput p2, p0, Lcom/mediatek/common/sms/TimerRecord;->refNumber:I

    .line 69
    iput p3, p0, Lcom/mediatek/common/sms/TimerRecord;->msgCount:I

    .line 70
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 74
    if-nez p1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v1

    .line 78
    :cond_1
    instance-of v2, p1, Lcom/mediatek/common/sms/TimerRecord;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 79
    check-cast v0, Lcom/mediatek/common/sms/TimerRecord;

    .line 80
    .local v0, "t":Lcom/mediatek/common/sms/TimerRecord;
    iget-object v2, p0, Lcom/mediatek/common/sms/TimerRecord;->address:Ljava/lang/String;

    iget-object v3, v0, Lcom/mediatek/common/sms/TimerRecord;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/mediatek/common/sms/TimerRecord;->refNumber:I

    iget v3, v0, Lcom/mediatek/common/sms/TimerRecord;->refNumber:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 88
    iget v0, p0, Lcom/mediatek/common/sms/TimerRecord;->refNumber:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/mediatek/common/sms/TimerRecord;->address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 93
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "TimerRecord: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, "address = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-object v1, p0, Lcom/mediatek/common/sms/TimerRecord;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, ", refNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget v1, p0, Lcom/mediatek/common/sms/TimerRecord;->refNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, ", msgCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget v1, p0, Lcom/mediatek/common/sms/TimerRecord;->msgCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
