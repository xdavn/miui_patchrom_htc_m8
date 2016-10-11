.class public abstract Lcom/android/internal/telephony/IMms$Stub;
.super Landroid/os/Binder;
.source "IMms.java"

# interfaces
.implements Lcom/android/internal/telephony/IMms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IMms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IMms$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IMms"

.field static final TRANSACTION_addMultimediaMessageDraft:I = 0xc

.field static final TRANSACTION_addTextMessageDraft:I = 0xb

.field static final TRANSACTION_archiveStoredConversation:I = 0xa

.field static final TRANSACTION_deleteStoredConversation:I = 0x8

.field static final TRANSACTION_deleteStoredMessage:I = 0x7

.field static final TRANSACTION_downloadMessage:I = 0x3

.field static final TRANSACTION_getAutoPersisting:I = 0xf

.field static final TRANSACTION_getCarrierConfigValues:I = 0x4

.field static final TRANSACTION_importMultimediaMessage:I = 0x6

.field static final TRANSACTION_importTextMessage:I = 0x5

.field static final TRANSACTION_sendMessage:I = 0x1

.field static final TRANSACTION_sendStoredMessage:I = 0xd

.field static final TRANSACTION_setAutoPersisting:I = 0xe

.field static final TRANSACTION_setMultimediaMessageRetryAlarm:I = 0x2

