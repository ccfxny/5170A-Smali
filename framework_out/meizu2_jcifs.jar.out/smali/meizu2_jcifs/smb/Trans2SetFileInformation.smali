.class Lmeizu2_jcifs/smb/Trans2SetFileInformation;
.super Lmeizu2_jcifs/smb/SmbComTransaction;
.source "Trans2SetFileInformation.java"


# static fields
.field static final SMB_FILE_BASIC_INFO:I = 0x101


# instance fields
.field private attributes:I

.field private createTime:J

.field private fid:I

.field private lastWriteTime:J


# direct methods
.method constructor <init>(IIJJ)V
    .locals 3
    .param p1, "fid"    # I
    .param p2, "attributes"    # I
    .param p3, "createTime"    # J
    .param p5, "lastWriteTime"    # J

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Lmeizu2_jcifs/smb/SmbComTransaction;-><init>()V

    .line 30
    iput p1, p0, Lmeizu2_jcifs/smb/Trans2SetFileInformation;->fid:I

    .line 31
    iput p2, p0, Lmeizu2_jcifs/smb/Trans2SetFileInformation;->attributes:I

    .line 32
    iput-wide p3, p0, Lmeizu2_jcifs/smb/Trans2SetFileInformation;->createTime:J

    .line 33
    iput-wide p5, p0, Lmeizu2_jcifs/smb/Trans2SetFileInformation;->lastWriteTime:J

    .line 34
    const/16 v0, 0x32

    iput-byte v0, p0, Lmeizu2_jcifs/smb/Trans2SetFileInformation;->command:B

    .line 35
    const/16 v0, 0x8

    iput-byte v0, p0, Lmeizu2_jcifs/smb/Trans2SetFileInformation;->subCommand:B

    .line 36
    const/4 v0, 0x6

    iput v0, p0, Lmeizu2_jcifs/smb/Trans2SetFileInformation;->maxParameterCount:I

    .line 37
    iput v1, p0, Lmeizu2_jcifs/smb/Trans2SetFileInformation;->maxDataCount:I

    .line 38
    iput-byte v1, p0, Lmeizu2_jcifs/smb/Trans2SetFileInformation;->maxSetupCount:B

    .line 39
    return-void
.end method


# virtual methods
.method readDataWireFormat([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "bufferIndex"    # I
    .param p3, "len"    # I

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method readParametersWireFormat([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "bufferIndex"    # I
    .param p3, "len"    # I

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method readSetupWireFormat([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "bufferIndex"    # I
    .param p3, "len"    # I

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trans2SetFileInformation["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lmeizu2_jcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu2_jcifs/smb/Trans2SetFileInformation;->fid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    .locals 6
    .param p1, "dst"    # [B
    .param p2, "dstIndex"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 59
    move v0, p2

    .line 61
    .local v0, "start":I
    iget-wide v2, p0, Lmeizu2_jcifs/smb/Trans2SetFileInformation;->createTime:J

    invoke-static {v2, v3, p1, p2}, Lmeizu2_jcifs/smb/Trans2SetFileInformation;->writeTime(J[BI)V

    add-int/lit8 p2, p2, 0x8

    .line 62
    invoke-static {v4, v5, p1, p2}, Lmeizu2_jcifs/smb/Trans2SetFileInformation;->writeInt8(J[BI)V

    add-int/lit8 p2, p2, 0x8

    .line 63
    iget-wide v2, p0, Lmeizu2_jcifs/smb/Trans2SetFileInformation;->lastWriteTime:J

    invoke-static {v2, v3, p1, p2}, Lmeizu2_jcifs/smb/Trans2SetFileInformation;->writeTime(J[BI)V

    add-int/lit8 p2, p2, 0x8

    .line 64
    invoke-static {v4, v5, p1, p2}, Lmeizu2_jcifs/smb/Trans2SetFileInformation;->writeInt8(J[BI)V

    add-int/lit8 p2, p2, 0x8

    .line 67
    iget v1, p0, Lmeizu2_jcifs/smb/Trans2SetFileInformation;->attributes:I

    or-int/lit16 v1, v1, 0x80

    int-to-long v2, v1

    invoke-static {v2, v3, p1, p2}, Lmeizu2_jcifs/smb/Trans2SetFileInformation;->writeInt2(J[BI)V

    add-int/lit8 p2, p2, 0x2

    .line 69
    invoke-static {v4, v5, p1, p2}, Lmeizu2_jcifs/smb/Trans2SetFileInformation;->writeInt8(J[BI)V

    add-int/lit8 p2, p2, 0x6

    .line 74
    sub-int v1, p2, v0

    return v1
.end method

.method writeParametersWireFormat([BI)I
    .locals 4
    .param p1, "dst"    # [B
    .param p2, "dstIndex"    # I

    .prologue
    .line 47
    move v0, p2

    .line 49
    .local v0, "start":I
    iget v1, p0, Lmeizu2_jcifs/smb/Trans2SetFileInformation;->fid:I

    int-to-long v2, v1

    invoke-static {v2, v3, p1, p2}, Lmeizu2_jcifs/smb/Trans2SetFileInformation;->writeInt2(J[BI)V

    .line 50
    add-int/lit8 p2, p2, 0x2

    .line 51
    const-wide/16 v2, 0x101

    invoke-static {v2, v3, p1, p2}, Lmeizu2_jcifs/smb/Trans2SetFileInformation;->writeInt2(J[BI)V

    .line 52
    add-int/lit8 p2, p2, 0x2

    .line 53
    const-wide/16 v2, 0x0

    invoke-static {v2, v3, p1, p2}, Lmeizu2_jcifs/smb/Trans2SetFileInformation;->writeInt2(J[BI)V

    .line 54
    add-int/lit8 p2, p2, 0x2

    .line 56
    sub-int v1, p2, v0

    return v1
.end method

.method writeSetupWireFormat([BI)I
    .locals 2
    .param p1, "dst"    # [B
    .param p2, "dstIndex"    # I

    .prologue
    .line 42
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "dstIndex":I
    .local v0, "dstIndex":I
    iget-byte v1, p0, Lmeizu2_jcifs/smb/Trans2SetFileInformation;->subCommand:B

    aput-byte v1, p1, p2

    .line 43
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "dstIndex":I
    .restart local p2    # "dstIndex":I
    const/4 v1, 0x0

    aput-byte v1, p1, v0

    .line 44
    const/4 v1, 0x2

    return v1
.end method
