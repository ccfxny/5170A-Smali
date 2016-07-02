.class Lmeizu2_jcifs/smb/TransWaitNamedPipe;
.super Lmeizu2_jcifs/smb/SmbComTransaction;
.source "TransWaitNamedPipe.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "pipeName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Lmeizu2_jcifs/smb/SmbComTransaction;-><init>()V

    .line 24
    iput-object p1, p0, Lmeizu2_jcifs/smb/TransWaitNamedPipe;->name:Ljava/lang/String;

    .line 25
    const/16 v0, 0x25

    iput-byte v0, p0, Lmeizu2_jcifs/smb/TransWaitNamedPipe;->command:B

    .line 26
    const/16 v0, 0x53

    iput-byte v0, p0, Lmeizu2_jcifs/smb/TransWaitNamedPipe;->subCommand:B

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lmeizu2_jcifs/smb/TransWaitNamedPipe;->timeout:I

    .line 28
    iput v1, p0, Lmeizu2_jcifs/smb/TransWaitNamedPipe;->maxParameterCount:I

    .line 29
    iput v1, p0, Lmeizu2_jcifs/smb/TransWaitNamedPipe;->maxDataCount:I

    .line 30
    iput-byte v1, p0, Lmeizu2_jcifs/smb/TransWaitNamedPipe;->maxSetupCount:B

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lmeizu2_jcifs/smb/TransWaitNamedPipe;->setupCount:I

    .line 32
    return-void
.end method


# virtual methods
.method readDataWireFormat([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "bufferIndex"    # I
    .param p3, "len"    # I

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method readParametersWireFormat([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "bufferIndex"    # I
    .param p3, "len"    # I

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method readSetupWireFormat([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "bufferIndex"    # I
    .param p3, "len"    # I

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 57
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransWaitNamedPipe["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lmeizu2_jcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pipeName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmeizu2_jcifs/smb/TransWaitNamedPipe;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method writeDataWireFormat([BI)I
    .locals 1
    .param p1, "dst"    # [B
    .param p2, "dstIndex"    # I

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method writeParametersWireFormat([BI)I
    .locals 1
    .param p1, "dst"    # [B
    .param p2, "dstIndex"    # I

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method writeSetupWireFormat([BI)I
    .locals 3
    .param p1, "dst"    # [B
    .param p2, "dstIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 35
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "dstIndex":I
    .local v0, "dstIndex":I
    iget-byte v1, p0, Lmeizu2_jcifs/smb/TransWaitNamedPipe;->subCommand:B

    aput-byte v1, p1, p2

    .line 36
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "dstIndex":I
    .restart local p2    # "dstIndex":I
    aput-byte v2, p1, v0

    .line 37
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "dstIndex":I
    .restart local v0    # "dstIndex":I
    aput-byte v2, p1, p2

    .line 38
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "dstIndex":I
    .restart local p2    # "dstIndex":I
    aput-byte v2, p1, v0

    .line 39
    const/4 v1, 0x4

    return v1
.end method
