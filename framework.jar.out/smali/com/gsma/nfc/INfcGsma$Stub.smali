.class public abstract Lcom/gsma/nfc/INfcGsma$Stub;
.super Landroid/os/Binder;
.source "INfcGsma.java"

# interfaces
.implements Lcom/gsma/nfc/INfcGsma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/nfc/INfcGsma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/nfc/INfcGsma$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gsma.nfc.INfcGsma"

.field static final TRANSACTION_defineOffHostService:I = 0x7

.field static final TRANSACTION_deleteOffHostService:I = 0xa

.field static final TRANSACTION_disableCardEmulation:I = 0x3

.field static final TRANSACTION_enableCardEmulation:I = 0x2

.field static final TRANSACTION_enableMultiEvt_transactionReception:I = 0x6

.field static final TRANSACTION_enableWithUserPrompt:I = 0x1

.field static final TRANSACTION_getActiveSecureElement:I = 0x4

.field static final TRANSACTION_getDefaultOffHostRoute:I = 0xd

.field static final TRANSACTION_getDefaultOffHostService:I = 0xc

.field static final TRANSACTION_getDrawable:I = 0xe

.field static final TRANSACTION_getOffHostServices:I = 0xb

.field static final TRANSACTION_setActiveSecureElement:I = 0x5

.field static final TRANSACTION_updateOffHostService:I = 0x9

