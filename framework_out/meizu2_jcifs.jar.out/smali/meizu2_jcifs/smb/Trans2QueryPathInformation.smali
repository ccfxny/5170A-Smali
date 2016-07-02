.class Lmeizu2_jcifs/smb/Trans2QueryPathInformation;
.super Lmeizu2_jcifs/smb/SmbComTransaction;
.source "Trans2QueryPathInformation.java"


# instance fields
.field private informationLevel:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "informationLevel"    # I

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Lmeizu2_jcifs/smb/SmbComTransaction;-><init>()V

    .line 28
    iput-object p1, p0, Lmeizu2_jcifs/smb/Trans2QueryPathInformation;->path:Ljava/lang/String;

    .line 29
    iput p2, p0, Lmeizu2_jcifs/smb/Trans2QueryPathInformation;->informationLevel:I

    .line 30
    const/16 v0, 0x32

    iput-byte v0, p0, Lmeizu2_jcifs/smb/Trans2QueryPathInformation;->command:B

    .line 31
    const/4 v0, 0x5

    iput-byte v0, p0, Lmeizu2_jcifs/smb/Trans2QueryPathInformation;->subCommand:B

    .line 32
    iput v1, p0, Lmeizu2_jcifs/smb/Trans2QueryPathInformation;->totalDataCount:I

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lmeizu2_jcifs/smb/Trans2QueryPathInformation;->maxParameterCount:I

    .line 34
    const/16 v0, 0x28

    iput v0, p0, Lmeizu2_jcifs/smb/Trans2QueryPathInformation;->maxDataCount:I

    .line 35
    iput-byte v1, p0, Lmeizu2_jcifs/smb/Trans2QueryPathInformation;->maxSetupCount:B

    .line 36
    return-void
.end method


# virtual methods
.method readDataWireFormat([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "bufferIndex"    # I
    .param p3, "len"    # I

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method readParametersWireFormat([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "bufferIndex"    # I
    .param p3, "len"    # I

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method readSetupWireFormat([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "bufferIndex"    # I
    .param p3, "len"    # I

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 69
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trans2QueryPathInformation["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lmeizu2_jcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",informationLevel=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu2_jcifs/smb/Trans2QueryPathInformation;->informationLevel:I

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lmeizu2_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",filename="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmeizu2_jcifs/smb/Trans2QueryPathInformation;->path:Ljava/lang/String;

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
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method writeParametersWireFormat([BI)I
    .locals 5
    .param p1, "dst"    # [B
    .param p2, "dstIndex"    # I

    .prologue
    const/4 v4, 0x0

    .line 44
    move v1, p2

    .line 46
    .local v1, "start":I
    iget v2, p0, Lmeizu2_jcifs/smb/Trans2QueryPathInformation;->informationLevel:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, p2}, Lmeizu2_jcifs/smb/Trans2QueryPathInformation;->writeInt2(J[BI)V

    .line 47
    add-int/lit8 p2, p2, 0x2

    .line 48
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "dstIndex":I
    .local v0, "dstIndex":I
    aput-byte v4, p1, p2

    .line 49
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "dstIndex":I
    .restart local p2    # "dstIndex":I
    aput-byte v4, p1, v0

    .line 50
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "dstIndex":I
    .restart local v0    # "dstIndex":I
    aput-byte v4, p1, p2

    .line 51
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "dstIndex":I
    .restart local p2    # "dstIndex":I
    aput-byte v4, p1, v0

    .line 52
    iget-object v2, p0, Lmeizu2_jcifs/smb/Trans2QueryPathInformation;->path:Ljava/lang/String;

    invoke-virtual {p0, v2, p1, p2}, Lmeizu2_jcifs/smb/Trans2QueryPathInformation;->writeString(Ljava/lang/String;[BI)I

    move-result v2

    add-int/2addr p2, v2

    .line 54
    sub-int v2, p2, v1

    return v2
.end method

.method writeSetupWireFormat([BI)I
    .locals 2
    .param p1, "dst"    # [B
    .param p2, "dstIndex"    # I

    .prologue
    .line 39
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "dstIndex":I
    .local v0, "dstIndex":I
    iget-byte v1, p0, Lmeizu2_jcifs/smb/Trans2QueryPathInformation;->subCommand:B

    aput-byte v1, p1, p2

    .line 40
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "dstIndex":I
    .restart local p2    # "dstIndex":I
    const/4 v1, 0x0

    aput-byte v1, p1, v0

    .line 41
    const/4 v1, 0x2

    return v1
.end method
