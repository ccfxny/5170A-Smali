.class Lmeizu2_jcifs/smb/SmbComLogoffAndX;
.super Lmeizu2_jcifs/smb/AndXServerMessageBlock;
.source "SmbComLogoffAndX.java"


# direct methods
.method constructor <init>(Lmeizu2_jcifs/smb/ServerMessageBlock;)V
    .locals 1
    .param p1, "andx"    # Lmeizu2_jcifs/smb/ServerMessageBlock;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lmeizu2_jcifs/smb/AndXServerMessageBlock;-><init>(Lmeizu2_jcifs/smb/ServerMessageBlock;)V

    .line 25
    const/16 v0, 0x74

    iput-byte v0, p0, Lmeizu2_jcifs/smb/SmbComLogoffAndX;->command:B

    .line 26
    return-void
.end method


# virtual methods
.method readBytesWireFormat([BI)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "bufferIndex"    # I

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method readParameterWordsWireFormat([BI)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "bufferIndex"    # I

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComLogoffAndX["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lmeizu2_jcifs/smb/AndXServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

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

.method writeBytesWireFormat([BI)I
    .locals 1
    .param p1, "dst"    # [B
    .param p2, "dstIndex"    # I

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method writeParameterWordsWireFormat([BI)I
    .locals 1
    .param p1, "dst"    # [B
    .param p2, "dstIndex"    # I

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method
