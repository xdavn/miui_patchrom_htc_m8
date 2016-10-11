.class public final Landroid/nfc/cardemulation/ApduServiceInfo;
.super Ljava/lang/Object;
.source "ApduServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;,
        Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;,
        Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;,
        Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final DBG:Z = false

.field private static final GSMA_NO_STATIC_OTHER:I = 0x4

.field private static final GSMA_NO_STATIC_PAYMENT:I = 0x2

.field public static final GSMA_SERVICE_PREFIX:Ljava/lang/String; = "com.gsma.services.nfc.OffHostService."

.field private static final GSMA_USE_BANNER:I = 0x1

.field static final NXP_NFC_EXT_META_DATA:Ljava/lang/String; = "com.nxp.nfc.extensions"

.field public static final POWER_STATE_BATTERY_OFF:I = 0x4

.field public static final POWER_STATE_SWITCH_OFF:I = 0x2

.field public static final POWER_STATE_SWITCH_ON:I = 0x1

.field public static final SECURE_ELEMENT_ESE:Ljava/lang/String; = "eSE"

.field public static final SECURE_ELEMENT_ROUTE_ALL:I = 0x3

.field public static final SECURE_ELEMENT_ROUTE_ESE:I = 0x1

.field public static final SECURE_ELEMENT_ROUTE_UICC:I = 0x2

.field public static final SECURE_ELEMENT_UICC:Ljava/lang/String; = "UICC"

.field static final TAG:Ljava/lang/String; = "ApduServiceInfo"

.field static final TAG_GSMA:Ljava/lang/String; = "ApduServiceInfo [GSMA]"


# instance fields
.field final mBannerResourceId:I

.field mBitmap:Landroid/graphics/Bitmap;

.field final mDescription:Ljava/lang/String;

.field final mDynamicAidGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation
.end field

.field final mFelicaExtension:Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;

.field mGsmaService:Lcom/gsma/nfc/INfcGsma;

.field mGsmaSettings:I

.field private mIsTrustedService:Z

.field final mNfcid2CategoryToGroup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;",
            ">;"
        }
    .end annotation
.end field

.field final mNfcid2Groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;",
            ">;"
        }
    .end annotation
.end field

.field final mNfcid2s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mOnHost:Z

.field final mRequiresDeviceUnlock:Z

.field final mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

.field final mService:Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;

.field final mSettingsActivityName:Ljava/lang/String;

.field final mStaticAidGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation
.end field

