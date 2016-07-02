.class public abstract Lorg/gsma/joyn/chat/GroupChatListener;
.super Lorg/gsma/joyn/chat/IGroupChatListener$Stub;
.source "GroupChatListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onAbortConversationResult(II)V
.end method

.method public abstract onChairmanChanged(Ljava/lang/String;)V
.end method

.method public abstract onComposingEvent(Ljava/lang/String;Z)V
.end method

.method public abstract onConferenceNotify(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/gsma/joyn/chat/ConferenceUser;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onGroupChatDissolved()V
.end method

.method public abstract onInviteParticipantsResult(ILjava/lang/String;)V
.end method

.method public abstract onModifyNickNameResult(II)V
.end method

.method public abstract onModifySubjectResult(II)V
.end method

.method public abstract onNewGeoloc(Lorg/gsma/joyn/chat/GeolocMessage;)V
.end method

.method public abstract onNewMessage(Lorg/gsma/joyn/chat/ChatMessage;)V
.end method

.method public abstract onNickNameChanged(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onParticipantDisconnected(Ljava/lang/String;)V
.end method

.method public abstract onParticipantJoined(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onParticipantLeft(Ljava/lang/String;)V
.end method

.method public abstract onQuitConversationResult(II)V
.end method

.method public abstract onRemoveParticipantResult(IILjava/lang/String;)V
.end method

.method public abstract onReportFailedMessage(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract onReportMeKickedOut(Ljava/lang/String;)V
.end method

.method public abstract onReportMessageDelivered(Ljava/lang/String;)V
.end method

.method public abstract onReportMessageDeliveredContact(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onReportMessageDisplayed(Ljava/lang/String;)V
.end method

.method public abstract onReportMessageDisplayedContact(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onReportMessageFailed(Ljava/lang/String;)V
.end method

.method public abstract onReportMessageFailedContact(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onReportParticipantKickedOut(Ljava/lang/String;)V
.end method

.method public abstract onReportSentMessage(Ljava/lang/String;)V
.end method

.method public abstract onSessionAborted()V
.end method

.method public abstract onSessionAbortedbyChairman()V
.end method

.method public abstract onSessionError(I)V
.end method

.method public abstract onSessionStarted()V
.end method

.method public abstract onSetChairmanResult(II)V
.end method

.method public abstract onSubjectChanged(Ljava/lang/String;)V
.end method
