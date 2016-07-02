.class Lcom/android/org/bouncycastle/asn1/ASN1Set$1;
.super Ljava/lang/Object;
.source "ASN1Set.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1SetParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/bouncycastle/asn1/ASN1Set;->parser()Lcom/android/org/bouncycastle/asn1/ASN1SetParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private index:I

.field private final max:I

.field final synthetic this$0:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field final synthetic val$outer:Lcom/android/org/bouncycastle/asn1/ASN1Set;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .locals 1

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->this$0:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->val$outer:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->this$0:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->max:I

    return-void
.end method


# virtual methods
.method public getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->val$outer:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public readObject()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->index:I

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->max:I

    if-ne v1, v2, :cond_1

    .line 234
    const/4 v0, 0x0

    .line 247
    :cond_0
    :goto_0
    return-object v0

    .line 237
    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->this$0:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->index:I

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 238
    .local v0, "obj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_2

    .line 240
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .end local v0    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->parser()Lcom/android/org/bouncycastle/asn1/ASN1SequenceParser;

    move-result-object v0

    goto :goto_0

    .line 242
    .restart local v0    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_2
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_0

    .line 244
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .end local v0    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->parser()Lcom/android/org/bouncycastle/asn1/ASN1SetParser;

    move-result-object v0

    goto :goto_0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->val$outer:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method
