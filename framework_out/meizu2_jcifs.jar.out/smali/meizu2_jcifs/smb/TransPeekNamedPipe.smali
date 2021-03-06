.class Lmeizu2_jcifs/smb/TransPeekNamedPipe;
.super Lmeizu2_jcifs/smb/SmbComTransaction;
.source "TransPeekNamedPipe.java"


# instance fields
.field private fid:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pipeName"    # Ljava/lang/String;
    .param p2, "fid"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Lmeizu2_jcifs/smb/SmbComTransaction;-><init>()V

    .line 26
    iput-object p1, p0, Lmeizu2_jcifs/smb/TransPeekNamedPipe;->name:Ljava/lang/String;

    .line 27
    iput p2, p0, Lmeizu2_jcifs/smb/TransPeekNamedPipe;->fid:I

    .line 28
    const/16 v0, 0x25

    iput-byte v0, p0, Lmeizu2_jcifs/smb/TransPeekNamedPipe;->command:B

    .line 29
    const/16 v0, 0x23

    iput-byte v0, p0, Lmeizu2_jcifs/smb/TransPeekNamedPipe;->subCommand:B

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lmeizu2_jcifs/smb/TransPeekNamedPipe;->timeout:I

    .line 31
    const/4 v0, 0x6

    iput v0, p0, Lmeizu2_jcifs/smb/TransPeekNamedPipe;->maxParameterCount:I

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lmeizu2_jcifs/smb/TransPeekNamedPipe;->maxDataCount:I

    .line 33
    const/4 v0, 0x0

    iput-byte v0, p0, Lmeizu2_jcifs/smb/TransPeekNamedPipe;->maxSetupCount:B

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Lmeizu2_jcifs/smb/TransPeekNamedPipe;->setupCount:I

    .line 35
    return-void
.end method


# virtual methods
.method readDataWireFormat([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "bufferIndex"    # I
    .param p3, "len"    # I

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method readParametersWireFormat([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "bufferIndex"    # I
    .param p3, "len"    # I

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method readSetupWireFormat([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "bufferIndex"    # I
    .param p3, "len"    # I

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 60
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransPeekNamedPipe["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lmeizu2_jcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pipeName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmeizu2_jcifs/smb/TransPeekNamedPipe;->name:Ljava/lang/String;

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
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method writeParametersWireFormat([BI)I
    .locals 1
    .param p1, "dst"    # [B
    .param p2, "dstIndex"    # I

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method writeSetupWireFormat([BI)I
    .locals 4
    .param p1, "dst"    # [B
    .param p2, "dstIndex"    # I

    .prologue
    .line 38
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "dstIndex":I
    .local v0, "dstIndex":I
    iget-byte v1, p0, Lmeizu2_jcifs/smb/TransPeekNamedPipe;->subCommand:B

    aput-byte v1, p1, p2

    .line 39
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "dstIndex":I
    .restart local p2    # "dstIndex":I
    const/4 v1, 0x0

    aput-byte v1, p1, v0

    .line 41
    iget v1, p0, Lmeizu2_jcifs/smb/TransPeekNamedPipe;->fid:I

    int-to-long v2, v1

    invoke-static {v2, v3, p1, p2}, Lmeizu2_jcifs/smb/TransPeekNamedPipe;->writeInt2(J[BI)V

    .line 42
    const/4 v1, 0x4

    return v1
.end method
