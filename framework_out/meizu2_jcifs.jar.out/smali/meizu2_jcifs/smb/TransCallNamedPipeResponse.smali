.class Lmeizu2_jcifs/smb/TransCallNamedPipeResponse;
.super Lmeizu2_jcifs/smb/SmbComTransactionResponse;
.source "TransCallNamedPipeResponse.java"


# instance fields
.field private pipe:Lmeizu2_jcifs/smb/SmbNamedPipe;


# direct methods
.method constructor <init>(Lmeizu2_jcifs/smb/SmbNamedPipe;)V
    .locals 0
    .param p1, "pipe"    # Lmeizu2_jcifs/smb/SmbNamedPipe;

    .prologue
    .line 25
    invoke-direct {p0}, Lmeizu2_jcifs/smb/SmbComTransactionResponse;-><init>()V

    .line 26
    iput-object p1, p0, Lmeizu2_jcifs/smb/TransCallNamedPipeResponse;->pipe:Lmeizu2_jcifs/smb/SmbNamedPipe;

    .line 27
    return-void
.end method


# virtual methods
.method readDataWireFormat([BII)I
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "bufferIndex"    # I
    .param p3, "len"    # I

    .prologue
    .line 45
    iget-object v1, p0, Lmeizu2_jcifs/smb/TransCallNamedPipeResponse;->pipe:Lmeizu2_jcifs/smb/SmbNamedPipe;

    iget-object v1, v1, Lmeizu2_jcifs/smb/SmbNamedPipe;->pipeIn:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lmeizu2_jcifs/smb/TransCallNamedPipeResponse;->pipe:Lmeizu2_jcifs/smb/SmbNamedPipe;

    iget-object v0, v1, Lmeizu2_jcifs/smb/SmbNamedPipe;->pipeIn:Ljava/io/InputStream;

    check-cast v0, Lmeizu2_jcifs/smb/TransactNamedPipeInputStream;

    .line 47
    .local v0, "in":Lmeizu2_jcifs/smb/TransactNamedPipeInputStream;
    iget-object v2, v0, Lmeizu2_jcifs/smb/TransactNamedPipeInputStream;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 48
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Lmeizu2_jcifs/smb/TransactNamedPipeInputStream;->receive([BII)I

    .line 49
    iget-object v1, v0, Lmeizu2_jcifs/smb/TransactNamedPipeInputStream;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 50
    monitor-exit v2

    .line 52
    .end local v0    # "in":Lmeizu2_jcifs/smb/TransactNamedPipeInputStream;
    :cond_0
    return p3

    .line 50
    .restart local v0    # "in":Lmeizu2_jcifs/smb/TransactNamedPipeInputStream;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method readParametersWireFormat([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "bufferIndex"    # I
    .param p3, "len"    # I

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method readSetupWireFormat([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "bufferIndex"    # I
    .param p3, "len"    # I

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 55
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransCallNamedPipeResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lmeizu2_jcifs/smb/SmbComTransactionResponse;->toString()Ljava/lang/String;

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

.method writeDataWireFormat([BI)I
    .locals 1
    .param p1, "dst"    # [B
    .param p2, "dstIndex"    # I

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method writeParametersWireFormat([BI)I
    .locals 1
    .param p1, "dst"    # [B
    .param p2, "dstIndex"    # I

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method writeSetupWireFormat([BI)I
    .locals 1
    .param p1, "dst"    # [B
    .param p2, "dstIndex"    # I

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method
