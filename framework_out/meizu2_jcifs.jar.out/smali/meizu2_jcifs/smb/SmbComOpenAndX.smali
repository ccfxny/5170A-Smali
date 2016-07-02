.class Lmeizu2_jcifs/smb/SmbComOpenAndX;
.super Lmeizu2_jcifs/smb/AndXServerMessageBlock;
.source "SmbComOpenAndX.java"


# static fields
.field private static final BATCH_LIMIT:I

.field private static final DO_NOT_CACHE:I = 0x1000

.field private static final FLAGS_REQUEST_BATCH_OPLOCK:I = 0x4

.field private static final FLAGS_REQUEST_OPLOCK:I = 0x2

.field private static final FLAGS_RETURN_ADDITIONAL_INFO:I = 0x1

.field private static final OPEN_FN_CREATE:I = 0x10

.field private static final OPEN_FN_FAIL_IF_EXISTS:I = 0x0

.field private static final OPEN_FN_OPEN:I = 0x1

.field private static final OPEN_FN_TRUNC:I = 0x2

.field private static final SHARING_COMPATIBILITY:I = 0x0

.field private static final SHARING_DENY_NONE:I = 0x40

.field private static final SHARING_DENY_READ_EXECUTE:I = 0x30

.field private static final SHARING_DENY_READ_WRITE_EXECUTE:I = 0x10

.field private static final SHARING_DENY_WRITE:I = 0x20

.field private static final WRITE_THROUGH:I = 0x4000


# instance fields
.field allocationSize:I

.field creationTime:I

.field desiredAccess:I

.field fileAttributes:I

.field flags:I

.field openFunction:I

.field searchAttributes:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-string v0, "meizu2_jcifs.smb.client.OpenAndX.ReadAndX"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmeizu2_jcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmeizu2_jcifs/smb/SmbComOpenAndX;->BATCH_LIMIT:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;IILmeizu2_jcifs/smb/ServerMessageBlock;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "access"    # I
    .param p3, "flags"    # I
    .param p4, "andx"    # Lmeizu2_jcifs/smb/ServerMessageBlock;

    .prologue
    const/4 v3, 0x2

    const/16 v2, 0x10

    .line 60
    invoke-direct {p0, p4}, Lmeizu2_jcifs/smb/AndXServerMessageBlock;-><init>(Lmeizu2_jcifs/smb/ServerMessageBlock;)V

    .line 61
    iput-object p1, p0, Lmeizu2_jcifs/smb/SmbComOpenAndX;->path:Ljava/lang/String;

    .line 62
    const/16 v0, 0x2d

    iput-byte v0, p0, Lmeizu2_jcifs/smb/SmbComOpenAndX;->command:B

    .line 64
    and-int/lit8 v0, p2, 0x3

    iput v0, p0, Lmeizu2_jcifs/smb/SmbComOpenAndX;->desiredAccess:I

    .line 65
    iget v0, p0, Lmeizu2_jcifs/smb/SmbComOpenAndX;->desiredAccess:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 66
    iput v3, p0, Lmeizu2_jcifs/smb/SmbComOpenAndX;->desiredAccess:I

    .line 68
    :cond_0
    iget v0, p0, Lmeizu2_jcifs/smb/SmbComOpenAndX;->desiredAccess:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lmeizu2_jcifs/smb/SmbComOpenAndX;->desiredAccess:I

    .line 69
    iget v0, p0, Lmeizu2_jcifs/smb/SmbComOpenAndX;->desiredAccess:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lmeizu2_jcifs/smb/SmbComOpenAndX;->desiredAccess:I

    .line 72
    const/16 v0, 0x16

    iput v0, p0, Lmeizu2_jcifs/smb/SmbComOpenAndX;->searchAttributes:I

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lmeizu2_jcifs/smb/SmbComOpenAndX;->fileAttributes:I

    .line 78
    and-int/lit8 v0, p3, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_2

    .line 80
    and-int/lit8 v0, p3, 0x10

    if-ne v0, v2, :cond_1

    .line 82
    const/16 v0, 0x12

    iput v0, p0, Lmeizu2_jcifs/smb/SmbComOpenAndX;->openFunction:I

    .line 100
    :goto_0
    return-void

    .line 84
    :cond_1
    iput v3, p0, Lmeizu2_jcifs/smb/SmbComOpenAndX;->openFunction:I

    goto :goto_0

    .line 88
    :cond_2
    and-int/lit8 v0, p3, 0x10

    if-ne v0, v2, :cond_4

    .line 90
    and-int/lit8 v0, p3, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    .line 92
    iput v2, p0, Lmeizu2_jcifs/smb/SmbComOpenAndX;->openFunction:I

    goto :goto_0

    .line 94
    :cond_3
    const/16 v0, 0x11

    iput v0, p0, Lmeizu2_jcifs/smb/SmbComOpenAndX;->openFunction:I

    goto :goto_0

    .line 97
    :cond_4
    const/4 v0, 0x1

    iput v0, p0, Lmeizu2_jcifs/smb/SmbComOpenAndX;->openFunction:I

    goto :goto_0
.end method


