.class public Lcom/android/internal/telephony/uicc/AdnRecord;
.super Ljava/lang/Object;
.source "AdnRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field static final ADN_BCD_NUMBER_LENGTH:I = 0x0

.field static final ADN_CAPABILITY_ID:I = 0xc

.field static final ADN_DIALING_NUMBER_END:I = 0xb

.field static final ADN_DIALING_NUMBER_START:I = 0x2

.field static final ADN_EXTENSION_ID:I = 0xd

.field static final ADN_TON_AND_NPI:I = 0x1

.field static final ANR_ADDITIONAL_NUMBER_END:I = 0xc

.field static final ANR_ADDITIONAL_NUMBER_RECORD_IDENTIFIER:I = 0x0

.field static final ANR_ADDITIONAL_NUMBER_START:I = 0x3

.field static final ANR_BCD_NUMBER_LENGTH:I = 0x1

.field static final ANR_CAPABILITY_ID:I = 0xd

.field static final ANR_EXTENSION_ID:I = 0xe

.field static final ANR_FILE_RECORD_IDENTIFIER:I = 0x10

.field static final ANR_FILE_SFI:I = 0xf

.field static final ANR_TON_AND_NPI:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_ICC_PROVIDER_NO_ERROR:I = 0x1

.field public static final ERROR_ICC_PROVIDER_NUMBER_TOO_LONG:I = -0x1

.field public static final ERROR_ICC_PROVIDER_TEXT_TOO_LONG:I = -0x2

.field public static final ERROR_ICC_PROVIDER_UNKNOWN:I = 0x0

.field public static final ERROR_ICC_PROVIDER_WRONG_ADN_FORMAT:I = -0xf

.field static final EXT1_BCD_NUMBER_LENGTH:I = 0x1

.field static final EXT1_EXTENSION_DATA_END:I = 0xb

.field static final EXT1_EXTENSION_DATA_START:I = 0x2

.field static final EXT1_IDENTIFIER:I = 0xc

.field static final EXT1_RECORD_TYPE:I = 0x0

.field static final EXT1_TYPE_ADDITIONAL_DATA:I = 0x2

.field static final EXT1_TYPE_FREE:I = 0x0

.field static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field static final EXT_RECORD_TYPE_MASK:I = 0x3

.field static final FOOTER_SIZE_BYTES:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "AdnRecord"

.field static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field static final MAX_NUMBER_SIZE_BYTES:I = 0xb

.field private static final SIM_NUM_PATTERN:Ljava/lang/String; = "[+]?[[0-9][*#pw,;]]+[[0-9][*#pw,;]]*"

.field static final TYPE1_ANR_RECORD_LENGTH_BYTES:I = 0xf

.field static final TYPE2_ANR_RECORD_LENGTH_BYTES:I = 0x11


# instance fields
.field aas:I

.field additionalNumber:Ljava/lang/String;

.field additionalNumber2:Ljava/lang/String;

.field additionalNumber3:Ljava/lang/String;

.field extRecordForAdditionalNumber:I

.field grpIds:Ljava/lang/String;

.field mAlphaTag:Ljava/lang/String;

.field mEfid:I