.field static final TRANSACTION_updateStoredMessageStatus:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.android.internal.telephony.IMms"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IMms$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;
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
    const-string v1, "com.android.internal.telephony.IMms"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/IMms;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/android/internal/telephony/IMms;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/IMms$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IMms$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 33
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 362
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 45
    :sswitch_0
    const-string v4, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v4, 0x1

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v4, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 54
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 56
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 57
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 63
    .local v7, "_arg2":Landroid/net/Uri;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 65
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 66
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 72
    .local v9, "_arg4":Landroid/os/Bundle;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 73
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .local v10, "_arg5":Landroid/app/PendingIntent;
    :goto_3
    move-object/from16 v4, p0

    .line 78
    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/telephony/IMms$Stub;->sendMessage(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    .line 79
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    const/4 v4, 0x1

    goto :goto_0

    .line 60
    .end local v7    # "_arg2":Landroid/net/Uri;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Landroid/os/Bundle;
    .end local v10    # "_arg5":Landroid/app/PendingIntent;
    :cond_0
    const/4 v7, 0x0

    .restart local v7    # "_arg2":Landroid/net/Uri;
    goto :goto_1

    .line 69
    .restart local v8    # "_arg3":Ljava/lang/String;
    :cond_1
    const/4 v9, 0x0

    .restart local v9    # "_arg4":Landroid/os/Bundle;
    goto :goto_2

    .line 76
    :cond_2
    const/4 v10, 0x0

    .restart local v10    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_3

    .line 84
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Landroid/net/Uri;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Landroid/os/Bundle;
    .end local v10    # "_arg5":Landroid/app/PendingIntent;
    :sswitch_2
    const-string v4, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v28

    .line 87
    .local v28, "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IMms$Stub;->setMultimediaMessageRetryAlarm(J)V

    .line 88
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    const/4 v4, 0x1

    goto :goto_0

    .line 93
    .end local v28    # "_arg0":J
    :sswitch_3
    const-string v4, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 97
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 99
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 101
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 102
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 108
    .local v8, "_arg3":Landroid/net/Uri;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 109
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 115
    .restart local v9    # "_arg4":Landroid/os/Bundle;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 116
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .restart local v10    # "_arg5":Landroid/app/PendingIntent;
    :goto_6
    move-object/from16 v4, p0

    .line 121
    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/telephony/IMms$Stub;->downloadMessage(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    .line 122
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 105
    .end local v8    # "_arg3":Landroid/net/Uri;
    .end local v9    # "_arg4":Landroid/os/Bundle;
    .end local v10    # "_arg5":Landroid/app/PendingIntent;
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "_arg3":Landroid/net/Uri;
    goto :goto_4

    .line 112
    :cond_4
    const/4 v9, 0x0

    .restart local v9    # "_arg4":Landroid/os/Bundle;
    goto :goto_5

    .line 119
    :cond_5
    const/4 v10, 0x0

    .restart local v10    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_6

    .line 127
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Landroid/net/Uri;
    .end local v9    # "_arg4":Landroid/os/Bundle;
    .end local v10    # "_arg5":Landroid/app/PendingIntent;
    :sswitch_4
    const-string v4, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 130
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/IMms$Stub;->getCarrierConfigValues(I)Landroid/os/Bundle;

    move-result-object v32

    .line 131
    .local v32, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    if-eqz v32, :cond_6

    .line 133
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    const/4 v4, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 139
    :goto_7
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 137
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 143
    .end local v5    # "_arg0":I
    .end local v32    # "_result":Landroid/os/Bundle;
    :sswitch_5
    const-string v4, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 149
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 151
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 153
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 155
    .local v16, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    const/4 v10, 0x1

    .line 157
    .local v10, "_arg5":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    const/16 v19, 0x1

    .local v19, "_arg6":Z
    :goto_9
    move-object/from16 v11, p0

    move-object v12, v5

    move-object v13, v6

    move v14, v7

    move-object v15, v8

    move/from16 v18, v10

    .line 158
    invoke-virtual/range {v11 .. v19}, Lcom/android/internal/telephony/IMms$Stub;->importTextMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JZZ)Landroid/net/Uri;

    move-result-object v32

    .line 159
    .local v32, "_result":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    if-eqz v32, :cond_9

    .line 161
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    const/4 v4, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 167
    :goto_a
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 155
    .end local v10    # "_arg5":Z
    .end local v19    # "_arg6":Z
    .end local v32    # "_result":Landroid/net/Uri;
    :cond_7
    const/4 v10, 0x0

    goto :goto_8

    .line 157
    .restart local v10    # "_arg5":Z
    :cond_8
    const/16 v19, 0x0

    goto :goto_9

    .line 165
    .restart local v19    # "_arg6":Z
    .restart local v32    # "_result":Landroid/net/Uri;
    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 171
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v10    # "_arg5":Z
    .end local v16    # "_arg4":J
    .end local v19    # "_arg6":Z
    .end local v32    # "_result":Landroid/net/Uri;
    :sswitch_6
    const-string v4, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 175
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    .line 176
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 182
    .local v6, "_arg1":Landroid/net/Uri;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 184
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 186
    .local v24, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    const/4 v9, 0x1

    .line 188
    .local v9, "_arg4":Z
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    const/4 v10, 0x1

    .restart local v10    # "_arg5":Z
    :goto_d
    move-object/from16 v20, p0

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move/from16 v26, v9

    move/from16 v27, v10

    .line 189
    invoke-virtual/range {v20 .. v27}, Lcom/android/internal/telephony/IMms$Stub;->importMultimediaMessage(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JZZ)Landroid/net/Uri;

    move-result-object v32

    .line 190
    .restart local v32    # "_result":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    if-eqz v32, :cond_d

    .line 192
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    const/4 v4, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 198
    :goto_e
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 179
    .end local v6    # "_arg1":Landroid/net/Uri;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg4":Z
    .end local v10    # "_arg5":Z
    .end local v24    # "_arg3":J
    .end local v32    # "_result":Landroid/net/Uri;
    :cond_a
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/net/Uri;
    goto :goto_b

    .line 186
    .restart local v7    # "_arg2":Ljava/lang/String;
    .restart local v24    # "_arg3":J
    :cond_b
    const/4 v9, 0x0

    goto :goto_c

    .line 188
    .restart local v9    # "_arg4":Z
    :cond_c
    const/4 v10, 0x0

    goto :goto_d

    .line 196
    .restart local v10    # "_arg5":Z
    .restart local v32    # "_result":Landroid/net/Uri;
    :cond_d
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 202
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/net/Uri;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg4":Z
    .end local v10    # "_arg5":Z
    .end local v24    # "_arg3":J
    .end local v32    # "_result":Landroid/net/Uri;
    :sswitch_7
    const-string v4, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 206
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    .line 207
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 212
    .restart local v6    # "_arg1":Landroid/net/Uri;
    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/IMms$Stub;->deleteStoredMessage(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v32

    .line 213
    .local v32, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    if-eqz v32, :cond_f

    const/4 v4, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 210
    .end local v6    # "_arg1":Landroid/net/Uri;
    .end local v32    # "_result":Z
    :cond_e
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/net/Uri;
    goto :goto_f

    .line 214
    .restart local v32    # "_result":Z
    :cond_f
    const/4 v4, 0x0

    goto :goto_10

    .line 219
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/net/Uri;
    .end local v32    # "_result":Z
    :sswitch_8
    const-string v4, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 223
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v30

    .line 224
    .local v30, "_arg1":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/telephony/IMms$Stub;->deleteStoredConversation(Ljava/lang/String;J)Z

    move-result v32

    .line 225
    .restart local v32    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    if-eqz v32, :cond_10

    const/4 v4, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 226
    :cond_10
    const/4 v4, 0x0

    goto :goto_11

    .line 231
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v30    # "_arg1":J
    .end local v32    # "_result":Z
    :sswitch_9
    const-string v4, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 235
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11

    .line 236
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 242
    .restart local v6    # "_arg1":Landroid/net/Uri;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    .line 243
    sget-object v4, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 248
    .local v7, "_arg2":Landroid/content/ContentValues;
    :goto_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/internal/telephony/IMms$Stub;->updateStoredMessageStatus(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v32

    .line 249
    .restart local v32    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    if-eqz v32, :cond_13

    const/4 v4, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 239
    .end local v6    # "_arg1":Landroid/net/Uri;
    .end local v7    # "_arg2":Landroid/content/ContentValues;
    .end local v32    # "_result":Z
    :cond_11
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/net/Uri;
    goto :goto_12

    .line 246
    :cond_12
    const/4 v7, 0x0

    .restart local v7    # "_arg2":Landroid/content/ContentValues;
    goto :goto_13

    .line 250
    .restart local v32    # "_result":Z
    :cond_13
    const/4 v4, 0x0

    goto :goto_14

    .line 255
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/net/Uri;
    .end local v7    # "_arg2":Landroid/content/ContentValues;
    .end local v32    # "_result":Z
    :sswitch_a
    const-string v4, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 259
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v30

    .line 261
    .restart local v30    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14

    const/4 v7, 0x1

    .line 262
    .local v7, "_arg2":Z
    :goto_15
    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v5, v1, v2, v7}, Lcom/android/internal/telephony/IMms$Stub;->archiveStoredConversation(Ljava/lang/String;JZ)Z

    move-result v32

    .line 263
    .restart local v32    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    if-eqz v32, :cond_15

    const/4 v4, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 261
    .end local v7    # "_arg2":Z
    .end local v32    # "_result":Z
    :cond_14
    const/4 v7, 0x0

    goto :goto_15

    .line 264
    .restart local v7    # "_arg2":Z
    .restart local v32    # "_result":Z
    :cond_15
    const/4 v4, 0x0

    goto :goto_16

    .line 269
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg2":Z
    .end local v30    # "_arg1":J
    .end local v32    # "_result":Z
    :sswitch_b
    const-string v4, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 273
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 275
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 276
    .local v7, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/internal/telephony/IMms$Stub;->addTextMessageDraft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v32

    .line 277
    .local v32, "_result":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    if-eqz v32, :cond_16

    .line 279
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    const/4 v4, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 285
    :goto_17
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 283
    :cond_16
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .line 289
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v32    # "_result":Landroid/net/Uri;
    :sswitch_c
    const-string v4, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 293
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17

    .line 294
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 299
    .local v6, "_arg1":Landroid/net/Uri;
    :goto_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/IMms$Stub;->addMultimediaMessageDraft(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v32

    .line 300
    .restart local v32    # "_result":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    if-eqz v32, :cond_18

    .line 302
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    const/4 v4, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 308
    :goto_19
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 297
    .end local v6    # "_arg1":Landroid/net/Uri;
    .end local v32    # "_result":Landroid/net/Uri;
    :cond_17
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/net/Uri;
    goto :goto_18

    .line 306
    .restart local v32    # "_result":Landroid/net/Uri;
    :cond_18
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_19

    .line 312
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/net/Uri;
    .end local v32    # "_result":Landroid/net/Uri;
    :sswitch_d
    const-string v4, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 316
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 318
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_19

    .line 319
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 325
    .local v7, "_arg2":Landroid/net/Uri;
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1a

    .line 326
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 332
    .local v8, "_arg3":Landroid/os/Bundle;
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1b

    .line 333
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    .local v9, "_arg4":Landroid/app/PendingIntent;
    :goto_1c
    move-object/from16 v4, p0

    .line 338
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/IMms$Stub;->sendStoredMessage(ILjava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    .line 339
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 322
    .end local v7    # "_arg2":Landroid/net/Uri;
    .end local v8    # "_arg3":Landroid/os/Bundle;
    .end local v9    # "_arg4":Landroid/app/PendingIntent;
    :cond_19
    const/4 v7, 0x0

    .restart local v7    # "_arg2":Landroid/net/Uri;
    goto :goto_1a

    .line 329
    :cond_1a
    const/4 v8, 0x0

    .restart local v8    # "_arg3":Landroid/os/Bundle;
    goto :goto_1b

    .line 336
    :cond_1b
    const/4 v9, 0x0

    .restart local v9    # "_arg4":Landroid/app/PendingIntent;
    goto :goto_1c

    .line 344
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Landroid/net/Uri;
    .end local v8    # "_arg3":Landroid/os/Bundle;
    .end local v9    # "_arg4":Landroid/app/PendingIntent;
    :sswitch_e
    const-string v4, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 348
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1c

    const/4 v6, 0x1

    .line 349
    .local v6, "_arg1":Z
    :goto_1d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/IMms$Stub;->setAutoPersisting(Ljava/lang/String;Z)V

    .line 350
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 348
    .end local v6    # "_arg1":Z
    :cond_1c
    const/4 v6, 0x0

    goto :goto_1d

    .line 355
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_f
    const-string v4, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IMms$Stub;->getAutoPersisting()Z

    move-result v32

    .line 357
    .local v32, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    if-eqz v32, :cond_1d

    const/4 v4, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 358
    :cond_1d
    const/4 v4, 0x0

    goto :goto_1e

    .line 41
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
