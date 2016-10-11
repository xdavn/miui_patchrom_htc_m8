.class public abstract Lcom/android/ims/internal/IImsCallSessionListener$Stub;
.super Landroid/os/Binder;
.source "IImsCallSessionListener.java"

# interfaces
.implements Lcom/android/ims/internal/IImsCallSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsCallSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsCallSessionListener"

.field static final TRANSACTION_callSessionConferenceExtendFailed:I = 0x12

.field static final TRANSACTION_callSessionConferenceExtendReceived:I = 0x13

.field static final TRANSACTION_callSessionConferenceExtended:I = 0x11

.field static final TRANSACTION_callSessionConferenceStateUpdated:I = 0x18

.field static final TRANSACTION_callSessionHandover:I = 0x1a

.field static final TRANSACTION_callSessionHandoverFailed:I = 0x1b

.field static final TRANSACTION_callSessionHeld:I = 0x5

.field static final TRANSACTION_callSessionHoldFailed:I = 0x6

.field static final TRANSACTION_callSessionHoldReceived:I = 0x7

.field static final TRANSACTION_callSessionInviteParticipantsRequestDelivered:I = 0x14

.field static final TRANSACTION_callSessionInviteParticipantsRequestFailed:I = 0x15

.field static final TRANSACTION_callSessionMergeComplete:I = 0xc

.field static final TRANSACTION_callSessionMergeFailed:I = 0xd

.field static final TRANSACTION_callSessionMergeStarted:I = 0xb

.field static final TRANSACTION_callSessionMultipartyStateChanged:I = 0x1d

.field static final TRANSACTION_callSessionProgressing:I = 0x1

.field static final TRANSACTION_callSessionRemoveParticipantsRequestDelivered:I = 0x16

.field static final TRANSACTION_callSessionRemoveParticipantsRequestFailed:I = 0x17

.field static final TRANSACTION_callSessionResumeFailed:I = 0x9

.field static final TRANSACTION_callSessionResumeReceived:I = 0xa

.field static final TRANSACTION_callSessionResumed:I = 0x8

.field static final TRANSACTION_callSessionStartFailed:I = 0x3

.field static final TRANSACTION_callSessionStarted:I = 0x2

.field static final TRANSACTION_callSessionSuppServiceReceived:I = 0x1e

.field static final TRANSACTION_callSessionTerminated:I = 0x4

.field static final TRANSACTION_callSessionTtyModeReceived:I = 0x1c

.field static final TRANSACTION_callSessionUpdateFailed:I = 0xf

.field static final TRANSACTION_callSessionUpdateReceived:I = 0x10

.field static final TRANSACTION_callSessionUpdated:I = 0xe