.field final mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 850
    new-instance v0, Landroid/nfc/cardemulation/ApduServiceInfo$1;

    invoke-direct {v0}, Landroid/nfc/cardemulation/ApduServiceInfo$1;-><init>()V

    sput-object v0, Landroid/nfc/cardemulation/ApduServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Z)V
    .locals 32
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;
    .param p3, "onHost"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 191
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mGsmaService:Lcom/gsma/nfc/INfcGsma;

    .line 192
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 193
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mGsmaSettings:I

    .line 195
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mIsTrustedService:Z

    .line 243
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v26, v0

    .line 244
    .local v26, "si":Landroid/content/pm/ServiceInfo;
    const/16 v19, 0x0

    .line 245
    .local v19, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v11, 0x0

    .line 247
    .local v11, "extParser":Landroid/content/res/XmlResourceParser;
    if-eqz p3, :cond_1

    .line 248
    :try_start_0
    const-string v29, "android.nfc.cardemulation.host_apdu_service"

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v19

    .line 249
    if-nez v19, :cond_3

    .line 250
    new-instance v29, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v30, "No android.nfc.cardemulation.host_apdu_service meta-data"

    invoke-direct/range {v29 .. v30}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v29
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    :catch_0
    move-exception v9

    .line 444
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v29, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Unable to create context for: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v29
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v29

    if-eqz v19, :cond_0

    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    throw v29

    .line 254
    :cond_1
    :try_start_2
    const-string v29, "android.nfc.cardemulation.off_host_apdu_service"

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v19

    .line 255
    if-nez v19, :cond_2

    .line 256
    new-instance v29, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v30, "No android.nfc.cardemulation.off_host_apdu_service meta-data"

    invoke-direct/range {v29 .. v30}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 261
    :cond_2
    const-string v29, "com.nxp.nfc.extensions"

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v11

    .line 262
    if-nez v11, :cond_3

    .line 263
    const-string v29, "ApduServiceInfo"

    const-string v30, "No com.nxp.nfc.extensions meta-data"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_3
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v10

    .line 269
    .local v10, "eventType":I
    :goto_0
    const/16 v29, 0x2

    move/from16 v0, v29

    if-eq v10, v0, :cond_4

    const/16 v29, 0x1

    move/from16 v0, v29

    if-eq v10, v0, :cond_4

    .line 270
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    goto :goto_0

    .line 273
    :cond_4
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v28

    .line 274
    .local v28, "tagName":Ljava/lang/String;
    if-eqz p3, :cond_5

    const-string/jumbo v29, "host-apdu-service"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_5

    .line 275
    new-instance v29, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v30, "Meta-data does not start with <host-apdu-service> tag"

    invoke-direct/range {v29 .. v30}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 277
    :cond_5
    if-nez p3, :cond_6

    const-string/jumbo v29, "offhost-apdu-service"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_6

    .line 278
    new-instance v29, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v30, "Meta-data does not start with <offhost-apdu-service> tag"

    invoke-direct/range {v29 .. v30}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 282
    :cond_6
    new-instance v29, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;-><init>(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;

    .line 285
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v23

    .line 286
    .local v23, "res":Landroid/content/res/Resources;
    invoke-static/range {v19 .. v19}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 287
    .local v5, "attrs":Landroid/util/AttributeSet;
    if-eqz p3, :cond_b

    .line 288
    sget-object v29, Lcom/android/internal/R$styleable;->HostApduService:[I

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v24

    .line 293
    .local v24, "sa":Landroid/content/res/TypedArray;
    const/16 v29, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    .line 295
    const/16 v29, 0x2

    const/16 v30, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    .line 298
    const/16 v29, 0x3

    const/16 v30, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    .line 300
    const/16 v29, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 302
    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    .line 319
    :goto_1
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2Groups:Ljava/util/ArrayList;

    .line 320
    new-instance v29, Ljava/util/HashMap;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    .line 321
    new-instance v29, Ljava/util/HashMap;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    .line 322
    new-instance v29, Ljava/util/HashMap;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2CategoryToGroup:Ljava/util/HashMap;

    .line 323
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2s:Ljava/util/ArrayList;

    .line 324
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    .line 326
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 327
    .local v8, "depth":I
    const/4 v6, 0x0

    .line 328
    .local v6, "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    const/4 v7, 0x0

    .line 332
    .local v7, "currentNfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    :cond_7
    :goto_2
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    const/16 v29, 0x3

    move/from16 v0, v29

    if-ne v10, v0, :cond_8

    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v29

    move/from16 v0, v29

    if-le v0, v8, :cond_1d

    :cond_8
    const/16 v29, 0x1

    move/from16 v0, v29

    if-eq v10, v0, :cond_1d

    .line 333
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v28

    .line 334
    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v10, v0, :cond_d

    const-string v29, "aid-group"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_d

    if-nez v6, :cond_d

    .line 336
    sget-object v29, Lcom/android/internal/R$styleable;->AidGroup:[I

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 339
    .local v13, "groupAttrs":Landroid/content/res/TypedArray;
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 341
    .local v14, "groupCategory":Ljava/lang/String;
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 343
    .local v15, "groupDescription":Ljava/lang/String;
    const-string/jumbo v29, "payment"

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_9

    .line 344
    const-string/jumbo v14, "other"

    .line 346
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    check-cast v6, Landroid/nfc/cardemulation/AidGroup;

    .line 347
    .restart local v6    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    if-eqz v6, :cond_c

    .line 348
    const-string/jumbo v29, "other"

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_a

    .line 349
    const-string v29, "ApduServiceInfo"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Not allowing multiple aid-groups in the "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " category"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const/4 v6, 0x0

    .line 356
    :cond_a
    :goto_3
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_2

    .line 304
    .end local v6    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    .end local v7    # "currentNfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    .end local v8    # "depth":I
    .end local v13    # "groupAttrs":Landroid/content/res/TypedArray;
    .end local v14    # "groupCategory":Ljava/lang/String;
    .end local v15    # "groupDescription":Ljava/lang/String;
    .end local v24    # "sa":Landroid/content/res/TypedArray;
    :cond_b
    sget-object v29, Lcom/android/internal/R$styleable;->OffHostApduService:[I

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v24

    .line 309
    .restart local v24    # "sa":Landroid/content/res/TypedArray;
    const/16 v29, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    .line 311
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    .line 312
    const/16 v29, 0x2

    const/16 v30, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    .line 314
    const/16 v29, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 316
    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_1

    .line 354
    .restart local v6    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    .restart local v7    # "currentNfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    .restart local v8    # "depth":I
    .restart local v13    # "groupAttrs":Landroid/content/res/TypedArray;
    .restart local v14    # "groupCategory":Ljava/lang/String;
    .restart local v15    # "groupDescription":Ljava/lang/String;
    :cond_c
    new-instance v6, Landroid/nfc/cardemulation/AidGroup;

    .end local v6    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-direct {v6, v14, v15}, Landroid/nfc/cardemulation/AidGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v6    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    goto :goto_3

    .line 357
    .end local v13    # "groupAttrs":Landroid/content/res/TypedArray;
    .end local v14    # "groupCategory":Ljava/lang/String;
    .end local v15    # "groupDescription":Ljava/lang/String;
    :cond_d
    const/16 v29, 0x3

    move/from16 v0, v29

    if-ne v10, v0, :cond_10

    const-string v29, "aid-group"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_10

    if-eqz v6, :cond_10

    .line 359
    iget-object v0, v6, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v29

    if-lez v29, :cond_f

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    move-object/from16 v29, v0

    iget-object v0, v6, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_e

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    move-object/from16 v29, v0

    iget-object v0, v6, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    :cond_e
    :goto_4
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 364
    :cond_f
    const-string v29, "ApduServiceInfo"

    const-string v30, "Not adding <aid-group> with empty or invalid AIDs"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 367
    :cond_10
    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v10, v0, :cond_12

    const-string v29, "aid-filter"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_12

    if-eqz v6, :cond_12

    .line 369
    sget-object v29, Lcom/android/internal/R$styleable;->AidFilter:[I

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 371
    .local v3, "a":Landroid/content/res/TypedArray;
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 373
    .local v4, "aid":Ljava/lang/String;
    invoke-static {v4}, Landroid/nfc/cardemulation/CardEmulation;->isValidAid(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_11

    iget-object v0, v6, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_11

    .line 374
    iget-object v0, v6, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    :goto_5
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_2

    .line 376
    :cond_11
    const-string v29, "ApduServiceInfo"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Ignoring invalid or duplicate aid: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 379
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v4    # "aid":Ljava/lang/String;
    :cond_12
    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v10, v0, :cond_14

    const-string v29, "aid-prefix-filter"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_14

    if-eqz v6, :cond_14

    .line 381
    sget-object v29, Lcom/android/internal/R$styleable;->AidFilter:[I

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 383
    .restart local v3    # "a":Landroid/content/res/TypedArray;
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 386
    .restart local v4    # "aid":Ljava/lang/String;
    const-string v29, "*"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 387
    invoke-static {v4}, Landroid/nfc/cardemulation/CardEmulation;->isValidAid(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_13

    iget-object v0, v6, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_13

    .line 388
    iget-object v0, v6, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    :goto_6
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_2

    .line 390
    :cond_13
    const-string v29, "ApduServiceInfo"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Ignoring invalid or duplicate aid: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 393
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v4    # "aid":Ljava/lang/String;
    :cond_14
    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v10, v0, :cond_18

    const-string/jumbo v29, "nfcid2-group"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_18

    if-nez v7, :cond_18

    .line 395
    sget-object v29, Lcom/android/internal/R$styleable;->AidGroup:[I

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 398
    .restart local v13    # "groupAttrs":Landroid/content/res/TypedArray;
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 400
    .restart local v15    # "groupDescription":Ljava/lang/String;
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 402
    .restart local v14    # "groupCategory":Ljava/lang/String;
    const-string/jumbo v29, "payment"

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_15

    .line 403
    const-string/jumbo v14, "other"

    .line 405
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2CategoryToGroup:Ljava/util/HashMap;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "currentNfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    check-cast v7, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;

    .line 406
    .restart local v7    # "currentNfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    if-eqz v7, :cond_17

    .line 407
    const-string/jumbo v29, "other"

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_16

    .line 408
    const-string v29, "ApduServiceInfo"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Not allowing multiple nfcid2-groups in the "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " category"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/4 v7, 0x0

    .line 415
    :cond_16
    :goto_7
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_2

    .line 413
    :cond_17
    new-instance v7, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;

    .end local v7    # "currentNfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    invoke-direct {v7, v14, v15}, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v7    # "currentNfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    goto :goto_7

    .line 416
    .end local v13    # "groupAttrs":Landroid/content/res/TypedArray;
    .end local v14    # "groupCategory":Ljava/lang/String;
    .end local v15    # "groupDescription":Ljava/lang/String;
    :cond_18
    const/16 v29, 0x3

    move/from16 v0, v29

    if-ne v10, v0, :cond_1b

    const-string/jumbo v29, "nfcid2-group"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1b

    if-eqz v7, :cond_1b

    .line 418
    iget-object v0, v7, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->nfcid2s:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    if-lez v29, :cond_1a

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2CategoryToGroup:Ljava/util/HashMap;

    move-object/from16 v29, v0

    iget-object v0, v7, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->category:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_19

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2Groups:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2CategoryToGroup:Ljava/util/HashMap;

    move-object/from16 v29, v0

    iget-object v0, v7, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->category:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    :cond_19
    :goto_8
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 424
    :cond_1a
    const-string v29, "ApduServiceInfo"

    const-string v30, "Not adding <nfcid2-group> with empty or invalid NFCID2s"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 427
    :cond_1b
    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v10, v0, :cond_7

    const-string/jumbo v29, "nfcid2-filter"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_7

    if-eqz v7, :cond_7

    .line 429
    const/16 v29, 0x0

    const-string/jumbo v30, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    .line 430
    .local v16, "nfcid2":Ljava/lang/String;
    const/16 v29, 0x0

    const-string/jumbo v30, "syscode"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v27

    .line 431
    .local v27, "syscode":Ljava/lang/String;
    const/16 v29, 0x0

    const-string/jumbo v30, "optparam"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    .line 433
    .local v18, "optparam":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/nfc/cardemulation/ApduServiceInfo;->isValidNfcid2(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1c

    iget-object v0, v7, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->nfcid2s:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    if-nez v29, :cond_1c

    .line 434
    iget-object v0, v7, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->nfcid2s:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    iget-object v0, v7, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->syscode:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    iget-object v0, v7, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->optparam:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2s:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 439
    :cond_1c
    const-string v29, "ApduServiceInfo"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Ignoring invalid or duplicate aid: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 446
    .end local v16    # "nfcid2":Ljava/lang/String;
    .end local v18    # "optparam":Ljava/lang/String;
    .end local v27    # "syscode":Ljava/lang/String;
    :cond_1d
    if-eqz v19, :cond_1e

    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->close()V

    .line 450
    :cond_1e
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    .line 452
    if-eqz v11, :cond_2e

    .line 455
    :try_start_3
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v10

    .line 456
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 457
    const/16 v25, 0x0

    .line 458
    .local v25, "seName":Ljava/lang/String;
    const/16 v21, 0x0

    .line 459
    .local v21, "powerState":I
    const/4 v12, 0x0

    .line 460
    .local v12, "felicaId":Ljava/lang/String;
    const/16 v17, 0x0

    .line 462
    .local v17, "optParam":Ljava/lang/String;
    :goto_9
    const/16 v29, 0x2

    move/from16 v0, v29

    if-eq v10, v0, :cond_1f

    const/16 v29, 0x1

    move/from16 v0, v29

    if-eq v10, v0, :cond_1f

    .line 463
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    goto :goto_9

    .line 465
    :cond_1f
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v28

    .line 466
    const-string v29, "extensions"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_21

    .line 467
    new-instance v29, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Meta-data does not start with <extensions> tag "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v29
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 518
    .end local v12    # "felicaId":Ljava/lang/String;
    .end local v17    # "optParam":Ljava/lang/String;
    .end local v21    # "powerState":I
    .end local v25    # "seName":Ljava/lang/String;
    :catchall_1
    move-exception v29

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    throw v29

    .line 480
    .restart local v12    # "felicaId":Ljava/lang/String;
    .restart local v17    # "optParam":Ljava/lang/String;
    .restart local v21    # "powerState":I
    .restart local v25    # "seName":Ljava/lang/String;
    :cond_20
    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v10, v0, :cond_27

    :try_start_4
    const-string/jumbo v29, "se-power-state"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_27

    .line 482
    const/16 v29, 0x0

    const-string/jumbo v30, "name"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-interface {v11, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 483
    .local v20, "powerName":Ljava/lang/String;
    const/16 v29, 0x0

    const-string/jumbo v30, "value"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-interface {v11, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v30, "true"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_24

    const/16 v22, 0x1

    .line 484
    .local v22, "powerValue":Z
    :goto_a
    const-string v29, "SwitchOn"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_25

    if-eqz v22, :cond_25

    .line 485
    or-int/lit8 v21, v21, 0x1

    .line 471
    .end local v20    # "powerName":Ljava/lang/String;
    .end local v22    # "powerValue":Z
    :cond_21
    :goto_b
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    const/16 v29, 0x3

    move/from16 v0, v29

    if-ne v10, v0, :cond_22

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v29

    move/from16 v0, v29

    if-le v0, v8, :cond_2a

    :cond_22
    const/16 v29, 0x1

    move/from16 v0, v29

    if-eq v10, v0, :cond_2a

    .line 472
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v28

    .line 474
    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v10, v0, :cond_20

    const-string/jumbo v29, "se-id"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_20

    .line 476
    const/16 v29, 0x0

    const-string/jumbo v30, "name"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-interface {v11, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 477
    if-eqz v25, :cond_23

    const-string v29, "eSE"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_21

    const-string v29, "UICC"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_21

    .line 478
    :cond_23
    new-instance v29, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Unsupported se name: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 483
    .restart local v20    # "powerName":Ljava/lang/String;
    :cond_24
    const/16 v22, 0x0

    goto/16 :goto_a

    .line 486
    .restart local v22    # "powerValue":Z
    :cond_25
    const-string v29, "SwitchOff"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_26

    if-eqz v22, :cond_26

    .line 487
    or-int/lit8 v21, v21, 0x2

    goto/16 :goto_b

    .line 488
    :cond_26
    const-string v29, "BatteryOff"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_21

    if-eqz v22, :cond_21

    .line 489
    or-int/lit8 v21, v21, 0x4

    goto/16 :goto_b

    .line 491
    .end local v20    # "powerName":Ljava/lang/String;
    .end local v22    # "powerValue":Z
    :cond_27
    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v10, v0, :cond_21

    const-string v29, "felica-id"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_21

    .line 493
    const/16 v29, 0x0

    const-string/jumbo v30, "name"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-interface {v11, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 494
    if-eqz v12, :cond_28

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v29

    const/16 v30, 0xa

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_29

    .line 495
    :cond_28
    new-instance v29, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Unsupported felicaId: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 498
    :cond_29
    const/16 v29, 0x0

    const-string/jumbo v30, "opt-params"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-interface {v11, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 499
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v29

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_21

    .line 500
    new-instance v29, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Unsupported opt-params: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 504
    :cond_2a
    if-eqz v25, :cond_2c

    .line 505
    new-instance v30, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    const-string v29, "eSE"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2b

    const/16 v29, 0x1

    :goto_c
    move-object/from16 v0, v30

    move/from16 v1, v29

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;-><init>(II)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    .line 506
    const-string v29, "ApduServiceInfo"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :goto_d
    if-eqz v12, :cond_2d

    .line 512
    new-instance v29, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-direct {v0, v12, v1}, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mFelicaExtension:Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;

    .line 513
    const-string v29, "ApduServiceInfo"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mFelicaExtension:Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 518
    :goto_e
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    .line 524
    .end local v12    # "felicaId":Ljava/lang/String;
    .end local v17    # "optParam":Ljava/lang/String;
    .end local v21    # "powerState":I
    .end local v25    # "seName":Ljava/lang/String;
    :goto_f
    return-void

    .line 505
    .restart local v12    # "felicaId":Ljava/lang/String;
    .restart local v17    # "optParam":Ljava/lang/String;
    .restart local v21    # "powerState":I
    .restart local v25    # "seName":Ljava/lang/String;
    :cond_2b
    const/16 v29, 0x2

    goto :goto_c

    .line 508
    :cond_2c
    :try_start_5
    new-instance v29, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    const/16 v30, -0x1

    const/16 v31, 0x0

    invoke-direct/range {v29 .. v31}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;-><init>(II)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    goto :goto_d

    .line 515
    :cond_2d
    new-instance v29, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-direct/range {v29 .. v31}, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mFelicaExtension:Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_e

    .line 521
    .end local v12    # "felicaId":Ljava/lang/String;
    .end local v17    # "optParam":Ljava/lang/String;
    .end local v21    # "powerState":I
    .end local v25    # "seName":Ljava/lang/String;
    :cond_2e
    new-instance v29, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    const/16 v30, -0x1

    const/16 v31, 0x0

    invoke-direct/range {v29 .. v31}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;-><init>(II)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    .line 522
    new-instance v29, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-direct/range {v29 .. v31}, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mFelicaExtension:Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;

    goto :goto_f
.end method

.method public constructor <init>(Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIILjava/lang/String;Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;Ljava/util/ArrayList;ILandroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "info"    # Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;
    .param p2, "onHost"    # Z
    .param p3, "description"    # Ljava/lang/String;
    .param p6, "requiresUnlock"    # Z
    .param p7, "bannerResource"    # I
    .param p8, "uid"    # I
    .param p9, "settingsActivityName"    # Ljava/lang/String;
    .param p10, "seExtension"    # Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    .param p12, "gsmaSettings"    # I
    .param p13, "bmp"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;ZII",
            "Ljava/lang/String;",
            "Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;",
            ">;I",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 207
    .local p4, "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .local p5, "dynamicAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .local p11, "nfcid2Groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mGsmaService:Lcom/gsma/nfc/INfcGsma;

    .line 192
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 193
    const/4 v4, 0x0

    iput v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mGsmaSettings:I

    .line 195
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mIsTrustedService:Z

    .line 209
    iput-object p1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;

    .line 210
    iput-object p3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    .line 211
    move-object/from16 v0, p11

    iput-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2Groups:Ljava/util/ArrayList;

    .line 212
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2s:Ljava/util/ArrayList;

    .line 213
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    .line 214
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    .line 215
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2CategoryToGroup:Ljava/util/HashMap;

    .line 216
    iput-boolean p2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    .line 217
    iput-boolean p6, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    .line 218
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/AidGroup;

    .line 219
    .local v1, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    iget-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    iget-object v5, v1, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 221
    .end local v1    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    :cond_0
    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/AidGroup;

    .line 222
    .restart local v1    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    iget-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    iget-object v5, v1, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 225
    .end local v1    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    :cond_1
    invoke-virtual/range {p11 .. p11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;

    .line 226
    .local v3, "nfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    iget-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2CategoryToGroup:Ljava/util/HashMap;

    iget-object v5, v3, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->category:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2s:Ljava/util/ArrayList;

    iget-object v5, v3, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->nfcid2s:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 230
    .end local v3    # "nfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    :cond_2
    iput p7, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    .line 231
    iput p8, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    .line 232
    move-object/from16 v0, p10

    iput-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    .line 233
    iput-object p9, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 234
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mFelicaExtension:Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;

    .line 236
    move/from16 v0, p12

    iput v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mGsmaSettings:I

    .line 237
    move-object/from16 v0, p13

    iput-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 239
    return-void
.end method

.method private getDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 738
    iget-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mGsmaService:Lcom/gsma/nfc/INfcGsma;

    if-nez v4, :cond_0

    .line 739
    invoke-static {}, Landroid/nfc/cardemulation/ApduServiceInfo;->getGsmaService()Lcom/gsma/nfc/INfcGsma;

    move-result-object v4

    iput-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mGsmaService:Lcom/gsma/nfc/INfcGsma;

    .line 742
    :cond_0
    const/4 v0, 0x0

    .line 744
    .local v0, "bmp":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mGsmaService:Lcom/gsma/nfc/INfcGsma;

    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/gsma/nfc/INfcGsma;->getDrawable(Landroid/content/ComponentName;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 755
    :goto_0
    if-nez v0, :cond_1

    .line 756
    const-string v4, "ApduServiceInfo [GSMA]"

    const-string v5, "Drawable is null."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const/4 v1, 0x0

    .line 761
    :goto_1
    return-object v1

    .line 745
    :catch_0
    move-exception v2

    .line 746
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "ApduServiceInfo [GSMA]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in getDrawable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    invoke-static {}, Landroid/nfc/cardemulation/ApduServiceInfo;->getGsmaService()Lcom/gsma/nfc/INfcGsma;

    move-result-object v4

    iput-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mGsmaService:Lcom/gsma/nfc/INfcGsma;

    .line 749
    :try_start_1
    iget-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mGsmaService:Lcom/gsma/nfc/INfcGsma;

    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/gsma/nfc/INfcGsma;->getDrawable(Landroid/content/ComponentName;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 750
    :catch_1
    move-exception v3

    .line 751
    .local v3, "e1":Ljava/lang/Exception;
    const-string v4, "ApduServiceInfo [GSMA]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in getDrawable again: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 760
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "e1":Ljava/lang/Exception;
    :cond_1
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 761
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_1
.end method

.method static getGsmaService()Lcom/gsma/nfc/INfcGsma;
    .locals 4

    .prologue
    .line 1338
    :try_start_0
    const-string/jumbo v2, "nfc"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v1

    .line 1339
    .local v1, "nfcService":Landroid/nfc/INfcAdapter;
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getNfcGsmaService()Lcom/gsma/nfc/INfcGsma;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1342
    :goto_0
    return-object v2

    .line 1340
    :catch_0
    move-exception v0

    .line 1341
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ApduServiceInfo [GSMA]"

    const-string v3, "Exception in getGsmaService: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1342
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isGsmaService(Landroid/content/ComponentName;)Z
    .locals 2
    .param p0, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 1295
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.gsma.services.nfc.OffHostService."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method static isValidNfcid2(Ljava/lang/String;)Z
    .locals 5
    .param p0, "nfcid2"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 711
    if-nez p0, :cond_0

    .line 724
    :goto_0
    return v1

    .line 714
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 715
    .local v0, "nfcid2Length":I
    if-eqz v0, :cond_1

    rem-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_2

    .line 716
    :cond_1
    const-string v2, "ApduServiceInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not correctly formatted."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 720
    :cond_2
    const/16 v2, 0x10

    if-eq v0, v2, :cond_3

    .line 721
    const-string v2, "ApduServiceInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NFCID2 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not 8 bytes."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 724
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 811
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 915
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (Description: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 919
    iget-boolean v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mIsTrustedService:Z

    if-eqz v4, :cond_0

    .line 920
    const-string v4, "    Is an TrustedService"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 922
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    GsmaSettings: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mGsmaSettings:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 924
    const-string v4, "    Static AID groups:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 925
    iget-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/AidGroup;

    .line 926
    .local v1, "group":Landroid/nfc/cardemulation/AidGroup;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "        Category: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 927
    iget-object v4, v1, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 928
    .local v0, "aid":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "            AID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 931
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "group":Landroid/nfc/cardemulation/AidGroup;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    const-string v4, "    Dynamic AID groups:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 932
    iget-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/AidGroup;

    .line 933
    .restart local v1    # "group":Landroid/nfc/cardemulation/AidGroup;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "        Category: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 934
    iget-object v4, v1, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 935
    .restart local v0    # "aid":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "            AID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 938
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "group":Landroid/nfc/cardemulation/AidGroup;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    Settings Activity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 939
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 796
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    .line 800
    :goto_0
    return v1

    .line 797
    :cond_0
    instance-of v1, p1, Landroid/nfc/cardemulation/ApduServiceInfo;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 798
    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 800
    .local v0, "thatService":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAidGroups()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 586
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 587
    .local v1, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 588
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 590
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/AidGroup;>;"
    :cond_0
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 591
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/AidGroup;>;"
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 594
    iget v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mGsmaSettings:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 595
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "payment"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 602
    :cond_2
    iget v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mGsmaSettings:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_3

    .line 603
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "other"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 613
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 616
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/AidGroup;>;"
    :cond_4
    return-object v1
.end method

.method public getAids()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 543
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 544
    .local v0, "aids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/AidGroup;

    .line 545
    .local v1, "group":Landroid/nfc/cardemulation/AidGroup;
    iget-object v3, v1, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 547
    .end local v1    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_0
    return-object v0
.end method

.method public getBannerResourceId()I
    .locals 1

    .prologue
    .line 1325
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCategoryForAid(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "aid"    # Ljava/lang/String;

    .prologue
    .line 624
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v1

    .line 625
    .local v1, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    .line 626
    .local v0, "group":Landroid/nfc/cardemulation/AidGroup;
    iget-object v3, v0, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 627
    iget-object v3, v0, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    .line 630
    .end local v0    # "group":Landroid/nfc/cardemulation/AidGroup;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDynamicAidGroupForCategory(Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 566
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    return-object v0
.end method

.method public getDynamicAidGroups()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1321
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    return-object v0
.end method

.method public getGsmaSettings()I
    .locals 1

    .prologue
    .line 1329
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mGsmaSettings:I

    return v0
.end method

.method public getNfcid2Groups()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;",
            ">;"
        }
    .end annotation

    .prologue
    .line 634
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2Groups:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNfcid2s()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 574
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2s:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPrefixAids()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 551
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 552
    .local v4, "prefixAids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/AidGroup;

    .line 553
    .local v1, "group":Landroid/nfc/cardemulation/AidGroup;
    iget-object v5, v1, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 554
    .local v0, "aid":Ljava/lang/String;
    const-string v5, "*"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 555
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 559
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "group":Landroid/nfc/cardemulation/AidGroup;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    return-object v4
.end method

.method public getSEInfo()Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    return-object v0
.end method

.method public getServiceInfo()Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;
    .locals 1

    .prologue
    .line 1313
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;

    return-object v0
.end method

.method public getSettingsActivityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public getStaticAidGroups()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1317
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 658
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    return v0
.end method

.method public hasCategory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 642
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 805
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    return v0
.end method

.method public isGsmaService()Z
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;->isGsmaService()Z

    move-result v0

    return v0
.end method

.method public isOnHost()Z
    .locals 1

    .prologue
    .line 646
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    return v0
.end method

.method public isTrustedService()Z
    .locals 1

    .prologue
    .line 1308
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mIsTrustedService:Z

    return v0
.end method

.method public loadAppLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 672
    :try_start_0
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;

    invoke-virtual {v1}, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;->resolvePackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 676
    :goto_0
    return-object v1

    .line 675
    :catch_0
    move-exception v0

    .line 676
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v0, 0x0

    .line 689
    :try_start_0
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 690
    .local v2, "res":Landroid/content/res/Resources;
    iget v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mGsmaSettings:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 694
    invoke-direct {p0, v2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 704
    .end local v2    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v0

    .line 697
    .restart local v2    # "res":Landroid/content/res/Resources;
    :cond_0
    iget v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 698
    .local v0, "banner":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 699
    .end local v0    # "banner":Landroid/graphics/drawable/Drawable;
    .end local v2    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 700
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v3, "ApduServiceInfo"

    const-string v4, "Could not load banner."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 702
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v1

    .line 703
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ApduServiceInfo"

    const-string v4, "Could not load banner."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 681
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;

    invoke-virtual {v0, p1}, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 666
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;

    invoke-virtual {v0, p1}, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public removeDynamicAidGroupForCategory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 570
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requiresUnlock()Z
    .locals 1

    .prologue
    .line 650
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    return v0
.end method

.method public setAsTrustedService()V
    .locals 1

    .prologue
    .line 1304
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mIsTrustedService:Z

    .line 1305
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 765
    iput-object p1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 766
    return-void
.end method

.method public setGsmaSettings(I)V
    .locals 0
    .param p1, "gsmaSettings"    # I

    .prologue
    .line 1333
    iput p1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mGsmaSettings:I

    .line 1334
    return-void
.end method

.method public setOrReplaceDynamicAidGroup(Landroid/nfc/cardemulation/AidGroup;)V
    .locals 2
    .param p1, "aidGroup"    # Landroid/nfc/cardemulation/AidGroup;

    .prologue
    .line 662
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 775
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ApduService: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 776
    .local v2, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 777
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", description: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", TrustedService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mIsTrustedService:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", GsmaSettings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mGsmaSettings:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    const-string v3, ", Static AID Groups: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    .line 785
    .local v0, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v0}, Landroid/nfc/cardemulation/AidGroup;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 787
    .end local v0    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    :cond_0
    const-string v3, ", Dynamic AID Groups: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    .line 789
    .restart local v0    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v0}, Landroid/nfc/cardemulation/AidGroup;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 791
    .end local v0    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 816
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;

    invoke-virtual {v0, p1, p2}, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 817
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 818
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 819
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 820
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 821
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 823
    :cond_0
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 824
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 825
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 829
    :cond_1
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 830
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 831
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 833
    :cond_2
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mGsmaSettings:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 835
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mIsTrustedService:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 837
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    if-eqz v0, :cond_7

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 838
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 839
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 840
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 841
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    invoke-virtual {v0, p1, p2}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 843
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2Groups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 844
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2Groups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 845
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2Groups:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 848
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 818
    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 829
    goto :goto_1

    :cond_6
    move v0, v2

    .line 835
    goto :goto_2

    :cond_7
    move v1, v2

    .line 837
    goto :goto_3
.end method