.field mEmails:[Ljava/lang/String;

.field mExtRecord:I

.field mNumber:Ljava/lang/String;

.field mRecordNumber:I

.field result:I

.field sne:Ljava/lang/String;

.field sortKey:Ljava/lang/String;

.field tmp:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecord$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/AdnRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 63
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    .line 68
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    .line 78
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 654
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecordForAdditionalNumber:I

    .line 182
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 183
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 184
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 185
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 186
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 187
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 188
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 189
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 190
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 193
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/meizu/MzAdnRecordUtils;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sortKey:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "anr"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 63
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    .line 68
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    .line 78
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 654
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecordForAdditionalNumber:I

    .line 199
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 200
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 201
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 202
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 203
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 204
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 205
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 206
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 207
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 210
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/meizu/MzAdnRecordUtils;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sortKey:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "anr"    # Ljava/lang/String;
    .param p6, "anr2"    # Ljava/lang/String;
    .param p7, "anr3"    # Ljava/lang/String;
    .param p8, "emails"    # [Ljava/lang/String;
    .param p9, "grps"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 63
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    .line 68
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    .line 78
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 654
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecordForAdditionalNumber:I

    .line 235
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 236
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 237
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 238
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 239
    iput-object p8, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 240
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 241
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 242
    iput-object p7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 243
    iput-object p9, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;

    .line 245
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 246
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/meizu/MzAdnRecordUtils;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sortKey:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "anr"    # Ljava/lang/String;
    .param p6, "emails"    # [Ljava/lang/String;
    .param p7, "grps"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 63
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    .line 68
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    .line 78
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 654
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecordForAdditionalNumber:I

    .line 217
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 218
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 219
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 220
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 221
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 222
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 223
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 224
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 225
    iput-object p7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 228
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/meizu/MzAdnRecordUtils;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sortKey:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "emails"    # [Ljava/lang/String;

    .prologue
    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 63
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    .line 68
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    .line 78
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 654
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecordForAdditionalNumber:I

    .line 165
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 166
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 167
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 168
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 169
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 170
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 171
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 172
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 173
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 176
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/meizu/MzAdnRecordUtils;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sortKey:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 3
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "record"    # [B

    .prologue
    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 63
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    .line 68
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    .line 78
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 654
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecordForAdditionalNumber:I

    .line 147
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 148
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 149
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->parseRecord([B)V

    .line 150
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 153
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "anr"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 157
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "mAlphaTag"    # Ljava/lang/String;
    .param p2, "mNumber"    # Ljava/lang/String;
    .param p3, "additionalNumber"    # Ljava/lang/String;
    .param p4, "email"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 1046
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 63
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    .line 68
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    .line 78
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 654
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecordForAdditionalNumber:I

    .line 1047
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 1048
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 1049
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1050
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 1053
    :goto_0
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 1055
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1056
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 1057
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/meizu/MzAdnRecordUtils;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sortKey:Ljava/lang/String;

    .line 1058
    return-void

    .line 1052
    :cond_1
    const-string v0, ","

    invoke-virtual {p4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "emails"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 161
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "record"    # [B

    .prologue
    const/4 v0, 0x0

    .line 143
    invoke-direct {p0, v0, v0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(II[B)V

    .line 144
    return-void
.end method

.method public static buildAdnString(ILjava/lang/String;[BIII)[B
    .locals 8
    .param p0, "recordSize"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "mNumber"    # [B
    .param p3, "offset"    # I
    .param p4, "numberBytes"    # I
    .param p5, "extRecordId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 827
    const/4 v1, 0x0

    .line 828
    .local v1, "byteTag":[B
    const/4 v0, 0x0

    .line 829
    .local v0, "adnRecord":[B
    add-int/lit8 v2, p0, -0xe

    .line 831
    .local v2, "footerOffset":I
    if-eqz p2, :cond_1

    const/16 v5, 0xb

    if-gt p4, v5, :cond_0

    if-gez p4, :cond_1

    .line 860
    :cond_0
    :goto_0
    return-object v4

    .line 835
    :cond_1
    new-array v0, p0, [B

    .line 836
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, p0, :cond_2

    .line 837
    aput-byte v6, v0, v3

    .line 836
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 841
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 842
    const/4 v1, 0x0

    .line 852
    :goto_2
    if-eqz p2, :cond_3

    .line 853
    add-int/lit8 v4, v2, 0x1

    invoke-static {p2, p3, v0, v4, p4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 855
    add-int/lit8 v4, v2, 0x0

    int-to-byte v5, p4

    aput-byte v5, v0, v4

    .line 856
    add-int/lit8 v4, v2, 0xc

    aput-byte v6, v0, v4

    .line 857
    add-int/lit8 v4, v2, 0xd

    int-to-byte v5, p5

    aput-byte v5, v0, v4

    :cond_3
    move-object v4, v0

    .line 860
    goto :goto_0

    .line 844
    :cond_4
    add-int/lit8 v5, p0, -0xe

    invoke-static {p1, v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdnBytes(Ljava/lang/String;I)[B

    move-result-object v1

    .line 845
    if-eqz v1, :cond_0

    array-length v5, v1

    if-gt v5, v2, :cond_0

    .line 848
    array-length v4, v1

    invoke-static {v1, v7, v0, v7, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_2
.end method

.method public static buildAnrString(I[BIIIII)[B
    .locals 7
    .param p0, "recordSize"    # I
    .param p1, "adNumber"    # [B
    .param p2, "offset"    # I
    .param p3, "adNumberBytes"    # I
    .param p4, "ext1RecordId"    # I
    .param p5, "efAdnSfi"    # I
    .param p6, "adnRecordId"    # I

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0x11

    const/16 v5, 0xf

    const/4 v4, 0x0

    .line 955
    const/4 v0, 0x0

    .line 957
    .local v0, "anrRecord":[B
    if-eq p0, v5, :cond_1

    if-eq p0, v6, :cond_1

    .line 983
    :cond_0
    :goto_0
    return-object v2

    .line 960
    :cond_1
    if-eqz p1, :cond_2

    const/16 v3, 0xb

    if-gt p3, v3, :cond_0

    if-ltz p3, :cond_0

    .line 963
    :cond_2
    new-array v0, p0, [B

    .line 966
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p0, :cond_3

    .line 967
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 966
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 971
    :cond_3
    if-ne p0, v6, :cond_4

    .line 972
    int-to-byte v2, p5

    aput-byte v2, v0, v5

    .line 973
    const/16 v2, 0x10

    int-to-byte v3, p6

    aput-byte v3, v0, v2

    .line 976
    :cond_4
    if-eqz p1, :cond_5

    .line 977
    aput-byte v4, v0, v4

    .line 978
    const/4 v2, 0x1

    int-to-byte v3, p3

    aput-byte v3, v0, v2

    .line 979
    const/16 v2, 0xe

    int-to-byte v3, p4

    aput-byte v3, v0, v2

    .line 980
    const/4 v2, 0x2

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_5
    move-object v2, v0

    .line 983
    goto :goto_0
.end method

.method public static buildEmailString(ILjava/lang/String;IIZ)[B
    .locals 5
    .param p0, "recordSize"    # I
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "efAdnSfi"    # I
    .param p3, "adnRecordId"    # I
    .param p4, "isType1"    # Z

    .prologue
    const/4 v2, 0x0

    .line 901
    const/4 v0, 0x0

    .line 903
    .local v0, "emailRecord":[B
    if-eqz p1, :cond_2

    .line 904
    if-eqz p4, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, p0, :cond_1

    .line 926
    :cond_0
    :goto_0
    return-object v2

    .line 907
    :cond_1
    if-nez p4, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, p0, -0x2

    if-gt v3, v4, :cond_0

    .line 911
    :cond_2
    new-array v0, p0, [B

    .line 913
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p0, :cond_3

    .line 914
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 913
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 917
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 918
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {p1, v0, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V

    .line 920
    if-nez p4, :cond_4

    .line 921
    add-int/lit8 v2, p0, -0x2

    int-to-byte v3, p2

    aput-byte v3, v0, v2

    .line 922
    add-int/lit8 v2, p0, -0x1

    int-to-byte v3, p3

    aput-byte v3, v0, v2

    :cond_4
    move-object v2, v0

    .line 926
    goto :goto_0
.end method

.method public static buildExt1String([BIII)[B
    .locals 5
    .param p0, "ext1Data"    # [B
    .param p1, "offset"    # I
    .param p2, "ext1DataBytes"    # I
    .param p3, "extRecordId"    # I

    .prologue
    const/4 v4, 0x2

    .line 1008
    const/4 v0, 0x0

    .line 1010
    .local v0, "ext1Record":[B
    if-eqz p0, :cond_1

    const/16 v2, 0xa

    if-gt p2, v2, :cond_0

    if-gez p2, :cond_1

    .line 1011
    :cond_0
    const/4 v2, 0x0

    .line 1027
    :goto_0
    return-object v2

    .line 1013
    :cond_1
    const/16 v2, 0xd

    new-array v0, v2, [B

    .line 1015
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 1016
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 1015
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1019
    :cond_2
    if-eqz p0, :cond_3

    .line 1020
    const/4 v2, 0x0

    aput-byte v4, v0, v2

    .line 1021
    const/4 v2, 0x1

    int-to-byte v3, p2

    aput-byte v3, v0, v2

    .line 1022
    invoke-static {p0, p1, v0, v4, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1025
    :cond_3
    const/16 v2, 0xc

    int-to-byte v3, p3

    aput-byte v3, v0, v2

    move-object v2, v0

    .line 1027
    goto :goto_0
.end method

.method public static buildIapString(III)[B
    .locals 3
    .param p0, "recordSize"    # I
    .param p1, "emailTagNumberInIap"    # I
    .param p2, "emailRecordId"    # I

    .prologue
    .line 874
    const/4 v1, 0x0

    .line 876
    .local v1, "iapRecord":[B
    const/4 v2, 0x3

    if-gt p0, v2, :cond_0

    if-lt p1, p0, :cond_1

    .line 877
    :cond_0
    const/4 v2, 0x0

    .line 885
    :goto_0
    return-object v2

    .line 879
    :cond_1
    new-array v1, p0, [B

    .line 880
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_2

    .line 881
    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 880
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 883
    :cond_2
    int-to-byte v2, p2

    aput-byte v2, v1, p1

    move-object v2, v1

    .line 885
    goto :goto_0
.end method

.method public static calcEmptyExt1RecordCntNeeded(Ljava/lang/String;)I
    .locals 5
    .param p0, "mNumber"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1190
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1212
    :cond_0
    :goto_0
    return v1

    .line 1194
    :cond_1
    :try_start_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1199
    .local v3, "numberBytes":[B
    if-eqz v3, :cond_0

    .line 1202
    array-length v0, v3

    .line 1204
    .local v0, "bytes":I
    const/16 v4, 0xb

    if-le v0, v4, :cond_0

    .line 1207
    add-int/lit8 v4, v0, -0xb

    div-int/lit8 v1, v4, 0xa

    .line 1208
    .local v1, "cnt":I
    add-int/lit8 v4, v0, -0xb

    rem-int/lit8 v4, v4, 0xa

    if-eqz v4, :cond_0

    .line 1209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1195
    .end local v0    # "bytes":I
    .end local v1    # "cnt":I
    .end local v3    # "numberBytes":[B
    :catch_0
    move-exception v2

    .line 1196
    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static getAdnBytes(Ljava/lang/String;I)[B
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "maxBytesToReturn"    # I

    .prologue
    const/4 v1, 0x0

    .line 1132
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 1154
    :cond_0
    :goto_0
    return-object v0

    .line 1135
    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/meizu/MzGsmAlphabet;->StringToGsm8BitPackedChecked(Ljava/lang/String;)[B

    move-result-object v0

    .line 1136
    .local v0, "ret":[B
    if-nez v0, :cond_2

    .line 1137
    invoke-static {p0}, Lcom/android/internal/telephony/meizu/MzAdnRecordUtils;->stringToAdnUcs2StartsWith80(Ljava/lang/String;)[B

    move-result-object v0

    .line 1140
    :cond_2
    if-eqz v0, :cond_3

    array-length v2, v0

    if-le v2, p1, :cond_0

    .line 1144
    :cond_3
    invoke-static {p0}, Lcom/android/internal/telephony/meizu/MzAdnRecordUtils;->stringToAdnUcs2StartsWith81(Ljava/lang/String;)[B

    move-result-object v0

    .line 1145
    if-eqz v0, :cond_4

    array-length v2, v0

    if-le v2, p1, :cond_0

    .line 1149
    :cond_4
    invoke-static {p0}, Lcom/android/internal/telephony/meizu/MzAdnRecordUtils;->stringToAdnUcs2StartsWith82(Ljava/lang/String;)[B

    move-result-object v0

    .line 1150
    if-eqz v0, :cond_5

    array-length v2, v0

    if-le v2, p1, :cond_0

    :cond_5
    move-object v0, v1

    .line 1154
    goto :goto_0
.end method

.method private isAdditionalNumberLegal()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1092
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1111
    :goto_0
    return v2

    .line 1095
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->containsNonGsmCharacter(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    .line 1096
    goto :goto_0

    .line 1098
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 1099
    .local v1, "len":I
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1100
    add-int/lit8 v1, v1, -0x1

    .line 1102
    :cond_2
    const/16 v4, 0xf

    if-le v1, v4, :cond_3

    move v2, v3

    .line 1103
    goto :goto_0

    .line 1106
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1107
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v2, v3

    .line 1108
    goto :goto_0
.end method

.method private isAlphaTagLegal(I)Z
    .locals 4
    .param p1, "adnRecordSize"    # I

    .prologue
    const/4 v1, 0x1

    .line 1158
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1166
    :cond_0
    :goto_0
    return v1

    .line 1161
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    add-int/lit8 v3, p1, -0xe

    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdnBytes(Ljava/lang/String;I)[B

    move-result-object v0

    .line 1163
    .local v0, "tagBytes":[B
    if-eqz v0, :cond_2

    array-length v2, v0

    add-int/lit8 v3, p1, -0xe

    if-le v2, v3, :cond_0

    .line 1164
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isContainChineseChar(Ljava/lang/String;)Z
    .locals 5
    .param p1, "alphTag"    # Ljava/lang/String;

    .prologue
    .line 605
    const/4 v2, 0x0

    .line 606
    .local v2, "result":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 608
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 609
    const-string v3, "[\u4e00-\u9fa5]"

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 610
    const/4 v2, 0x1

    .line 615
    :cond_0
    return v2

    .line 608
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isEmailsEmpty()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 636
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    if-nez v5, :cond_1

    .line 641
    :cond_0
    :goto_0
    return v4

    .line 638
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 639
    .local v1, "email":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 640
    const/4 v4, 0x0

    goto :goto_0

    .line 638
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private isEmailsLegal()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1115
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    if-nez v3, :cond_1

    .line 1128
    :cond_0
    :goto_0
    return v1

    .line 1118
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1121
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->containsNonGsmCharacter(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 1122
    goto :goto_0

    .line 1124
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 1125
    .local v0, "len":I
    const/16 v3, 0x26

    if-le v0, v3, :cond_0

    move v1, v2

    .line 1126
    goto :goto_0
.end method

.method private isMzEmpty()Z
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmailsEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMzEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z
    .locals 2
    .param p1, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNumberLegal()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1069
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1088
    :goto_0
    return v2

    .line 1072
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->containsNonGsmCharacter(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    .line 1073
    goto :goto_0

    .line 1075
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 1076
    .local v1, "len":I
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1077
    add-int/lit8 v1, v1, -0x1

    .line 1079
    :cond_2
    const/16 v4, 0x30

    if-le v1, v4, :cond_3

    move v2, v3

    .line 1080
    goto :goto_0

    .line 1083
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1084
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v2, v3

    .line 1085
    goto :goto_0
.end method

.method private isPhoneNumberInvaild(Ljava/lang/String;)Z
    .locals 3
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 618
    const/4 v0, 0x0

    .line 619
    .local v0, "tempPhoneNumber":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 620
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 622
    const-string v1, "[+]?[[0-9][*#pw,;]]+[[0-9][*#pw,;]]*"

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->extractCLIRPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 624
    const/4 v1, 0x1

    .line 627
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseRecord([B)V
    .locals 6
    .param p1, "record"    # [B

    .prologue
    const/4 v5, 0x0

    .line 555
    const/4 v3, 0x0

    :try_start_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0xe

    invoke-static {p1, v3, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 558
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 559
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 560
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/meizu/MzAdnRecordUtils;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sortKey:Ljava/lang/String;

    .line 563
    array-length v3, p1

    add-int/lit8 v1, v3, -0xe

    .line 565
    .local v1, "footerOffset":I
    aget-byte v3, p1, v1

    and-int/lit16 v2, v3, 0xff

    .line 567
    .local v2, "numberLength":I
    const/16 v3, 0xb

    if-le v2, v3, :cond_1

    .line 569
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 602
    .end local v1    # "footerOffset":I
    .end local v2    # "numberLength":I
    :goto_0
    return-void

    .line 580
    .restart local v1    # "footerOffset":I
    .restart local v2    # "numberLength":I
    :cond_1
    add-int/lit8 v3, v1, 0x1

    invoke-static {p1, v3, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 584
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 586
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 587
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 588
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 589
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 590
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 592
    .end local v1    # "footerOffset":I
    .end local v2    # "numberLength":I
    :catch_0
    move-exception v0

    .line 593
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v3, "AdnRecord"

    const-string v4, "Error parsing AdnRecord"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 594
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 595
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 596
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 597
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 598
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 599
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 600
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;

    goto :goto_0
.end method

.method private static stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    .prologue
    .line 368
    if-ne p0, p1, :cond_0

    .line 369
    const/4 v0, 0x1

    .line 377
    :goto_0
    return v0

    .line 371
    :cond_0
    if-nez p0, :cond_1

    .line 372
    const-string p0, ""

    .line 374
    :cond_1
    if-nez p1, :cond_2

    .line 375
    const-string p1, ""

    .line 377
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public appendExtRecord([B)V
    .locals 4
    .param p1, "extRecord"    # [B

    .prologue
    const/4 v3, 0x2

    .line 523
    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v3, :cond_0

    .line 532
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "AdnRecord"

    const-string v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public appendExtRecordForAdditionalNumber([B)V
    .locals 4
    .param p1, "mExtRecord"    # [B

    .prologue
    const/4 v3, 0x2

    .line 786
    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    .line 787
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecordForAdditionalNumber:I

    .line 811
    :goto_0
    return-void

    .line 791
    :cond_0
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-eq v1, v3, :cond_1

    .line 792
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecordForAdditionalNumber:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 808
    :catch_0
    move-exception v0

    .line 809
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "AdnRecord"

    const-string v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 796
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-le v1, v2, :cond_2

    .line 798
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecordForAdditionalNumber:I

    goto :goto_0

    .line 802
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 806
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecordForAdditionalNumber:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public appendExtRecordForNumber([B)V
    .locals 4
    .param p1, "mExtRecord"    # [B

    .prologue
    const/4 v3, 0x2

    .line 757
    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    .line 758
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 782
    :goto_0
    return-void

    .line 762
    :cond_0
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-eq v1, v3, :cond_1

    .line 763
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 779
    :catch_0
    move-exception v0

    .line 780
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "AdnRecord"

    const-string v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 767
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-le v1, v2, :cond_2

    .line 769
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    goto :goto_0

    .line 773
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 777
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public buildAdnString(I)[B
    .locals 13
    .param p1, "recordSize"    # I

    .prologue
    .line 421
    const-string v10, "AdnRecord"

    const-string v11, "in BuildAdnString"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    add-int/lit8 v7, p1, -0xe

    .line 426
    .local v7, "footerOffset":I
    const/4 v1, 0x0

    .line 429
    .local v1, "alphaIdLength":I
    new-array v0, p1, [B

    .line 430
    .local v0, "adnString":[B
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, p1, :cond_0

    .line 431
    const/4 v10, -0x1

    aput-byte v10, v0, v9

    .line 430
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 433
    :cond_0
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->isPhoneNumberInvaild(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 434
    const-string v10, "AdnRecord"

    const-string v11, "[buildAdnString] invaild number"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/16 v10, -0xf

    iput v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 436
    const/4 v0, 0x0

    .line 511
    .end local v0    # "adnString":[B
    :cond_1
    :goto_1
    return-object v0

    .line 438
    .restart local v0    # "adnString":[B
    :cond_2
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 439
    const-string v10, "AdnRecord"

    const-string v11, "[buildAdnString] Empty dialing number"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 467
    :goto_2
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 468
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->isContainChineseChar(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 469
    const-string v10, "AdnRecord"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[buildAdnString] getBytes,alphaTag:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :try_start_0
    const-string v10, "AdnRecord"

    const-string v11, "call getBytes"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    const-string v11, "utf-16be"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 473
    .local v3, "byteTag":[B
    const-string v10, "AdnRecord"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "byteTag,"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 478
    const/4 v10, 0x1

    new-array v8, v10, [B

    .line 479
    .local v8, "header":[B
    const/4 v10, 0x0

    const/16 v11, -0x80

    aput-byte v11, v8, v10

    .line 480
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v8, v10, v0, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 481
    array-length v10, v3

    array-length v11, v0

    add-int/lit8 v11, v11, -0x1

    if-le v10, v11, :cond_5

    .line 482
    const/4 v10, -0x2

    iput v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 483
    const-string v10, "AdnRecord"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[buildAdnString] after getBytes byteTag.length:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " adnString.length:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 442
    .end local v3    # "byteTag":[B
    .end local v8    # "header":[B
    :cond_3
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x14

    if-le v10, v11, :cond_4

    .line 444
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 445
    const-string v10, "AdnRecord"

    const-string v11, "[buildAdnString] Max length of dialing number is 20"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 449
    :cond_4
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 451
    :try_start_1
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 456
    .local v2, "bcdNumber":[B
    const/4 v10, 0x0

    add-int/lit8 v11, v7, 0x1

    array-length v12, v2

    invoke-static {v2, v10, v0, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 459
    add-int/lit8 v10, v7, 0x0

    array-length v11, v2

    int-to-byte v11, v11

    aput-byte v11, v0, v10

    .line 461
    add-int/lit8 v10, v7, 0xc

    const/4 v11, -0x1

    aput-byte v11, v0, v10

    .line 463
    add-int/lit8 v10, v7, 0xd

    const/4 v11, -0x1

    aput-byte v11, v0, v10

    goto/16 :goto_2

    .line 452
    .end local v2    # "bcdNumber":[B
    :catch_0
    move-exception v6

    .line 453
    .local v6, "exc":Ljava/lang/RuntimeException;
    new-instance v4, Lcom/android/internal/telephony/CommandException;

    sget-object v10, Lcom/android/internal/telephony/CommandException$Error;->INVALID_PARAMETER:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v4, v10}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 454
    .local v4, "cmdEx":Lcom/android/internal/telephony/CommandException;
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "invalid number for BCD "

    invoke-direct {v10, v11, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 474
    .end local v4    # "cmdEx":Lcom/android/internal/telephony/CommandException;
    .end local v6    # "exc":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v5

    .line 475
    .local v5, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v10, "AdnRecord"

    const-string v11, "[buildAdnString] getBytes exception"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 487
    .end local v5    # "ex":Ljava/io/UnsupportedEncodingException;
    .restart local v3    # "byteTag":[B
    .restart local v8    # "header":[B
    :cond_5
    const/4 v10, 0x0

    const/4 v11, 0x1

    array-length v12, v3

    invoke-static {v3, v10, v0, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 488
    array-length v10, v3

    add-int/lit8 v1, v10, 0x1

    .line 489
    const-string v10, "AdnRecord"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "arrarString"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    .end local v3    # "byteTag":[B
    .end local v8    # "header":[B
    :cond_6
    :goto_3
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    if-eqz v10, :cond_1

    if-le v1, v7, :cond_1

    .line 505
    const/4 v10, -0x2

    iput v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 506
    const-string v10, "AdnRecord"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[buildAdnString] Max length of tag is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",alphaIdLength:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 491
    :cond_7
    const-string v10, "AdnRecord"

    const-string v11, "[buildAdnString] stringToGsm8BitPacked"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v3

    .line 493
    .restart local v3    # "byteTag":[B
    array-length v1, v3

    .line 494
    array-length v10, v0

    if-le v1, v10, :cond_8

    .line 495
    const/4 v10, -0x2

    iput v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 496
    const-string v10, "AdnRecord"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[buildAdnString] after stringToGsm8BitPacked byteTag.length:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " adnString.length:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 500
    :cond_8
    const/4 v10, 0x0

    const/4 v11, 0x0

    array-length v12, v3

    invoke-static {v3, v10, v0, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_3
.end method

.method public containsNonGsmCharacter(Ljava/lang/String;)Z
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1061
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1065
    :cond_0
    :goto_0
    return v1

    .line 1064
    :cond_1
    invoke-static {p1}, Lcom/android/internal/telephony/meizu/MzGsmAlphabet;->StringToGsm8BitPackedChecked(Ljava/lang/String;)[B

    move-result-object v0

    .line 1065
    .local v0, "byteStr":[B
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method public getAasIndex()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    return v0
.end method

.method public getAdditionalNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getAdditionalNumber(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "number":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 279
    :goto_0
    return-object v0

    .line 272
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 273
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    goto :goto_0

    .line 274
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 275
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    goto :goto_0

    .line 277
    :cond_2
    const-string v1, "AdnRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdditionalNumber Error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAdditionalNumberLength()I
    .locals 2

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    const/4 v0, 0x0

    .line 689
    :goto_0
    return v0

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 687
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 689
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public getAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getEfId()I
    .locals 1

    .prologue
    .line 1039
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    return v0
.end method

.method public getEmailLength()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 693
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 698
    :cond_0
    :goto_0
    return v0

    .line 695
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 698
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public getEmails()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    return-object v0
.end method

.method public getErrorNumber()I
    .locals 1

    .prologue
    .line 515
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    return v0
.end method

.method public getExtRecord()I
    .locals 1

    .prologue
    .line 714
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    return v0
.end method

.method public getExtRecordForAdditionalNumber()I
    .locals 1

    .prologue
    .line 718
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecordForAdditionalNumber:I

    return v0
.end method

.method public getGrpIds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberLength()I
    .locals 2

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    const/4 v0, 0x0

    .line 679
    :goto_0
    return v0

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 677
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 679
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public getRecordId()I
    .locals 1

    .prologue
    .line 1031
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    return v0
.end method

.method public getRecordIndex()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    return v0
.end method

.method public getSne()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    return-object v0
.end method

.method public getSortKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sortKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTempInt()I
    .locals 1

    .prologue
    .line 665
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->tmp:I

    return v0
.end method

.method public hasExtendedRecord()Z
    .locals 2

    .prologue
    .line 363
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExtendedRecordForAdditionalNumber()Z
    .locals 2

    .prologue
    .line 752
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecordForAdditionalNumber:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecordForAdditionalNumber:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/AdnRecord;->isMzEmpty()Z

    move-result v0

    return v0
.end method

.method public isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z
    .locals 1
    .param p1, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isMzEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v0

    return v0
.end method

.method public isLegal(I)Z
    .locals 2
    .param p1, "adnRecordSize"    # I

    .prologue
    const/4 v0, 0x0

    .line 1170
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/AdnRecord;->isNumberLegal()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1182
    :cond_0
    :goto_0
    return v0

    .line 1173
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/AdnRecord;->isAdditionalNumberLegal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1176
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmailsLegal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1179
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isAlphaTagLegal(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1182
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public parseAdditionalNumber([B)V
    .locals 4
    .param p1, "record"    # [B

    .prologue
    .line 722
    if-nez p1, :cond_1

    .line 749
    :cond_0
    :goto_0
    return-void

    .line 725
    :cond_1
    :try_start_0
    array-length v2, p1

    const/16 v3, 0xf

    if-eq v2, v3, :cond_2

    array-length v2, p1

    const/16 v3, 0x11

    if-ne v2, v3, :cond_0

    .line 729
    :cond_2
    const/4 v2, 0x0

    aget-byte v2, p1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 733
    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v0, v2, 0xff

    .line 735
    .local v0, "anumberLength":I
    const/16 v2, 0xa

    if-le v0, v2, :cond_3

    .line 737
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 746
    .end local v0    # "anumberLength":I
    :catch_0
    move-exception v1

    .line 747
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string v2, "AdnRecord"

    const-string v3, "Error parsing AdnRecord ext record"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 741
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "anumberLength":I
    :cond_3
    const/4 v2, 0x2

    :try_start_1
    invoke-static {p1, v2, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 744
    const/16 v2, 0xe

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecordForAdditionalNumber:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setAasIndex(I)V
    .locals 0
    .param p1, "aas"    # I

    .prologue
    .line 319
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    .line 320
    return-void
.end method

.method public setAnr(Ljava/lang/String;)V
    .locals 0
    .param p1, "anr"    # Ljava/lang/String;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 304
    return-void
.end method

.method public setAnr(Ljava/lang/String;I)V
    .locals 3
    .param p1, "anr"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 307
    if-nez p2, :cond_0

    .line 308
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 316
    :goto_0
    return-void

    .line 309
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 310
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    goto :goto_0

    .line 311
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 312
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    goto :goto_0

    .line 314
    :cond_2
    const-string v0, "AdnRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAnr Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEfId(I)V
    .locals 0
    .param p1, "mEfid"    # I

    .prologue
    .line 1043
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 1044
    return-void
.end method

.method public setEmails([Ljava/lang/String;)V
    .locals 0
    .param p1, "emails"    # [Ljava/lang/String;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 332
    return-void
.end method

.method public setGrpIds(Ljava/lang/String;)V
    .locals 0
    .param p1, "grps"    # Ljava/lang/String;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;

    .line 328
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 300
    return-void
.end method

.method public setRecordId(I)V
    .locals 0
    .param p1, "adnRecordId"    # I

    .prologue
    .line 1035
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 1036
    return-void
.end method

.method public setRecordIndex(I)V
    .locals 0
    .param p1, "nIndex"    # I

    .prologue
    .line 335
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 336
    return-void
.end method

.method public setSne(Ljava/lang/String;)V
    .locals 0
    .param p1, "sne"    # Ljava/lang/String;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    .line 324
    return-void
.end method

.method public setTempInt(I)V
    .locals 0
    .param p1, "tmp"    # I

    .prologue
    .line 661
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->tmp:I

    .line 662
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADN Record:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",alphaTag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",number:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",anr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",anr2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",anr3:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",aas:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",emails:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",grpIds:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",sne:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncAdditionalNumber(I)V
    .locals 2
    .param p1, "len"    # I

    .prologue
    .line 708
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 709
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 711
    :cond_0
    return-void
.end method

.method public truncNumber(I)V
    .locals 2
    .param p1, "len"    # I

    .prologue
    .line 702
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 703
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 705
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 399
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 408
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 410
    return-void
.end method
