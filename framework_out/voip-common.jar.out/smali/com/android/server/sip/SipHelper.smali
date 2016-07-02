.class Lcom/android/server/sip/SipHelper;
.super Ljava/lang/Object;
.source "SipHelper.java"


# static fields
.field private static final DBG:Z = true

.field private static final DBG_PING:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAddressFactory:Ljavax/sip/address/AddressFactory;

.field private mHeaderFactory:Ljavax/sip/header/HeaderFactory;

.field private mMessageFactory:Ljavax/sip/message/MessageFactory;

.field private mSipProvider:Ljavax/sip/SipProvider;

.field private mSipStack:Ljavax/sip/SipStack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const-class v0, Lcom/android/server/sip/SipHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sip/SipHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/sip/SipStack;Ljavax/sip/SipProvider;)V
    .locals 2
    .param p1, "sipStack"    # Ljavax/sip/SipStack;
    .param p2, "sipProvider"    # Ljavax/sip/SipProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/PeerUnavailableException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/android/server/sip/SipHelper;->mSipStack:Ljavax/sip/SipStack;

    .line 91
    iput-object p2, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    .line 93
    invoke-static {}, Ljavax/sip/SipFactory;->getInstance()Ljavax/sip/SipFactory;

    move-result-object v0

    .line 94
    .local v0, "sipFactory":Ljavax/sip/SipFactory;
    invoke-virtual {v0}, Ljavax/sip/SipFactory;->createAddressFactory()Ljavax/sip/address/AddressFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sip/SipHelper;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    .line 95
    invoke-virtual {v0}, Ljavax/sip/SipFactory;->createHeaderFactory()Ljavax/sip/header/HeaderFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    .line 96
    invoke-virtual {v0}, Ljavax/sip/SipFactory;->createMessageFactory()Ljavax/sip/message/MessageFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    .line 97
    return-void
.end method

.method private createCSeqHeader(Ljava/lang/String;)Ljavax/sip/header/CSeqHeader;
    .locals 6
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v2, v4

    double-to-long v0, v2

    .line 120
    .local v0, "sequence":J
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface {v2, v0, v1, p1}, Ljavax/sip/header/HeaderFactory;->createCSeqHeader(JLjava/lang/String;)Ljavax/sip/header/CSeqHeader;

    move-result-object v2

    return-object v2
.end method

.method private createCallIdHeader()Ljavax/sip/header/CallIdHeader;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v0}, Ljavax/sip/SipProvider;->getNewCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v0

    return-object v0
.end method

.method private createContactHeader(Landroid/net/sip/SipProfile;)Ljavax/sip/header/ContactHeader;
    .locals 2
    .param p1, "profile"    # Landroid/net/sip/SipProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 159
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/sip/SipHelper;->createContactHeader(Landroid/net/sip/SipProfile;Ljava/lang/String;I)Ljavax/sip/header/ContactHeader;

    move-result-object v0

    return-object v0
.end method

.method private createContactHeader(Landroid/net/sip/SipProfile;Ljava/lang/String;I)Ljavax/sip/header/ContactHeader;
    .locals 5
    .param p1, "profile"    # Landroid/net/sip/SipProfile;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 165
    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->getListeningPoint()Ljavax/sip/ListeningPoint;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/sip/SipHelper;->createSipUri(Ljava/lang/String;Ljava/lang/String;Ljavax/sip/ListeningPoint;)Ljavax/sip/address/SipURI;

    move-result-object v1

    .line 171
    .local v1, "contactURI":Ljavax/sip/address/SipURI;
    :goto_0
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    invoke-interface {v2, v1}, Ljavax/sip/address/AddressFactory;->createAddress(Ljavax/sip/address/URI;)Ljavax/sip/address/Address;

    move-result-object v0

    .line 172
    .local v0, "contactAddress":Ljavax/sip/address/Address;
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljavax/sip/address/Address;->setDisplayName(Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface {v2, v0}, Ljavax/sip/header/HeaderFactory;->createContactHeader(Ljavax/sip/address/Address;)Ljavax/sip/header/ContactHeader;

    move-result-object v2

    return-object v2

    .line 165
    .end local v0    # "contactAddress":Ljavax/sip/address/Address;
    .end local v1    # "contactURI":Ljavax/sip/address/SipURI;
    :cond_0
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, p2, p3}, Lcom/android/server/sip/SipHelper;->createSipUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljavax/sip/address/SipURI;

    move-result-object v1

    goto :goto_0
.end method