.field static final TRANSACTION_callSessionUssdMessageReceived:I = 0x19


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSessionListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string v1, "com.android.ims.internal.IImsCallSessionListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/android/ims/internal/IImsCallSessionListener;

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 513
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 49
    :sswitch_0
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :sswitch_1
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 58
    .local v0, "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 59
    sget-object v5, Lcom/android/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsStreamMediaProfile;

    .line 64
    .local v1, "_arg1":Lcom/android/ims/ImsStreamMediaProfile;
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionProgressing(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 62
    .end local v1    # "_arg1":Lcom/android/ims/ImsStreamMediaProfile;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsStreamMediaProfile;
    goto :goto_1

    .line 70
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsStreamMediaProfile;
    :sswitch_2
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 74
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 75
    sget-object v5, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsCallProfile;

    .line 80
    .local v1, "_arg1":Lcom/android/ims/ImsCallProfile;
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 78
    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_2

    .line 86
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_3
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 90
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 91
    sget-object v5, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsReasonInfo;

    .line 96
    .local v1, "_arg1":Lcom/android/ims/ImsReasonInfo;
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionStartFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 94
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_3

    .line 102
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_4
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 106
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 107
    sget-object v5, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsReasonInfo;

    .line 112
    .restart local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :goto_4
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionTerminated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 110
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_4

    .line 118
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_5
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 122
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 123
    sget-object v5, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsCallProfile;

    .line 128
    .local v1, "_arg1":Lcom/android/ims/ImsCallProfile;
    :goto_5
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionHeld(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 126
    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_5

    .line 134
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_6
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 138
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    .line 139
    sget-object v5, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsReasonInfo;

    .line 144
    .local v1, "_arg1":Lcom/android/ims/ImsReasonInfo;
    :goto_6
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionHoldFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 142
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_6

    .line 150
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_7
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 154
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    .line 155
    sget-object v5, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsCallProfile;

    .line 160
    .local v1, "_arg1":Lcom/android/ims/ImsCallProfile;
    :goto_7
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionHoldReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 158
    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_7

    .line 166
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_8
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 170
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    .line 171
    sget-object v5, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsCallProfile;

    .line 176
    .restart local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :goto_8
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionResumed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 174
    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_8

    .line 182
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_9
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 186
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    .line 187
    sget-object v5, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsReasonInfo;

    .line 192
    .local v1, "_arg1":Lcom/android/ims/ImsReasonInfo;
    :goto_9
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionResumeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 190
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_9

    .line 198
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_a
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 202
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    .line 203
    sget-object v5, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsCallProfile;

    .line 208
    .local v1, "_arg1":Lcom/android/ims/ImsCallProfile;
    :goto_a
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionResumeReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 206
    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :cond_9
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_a

    .line 214
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_b
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 218
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    .line 220
    .local v1, "_arg1":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    .line 221
    sget-object v5, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/ImsCallProfile;

    .line 226
    .local v2, "_arg2":Lcom/android/ims/ImsCallProfile;
    :goto_b
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 224
    .end local v2    # "_arg2":Lcom/android/ims/ImsCallProfile;
    :cond_a
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcom/android/ims/ImsCallProfile;
    goto :goto_b

    .line 232
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/internal/IImsCallSession;
    .end local v2    # "_arg2":Lcom/android/ims/ImsCallProfile;
    :sswitch_c
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 235
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p0, v0}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 241
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    :sswitch_d
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 245
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    .line 246
    sget-object v5, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsReasonInfo;

    .line 251
    .local v1, "_arg1":Lcom/android/ims/ImsReasonInfo;
    :goto_c
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionMergeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 249
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :cond_b
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_c

    .line 257
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_e
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 261
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    .line 262
    sget-object v5, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsCallProfile;

    .line 267
    .local v1, "_arg1":Lcom/android/ims/ImsCallProfile;
    :goto_d
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 268
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 265
    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :cond_c
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_d

    .line 273
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_f
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 277
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    .line 278
    sget-object v5, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsReasonInfo;

    .line 283
    .local v1, "_arg1":Lcom/android/ims/ImsReasonInfo;
    :goto_e
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionUpdateFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 281
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :cond_d
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_e

    .line 289
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_10
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 293
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    .line 294
    sget-object v5, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsCallProfile;

    .line 299
    .local v1, "_arg1":Lcom/android/ims/ImsCallProfile;
    :goto_f
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionUpdateReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 297
    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :cond_e
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_f

    .line 305
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_11
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 309
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    .line 311
    .local v1, "_arg1":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f

    .line 312
    sget-object v5, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/ImsCallProfile;

    .line 317
    .restart local v2    # "_arg2":Lcom/android/ims/ImsCallProfile;
    :goto_10
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 315
    .end local v2    # "_arg2":Lcom/android/ims/ImsCallProfile;
    :cond_f
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcom/android/ims/ImsCallProfile;
    goto :goto_10

    .line 323
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/internal/IImsCallSession;
    .end local v2    # "_arg2":Lcom/android/ims/ImsCallProfile;
    :sswitch_12
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 327
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    .line 328
    sget-object v5, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsReasonInfo;

    .line 333
    .local v1, "_arg1":Lcom/android/ims/ImsReasonInfo;
    :goto_11
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionConferenceExtendFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 331
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :cond_10
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_11

    .line 339
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_13
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 343
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    .line 345
    .local v1, "_arg1":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_11

    .line 346
    sget-object v5, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/ImsCallProfile;

    .line 351
    .restart local v2    # "_arg2":Lcom/android/ims/ImsCallProfile;
    :goto_12
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 349
    .end local v2    # "_arg2":Lcom/android/ims/ImsCallProfile;
    :cond_11
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcom/android/ims/ImsCallProfile;
    goto :goto_12

    .line 357
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/internal/IImsCallSession;
    .end local v2    # "_arg2":Lcom/android/ims/ImsCallProfile;
    :sswitch_14
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 360
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p0, v0}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionInviteParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V

    .line 361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 366
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    :sswitch_15
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 370
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12

    .line 371
    sget-object v5, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsReasonInfo;

    .line 376
    .local v1, "_arg1":Lcom/android/ims/ImsReasonInfo;
    :goto_13
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionInviteParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 374
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :cond_12
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_13

    .line 382
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_16
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 385
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p0, v0}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionRemoveParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 391
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    :sswitch_17
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 395
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13

    .line 396
    sget-object v5, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsReasonInfo;

    .line 401
    .restart local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :goto_14
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionRemoveParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 402
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 399
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :cond_13
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_14

    .line 407
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_18
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 411
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_14

    .line 412
    sget-object v5, Lcom/android/ims/ImsConferenceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsConferenceState;

    .line 417
    .local v1, "_arg1":Lcom/android/ims/ImsConferenceState;
    :goto_15
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionConferenceStateUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsConferenceState;)V

    .line 418
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 415
    .end local v1    # "_arg1":Lcom/android/ims/ImsConferenceState;
    :cond_14
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsConferenceState;
    goto :goto_15

    .line 423
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsConferenceState;
    :sswitch_19
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 427
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 429
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 430
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionUssdMessageReceived(Lcom/android/ims/internal/IImsCallSession;ILjava/lang/String;)V

    .line 431
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 436
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :sswitch_1a
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 440
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 442
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 444
    .local v2, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    .line 445
    sget-object v5, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/ImsReasonInfo;

    .line 450
    .local v3, "_arg3":Lcom/android/ims/ImsReasonInfo;
    :goto_16
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionHandover(Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V

    .line 451
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 448
    .end local v3    # "_arg3":Lcom/android/ims/ImsReasonInfo;
    :cond_15
    const/4 v3, 0x0

    .restart local v3    # "_arg3":Lcom/android/ims/ImsReasonInfo;
    goto :goto_16

    .line 456
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Lcom/android/ims/ImsReasonInfo;
    :sswitch_1b
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 460
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 462
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 464
    .restart local v2    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16

    .line 465
    sget-object v5, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/ImsReasonInfo;

    .line 470
    .restart local v3    # "_arg3":Lcom/android/ims/ImsReasonInfo;
    :goto_17
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionHandoverFailed(Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V

    .line 471
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 468
    .end local v3    # "_arg3":Lcom/android/ims/ImsReasonInfo;
    :cond_16
    const/4 v3, 0x0

    .restart local v3    # "_arg3":Lcom/android/ims/ImsReasonInfo;
    goto :goto_17

    .line 476
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Lcom/android/ims/ImsReasonInfo;
    :sswitch_1c
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 480
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 481
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionTtyModeReceived(Lcom/android/ims/internal/IImsCallSession;I)V

    .line 482
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 487
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":I
    :sswitch_1d
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 491
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_17

    move v1, v4

    .line 492
    .local v1, "_arg1":Z
    :goto_18
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionMultipartyStateChanged(Lcom/android/ims/internal/IImsCallSession;Z)V

    .line 493
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 491
    .end local v1    # "_arg1":Z
    :cond_17
    const/4 v1, 0x0

    goto :goto_18

    .line 498
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    :sswitch_1e
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 502
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_18

    .line 503
    sget-object v5, Lcom/android/ims/ImsSuppServiceNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsSuppServiceNotification;

    .line 508
    .local v1, "_arg1":Lcom/android/ims/ImsSuppServiceNotification;
    :goto_19
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionSuppServiceReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsSuppServiceNotification;)V

    .line 509
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 506
    .end local v1    # "_arg1":Lcom/android/ims/ImsSuppServiceNotification;
    :cond_18
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsSuppServiceNotification;
    goto :goto_19

    .line 45
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
