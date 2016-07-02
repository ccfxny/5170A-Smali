.class public final Lmeizu2_jcifs/smb/NtlmChallenge;
.super Ljava/lang/Object;
.source "NtlmChallenge.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public challenge:[B

.field public dc:Lmeizu2_jcifs/UniAddress;


# direct methods
.method constructor <init>([BLmeizu2_jcifs/UniAddress;)V
    .locals 0
    .param p1, "challenge"    # [B
    .param p2, "dc"    # Lmeizu2_jcifs/UniAddress;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lmeizu2_jcifs/smb/NtlmChallenge;->challenge:[B

    .line 32
    iput-object p2, p0, Lmeizu2_jcifs/smb/NtlmChallenge;->dc:Lmeizu2_jcifs/UniAddress;

    .line 33
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NtlmChallenge[challenge=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmeizu2_jcifs/smb/NtlmChallenge;->challenge:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lmeizu2_jcifs/smb/NtlmChallenge;->challenge:[B

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v1, v2, v3}, Lmeizu2_jcifs/util/Hexdump;->toHexString([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",dc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmeizu2_jcifs/smb/NtlmChallenge;->dc:Lmeizu2_jcifs/UniAddress;

    invoke-virtual {v1}, Lmeizu2_jcifs/UniAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
