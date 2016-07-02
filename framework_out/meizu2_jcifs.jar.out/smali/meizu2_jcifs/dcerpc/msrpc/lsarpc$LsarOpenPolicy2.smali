.class public Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;
.super Lmeizu2_jcifs/dcerpc/DcerpcMessage;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu2_jcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarOpenPolicy2"
.end annotation


# instance fields
.field public desired_access:I

.field public object_attributes:Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;

.field public policy_handle:Lmeizu2_jcifs/dcerpc/rpc$policy_handle;

.field public retval:I

.field public system_name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;ILmeizu2_jcifs/dcerpc/rpc$policy_handle;)V
    .locals 0
    .param p1, "system_name"    # Ljava/lang/String;
    .param p2, "object_attributes"    # Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;
    .param p3, "desired_access"    # I
    .param p4, "policy_handle"    # Lmeizu2_jcifs/dcerpc/rpc$policy_handle;

    .prologue
    .line 864
    invoke-direct {p0}, Lmeizu2_jcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 865
    iput-object p1, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->system_name:Ljava/lang/String;

    .line 866
    iput-object p2, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->object_attributes:Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;

    .line 867
    iput p3, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->desired_access:I

    .line 868
    iput-object p4, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->policy_handle:Lmeizu2_jcifs/dcerpc/rpc$policy_handle;

    .line 869
    return-void
.end method


# virtual methods
.method public decode_out(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 1
    .param p1, "_src"    # Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 881
    iget-object v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->policy_handle:Lmeizu2_jcifs/dcerpc/rpc$policy_handle;

    invoke-virtual {v0, p1}, Lmeizu2_jcifs/dcerpc/rpc$policy_handle;->decode(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 882
    invoke-virtual {p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->retval:I

    .line 883
    return-void
.end method

.method public encode_in(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 2
    .param p1, "_dst"    # Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 872
    iget-object v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->system_name:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 873
    iget-object v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->system_name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->system_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 877
    :cond_0
    iget-object v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->object_attributes:Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;

    invoke-virtual {v0, p1}, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->encode(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 878
    iget v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->desired_access:I

    invoke-virtual {p1, v0}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 879
    return-void
.end method

.method public getOpnum()I
    .locals 1

    .prologue
    .line 853
    const/16 v0, 0x2c

    return v0
.end method