# virtual methods
.method getBatchLimit(B)I
    .locals 1
    .param p1, "command"    # B

    .prologue
    .line 103
    const/16 v0, 0x2e

    if-ne p1, v0, :cond_0

    sget v0, Lmeizu2_jcifs/smb/SmbComOpenAndX;->BATCH_LIMIT:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method readBytesWireFormat([BI)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "bufferIndex"    # I

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method readParameterWordsWireFormat([BI)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "bufferIndex"    # I

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x4

    .line 146
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComOpenAndX["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lmeizu2_jcifs/smb/AndXServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu2_jcifs/smb/SmbComOpenAndX;->flags:I

    invoke-static {v2, v6}, Lmeizu2_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",desiredAccess=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu2_jcifs/smb/SmbComOpenAndX;->desiredAccess:I

    invoke-static {v2, v3}, Lmeizu2_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",searchAttributes=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu2_jcifs/smb/SmbComOpenAndX;->searchAttributes:I

    invoke-static {v2, v3}, Lmeizu2_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fileAttributes=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu2_jcifs/smb/SmbComOpenAndX;->fileAttributes:I

    invoke-static {v2, v3}, Lmeizu2_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",creationTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget v3, p0, Lmeizu2_jcifs/smb/SmbComOpenAndX;->creationTime:I

    int-to-long v4, v3

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",openFunction=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu2_jcifs/smb/SmbComOpenAndX;->openFunction:I

    invoke-static {v2, v6}, Lmeizu2_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",allocationSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu2_jcifs/smb/SmbComOpenAndX;->allocationSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fileName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmeizu2_jcifs/smb/SmbComOpenAndX;->path:Ljava/lang/String;

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
    .locals 3
    .param p1, "dst"    # [B
    .param p2, "dstIndex"    # I

    .prologue
    .line 130
    move v1, p2

    .line 132
    .local v1, "start":I
    iget-boolean v2, p0, Lmeizu2_jcifs/smb/SmbComOpenAndX;->useUnicode:Z

    if-eqz v2, :cond_0

    .line 133
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "dstIndex":I
    .local v0, "dstIndex":I
    const/4 v2, 0x0

    aput-byte v2, p1, p2

    move p2, v0

    .line 135
    .end local v0    # "dstIndex":I
    .restart local p2    # "dstIndex":I
    :cond_0
    iget-object v2, p0, Lmeizu2_jcifs/smb/SmbComOpenAndX;->path:Ljava/lang/String;

    invoke-virtual {p0, v2, p1, p2}, Lmeizu2_jcifs/smb/SmbComOpenAndX;->writeString(Ljava/lang/String;[BI)I

    move-result v2

    add-int/2addr p2, v2

    .line 137
    sub-int v2, p2, v1

    return v2
.end method

.method writeParameterWordsWireFormat([BI)I
    .locals 7
    .param p1, "dst"    # [B
    .param p2, "dstIndex"    # I

    .prologue
    const/4 v6, 0x0

    .line 106
    move v2, p2

    .line 108
    .local v2, "start":I
    iget v3, p0, Lmeizu2_jcifs/smb/SmbComOpenAndX;->flags:I

    int-to-long v4, v3

    invoke-static {v4, v5, p1, p2}, Lmeizu2_jcifs/smb/SmbComOpenAndX;->writeInt2(J[BI)V

    .line 109
    add-int/lit8 p2, p2, 0x2

    .line 110
    iget v3, p0, Lmeizu2_jcifs/smb/SmbComOpenAndX;->desiredAccess:I

    int-to-long v4, v3

    invoke-static {v4, v5, p1, p2}, Lmeizu2_jcifs/smb/SmbComOpenAndX;->writeInt2(J[BI)V

    .line 111
    add-int/lit8 p2, p2, 0x2

    .line 112
    iget v3, p0, Lmeizu2_jcifs/smb/SmbComOpenAndX;->searchAttributes:I

    int-to-long v4, v3

    invoke-static {v4, v5, p1, p2}, Lmeizu2_jcifs/smb/SmbComOpenAndX;->writeInt2(J[BI)V

    .line 113
    add-int/lit8 p2, p2, 0x2

    .line 114
    iget v3, p0, Lmeizu2_jcifs/smb/SmbComOpenAndX;->fileAttributes:I

    int-to-long v4, v3

    invoke-static {v4, v5, p1, p2}, Lmeizu2_jcifs/smb/SmbComOpenAndX;->writeInt2(J[BI)V

    .line 115
    add-int/lit8 p2, p2, 0x2

    .line 116
    iput v6, p0, Lmeizu2_jcifs/smb/SmbComOpenAndX;->creationTime:I

    .line 117
    iget v3, p0, Lmeizu2_jcifs/smb/SmbComOpenAndX;->creationTime:I

    int-to-long v4, v3

    invoke-static {v4, v5, p1, p2}, Lmeizu2_jcifs/smb/SmbComOpenAndX;->writeInt4(J[BI)V

    .line 118
    add-int/lit8 p2, p2, 0x4

    .line 119
    iget v3, p0, Lmeizu2_jcifs/smb/SmbComOpenAndX;->openFunction:I

    int-to-long v4, v3

    invoke-static {v4, v5, p1, p2}, Lmeizu2_jcifs/smb/SmbComOpenAndX;->writeInt2(J[BI)V

    .line 120
    add-int/lit8 p2, p2, 0x2

    .line 121
    iget v3, p0, Lmeizu2_jcifs/smb/SmbComOpenAndX;->allocationSize:I

    int-to-long v4, v3

    invoke-static {v4, v5, p1, p2}, Lmeizu2_jcifs/smb/SmbComOpenAndX;->writeInt4(J[BI)V

    .line 122
    add-int/lit8 p2, p2, 0x4

    .line 123
    const/4 v1, 0x0

    .local v1, "i":I
    move v0, p2

    .end local p2    # "dstIndex":I
    .local v0, "dstIndex":I
    :goto_0
    const/16 v3, 0x8

    if-ge v1, v3, :cond_0

    .line 124
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "dstIndex":I
    .restart local p2    # "dstIndex":I
    aput-byte v6, p1, v0

    .line 123
    add-int/lit8 v1, v1, 0x1

    move v0, p2

    .end local p2    # "dstIndex":I
    .restart local v0    # "dstIndex":I
    goto :goto_0

    .line 127
    :cond_0
    sub-int v3, v0, v2

    return v3
.end method