.field static final TRANSACTION_updateServiceBanner:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.gsma.nfc.INfcGsma"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/nfc/INfcGsma$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/nfc/INfcGsma;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "com.gsma.nfc.INfcGsma"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/gsma/nfc/INfcGsma;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/gsma/nfc/INfcGsma;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/gsma/nfc/INfcGsma$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/gsma/nfc/INfcGsma$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 234
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 45
    :sswitch_0
    const-string v5, "com.gsma.nfc.INfcGsma"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v5, "com.gsma.nfc.INfcGsma"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 55
    sget-object v5, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 60
    .local v1, "_arg1":Landroid/os/Messenger;
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/gsma/nfc/INfcGsma$Stub;->enableWithUserPrompt(Ljava/lang/String;Landroid/os/Messenger;)I

    move-result v2

    .line 61
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 58
    .end local v1    # "_arg1":Landroid/os/Messenger;
    .end local v2    # "_result":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Messenger;
    goto :goto_1

    .line 67
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/Messenger;
    :sswitch_2
    const-string v5, "com.gsma.nfc.INfcGsma"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/gsma/nfc/INfcGsma$Stub;->enableCardEmulation(Ljava/lang/String;)I

    move-result v2

    .line 71
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 77
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :sswitch_3
    const-string v5, "com.gsma.nfc.INfcGsma"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/gsma/nfc/INfcGsma$Stub;->disableCardEmulation(Ljava/lang/String;)I

    move-result v2

    .line 81
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 87
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :sswitch_4
    const-string v5, "com.gsma.nfc.INfcGsma"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/gsma/nfc/INfcGsma$Stub;->getActiveSecureElement()I

    move-result v2

    .line 89
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 95
    .end local v2    # "_result":I
    :sswitch_5
    const-string v5, "com.gsma.nfc.INfcGsma"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 99
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/gsma/nfc/INfcGsma$Stub;->setActiveSecureElement(ILjava/lang/String;)I

    move-result v2

    .line 101
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 107
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :sswitch_6
    const-string v5, "com.gsma.nfc.INfcGsma"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/gsma/nfc/INfcGsma$Stub;->enableMultiEvt_transactionReception(Ljava/lang/String;)I

    move-result v2

    .line 111
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 117
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :sswitch_7
    const-string v5, "com.gsma.nfc.INfcGsma"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 120
    sget-object v5, Landroid/nfc/cardemulation/ApduServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 125
    .local v0, "_arg0":Landroid/nfc/cardemulation/ApduServiceInfo;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/gsma/nfc/INfcGsma$Stub;->defineOffHostService(Landroid/nfc/cardemulation/ApduServiceInfo;)I

    move-result v2

    .line 126
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 123
    .end local v0    # "_arg0":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v2    # "_result":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/nfc/cardemulation/ApduServiceInfo;
    goto :goto_2

    .line 132
    .end local v0    # "_arg0":Landroid/nfc/cardemulation/ApduServiceInfo;
    :sswitch_8
    const-string v5, "com.gsma.nfc.INfcGsma"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 135
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 141
    .local v0, "_arg0":Landroid/content/ComponentName;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 142
    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 147
    .local v1, "_arg1":Landroid/graphics/Bitmap;
    :goto_4
    invoke-virtual {p0, v0, v1}, Lcom/gsma/nfc/INfcGsma$Stub;->updateServiceBanner(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)I

    move-result v2

    .line 148
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 138
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":Landroid/graphics/Bitmap;
    .end local v2    # "_result":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3

    .line 145
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/graphics/Bitmap;
    goto :goto_4

    .line 154
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":Landroid/graphics/Bitmap;
    :sswitch_9
    const-string v5, "com.gsma.nfc.INfcGsma"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 157
    sget-object v5, Landroid/nfc/cardemulation/ApduServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 162
    .local v0, "_arg0":Landroid/nfc/cardemulation/ApduServiceInfo;
    :goto_5
    invoke-virtual {p0, v0}, Lcom/gsma/nfc/INfcGsma$Stub;->updateOffHostService(Landroid/nfc/cardemulation/ApduServiceInfo;)I

    move-result v2

    .line 163
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 160
    .end local v0    # "_arg0":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v2    # "_result":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/nfc/cardemulation/ApduServiceInfo;
    goto :goto_5

    .line 169
    .end local v0    # "_arg0":Landroid/nfc/cardemulation/ApduServiceInfo;
    :sswitch_a
    const-string v5, "com.gsma.nfc.INfcGsma"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    .line 172
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 177
    .local v0, "_arg0":Landroid/content/ComponentName;
    :goto_6
    invoke-virtual {p0, v0}, Lcom/gsma/nfc/INfcGsma$Stub;->deleteOffHostService(Landroid/content/ComponentName;)I

    move-result v2

    .line 178
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 175
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_result":I
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6

    .line 184
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :sswitch_b
    const-string v5, "com.gsma.nfc.INfcGsma"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/gsma/nfc/INfcGsma$Stub;->getOffHostServices()Ljava/util/List;

    move-result-object v3

    .line 186
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 192
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :sswitch_c
    const-string v5, "com.gsma.nfc.INfcGsma"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/gsma/nfc/INfcGsma$Stub;->getDefaultOffHostService()Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v2

    .line 194
    .local v2, "_result":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    if-eqz v2, :cond_6

    .line 196
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    invoke-virtual {v2, p3, v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 200
    :cond_6
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 206
    .end local v2    # "_result":Landroid/nfc/cardemulation/ApduServiceInfo;
    :sswitch_d
    const-string v5, "com.gsma.nfc.INfcGsma"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/gsma/nfc/INfcGsma$Stub;->getDefaultOffHostRoute()I

    move-result v2

    .line 208
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 214
    .end local v2    # "_result":I
    :sswitch_e
    const-string v5, "com.gsma.nfc.INfcGsma"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    .line 217
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 222
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    :goto_7
    invoke-virtual {p0, v0}, Lcom/gsma/nfc/INfcGsma$Stub;->getDrawable(Landroid/content/ComponentName;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 223
    .local v2, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    if-eqz v2, :cond_8

    .line 225
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    invoke-virtual {v2, p3, v4}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 220
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_result":Landroid/graphics/Bitmap;
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_7

    .line 229
    .restart local v2    # "_result":Landroid/graphics/Bitmap;
    :cond_8
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 41
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
