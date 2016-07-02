.class public Lorg/gsma/joyn/H264Config;
.super Ljava/lang/Object;
.source "H264Config.java"


# static fields
.field public static final BIT_RATE:I = 0xfa00

.field public static final CIF_HEIGHT:I = 0x120

.field public static final CIF_WIDTH:I = 0x160

.field public static final CLOCK_RATE:I = 0x15f90

.field public static final CODEC_NAME:Ljava/lang/String; = "H264"

.field public static final CODEC_PARAMS:Ljava/lang/String; = "profile-level-id=42900b;packetization-mode=1"

.field public static final CODEC_PARAM_PACKETIZATIONMODE:Ljava/lang/String; = "packetization-mode"

.field public static final CODEC_PARAM_PROFILEID:Ljava/lang/String; = "profile-level-id"

.field public static final CODEC_PARAM_SPROP_PARAMETER_SETS:Ljava/lang/String; = "sprop-parameter-sets"

.field public static final FRAME_RATE:I = 0xf

.field public static final QCIF_HEIGHT:I = 0x90

.field public static final QCIF_WIDTH:I = 0xb0

.field public static final QVGA_HEIGHT:I = 0xf0

.field public static final QVGA_WIDTH:I = 0x140

.field public static final VGA_HEIGHT:I = 0x1e0

.field public static final VGA_WIDTH:I = 0x280

.field public static final VIDEO_HEIGHT:I = 0x90

.field public static final VIDEO_WIDTH:I = 0xb0


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCodecPacketizationMode(Ljava/lang/String;)I
    .locals 3
    .param p0, "codecParams"    # Ljava/lang/String;

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "packetization_mode":I
    const-string v2, "packetization-mode"

    invoke-static {v2, p0}, Lorg/gsma/joyn/H264Config;->getParameterValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "valPackMode":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 107
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 111
    :cond_0
    :goto_0
    return v0

    .line 108
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getCodecProfileLevelId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "codecParams"    # Ljava/lang/String;

    .prologue
    .line 121
    const-string v0, "profile-level-id"

    invoke-static {v0, p0}, Lorg/gsma/joyn/H264Config;->getParameterValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getParameterValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "paramKey"    # Ljava/lang/String;
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 134
    const/4 v2, 0x0

    .line 135
    .local v2, "value":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 137
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(?<="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=).*?(?=;|$)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 138
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 139
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 146
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "p":Ljava/util/regex/Pattern;
    :cond_0
    :goto_0
    return-object v2

    .line 142
    :catch_0
    move-exception v3

    goto :goto_0
.end method