.method private createFromHeader(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/header/FromHeader;
    .locals 2
    .param p1, "profile"    # Landroid/net/sip/SipProfile;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getSipAddress()Ljavax/sip/address/Address;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljavax/sip/header/HeaderFactory;->createFromHeader(Ljavax/sip/address/Address;Ljava/lang/String;)Ljavax/sip/header/FromHeader;

    move-result-object v0

    return-object v0
.end method

.method private createMaxForwardsHeader()Ljavax/sip/header/MaxForwardsHeader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const/16 v1, 0x46

    invoke-interface {v0, v1}, Ljavax/sip/header/HeaderFactory;->createMaxForwardsHeader(I)Ljavax/sip/header/MaxForwardsHeader;

    move-result-object v0

    return-object v0
.end method

.method private createMaxForwardsHeader(I)Ljavax/sip/header/MaxForwardsHeader;
    .locals 1
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface {v0, p1}, Ljavax/sip/header/HeaderFactory;->createMaxForwardsHeader(I)Ljavax/sip/header/MaxForwardsHeader;

    move-result-object v0

    return-object v0
.end method

.method private createRequest(Ljava/lang/String;Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/message/Request;
    .locals 10
    .param p1, "requestType"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/net/sip/SipProfile;
    .param p3, "callee"    # Landroid/net/sip/SipProfile;
    .param p4, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-direct {p0, p2, p4}, Lcom/android/server/sip/SipHelper;->createFromHeader(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/header/FromHeader;

    move-result-object v5

    .line 277
    .local v5, "fromHeader":Ljavax/sip/header/FromHeader;
    invoke-direct {p0, p3}, Lcom/android/server/sip/SipHelper;->createToHeader(Landroid/net/sip/SipProfile;)Ljavax/sip/header/ToHeader;

    move-result-object v6

    .line 278
    .local v6, "toHeader":Ljavax/sip/header/ToHeader;
    invoke-virtual {p3}, Landroid/net/sip/SipProfile;->getUri()Ljavax/sip/address/SipURI;

    move-result-object v1

    .line 279
    .local v1, "requestURI":Ljavax/sip/address/SipURI;
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createViaHeaders()Ljava/util/List;

    move-result-object v7

    .line 280
    .local v7, "viaHeaders":Ljava/util/List;, "Ljava/util/List<Ljavax/sip/header/ViaHeader;>;"
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createCallIdHeader()Ljavax/sip/header/CallIdHeader;

    move-result-object v3

    .line 281
    .local v3, "callIdHeader":Ljavax/sip/header/CallIdHeader;
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipHelper;->createCSeqHeader(Ljava/lang/String;)Ljavax/sip/header/CSeqHeader;

    move-result-object v4

    .line 282
    .local v4, "cSeqHeader":Ljavax/sip/header/CSeqHeader;
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createMaxForwardsHeader()Ljavax/sip/header/MaxForwardsHeader;

    move-result-object v8

    .line 284
    .local v8, "maxForwards":Ljavax/sip/header/MaxForwardsHeader;
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    move-object v2, p1

    invoke-interface/range {v0 .. v8}, Ljavax/sip/message/MessageFactory;->createRequest(Ljavax/sip/address/URI;Ljava/lang/String;Ljavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;)Ljavax/sip/message/Request;

    move-result-object v9

    .line 288
    .local v9, "request":Ljavax/sip/message/Request;
    invoke-direct {p0, p2}, Lcom/android/server/sip/SipHelper;->createContactHeader(Landroid/net/sip/SipProfile;)Ljavax/sip/header/ContactHeader;

    move-result-object v0

    invoke-interface {v9, v0}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 289
    return-object v9
.end method

.method private createRequest(Ljava/lang/String;Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/message/Request;
    .locals 15
    .param p1, "requestType"    # Ljava/lang/String;
    .param p2, "userProfile"    # Landroid/net/sip/SipProfile;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 240
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {p0, v0, v1}, Lcom/android/server/sip/SipHelper;->createFromHeader(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/header/FromHeader;

    move-result-object v7

    .line 241
    .local v7, "fromHeader":Ljavax/sip/header/FromHeader;
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipHelper;->createToHeader(Landroid/net/sip/SipProfile;)Ljavax/sip/header/ToHeader;

    move-result-object v8

    .line 243
    .local v8, "toHeader":Ljavax/sip/header/ToHeader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "@"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 244
    .local v11, "replaceStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    invoke-virtual/range {p2 .. p2}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v4

    const-string v14, ""

    invoke-virtual {v4, v11, v14}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljavax/sip/address/AddressFactory;->createSipURI(Ljava/lang/String;)Ljavax/sip/address/SipURI;

    move-result-object v3

    .line 247
    .local v3, "requestURI":Ljavax/sip/address/SipURI;
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createViaHeaders()Ljava/util/List;

    move-result-object v9

    .line 248
    .local v9, "viaHeaders":Ljava/util/List;, "Ljava/util/List<Ljavax/sip/header/ViaHeader;>;"
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createCallIdHeader()Ljavax/sip/header/CallIdHeader;

    move-result-object v5

    .line 249
    .local v5, "callIdHeader":Ljavax/sip/header/CallIdHeader;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/sip/SipHelper;->createCSeqHeader(Ljava/lang/String;)Ljavax/sip/header/CSeqHeader;

    move-result-object v6

    .line 250
    .local v6, "cSeqHeader":Ljavax/sip/header/CSeqHeader;
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createMaxForwardsHeader()Ljavax/sip/header/MaxForwardsHeader;

    move-result-object v10

    .line 251
    .local v10, "maxForwards":Ljavax/sip/header/MaxForwardsHeader;
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    move-object/from16 v4, p1

    invoke-interface/range {v2 .. v10}, Ljavax/sip/message/MessageFactory;->createRequest(Ljavax/sip/address/URI;Ljava/lang/String;Ljavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;)Ljavax/sip/message/Request;

    move-result-object v12

    .line 254
    .local v12, "request":Ljavax/sip/message/Request;
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v4, "User-Agent"

    const-string v14, "SIPAUA/0.1.001"

    invoke-interface {v2, v4, v14}, Ljavax/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v13

    .line 256
    .local v13, "userAgentHeader":Ljavax/sip/header/Header;
    invoke-interface {v12, v13}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 257
    return-object v12
.end method

.method private createSipUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljavax/sip/address/SipURI;
    .locals 3
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "transport"    # Ljava/lang/String;
    .param p3, "ip"    # Ljava/lang/String;
    .param p4, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    invoke-interface {v2, p1, p3}, Ljavax/sip/address/AddressFactory;->createSipURI(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/address/SipURI;

    move-result-object v1

    .line 192
    .local v1, "uri":Ljavax/sip/address/SipURI;
    :try_start_0
    invoke-interface {v1, p4}, Ljavax/sip/address/SipURI;->setPort(I)V

    .line 193
    invoke-interface {v1, p2}, Ljavax/sip/address/SipURI;->setTransportParam(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    return-object v1

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljavax/sip/InvalidArgumentException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private createSipUri(Ljava/lang/String;Ljava/lang/String;Ljavax/sip/ListeningPoint;)Ljavax/sip/address/SipURI;
    .locals 2
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "transport"    # Ljava/lang/String;
    .param p3, "lp"    # Ljavax/sip/ListeningPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-interface {p3}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Ljavax/sip/ListeningPoint;->getPort()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/sip/SipHelper;->createSipUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljavax/sip/address/SipURI;

    move-result-object v0

    return-object v0
.end method

.method private createToHeader(Landroid/net/sip/SipProfile;)Ljavax/sip/header/ToHeader;
    .locals 1
    .param p1, "profile"    # Landroid/net/sip/SipProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/sip/SipHelper;->createToHeader(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/header/ToHeader;

    move-result-object v0

    return-object v0
.end method

.method private createToHeader(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/header/ToHeader;
    .locals 2
    .param p1, "profile"    # Landroid/net/sip/SipProfile;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getSipAddress()Ljavax/sip/address/Address;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljavax/sip/header/HeaderFactory;->createToHeader(Ljavax/sip/address/Address;Ljava/lang/String;)Ljavax/sip/header/ToHeader;

    move-result-object v0

    return-object v0
.end method

.method private createViaHeaders()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavax/sip/header/ViaHeader;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 148
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 149
    .local v2, "viaHeaders":Ljava/util/List;, "Ljava/util/List<Ljavax/sip/header/ViaHeader;>;"
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->getListeningPoint()Ljavax/sip/ListeningPoint;

    move-result-object v0

    .line 150
    .local v0, "lp":Ljavax/sip/ListeningPoint;
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface {v0}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljavax/sip/ListeningPoint;->getPort()I

    move-result v5

    invoke-interface {v0}, Ljavax/sip/ListeningPoint;->getTransport()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Ljavax/sip/header/HeaderFactory;->createViaHeader(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ViaHeader;

    move-result-object v1

    .line 152
    .local v1, "viaHeader":Ljavax/sip/header/ViaHeader;
    invoke-interface {v1}, Ljavax/sip/header/ViaHeader;->setRPort()V

    .line 153
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    return-object v2
.end method

.method private createWildcardContactHeader()Ljavax/sip/header/ContactHeader;
    .locals 2

    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface {v1}, Ljavax/sip/header/HeaderFactory;->createContactHeader()Ljavax/sip/header/ContactHeader;

    move-result-object v0

    .line 179
    .local v0, "contactHeader":Ljavax/sip/header/ContactHeader;
    invoke-interface {v0}, Ljavax/sip/header/ContactHeader;->setWildCard()V

    .line 180
    return-object v0
.end method

.method public static getCallId(Ljava/util/EventObject;)Ljava/lang/String;
    .locals 4
    .param p0, "event"    # Ljava/util/EventObject;

    .prologue
    .line 500
    if-nez p0, :cond_0

    const/4 v3, 0x0

    .line 521
    :goto_0
    return-object v3

    .line 501
    :cond_0
    instance-of v3, p0, Ljavax/sip/RequestEvent;

    if-eqz v3, :cond_1

    .line 502
    check-cast p0, Ljavax/sip/RequestEvent;

    .end local p0    # "event":Ljava/util/EventObject;
    invoke-virtual {p0}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/sip/SipHelper;->getCallId(Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 503
    .restart local p0    # "event":Ljava/util/EventObject;
    :cond_1
    instance-of v3, p0, Ljavax/sip/ResponseEvent;

    if-eqz v3, :cond_2

    .line 504
    check-cast p0, Ljavax/sip/ResponseEvent;

    .end local p0    # "event":Ljava/util/EventObject;
    invoke-virtual {p0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/sip/SipHelper;->getCallId(Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 505
    .restart local p0    # "event":Ljava/util/EventObject;
    :cond_2
    instance-of v3, p0, Ljavax/sip/DialogTerminatedEvent;

    if-eqz v3, :cond_3

    move-object v3, p0

    .line 506
    check-cast v3, Ljavax/sip/DialogTerminatedEvent;

    invoke-virtual {v3}, Ljavax/sip/DialogTerminatedEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v0

    .line 507
    .local v0, "dialog":Ljavax/sip/Dialog;
    check-cast p0, Ljavax/sip/DialogTerminatedEvent;

    .end local p0    # "event":Ljava/util/EventObject;
    invoke-virtual {p0}, Ljavax/sip/DialogTerminatedEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/sip/SipHelper;->getCallId(Ljavax/sip/Dialog;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 508
    .end local v0    # "dialog":Ljavax/sip/Dialog;
    .restart local p0    # "event":Ljava/util/EventObject;
    :cond_3
    instance-of v3, p0, Ljavax/sip/TransactionTerminatedEvent;

    if-eqz v3, :cond_5

    move-object v1, p0

    .line 509
    check-cast v1, Ljavax/sip/TransactionTerminatedEvent;

    .line 510
    .local v1, "e":Ljavax/sip/TransactionTerminatedEvent;
    invoke-virtual {v1}, Ljavax/sip/TransactionTerminatedEvent;->isServerTransaction()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Ljavax/sip/TransactionTerminatedEvent;->getServerTransaction()Ljavax/sip/ServerTransaction;

    move-result-object v3

    :goto_1
    invoke-static {v3}, Lcom/android/server/sip/SipHelper;->getCallId(Ljavax/sip/Transaction;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljavax/sip/TransactionTerminatedEvent;->getClientTransaction()Ljavax/sip/ClientTransaction;

    move-result-object v3

    goto :goto_1

    .line 514
    .end local v1    # "e":Ljavax/sip/TransactionTerminatedEvent;
    :cond_5
    invoke-virtual {p0}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v2

    .line 515
    .local v2, "source":Ljava/lang/Object;
    instance-of v3, v2, Ljavax/sip/Transaction;

    if-eqz v3, :cond_6

    .line 516
    check-cast v2, Ljavax/sip/Transaction;

    .end local v2    # "source":Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/sip/SipHelper;->getCallId(Ljavax/sip/Transaction;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 517
    .restart local v2    # "source":Ljava/lang/Object;
    :cond_6
    instance-of v3, v2, Ljavax/sip/Dialog;

    if-eqz v3, :cond_7

    .line 518
    check-cast v2, Ljavax/sip/Dialog;

    .end local v2    # "source":Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/sip/SipHelper;->getCallId(Ljavax/sip/Dialog;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 521
    .restart local v2    # "source":Ljava/lang/Object;
    :cond_7
    const-string v3, ""

    goto :goto_0
.end method

.method private static getCallId(Ljavax/sip/Dialog;)Ljava/lang/String;
    .locals 1
    .param p0, "dialog"    # Ljavax/sip/Dialog;

    .prologue
    .line 536
    invoke-interface {p0}, Ljavax/sip/Dialog;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCallId(Ljavax/sip/Transaction;)Ljava/lang/String;
    .locals 1
    .param p0, "transaction"    # Ljavax/sip/Transaction;

    .prologue
    .line 525
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljavax/sip/Transaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sip/SipHelper;->getCallId(Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static getCallId(Ljavax/sip/message/Message;)Ljava/lang/String;
    .locals 2
    .param p0, "message"    # Ljavax/sip/message/Message;

    .prologue
    .line 530
    const-string v1, "Call-ID"

    invoke-interface {p0, v1}, Ljavax/sip/message/Message;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/CallIdHeader;

    .line 532
    .local v0, "callIdHeader":Ljavax/sip/header/CallIdHeader;
    invoke-interface {v0}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getListeningPoint()Ljavax/sip/ListeningPoint;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    const-string v3, "UDP"

    invoke-interface {v2, v3}, Ljavax/sip/SipProvider;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v0

    .line 135
    .local v0, "lp":Ljavax/sip/ListeningPoint;
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    const-string v3, "TCP"

    invoke-interface {v2, v3}, Ljavax/sip/SipProvider;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v0

    .line 136
    :cond_0
    if-nez v0, :cond_1

    .line 137
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v2}, Ljavax/sip/SipProvider;->getListeningPoints()[Ljavax/sip/ListeningPoint;

    move-result-object v1

    .line 138
    .local v1, "lps":[Ljavax/sip/ListeningPoint;
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 140
    .end local v1    # "lps":[Ljavax/sip/ListeningPoint;
    :cond_1
    if-nez v0, :cond_2

    .line 141
    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "no listening point is available"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 143
    :cond_2
    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 540
    sget-object v0, Lcom/android/server/sip/SipHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    return-void
.end method


# virtual methods
.method public getServerTransaction(Ljavax/sip/RequestEvent;)Ljavax/sip/ServerTransaction;
    .locals 3
    .param p1, "event"    # Ljavax/sip/RequestEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getServerTransaction()Ljavax/sip/ServerTransaction;

    move-result-object v1

    .line 343
    .local v1, "transaction":Ljavax/sip/ServerTransaction;
    if-nez v1, :cond_0

    .line 344
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    .line 345
    .local v0, "request":Ljavax/sip/message/Request;
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v2, v0}, Ljavax/sip/SipProvider;->getNewServerTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ServerTransaction;

    move-result-object v1

    .line 347
    .end local v0    # "request":Ljavax/sip/message/Request;
    .end local v1    # "transaction":Ljavax/sip/ServerTransaction;
    :cond_0
    return-object v1
.end method

.method public handleChallenge(Ljavax/sip/ResponseEvent;Lgov/nist/javax/sip/clientauthutils/AccountManager;)Ljavax/sip/ClientTransaction;
    .locals 6
    .param p1, "responseEvent"    # Ljavax/sip/ResponseEvent;
    .param p2, "accountManager"    # Lgov/nist/javax/sip/clientauthutils/AccountManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 262
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mSipStack:Ljavax/sip/SipStack;

    check-cast v3, Lgov/nist/javax/sip/SipStackExt;

    iget-object v4, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface {v3, p2, v4}, Lgov/nist/javax/sip/SipStackExt;->getAuthenticationHelper(Lgov/nist/javax/sip/clientauthutils/AccountManager;Ljavax/sip/header/HeaderFactory;)Lgov/nist/javax/sip/clientauthutils/AuthenticationHelper;

    move-result-object v0

    .line 265
    .local v0, "authenticationHelper":Lgov/nist/javax/sip/clientauthutils/AuthenticationHelper;
    invoke-virtual {p1}, Ljavax/sip/ResponseEvent;->getClientTransaction()Ljavax/sip/ClientTransaction;

    move-result-object v2

    .line 266
    .local v2, "tid":Ljavax/sip/ClientTransaction;
    invoke-virtual {p1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    const/4 v5, 0x5

    invoke-interface {v0, v3, v2, v4, v5}, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelper;->handleChallenge(Ljavax/sip/message/Response;Ljavax/sip/ClientTransaction;Ljavax/sip/SipProvider;I)Ljavax/sip/ClientTransaction;

    move-result-object v1

    .line 268
    .local v1, "ct":Ljavax/sip/ClientTransaction;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send request with challenge response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljavax/sip/ClientTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/sip/SipHelper;->log(Ljava/lang/String;)V

    .line 270
    invoke-interface {v1}, Ljavax/sip/ClientTransaction;->sendRequest()V

    .line 271
    return-object v1
.end method

.method public sendBye(Ljavax/sip/Dialog;)V
    .locals 3
    .param p1, "dialog"    # Ljavax/sip/Dialog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 440
    const-string v1, "BYE"

    invoke-interface {p1, v1}, Ljavax/sip/Dialog;->createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v0

    .line 441
    .local v0, "byeRequest":Ljavax/sip/message/Request;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send BYE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipHelper;->log(Ljava/lang/String;)V

    .line 442
    iget-object v1, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v1, v0}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v1

    invoke-interface {p1, v1}, Ljavax/sip/Dialog;->sendRequest(Ljavax/sip/ClientTransaction;)V

    .line 443
    return-void
.end method

.method public sendCancel(Ljavax/sip/ClientTransaction;)V
    .locals 3
    .param p1, "inviteTransaction"    # Ljavax/sip/ClientTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 447
    invoke-interface {p1}, Ljavax/sip/ClientTransaction;->createCancel()Ljavax/sip/message/Request;

    move-result-object v0

    .line 448
    .local v0, "cancelRequest":Ljavax/sip/message/Request;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send CANCEL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipHelper;->log(Ljava/lang/String;)V

    .line 449
    iget-object v1, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v1, v0}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/ClientTransaction;->sendRequest()V

    .line 450
    return-void
.end method

.method public sendInvite(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Ljava/lang/String;Ljava/lang/String;Lgov/nist/javax/sip/header/extensions/ReferredByHeader;Ljava/lang/String;)Ljavax/sip/ClientTransaction;
    .locals 6
    .param p1, "caller"    # Landroid/net/sip/SipProfile;
    .param p2, "callee"    # Landroid/net/sip/SipProfile;
    .param p3, "sessionDescription"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "referredBy"    # Lgov/nist/javax/sip/header/extensions/ReferredByHeader;
    .param p6, "replaces"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 296
    :try_start_0
    const-string v3, "INVITE"

    invoke-direct {p0, v3, p1, p2, p4}, Lcom/android/server/sip/SipHelper;->createRequest(Ljava/lang/String;Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v2

    .line 297
    .local v2, "request":Ljavax/sip/message/Request;
    if-eqz p5, :cond_0

    invoke-interface {v2, p5}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 298
    :cond_0
    if-eqz p6, :cond_1

    .line 299
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v4, "Replaces"

    invoke-interface {v3, v4, p6}, Ljavax/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 302
    :cond_1
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v4, "application"

    const-string v5, "sdp"

    invoke-interface {v3, v4, v5}, Ljavax/sip/header/HeaderFactory;->createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ContentTypeHeader;

    move-result-object v3

    invoke-interface {v2, p3, v3}, Ljavax/sip/message/Request;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    .line 305
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v3, v2}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v0

    .line 307
    .local v0, "clientTransaction":Ljavax/sip/ClientTransaction;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send INVITE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/sip/SipHelper;->log(Ljava/lang/String;)V

    .line 308
    invoke-interface {v0}, Ljavax/sip/ClientTransaction;->sendRequest()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    return-object v0

    .line 310
    .end local v0    # "clientTransaction":Ljavax/sip/ClientTransaction;
    .end local v2    # "request":Ljavax/sip/message/Request;
    :catch_0
    move-exception v1

    .line 311
    .local v1, "e":Ljava/text/ParseException;
    new-instance v3, Ljavax/sip/SipException;

    const-string v4, "sendInvite()"

    invoke-direct {v3, v4, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public sendInviteAck(Ljavax/sip/ResponseEvent;Ljavax/sip/Dialog;)V
    .locals 6
    .param p1, "event"    # Ljavax/sip/ResponseEvent;
    .param p2, "dialog"    # Ljavax/sip/Dialog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 431
    invoke-virtual {p1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v1

    .line 432
    .local v1, "response":Ljavax/sip/message/Response;
    const-string v4, "CSeq"

    invoke-interface {v1, v4}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v4

    check-cast v4, Ljavax/sip/header/CSeqHeader;

    invoke-interface {v4}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v2

    .line 434
    .local v2, "cseq":J
    invoke-interface {p2, v2, v3}, Ljavax/sip/Dialog;->createAck(J)Ljavax/sip/message/Request;

    move-result-object v0

    .line 435
    .local v0, "ack":Ljavax/sip/message/Request;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send ACK: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/sip/SipHelper;->log(Ljava/lang/String;)V

    .line 436
    invoke-interface {p2, v0}, Ljavax/sip/Dialog;->sendAck(Ljavax/sip/message/Request;)V

    .line 437
    return-void
.end method

.method public sendInviteBusyHere(Ljavax/sip/RequestEvent;Ljavax/sip/ServerTransaction;)V
    .locals 5
    .param p1, "event"    # Ljavax/sip/RequestEvent;
    .param p2, "inviteTransaction"    # Ljavax/sip/ServerTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 409
    :try_start_0
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v1

    .line 410
    .local v1, "request":Ljavax/sip/message/Request;
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    const/16 v4, 0x1e6

    invoke-interface {v3, v4, v1}, Ljavax/sip/message/MessageFactory;->createResponse(ILjavax/sip/message/Request;)Ljavax/sip/message/Response;

    move-result-object v2

    .line 413
    .local v2, "response":Ljavax/sip/message/Response;
    if-nez p2, :cond_0

    .line 414
    invoke-virtual {p0, p1}, Lcom/android/server/sip/SipHelper;->getServerTransaction(Ljavax/sip/RequestEvent;)Ljavax/sip/ServerTransaction;

    move-result-object p2

    .line 417
    :cond_0
    invoke-interface {p2}, Ljavax/sip/ServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v3

    sget-object v4, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    if-eq v3, v4, :cond_1

    .line 418
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send BUSY HERE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/sip/SipHelper;->log(Ljava/lang/String;)V

    .line 419
    invoke-interface {p2, v2}, Ljavax/sip/ServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :cond_1
    return-void

    .line 421
    .end local v1    # "request":Ljavax/sip/message/Request;
    .end local v2    # "response":Ljavax/sip/message/Response;
    :catch_0
    move-exception v0

    .line 422
    .local v0, "e":Ljava/text/ParseException;
    new-instance v3, Ljavax/sip/SipException;

    const-string v4, "sendInviteBusyHere()"

    invoke-direct {v3, v4, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public sendInviteOk(Ljavax/sip/RequestEvent;Landroid/net/sip/SipProfile;Ljava/lang/String;Ljavax/sip/ServerTransaction;Ljava/lang/String;I)Ljavax/sip/ServerTransaction;
    .locals 6
    .param p1, "event"    # Ljavax/sip/RequestEvent;
    .param p2, "localProfile"    # Landroid/net/sip/SipProfile;
    .param p3, "sessionDescription"    # Ljava/lang/String;
    .param p4, "inviteTransaction"    # Ljavax/sip/ServerTransaction;
    .param p5, "externalIp"    # Ljava/lang/String;
    .param p6, "externalPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 382
    :try_start_0
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v1

    .line 383
    .local v1, "request":Ljavax/sip/message/Request;
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    const/16 v4, 0xc8

    invoke-interface {v3, v4, v1}, Ljavax/sip/message/MessageFactory;->createResponse(ILjavax/sip/message/Request;)Ljavax/sip/message/Response;

    move-result-object v2

    .line 385
    .local v2, "response":Ljavax/sip/message/Response;
    invoke-direct {p0, p2, p5, p6}, Lcom/android/server/sip/SipHelper;->createContactHeader(Landroid/net/sip/SipProfile;Ljava/lang/String;I)Ljavax/sip/header/ContactHeader;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/sip/message/Response;->addHeader(Ljavax/sip/header/Header;)V

    .line 387
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v4, "application"

    const-string v5, "sdp"

    invoke-interface {v3, v4, v5}, Ljavax/sip/header/HeaderFactory;->createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ContentTypeHeader;

    move-result-object v3

    invoke-interface {v2, p3, v3}, Ljavax/sip/message/Response;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    .line 391
    if-nez p4, :cond_0

    .line 392
    invoke-virtual {p0, p1}, Lcom/android/server/sip/SipHelper;->getServerTransaction(Ljavax/sip/RequestEvent;)Ljavax/sip/ServerTransaction;

    move-result-object p4

    .line 395
    :cond_0
    invoke-interface {p4}, Ljavax/sip/ServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v3

    sget-object v4, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    if-eq v3, v4, :cond_1

    .line 396
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send OK: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/sip/SipHelper;->log(Ljava/lang/String;)V

    .line 397
    invoke-interface {p4, v2}, Ljavax/sip/ServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :cond_1
    return-object p4

    .line 401
    .end local v1    # "request":Ljavax/sip/message/Request;
    .end local v2    # "response":Ljavax/sip/message/Response;
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Ljava/text/ParseException;
    new-instance v3, Ljavax/sip/SipException;

    const-string v4, "sendInviteOk()"

    invoke-direct {v3, v4, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public sendInviteRequestTerminated(Ljavax/sip/message/Request;Ljavax/sip/ServerTransaction;)V
    .locals 4
    .param p1, "inviteRequest"    # Ljavax/sip/message/Request;
    .param p2, "inviteTransaction"    # Ljavax/sip/ServerTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 490
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    const/16 v3, 0x1e7

    invoke-interface {v2, v3, p1}, Ljavax/sip/message/MessageFactory;->createResponse(ILjavax/sip/message/Request;)Ljavax/sip/message/Response;

    move-result-object v1

    .line 492
    .local v1, "response":Ljavax/sip/message/Response;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/sip/SipHelper;->log(Ljava/lang/String;)V

    .line 493
    invoke-interface {p2, v1}, Ljavax/sip/ServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    return-void

    .line 494
    .end local v1    # "response":Ljavax/sip/message/Response;
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Ljava/text/ParseException;
    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "sendInviteRequestTerminated()"

    invoke-direct {v2, v3, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public sendOptions(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/ClientTransaction;
    .locals 5
    .param p1, "caller"    # Landroid/net/sip/SipProfile;
    .param p2, "callee"    # Landroid/net/sip/SipProfile;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 203
    if-ne p1, p2, :cond_0

    :try_start_0
    const-string v3, "OPTIONS"

    invoke-direct {p0, v3, p1, p3}, Lcom/android/server/sip/SipHelper;->createRequest(Ljava/lang/String;Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v2

    .line 207
    .local v2, "request":Ljavax/sip/message/Request;
    :goto_0
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v3, v2}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v0

    .line 209
    .local v0, "clientTransaction":Ljavax/sip/ClientTransaction;
    invoke-interface {v0}, Ljavax/sip/ClientTransaction;->sendRequest()V

    .line 210
    return-object v0

    .line 203
    .end local v0    # "clientTransaction":Ljavax/sip/ClientTransaction;
    .end local v2    # "request":Ljavax/sip/message/Request;
    :cond_0
    const-string v3, "OPTIONS"

    invoke-direct {p0, v3, p1, p2, p3}, Lcom/android/server/sip/SipHelper;->createRequest(Ljava/lang/String;Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/message/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 211
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljavax/sip/SipException;

    const-string v4, "sendOptions()"

    invoke-direct {v3, v4, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public sendReferNotify(Ljavax/sip/Dialog;Ljava/lang/String;)V
    .locals 5
    .param p1, "dialog"    # Ljavax/sip/Dialog;
    .param p2, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 471
    :try_start_0
    const-string v2, "NOTIFY"

    invoke-interface {p1, v2}, Ljavax/sip/Dialog;->createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v1

    .line 472
    .local v1, "request":Ljavax/sip/message/Request;
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v3, "active;expires=60"

    invoke-interface {v2, v3}, Ljavax/sip/header/HeaderFactory;->createSubscriptionStateHeader(Ljava/lang/String;)Ljavax/sip/header/SubscriptionStateHeader;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 475
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v3, "message"

    const-string v4, "sipfrag"

    invoke-interface {v2, v3, v4}, Ljavax/sip/header/HeaderFactory;->createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ContentTypeHeader;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Ljavax/sip/message/Request;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    .line 478
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v3, "refer"

    invoke-interface {v2, v3}, Ljavax/sip/header/HeaderFactory;->createEventHeader(Ljava/lang/String;)Ljavax/sip/header/EventHeader;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send NOTIFY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/sip/SipHelper;->log(Ljava/lang/String;)V

    .line 481
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v2, v1}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v2

    invoke-interface {p1, v2}, Ljavax/sip/Dialog;->sendRequest(Ljavax/sip/ClientTransaction;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    return-void

    .line 482
    .end local v1    # "request":Ljavax/sip/message/Request;
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Ljava/text/ParseException;
    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "sendReferNotify()"

    invoke-direct {v2, v3, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public sendRegister(Landroid/net/sip/SipProfile;Ljava/lang/String;I)Ljavax/sip/ClientTransaction;
    .locals 5
    .param p1, "userProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "expiry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 219
    :try_start_0
    const-string v3, "REGISTER"

    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/sip/SipHelper;->createRequest(Ljava/lang/String;Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v2

    .line 220
    .local v2, "request":Ljavax/sip/message/Request;
    if-nez p3, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createWildcardContactHeader()Ljavax/sip/header/ContactHeader;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 227
    :goto_0
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface {v3, p3}, Ljavax/sip/header/HeaderFactory;->createExpiresHeader(I)Ljavax/sip/header/ExpiresHeader;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 229
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v3, v2}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v0

    .line 231
    .local v0, "clientTransaction":Ljavax/sip/ClientTransaction;
    invoke-interface {v0}, Ljavax/sip/ClientTransaction;->sendRequest()V

    .line 232
    return-object v0

    .line 225
    .end local v0    # "clientTransaction":Ljavax/sip/ClientTransaction;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipHelper;->createContactHeader(Landroid/net/sip/SipProfile;)Ljavax/sip/header/ContactHeader;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 233
    .end local v2    # "request":Ljavax/sip/message/Request;
    :catch_0
    move-exception v1

    .line 234
    .local v1, "e":Ljava/text/ParseException;
    new-instance v3, Ljavax/sip/SipException;

    const-string v4, "sendRegister()"

    invoke-direct {v3, v4, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public sendReinvite(Ljavax/sip/Dialog;Ljava/lang/String;)Ljavax/sip/ClientTransaction;
    .locals 7
    .param p1, "dialog"    # Ljavax/sip/Dialog;
    .param p2, "sessionDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 318
    :try_start_0
    const-string v4, "INVITE"

    invoke-interface {p1, v4}, Ljavax/sip/Dialog;->createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v2

    .line 319
    .local v2, "request":Ljavax/sip/message/Request;
    iget-object v4, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v5, "application"

    const-string v6, "sdp"

    invoke-interface {v4, v5, v6}, Ljavax/sip/header/HeaderFactory;->createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ContentTypeHeader;

    move-result-object v4

    invoke-interface {v2, p2, v4}, Ljavax/sip/message/Request;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    .line 327
    const-string v4, "Via"

    invoke-interface {v2, v4}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v3

    check-cast v3, Ljavax/sip/header/ViaHeader;

    .line 328
    .local v3, "viaHeader":Ljavax/sip/header/ViaHeader;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljavax/sip/header/ViaHeader;->setRPort()V

    .line 330
    :cond_0
    iget-object v4, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v4, v2}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v0

    .line 332
    .local v0, "clientTransaction":Ljavax/sip/ClientTransaction;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send RE-INVITE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/sip/SipHelper;->log(Ljava/lang/String;)V

    .line 333
    invoke-interface {p1, v0}, Ljavax/sip/Dialog;->sendRequest(Ljavax/sip/ClientTransaction;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    return-object v0

    .line 335
    .end local v0    # "clientTransaction":Ljavax/sip/ClientTransaction;
    .end local v2    # "request":Ljavax/sip/message/Request;
    .end local v3    # "viaHeader":Ljavax/sip/header/ViaHeader;
    :catch_0
    move-exception v1

    .line 336
    .local v1, "e":Ljava/text/ParseException;
    new-instance v4, Ljavax/sip/SipException;

    const-string v5, "sendReinvite()"

    invoke-direct {v4, v5, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public sendResponse(Ljavax/sip/RequestEvent;I)V
    .locals 5
    .param p1, "event"    # Ljavax/sip/RequestEvent;
    .param p2, "responseCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 455
    :try_start_0
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v1

    .line 456
    .local v1, "request":Ljavax/sip/message/Request;
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    invoke-interface {v3, p2, v1}, Ljavax/sip/message/MessageFactory;->createResponse(ILjavax/sip/message/Request;)Ljavax/sip/message/Response;

    move-result-object v2

    .line 458
    .local v2, "response":Ljavax/sip/message/Response;
    const-string v3, "OPTIONS"

    invoke-interface {v1}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 462
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/sip/SipHelper;->getServerTransaction(Ljavax/sip/RequestEvent;)Ljavax/sip/ServerTransaction;

    move-result-object v3

    invoke-interface {v3, v2}, Ljavax/sip/ServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V

    .line 466
    return-void

    .line 460
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/sip/SipHelper;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 463
    .end local v1    # "request":Ljavax/sip/message/Request;
    .end local v2    # "response":Ljavax/sip/message/Response;
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Ljava/text/ParseException;
    new-instance v3, Ljavax/sip/SipException;

    const-string v4, "sendResponse()"

    invoke-direct {v3, v4, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public sendRinging(Ljavax/sip/RequestEvent;Ljava/lang/String;)Ljavax/sip/ServerTransaction;
    .locals 7
    .param p1, "event"    # Ljavax/sip/RequestEvent;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 357
    :try_start_0
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v1

    .line 358
    .local v1, "request":Ljavax/sip/message/Request;
    invoke-virtual {p0, p1}, Lcom/android/server/sip/SipHelper;->getServerTransaction(Ljavax/sip/RequestEvent;)Ljavax/sip/ServerTransaction;

    move-result-object v4

    .line 360
    .local v4, "transaction":Ljavax/sip/ServerTransaction;
    iget-object v5, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    const/16 v6, 0xb4

    invoke-interface {v5, v6, v1}, Ljavax/sip/message/MessageFactory;->createResponse(ILjavax/sip/message/Request;)Ljavax/sip/message/Response;

    move-result-object v2

    .line 363
    .local v2, "response":Ljavax/sip/message/Response;
    const-string v5, "To"

    invoke-interface {v2, v5}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v3

    check-cast v3, Ljavax/sip/header/ToHeader;

    .line 364
    .local v3, "toHeader":Ljavax/sip/header/ToHeader;
    invoke-interface {v3, p2}, Ljavax/sip/header/ToHeader;->setTag(Ljava/lang/String;)V

    .line 365
    invoke-interface {v2, v3}, Ljavax/sip/message/Response;->addHeader(Ljavax/sip/header/Header;)V

    .line 366
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send RINGING: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/sip/SipHelper;->log(Ljava/lang/String;)V

    .line 367
    invoke-interface {v4, v2}, Ljavax/sip/ServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    return-object v4

    .line 369
    .end local v1    # "request":Ljavax/sip/message/Request;
    .end local v2    # "response":Ljavax/sip/message/Response;
    .end local v3    # "toHeader":Ljavax/sip/header/ToHeader;
    .end local v4    # "transaction":Ljavax/sip/ServerTransaction;
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/text/ParseException;
    new-instance v5, Ljavax/sip/SipException;

    const-string v6, "sendRinging()"

    invoke-direct {v5, v6, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method
