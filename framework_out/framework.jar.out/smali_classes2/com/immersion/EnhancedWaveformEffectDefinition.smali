.class public Lcom/immersion/EnhancedWaveformEffectDefinition;
.super Ljava/lang/Object;
.source "EnhancedWaveformEffectDefinition.java"


# instance fields
.field private actuatorIndex:I

.field private data:[B

.field private format:I

.field private magnitude:I

.field private sampleRate:I

.field private secureMode:I


# direct methods
.method public constructor <init>([BIIIII)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "sampleRate"    # I
    .param p3, "format"    # I
    .param p4, "magnitude"    # I
    .param p5, "actuatorIndex"    # I
    .param p6, "secureMode"    # I

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p0, p1}, Lcom/immersion/EnhancedWaveformEffectDefinition;->setData([B)V

    .line 80
    invoke-virtual {p0, p2}, Lcom/immersion/EnhancedWaveformEffectDefinition;->setSampleRate(I)V

    .line 81
    invoke-virtual {p0, p3}, Lcom/immersion/EnhancedWaveformEffectDefinition;->setFormat(I)V

    .line 82
    invoke-virtual {p0, p4}, Lcom/immersion/EnhancedWaveformEffectDefinition;->setMagnitude(I)V

    .line 83
    invoke-virtual {p0, p5}, Lcom/immersion/EnhancedWaveformEffectDefinition;->setActuatorIndex(I)V

    .line 84
    invoke-virtual {p0, p6}, Lcom/immersion/EnhancedWaveformEffectDefinition;->setSecureMode(I)V

    .line 85
    return-void
.end method


# virtual methods
.method public getActuatorIndex()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/immersion/EnhancedWaveformEffectDefinition;->actuatorIndex:I

    return v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/immersion/EnhancedWaveformEffectDefinition;->data:[B

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/immersion/EnhancedWaveformEffectDefinition;->data:[B

    array-length v0, v0

    return v0
.end method

.method public getFormat()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/immersion/EnhancedWaveformEffectDefinition;->format:I

    return v0
.end method

.method public getMagnitude()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/immersion/EnhancedWaveformEffectDefinition;->magnitude:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/immersion/EnhancedWaveformEffectDefinition;->sampleRate:I

    return v0
.end method

.method public getSecureMode()I
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lcom/immersion/EnhancedWaveformEffectDefinition;->secureMode:I

    return v0
.end method

.method public setActuatorIndex(I)V
    .locals 0
    .param p1, "actuatorIndex"    # I

    .prologue
    .line 242
    iput p1, p0, Lcom/immersion/EnhancedWaveformEffectDefinition;->actuatorIndex:I

    .line 243
    return-void
.end method

.method public setData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 109
    iput-object p1, p0, Lcom/immersion/EnhancedWaveformEffectDefinition;->data:[B

    .line 110
    return-void
.end method

.method public setFormat(I)V
    .locals 0
    .param p1, "format"    # I

    .prologue
    .line 180
    iput p1, p0, Lcom/immersion/EnhancedWaveformEffectDefinition;->format:I

    .line 181
    return-void
.end method

.method public setMagnitude(I)V
    .locals 0
    .param p1, "magnitude"    # I

    .prologue
    .line 210
    iput p1, p0, Lcom/immersion/EnhancedWaveformEffectDefinition;->magnitude:I

    .line 211
    return-void
.end method

.method public setSampleRate(I)V
    .locals 0
    .param p1, "sampleRate"    # I

    .prologue
    .line 158
    iput p1, p0, Lcom/immersion/EnhancedWaveformEffectDefinition;->sampleRate:I

    .line 159
    return-void
.end method

.method public setSecureMode(I)V
    .locals 0
    .param p1, "secureMode"    # I

    .prologue
    .line 267
    iput p1, p0, Lcom/immersion/EnhancedWaveformEffectDefinition;->secureMode:I

    .line 268
    return-void
.end method
