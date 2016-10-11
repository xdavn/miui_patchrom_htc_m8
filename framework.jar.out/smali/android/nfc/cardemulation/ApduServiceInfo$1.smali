.class final Landroid/nfc/cardemulation/ApduServiceInfo$1;
.super Ljava/lang/Object;
.source "ApduServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/ApduServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/nfc/cardemulation/ApduServiceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .locals 22
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 857
    sget-object v20, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;

    .line 859
    .local v3, "info":Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 860
    .local v5, "description":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    if-eqz v20, :cond_5

    const/4 v4, 0x1

    .line 861
    .local v4, "onHost":Z
    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 862
    .local v6, "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 863
    .local v19, "numStaticGroups":I
    if-lez v19, :cond_0

    .line 864
    sget-object v20, Landroid/nfc/cardemulation/AidGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 866
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 867
    .local v7, "dynamicAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 868
    .local v17, "numDynamicGroups":I
    if-lez v17, :cond_1

    .line 869
    sget-object v20, Landroid/nfc/cardemulation/AidGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v7, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 872
    :cond_1
    const/4 v15, 0x0

    .line 873
    .local v15, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 874
    sget-object v20, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "bmp":Landroid/graphics/Bitmap;
    check-cast v15, Landroid/graphics/Bitmap;

    .line 876
    .restart local v15    # "bmp":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 877
    .local v14, "gsmaSettings":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    if-eqz v20, :cond_6

    const/16 v16, 0x1

    .line 879
    .local v16, "isTrustedService":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    if-eqz v20, :cond_7

    const/4 v8, 0x1

    .line 880
    .local v8, "requiresUnlock":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 881
    .local v9, "bannerResource":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 882
    .local v10, "uid":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 883
    .local v11, "settingsActivityName":Ljava/lang/String;
    sget-object v20, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    .line 884
    .local v12, "seExtension":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 885
    .local v13, "nfcid2Groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 886
    .local v18, "numGroups":I
    if-lez v18, :cond_3

    .line 887
    sget-object v20, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 894
    :cond_3
    new-instance v2, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-direct/range {v2 .. v15}, Landroid/nfc/cardemulation/ApduServiceInfo;-><init>(Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIILjava/lang/String;Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;Ljava/util/ArrayList;ILandroid/graphics/Bitmap;)V

    .line 898
    .local v2, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v16, :cond_4

    .line 899
    invoke-virtual {v2}, Landroid/nfc/cardemulation/ApduServiceInfo;->setAsTrustedService()V

    .line 904
    :cond_4
    return-object v2

    .line 860
    .end local v2    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v4    # "onHost":Z
    .end local v6    # "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .end local v7    # "dynamicAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .end local v8    # "requiresUnlock":Z
    .end local v9    # "bannerResource":I
    .end local v10    # "uid":I
    .end local v11    # "settingsActivityName":Ljava/lang/String;
    .end local v12    # "seExtension":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    .end local v13    # "nfcid2Groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;>;"
    .end local v14    # "gsmaSettings":I
    .end local v15    # "bmp":Landroid/graphics/Bitmap;
    .end local v16    # "isTrustedService":Z
    .end local v17    # "numDynamicGroups":I
    .end local v18    # "numGroups":I
    .end local v19    # "numStaticGroups":I
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 877
    .restart local v4    # "onHost":Z
    .restart local v6    # "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .restart local v7    # "dynamicAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .restart local v14    # "gsmaSettings":I
    .restart local v15    # "bmp":Landroid/graphics/Bitmap;
    .restart local v17    # "numDynamicGroups":I
    .restart local v19    # "numStaticGroups":I
    :cond_6
    const/16 v16, 0x0

    goto :goto_1

    .line 879
    .restart local v16    # "isTrustedService":Z
    :cond_7
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 851
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/ApduServiceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/nfc/cardemulation/ApduServiceInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 910
    new-array v0, p1, [Landroid/nfc/cardemulation/ApduServiceInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 851
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/ApduServiceInfo$1;->newArray(I)[Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    return-object v0
.end method
