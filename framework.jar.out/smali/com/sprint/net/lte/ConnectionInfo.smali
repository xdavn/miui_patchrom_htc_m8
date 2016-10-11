.class public Lcom/sprint/net/lte/ConnectionInfo;
.super Ljava/lang/Object;
.source "ConnectionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sprint/net/lte/ConnectionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final LOG_TAG:Ljava/lang/String;

.field mApnsInUse:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sprint/net/lte/ApnsInUse;",
            ">;"
        }
    .end annotation
.end field

.field mBSID:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mRsrp:Ljava/lang/String;

.field mRsrq:Ljava/lang/String;

.field mRssi:Ljava/lang/String;

.field mTxPwr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/sprint/net/lte/ConnectionInfo$1;

    invoke-direct {v0}, Lcom/sprint/net/lte/ConnectionInfo$1;-><init>()V

    sput-object v0, Lcom/sprint/net/lte/ConnectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v1, "LteConnectionInfo"

    iput-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->LOG_TAG:Ljava/lang/String;

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mApnsInUse:Ljava/util/List;

    .line 104
    const-string v1, "Constructor+"

    invoke-direct {p0, v1}, Lcom/sprint/net/lte/ConnectionInfo;->logi(Ljava/lang/String;)V

    .line 106
    iput-object p1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mContext:Landroid/content/Context;

    .line 109
    :try_start_0
    invoke-direct {p0}, Lcom/sprint/net/lte/ConnectionInfo;->_getTxPwr()V

    .line 110
    invoke-direct {p0}, Lcom/sprint/net/lte/ConnectionInfo;->_getApnsInUse()V

    .line 111
    invoke-direct {p0}, Lcom/sprint/net/lte/ConnectionInfo;->_getBSID()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    const-string v1, "Constructor-"

    invoke-direct {p0, v1}, Lcom/sprint/net/lte/ConnectionInfo;->logi(Ljava/lang/String;)V

    .line 119
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sprint/net/lte/ConnectionInfo;->logi(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v1, "LteConnectionInfo"

    iput-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->LOG_TAG:Ljava/lang/String;

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mApnsInUse:Ljava/util/List;

    .line 67
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mBSID:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mRssi:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mRsrp:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mRsrq:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mTxPwr:Ljava/lang/String;

    .line 72
    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mApnsInUse:Ljava/util/List;

    sget-object v2, Lcom/sprint/net/lte/ApnsInUse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readFromParcel: e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sprint/net/lte/ConnectionInfo;->logi(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sprint/net/lte/ConnectionInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/sprint/net/lte/ConnectionInfo$1;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/sprint/net/lte/ConnectionInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _getApnsInUse()V
    .locals 23

    .prologue
    .line 228
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sprint/net/lte/ConnectionInfo;->mApnsInUse:Ljava/util/List;

    .line 231
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/net/lte/ConnectionInfo;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "connectivity"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 232
    .local v2, "CM":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v18

    .line 233
    .local v18, "networkInfos":[Landroid/net/NetworkInfo;
    move-object/from16 v6, v18

    .local v6, "arr$":[Landroid/net/NetworkInfo;
    array-length v0, v6

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    move v11, v10

    .end local v10    # "i$":I
    .local v11, "i$":I
    :goto_0
    move/from16 v0, v16

    if-ge v11, v0, :cond_6

    aget-object v12, v6, v11

    .line 234
    .local v12, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v19

    .line 235
    .local v19, "networkType":I
    invoke-static/range {v19 .. v19}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 236
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v21

    if-nez v21, :cond_0

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v21

    sget-object v22, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 237
    :cond_0
    const/4 v8, 0x0

    .line 238
    .local v8, "hasExisted":Z
    new-instance v15, Lcom/sprint/net/lte/ApnsInUse;

    invoke-direct {v15}, Lcom/sprint/net/lte/ApnsInUse;-><init>()V

    .line 239
    .local v15, "item":Lcom/sprint/net/lte/ApnsInUse;
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_2

    const-string v21, ""

    :goto_1
    move-object/from16 v0, v21

    iput-object v0, v15, Lcom/sprint/net/lte/ApnsInUse;->fullName:Ljava/lang/String;

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/net/lte/ConnectionInfo;->mApnsInUse:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v11    # "i$":I
    .local v10, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sprint/net/lte/ApnsInUse;

    .line 241
    .local v5, "apn":Lcom/sprint/net/lte/ApnsInUse;
    iget-object v0, v5, Lcom/sprint/net/lte/ApnsInUse;->fullName:Ljava/lang/String;

    move-object/from16 v21, v0

    iget-object v0, v15, Lcom/sprint/net/lte/ApnsInUse;->fullName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/4 v8, 0x1

    goto :goto_2

    .line 239
    .end local v5    # "apn":Lcom/sprint/net/lte/ApnsInUse;
    .end local v10    # "i$":Ljava/util/Iterator;
    .restart local v11    # "i$":I
    :cond_2
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    goto :goto_1

    .line 243
    .end local v11    # "i$":I
    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_3
    if-eqz v8, :cond_5

    .line 233
    .end local v8    # "hasExisted":Z
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v15    # "item":Lcom/sprint/net/lte/ApnsInUse;
    :cond_4
    :goto_3
    add-int/lit8 v10, v11, 0x1

    .local v10, "i$":I
    move v11, v10

    .end local v10    # "i$":I
    .restart local v11    # "i$":I
    goto :goto_0

    .line 244
    .end local v11    # "i$":I
    .restart local v8    # "hasExisted":Z
    .local v10, "i$":Ljava/util/Iterator;
    .restart local v15    # "item":Lcom/sprint/net/lte/ApnsInUse;
    :cond_5
    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v17

    .line 245
    .local v17, "lp":Landroid/net/LinkProperties;
    if-eqz v17, :cond_4

    .line 246
    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v4

    .line 247
    .local v4, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/net/InetAddress;

    .line 248
    .local v13, "ip":Ljava/net/InetAddress;
    invoke-virtual {v13}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v14

    .line 249
    .local v14, "ipAddress":Ljava/lang/String;
    const-string v21, "."

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 250
    invoke-static {v14}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v15, Lcom/sprint/net/lte/ApnsInUse;->ipv4:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 263
    .end local v2    # "CM":Landroid/net/ConnectivityManager;
    .end local v4    # "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v6    # "arr$":[Landroid/net/NetworkInfo;
    .end local v8    # "hasExisted":Z
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "info":Landroid/net/NetworkInfo;
    .end local v13    # "ip":Ljava/net/InetAddress;
    .end local v14    # "ipAddress":Ljava/lang/String;
    .end local v15    # "item":Lcom/sprint/net/lte/ApnsInUse;
    .end local v16    # "len$":I
    .end local v17    # "lp":Landroid/net/LinkProperties;
    .end local v18    # "networkInfos":[Landroid/net/NetworkInfo;
    .end local v19    # "networkType":I
    :catch_0
    move-exception v7

    .line 264
    .local v7, "e":Ljava/lang/Exception;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "_getApnsInUse: error get method "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sprint/net/lte/ConnectionInfo;->logi(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 268
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_6
    const-string v21, "ril.multiple.pdn.ip.address"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, "aTemp":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "_getApnsInUse: ril.multiple.pdn.ip.address="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sprint/net/lte/ConnectionInfo;->logi(Ljava/lang/String;)V

    .line 270
    if-eqz v3, :cond_b

    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_b

    .line 271
    const-string v21, " "

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 272
    .local v20, "value":[Ljava/lang/String;
    new-instance v15, Lcom/sprint/net/lte/ApnsInUse;

    invoke-direct {v15}, Lcom/sprint/net/lte/ApnsInUse;-><init>()V

    .line 273
    .restart local v15    # "item":Lcom/sprint/net/lte/ApnsInUse;
    const/16 v21, 0x0

    aget-object v21, v20, v21

    move-object/from16 v0, v21

    iput-object v0, v15, Lcom/sprint/net/lte/ApnsInUse;->fullName:Ljava/lang/String;

    .line 274
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_5
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_a

    .line 278
    :try_start_1
    aget-object v21, v20, v9

    const-string v22, "."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 280
    aget-object v21, v20, v9

    invoke-static/range {v21 .. v21}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v15, Lcom/sprint/net/lte/ApnsInUse;->ipv4:Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 274
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 253
    .end local v3    # "aTemp":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v20    # "value":[Ljava/lang/String;
    .restart local v2    # "CM":Landroid/net/ConnectivityManager;
    .restart local v4    # "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .restart local v6    # "arr$":[Landroid/net/NetworkInfo;
    .restart local v8    # "hasExisted":Z
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v12    # "info":Landroid/net/NetworkInfo;
    .restart local v13    # "ip":Ljava/net/InetAddress;
    .restart local v14    # "ipAddress":Ljava/lang/String;
    .restart local v16    # "len$":I
    .restart local v17    # "lp":Landroid/net/LinkProperties;
    .restart local v18    # "networkInfos":[Landroid/net/NetworkInfo;
    .restart local v19    # "networkType":I
    :cond_7
    :try_start_2
    invoke-static {v14}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v15, Lcom/sprint/net/lte/ApnsInUse;->ipv6:Ljava/net/InetAddress;

    goto/16 :goto_4

    .line 256
    .end local v13    # "ip":Ljava/net/InetAddress;
    .end local v14    # "ipAddress":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/net/lte/ConnectionInfo;->mApnsInUse:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 284
    .end local v2    # "CM":Landroid/net/ConnectivityManager;
    .end local v4    # "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v6    # "arr$":[Landroid/net/NetworkInfo;
    .end local v8    # "hasExisted":Z
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "info":Landroid/net/NetworkInfo;
    .end local v16    # "len$":I
    .end local v17    # "lp":Landroid/net/LinkProperties;
    .end local v18    # "networkInfos":[Landroid/net/NetworkInfo;
    .end local v19    # "networkType":I
    .restart local v3    # "aTemp":Ljava/lang/String;
    .restart local v9    # "i":I
    .restart local v20    # "value":[Ljava/lang/String;
    :cond_9
    :try_start_3
    aget-object v21, v20, v9

    invoke-static/range {v21 .. v21}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v15, Lcom/sprint/net/lte/ApnsInUse;->ipv6:Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    .line 287
    :catch_1
    move-exception v7

    .line 289
    .restart local v7    # "e":Ljava/lang/Exception;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "_getApnsInUse: e="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sprint/net/lte/ConnectionInfo;->logi(Ljava/lang/String;)V

    goto :goto_6

    .line 292
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/net/lte/ConnectionInfo;->mApnsInUse:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    .end local v9    # "i":I
    .end local v15    # "item":Lcom/sprint/net/lte/ApnsInUse;
    .end local v20    # "value":[Ljava/lang/String;
    :cond_b
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "_getApnsInUse: result="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/net/lte/ConnectionInfo;->mApnsInUse:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sprint/net/lte/ConnectionInfo;->logi(Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method private _getBSID()V
    .locals 3

    .prologue
    .line 194
    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 195
    .local v0, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mBSID:Ljava/lang/String;

    .line 196
    return-void
.end method

.method private _getTxPwr()V
    .locals 7

    .prologue
    .line 201
    :try_start_0
    const-string v2, "getTxRxPowerInfo"

    .line 202
    .local v2, "method":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 203
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "networktype"

    const/16 v6, 0xd

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 204
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v2, v0}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 206
    .local v3, "result":Landroid/os/Bundle;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 207
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 208
    .local v4, "txrxinfo":[I
    if-eqz v4, :cond_0

    .line 209
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x1

    aget v6, v4, v6

    div-int/lit8 v6, v6, 0xa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "dBm"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sprint/net/lte/ConnectionInfo;->mTxPwr:Ljava/lang/String;

    .line 224
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "method":Ljava/lang/String;
    .end local v3    # "result":Landroid/os/Bundle;
    .end local v4    # "txrxinfo":[I
    :goto_0
    return-void

    .line 212
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "method":Ljava/lang/String;
    .restart local v3    # "result":Landroid/os/Bundle;
    .restart local v4    # "txrxinfo":[I
    :cond_0
    const-string v5, "TxPwr txrxinfo null"

    invoke-direct {p0, v5}, Lcom/sprint/net/lte/ConnectionInfo;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "method":Ljava/lang/String;
    .end local v3    # "result":Landroid/os/Bundle;
    .end local v4    # "txrxinfo":[I
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error get method "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/lte/ConnectionInfo;->logi(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 216
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "method":Ljava/lang/String;
    .restart local v3    # "result":Landroid/os/Bundle;
    :cond_1
    :try_start_1
    const-string v5, "TxPwr result empty"

    invoke-direct {p0, v5}, Lcom/sprint/net/lte/ConnectionInfo;->logi(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 299
    const-string v0, "LteConnectionInfo"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public getApnsInUse()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/net/lte/ApnsInUse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->mApnsInUse:Ljava/util/List;

    return-object v0
.end method

.method public getBSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->mBSID:Ljava/lang/String;

    return-object v0
.end method

.method public getRsrp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->mRsrp:Ljava/lang/String;

    return-object v0
.end method

.method public getRsrq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->mRsrq:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->mRssi:Ljava/lang/String;

    return-object v0
.end method

.method public getSib(I)Ljava/lang/String;
    .locals 1
    .param p1, "sibNum"    # I

    .prologue
    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTxPwr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->mTxPwr:Ljava/lang/String;

    return-object v0
.end method

.method public setBSID(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mBSID:Ljava/lang/String;

    return-void
.end method

.method public setRsrp(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mRsrp:Ljava/lang/String;

    return-void
.end method

.method public setRsrq(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mRsrq:Ljava/lang/String;

    return-void
.end method

.method public setRssi(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mRssi:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mBSID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mRssi:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mRsrp:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mRsrq:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mTxPwr:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mApnsInUse:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeToParcel: e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sprint/net/lte/ConnectionInfo;->logi(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
