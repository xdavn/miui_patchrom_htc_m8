.class public abstract Lcom/android/internal/telephony/IHtcTelephony$Stub;
.super Landroid/os/Binder;
.source "IHtcTelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/IHtcTelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IHtcTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IHtcTelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IHtcTelephony"

.field static final TRANSACTION_cancelMissedCallsNotification:I = 0x10

.field static final TRANSACTION_dialWithoutDelay:I = 0x5

.field static final TRANSACTION_generalGetter:I = 0x1

.field static final TRANSACTION_generalSetter:I = 0x2

.field static final TRANSACTION_getHtcDeviceSvn:I = 0x3

.field static final TRANSACTION_getHtcNetworkType:I = 0xa

.field static final TRANSACTION_getPdnSettings2:I = 0x7

.field static final TRANSACTION_getPhoneState:I = 0xc

.field static final TRANSACTION_getServiceState:I = 0x4

.field static final TRANSACTION_htcCdmaExitRadioPowerSaveMode:I = 0x6

.field static final TRANSACTION_isInService:I = 0xe

.field static final TRANSACTION_requestGetLTERFBandInfo:I = 0xf

.field static final TRANSACTION_requestGetSIMType:I = 0xb

.field static final TRANSACTION_resetPdnForSettingsChange2:I = 0x9

.field static final TRANSACTION_setPdnSettings2:I = 0x8

.field static final TRANSACTION_showIncallScreen:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IHtcTelephony;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "com.android.internal.telephony.IHtcTelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/IHtcTelephony;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/android/internal/telephony/IHtcTelephony;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/IHtcTelephony$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 227
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 47
    :sswitch_0
    const-string v3, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v5, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 57
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 62
    .local v1, "_arg1":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 63
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v2, :cond_1

    .line 65
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    invoke-virtual {v2, p3, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 60
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_result":Landroid/os/Bundle;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_1

    .line 69
    .restart local v2    # "_result":Landroid/os/Bundle;
    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 75
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_result":Landroid/os/Bundle;
    :sswitch_2
    const-string v5, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 80
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 85
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 86
    .restart local v2    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v2, :cond_3

    .line 88
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    invoke-virtual {v2, p3, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 83
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_result":Landroid/os/Bundle;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_2

    .line 92
    .restart local v2    # "_result":Landroid/os/Bundle;
    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 98
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_result":Landroid/os/Bundle;
    :sswitch_3
    const-string v3, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcDeviceSvn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_4
    const-string v3, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getServiceState()I

    move-result v2

    .line 110
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 116
    .end local v2    # "_result":I
    :sswitch_5
    const-string v5, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    .line 119
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 124
    .local v0, "_arg0":Landroid/content/Intent;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->dialWithoutDelay(Landroid/content/Intent;)Z

    move-result v2

    .line 125
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    if-eqz v2, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 122
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_result":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/Intent;
    goto :goto_3

    .line 131
    .end local v0    # "_arg0":Landroid/content/Intent;
    :sswitch_6
    const-string v3, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->htcCdmaExitRadioPowerSaveMode()V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 138
    :sswitch_7
    const-string v3, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getPdnSettings2([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 148
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v2    # "_result":[Ljava/lang/String;
    :sswitch_8
    const-string v3, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 151
    .restart local v0    # "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setPdnSettings2([Ljava/lang/String;)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 157
    .end local v0    # "_arg0":[Ljava/lang/String;
    :sswitch_9
    const-string v3, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->resetPdnForSettingsChange2()V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 164
    :sswitch_a
    const-string v3, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 167
    .restart local v0    # "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcNetworkType([Ljava/lang/String;)I

    move-result v2

    .line 168
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 174
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v2    # "_result":I
    :sswitch_b
    const-string v3, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetSIMType()I

    move-result v2

    .line 176
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 182
    .end local v2    # "_result":I
    :sswitch_c
    const-string v5, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getPhoneState()Landroid/os/Bundle;

    move-result-object v2

    .line 184
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    if-eqz v2, :cond_6

    .line 186
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    invoke-virtual {v2, p3, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 190
    :cond_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 196
    .end local v2    # "_result":Landroid/os/Bundle;
    :sswitch_d
    const-string v3, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->showIncallScreen()V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 203
    :sswitch_e
    const-string v5, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 206
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->isInService(I)Z

    move-result v2

    .line 207
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    if-eqz v2, :cond_7

    move v3, v4

    :cond_7
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 213
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_f
    const-string v3, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetLTERFBandInfo()[I

    move-result-object v2

    .line 215
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 221
    .end local v2    # "_result":[I
    :sswitch_10
    const-string v3, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->cancelMissedCallsNotification()V

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 43
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
