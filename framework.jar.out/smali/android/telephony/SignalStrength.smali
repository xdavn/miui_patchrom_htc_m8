.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final INVALID:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field public static final NUM_SIGNAL_STRENGTH_BINS:I = 0x5

.field private static final RSRP_THRESH_LENIENT:[I

.field private static final RSRP_THRESH_STRICT:[I

.field private static final RSRP_THRESH_TYPE_STRICT:I = 0x0

.field public static final SIGNAL_STRENGTH_DATA_TYPE:I = 0x65

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_LEVEL_5:I = 0x5

.field public static final SIGNAL_STRENGTH_LEVEL_6:I = 0x6

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1

.field public static final SIGNAL_STRENGTH_VOICE_TYPE:I = 0x64

.field private static final VDBG:Z


# instance fields
.field private isGsm:Z

.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSignalBar:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmEcno:I

.field private mGsmSignalDbm:I

.field private mGsmSignalStrength:I

.field private mHtcLteRsrp:I

.field private mHtcLteRsrq:I

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I

.field private mTDRscp:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 57
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "none"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "poor"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "moderate"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "good"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "great"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 72
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/telephony/SignalStrength;->RSRP_THRESH_STRICT:[I

    .line 73
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/telephony/SignalStrength;->RSRP_THRESH_LENIENT:[I

    .line 555
    new-instance v0, Landroid/telephony/SignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 72
    :array_0
    .array-data 4
        -0x8c
        -0x73
        -0x69
        -0x5f
        -0x55
        -0x2c
    .end array-data

    .line 73
    :array_1
    .array-data 4
        -0x8c
        -0x80
        -0x76
        -0x6c
        -0x62
        -0x2c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x63

    const v0, 0x7fffffff

    const/4 v1, -0x1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 137
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 138
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 139
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 140
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 141
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 142
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 143
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 144
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 145
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 146
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 147
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 150
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    .line 151
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    .line 154
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    .line 157
    iput v1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    .line 158
    iput v1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    .line 160
    iput v1, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    .line 161
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIIIIIIZ)V
    .locals 0
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmSignalDbm"    # I
    .param p14, "gsmEcno"    # I
    .param p15, "evdoSignalBar"    # I
    .param p16, "htcLteRsrp"    # I
    .param p17, "htcLteRsrq"    # I
    .param p18, "tdRscp"    # I
    .param p19, "gsm"    # Z

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    invoke-virtual/range {p0 .. p19}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIIIIIIIZ)V

    .line 279
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIIIIIZ)V
    .locals 0
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmSignalDbm"    # I
    .param p14, "gsmEcno"    # I
    .param p15, "evdoSignalBar"    # I
    .param p16, "htcLteRsrp"    # I
    .param p17, "htcLteRsrq"    # I
    .param p18, "gsm"    # Z

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    invoke-virtual/range {p0 .. p18}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIIIIIIZ)V

    .line 260
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIIIZ)V
    .locals 0
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmSignalDbm"    # I
    .param p14, "gsmEcno"    # I
    .param p15, "evdoSignalBar"    # I
    .param p16, "gsmFlag"    # Z

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    invoke-virtual/range {p0 .. p16}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIIIIZ)V

    .line 243
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZ)V
    .locals 0
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmFlag"    # Z

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    invoke-virtual/range {p0 .. p13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 212
    return-void
.end method

.method public constructor <init>(IIIIIIIZ)V
    .locals 14
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsmFlag"    # Z

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 226
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 471
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 472
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 473
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 474
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 475
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 476
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 477
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 478
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 479
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 480
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 481
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 482
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    .line 483
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->readHtcAddedFieldsFrom(Landroid/os/Parcel;)V

    .line 484
    return-void

    .line 481
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .locals 0
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    .line 292
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "gsmFlag"    # Z

    .prologue
    const/16 v2, 0x63

    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 173
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 174
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 175
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 176
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 177
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 178
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 179
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 180
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 181
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 182
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 183
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 184
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 186
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    .line 187
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    .line 190
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    .line 193
    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    .line 194
    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    .line 196
    iput v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    .line 197
    return-void
.end method

.method private calculateHtcAddedFieldsHashCode()I
    .locals 2

    .prologue
    .line 1494
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    add-int/2addr v0, v1

    return v0
.end method

.method private copyHtcAddedFieldsFrom(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 1420
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    .line 1421
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmEcno:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    .line 1422
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    .line 1424
    iget v0, p1, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    .line 1425
    iget v0, p1, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    .line 1427
    return-void
.end method

.method private equalsHtcAddedFields(Landroid/telephony/SignalStrength;)Z
    .locals 2
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 1483
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    iget v1, p1, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    iget v1, p1, Landroid/telephony/SignalStrength;->mGsmEcno:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    iget v1, p1, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    iget v1, p1, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    iget v1, p1, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fillHtcAddedFieldsInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1459
    const-string v0, "GsmSignalDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1460
    const-string v0, "GsmEcno"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1461
    const-string v0, "EvdoSignalBar"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1463
    const-string v0, "HtcLteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1464
    const-string v0, "HtcLteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1466
    return-void
.end method

.method private getAsiaLteLevel()I
    .locals 3

    .prologue
    .line 2235
    const/4 v0, 0x1

    .line 2236
    .local v0, "rsrpLevel":I
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x53

    if-lt v1, v2, :cond_0

    const/4 v0, 0x5

    .line 2242
    :goto_0
    return v0

    .line 2237
    :cond_0
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x5d

    if-lt v1, v2, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    .line 2238
    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x67

    if-lt v1, v2, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 2239
    :cond_2
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x71

    if-lt v1, v2, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    .line 2240
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getAttLteLevel()I
    .locals 4

    .prologue
    .line 2276
    const/4 v0, 0x1

    .line 2277
    .local v0, "rsrpLevel":I
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x55

    if-le v2, v3, :cond_0

    const/4 v0, 0x5

    .line 2283
    :goto_0
    const/4 v1, 0x1

    .line 2284
    .local v1, "rssnrLevel":I
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_4

    const/4 v1, 0x1

    .line 2291
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2

    .line 2278
    .end local v1    # "rssnrLevel":I
    :cond_0
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x5f

    if-le v2, v3, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    .line 2279
    :cond_1
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x69

    if-le v2, v3, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 2280
    :cond_2
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x73

    if-le v2, v3, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    .line 2281
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 2285
    .restart local v1    # "rssnrLevel":I
    :cond_4
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v3, 0x82

    if-lt v2, v3, :cond_5

    const/4 v1, 0x5

    goto :goto_1

    .line 2286
    :cond_5
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v3, 0x2d

    if-lt v2, v3, :cond_6

    const/4 v1, 0x4

    goto :goto_1

    .line 2287
    :cond_6
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_7

    const/4 v1, 0x3

    goto :goto_1

    .line 2288
    :cond_7
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v3, -0x1e

    if-lt v2, v3, :cond_8

    const/4 v1, 0x2

    goto :goto_1

    .line 2289
    :cond_8
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private getAusNzLteLevel()I
    .locals 3

    .prologue
    .line 2201
    const/4 v0, 0x1

    .line 2202
    .local v0, "rsrpLevel":I
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x5a

    if-le v1, v2, :cond_0

    const/4 v0, 0x5

    .line 2208
    :goto_0
    return v0

    .line 2203
    :cond_0
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x64

    if-le v1, v2, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    .line 2204
    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x69

    if-le v1, v2, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 2205
    :cond_2
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x73

    if-le v1, v2, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    .line 2206
    :cond_3
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x78

    if-le v1, v2, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    .line 2207
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCTLteLevel()I
    .locals 5

    .prologue
    const v4, 0x7fffffff

    .line 2399
    const/4 v1, 0x0

    .line 2400
    .local v1, "rsrpLevel":I
    const/4 v0, 0x0

    .line 2402
    .local v0, "levelLteRssnr":I
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v2, v4, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 2413
    :goto_0
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v2, v4, :cond_6

    const/4 v0, 0x0

    .line 2427
    :goto_1
    if-le v1, v0, :cond_b

    .end local v0    # "levelLteRssnr":I
    :goto_2
    return v0

    .line 2405
    .restart local v0    # "levelLteRssnr":I
    :cond_1
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x69

    if-lt v2, v3, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    .line 2408
    :cond_2
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x72

    if-lt v2, v3, :cond_3

    const/4 v1, 0x3

    goto :goto_0

    .line 2409
    :cond_3
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x76

    if-lt v2, v3, :cond_4

    const/4 v1, 0x2

    goto :goto_0

    .line 2410
    :cond_4
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x7b

    if-lt v2, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    .line 2411
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 2416
    :cond_6
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v3, 0x5a

    if-lt v2, v3, :cond_7

    const/4 v0, 0x4

    goto :goto_1

    .line 2418
    :cond_7
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_8

    const/4 v0, 0x3

    goto :goto_1

    .line 2420
    :cond_8
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v3, -0x1e

    if-lt v2, v3, :cond_9

    const/4 v0, 0x2

    goto :goto_1

    .line 2422
    :cond_9
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v3, -0x32

    if-lt v2, v3, :cond_a

    const/4 v0, 0x1

    goto :goto_1

    .line 2425
    :cond_a
    const/4 v2, 0x0

    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    goto :goto_1

    :cond_b
    move v0, v1

    .line 2427
    goto :goto_2
.end method

.method private getCULteLevel(I)I
    .locals 1
    .param p1, "signalLevel"    # I

    .prologue
    .line 2196
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getCmccLteLevel(I)I

    move-result v0

    return v0
.end method

.method private getCallState(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1820
    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1821
    .local v1, "telephonyMgr":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 1823
    .local v0, "callState":I
    :goto_0
    return v0

    .line 1821
    .end local v0    # "callState":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCdmaCTLevel(II)I
    .locals 3
    .param p1, "cdmaDbm"    # I
    .param p2, "cdmaEcio"    # I

    .prologue
    .line 2731
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    const/16 v2, -0x78

    if-ne p1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 2741
    :goto_0
    return v0

    .line 2733
    :cond_1
    const/16 v2, -0x55

    if-lt p1, v2, :cond_2

    const/4 v1, 0x4

    .line 2739
    .local v1, "levelDbm":I
    :goto_1
    move v0, v1

    .line 2741
    .local v0, "level":I
    goto :goto_0

    .line 2734
    .end local v0    # "level":I
    .end local v1    # "levelDbm":I
    :cond_2
    const/16 v2, -0x5f

    if-lt p1, v2, :cond_3

    const/4 v1, 0x3

    .restart local v1    # "levelDbm":I
    goto :goto_1

    .line 2735
    .end local v1    # "levelDbm":I
    :cond_3
    const/16 v2, -0x64

    if-lt p1, v2, :cond_4

    const/4 v1, 0x2

    .restart local v1    # "levelDbm":I
    goto :goto_1

    .line 2736
    .end local v1    # "levelDbm":I
    :cond_4
    const/16 v2, -0x69

    if-lt p1, v2, :cond_5

    const/4 v1, 0x1

    .restart local v1    # "levelDbm":I
    goto :goto_1

    .line 2737
    .end local v1    # "levelDbm":I
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "levelDbm":I
    goto :goto_1
.end method

.method private getCdmaHtcLevel(III)I
    .locals 3
    .param p1, "cdmaDbm"    # I
    .param p2, "cdmaEcio"    # I
    .param p3, "signalBarLevel"    # I

    .prologue
    .line 2661
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    const/16 v2, -0x78

    if-ne p1, v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 2672
    :cond_1
    :goto_0
    return v0

    .line 2663
    :cond_2
    const/16 v2, -0x4b

    if-lt p1, v2, :cond_3

    const/4 v1, 0x4

    .line 2669
    .local v1, "levelDbm":I
    :goto_1
    move v0, v1

    .line 2670
    .local v0, "level":I
    const/4 v2, 0x5

    if-ne p3, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2664
    .end local v0    # "level":I
    .end local v1    # "levelDbm":I
    :cond_3
    const/16 v2, -0x55

    if-lt p1, v2, :cond_4

    const/4 v1, 0x3

    .restart local v1    # "levelDbm":I
    goto :goto_1

    .line 2665
    .end local v1    # "levelDbm":I
    :cond_4
    const/16 v2, -0x5f

    if-lt p1, v2, :cond_5

    const/4 v1, 0x2

    .restart local v1    # "levelDbm":I
    goto :goto_1

    .line 2666
    .end local v1    # "levelDbm":I
    :cond_5
    const/16 v2, -0x64

    if-lt p1, v2, :cond_6

    const/4 v1, 0x1

    .restart local v1    # "levelDbm":I
    goto :goto_1

    .line 2667
    .end local v1    # "levelDbm":I
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "levelDbm":I
    goto :goto_1
.end method

.method private getCdmaKDDILevel(II)I
    .locals 5
    .param p1, "cdmaDbm"    # I
    .param p2, "cdmaEcio"    # I

    .prologue
    const/4 v4, -0x1

    .line 2679
    if-eq p1, v4, :cond_0

    const/16 v3, -0x78

    if-ne p1, v3, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 2687
    .local v1, "levelDbm":I
    :goto_0
    if-eq p2, v4, :cond_1

    const/16 v3, -0xa0

    if-ne p2, v3, :cond_7

    :cond_1
    const/4 v2, 0x0

    .line 2694
    .local v2, "levelEcio":I
    :goto_1
    if-ge v1, v2, :cond_c

    move v0, v1

    .line 2696
    .local v0, "level":I
    :goto_2
    return v0

    .line 2680
    .end local v0    # "level":I
    .end local v1    # "levelDbm":I
    .end local v2    # "levelEcio":I
    :cond_2
    const/16 v3, -0x62

    if-lt p1, v3, :cond_3

    const/4 v1, 0x4

    .restart local v1    # "levelDbm":I
    goto :goto_0

    .line 2681
    .end local v1    # "levelDbm":I
    :cond_3
    const/16 v3, -0x65

    if-lt p1, v3, :cond_4

    const/4 v1, 0x3

    .restart local v1    # "levelDbm":I
    goto :goto_0

    .line 2682
    .end local v1    # "levelDbm":I
    :cond_4
    const/16 v3, -0x68

    if-lt p1, v3, :cond_5

    const/4 v1, 0x2

    .restart local v1    # "levelDbm":I
    goto :goto_0

    .line 2683
    .end local v1    # "levelDbm":I
    :cond_5
    const/16 v3, -0x6b

    if-lt p1, v3, :cond_6

    const/4 v1, 0x1

    .restart local v1    # "levelDbm":I
    goto :goto_0

    .line 2684
    .end local v1    # "levelDbm":I
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "levelDbm":I
    goto :goto_0

    .line 2688
    :cond_7
    const/16 v3, -0x64

    if-lt p2, v3, :cond_8

    const/4 v2, 0x4

    .restart local v2    # "levelEcio":I
    goto :goto_1

    .line 2689
    .end local v2    # "levelEcio":I
    :cond_8
    const/16 v3, -0x6e

    if-lt p2, v3, :cond_9

    const/4 v2, 0x3

    .restart local v2    # "levelEcio":I
    goto :goto_1

    .line 2690
    .end local v2    # "levelEcio":I
    :cond_9
    const/16 v3, -0x82

    if-lt p2, v3, :cond_a

    const/4 v2, 0x2

    .restart local v2    # "levelEcio":I
    goto :goto_1

    .line 2691
    .end local v2    # "levelEcio":I
    :cond_a
    const/16 v3, -0x96

    if-lt p2, v3, :cond_b

    const/4 v2, 0x1

    .restart local v2    # "levelEcio":I
    goto :goto_1

    .line 2692
    .end local v2    # "levelEcio":I
    :cond_b
    const/4 v2, 0x0

    .restart local v2    # "levelEcio":I
    goto :goto_1

    :cond_c
    move v0, v2

    .line 2694
    goto :goto_2
.end method

.method private getCdmaSPCSLevel(III)I
    .locals 9
    .param p1, "cdmaDbm"    # I
    .param p2, "cdmaEcio"    # I
    .param p3, "maxLevel"    # I

    .prologue
    const/16 v8, -0x96

    const/16 v7, -0xa0

    const/16 v6, -0x5a

    const/4 v5, -0x1

    const/16 v4, -0x78

    .line 2748
    const/4 v3, 0x6

    if-ne p3, v3, :cond_10

    .line 2749
    if-eq p1, v5, :cond_0

    if-ne p1, v4, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 2759
    .local v1, "levelDbm":I
    :goto_0
    if-eq p2, v5, :cond_1

    if-ne p2, v7, :cond_9

    :cond_1
    const/4 v2, 0x0

    .line 2783
    .local v2, "levelEcio":I
    :goto_1
    if-ge v1, v2, :cond_1d

    move v0, v1

    .line 2785
    .local v0, "level":I
    :goto_2
    return v0

    .line 2750
    .end local v0    # "level":I
    .end local v1    # "levelDbm":I
    .end local v2    # "levelEcio":I
    :cond_2
    const/16 v3, -0x4b

    if-lt p1, v3, :cond_3

    const/4 v1, 0x6

    .restart local v1    # "levelDbm":I
    goto :goto_0

    .line 2751
    .end local v1    # "levelDbm":I
    :cond_3
    const/16 v3, -0x55

    if-lt p1, v3, :cond_4

    const/4 v1, 0x5

    .restart local v1    # "levelDbm":I
    goto :goto_0

    .line 2752
    .end local v1    # "levelDbm":I
    :cond_4
    if-lt p1, v6, :cond_5

    const/4 v1, 0x4

    .restart local v1    # "levelDbm":I
    goto :goto_0

    .line 2753
    .end local v1    # "levelDbm":I
    :cond_5
    const/16 v3, -0x5f

    if-lt p1, v3, :cond_6

    const/4 v1, 0x3

    .restart local v1    # "levelDbm":I
    goto :goto_0

    .line 2754
    .end local v1    # "levelDbm":I
    :cond_6
    const/16 v3, -0x64

    if-lt p1, v3, :cond_7

    const/4 v1, 0x2

    .restart local v1    # "levelDbm":I
    goto :goto_0

    .line 2755
    .end local v1    # "levelDbm":I
    :cond_7
    const/16 v3, -0x69

    if-lt p1, v3, :cond_8

    const/4 v1, 0x1

    .restart local v1    # "levelDbm":I
    goto :goto_0

    .line 2756
    .end local v1    # "levelDbm":I
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "levelDbm":I
    goto :goto_0

    .line 2760
    :cond_9
    if-lt p2, v6, :cond_a

    const/4 v2, 0x6

    .restart local v2    # "levelEcio":I
    goto :goto_1

    .line 2761
    .end local v2    # "levelEcio":I
    :cond_a
    const/16 v3, -0x6e

    if-lt p2, v3, :cond_b

    const/4 v2, 0x5

    .restart local v2    # "levelEcio":I
    goto :goto_1

    .line 2762
    .end local v2    # "levelEcio":I
    :cond_b
    if-lt p2, v4, :cond_c

    const/4 v2, 0x4

    .restart local v2    # "levelEcio":I
    goto :goto_1

    .line 2763
    .end local v2    # "levelEcio":I
    :cond_c
    const/16 v3, -0x82

    if-lt p2, v3, :cond_d

    const/4 v2, 0x3

    .restart local v2    # "levelEcio":I
    goto :goto_1

    .line 2764
    .end local v2    # "levelEcio":I
    :cond_d
    const/16 v3, -0x8c

    if-lt p2, v3, :cond_e

    const/4 v2, 0x2

    .restart local v2    # "levelEcio":I
    goto :goto_1

    .line 2765
    .end local v2    # "levelEcio":I
    :cond_e
    if-lt p2, v8, :cond_f

    const/4 v2, 0x1

    .restart local v2    # "levelEcio":I
    goto :goto_1

    .line 2766
    .end local v2    # "levelEcio":I
    :cond_f
    const/4 v2, 0x0

    .restart local v2    # "levelEcio":I
    goto :goto_1

    .line 2768
    .end local v1    # "levelDbm":I
    .end local v2    # "levelEcio":I
    :cond_10
    if-eq p1, v5, :cond_11

    if-ne p1, v4, :cond_13

    :cond_11
    const/4 v1, 0x0

    .line 2776
    .restart local v1    # "levelDbm":I
    :goto_3
    if-eq p2, v5, :cond_12

    if-ne p2, v7, :cond_18

    :cond_12
    const/4 v2, 0x0

    .restart local v2    # "levelEcio":I
    goto :goto_1

    .line 2769
    .end local v1    # "levelDbm":I
    .end local v2    # "levelEcio":I
    :cond_13
    const/16 v3, -0x4b

    if-le p1, v3, :cond_14

    const/4 v1, 0x4

    .restart local v1    # "levelDbm":I
    goto :goto_3

    .line 2770
    .end local v1    # "levelDbm":I
    :cond_14
    const/16 v3, -0x55

    if-le p1, v3, :cond_15

    const/4 v1, 0x3

    .restart local v1    # "levelDbm":I
    goto :goto_3

    .line 2771
    .end local v1    # "levelDbm":I
    :cond_15
    const/16 v3, -0x5f

    if-le p1, v3, :cond_16

    const/4 v1, 0x2

    .restart local v1    # "levelDbm":I
    goto :goto_3

    .line 2772
    .end local v1    # "levelDbm":I
    :cond_16
    const/16 v3, -0x69

    if-le p1, v3, :cond_17

    const/4 v1, 0x1

    .restart local v1    # "levelDbm":I
    goto :goto_3

    .line 2773
    .end local v1    # "levelDbm":I
    :cond_17
    const/4 v1, 0x0

    .restart local v1    # "levelDbm":I
    goto :goto_3

    .line 2777
    :cond_18
    if-le p2, v6, :cond_19

    const/4 v2, 0x4

    .restart local v2    # "levelEcio":I
    goto :goto_1

    .line 2778
    .end local v2    # "levelEcio":I
    :cond_19
    if-le p2, v4, :cond_1a

    const/4 v2, 0x3

    .restart local v2    # "levelEcio":I
    goto :goto_1

    .line 2779
    .end local v2    # "levelEcio":I
    :cond_1a
    const/16 v3, -0x8c

    if-le p2, v3, :cond_1b

    const/4 v2, 0x2

    .restart local v2    # "levelEcio":I
    goto :goto_1

    .line 2780
    .end local v2    # "levelEcio":I
    :cond_1b
    if-le p2, v8, :cond_1c

    const/4 v2, 0x1

    .restart local v2    # "levelEcio":I
    goto :goto_1

    .line 2781
    .end local v2    # "levelEcio":I
    :cond_1c
    const/4 v2, 0x0

    .restart local v2    # "levelEcio":I
    goto :goto_1

    :cond_1d
    move v0, v2

    .line 2783
    goto :goto_2
.end method

.method private getCdmaVZWLevel(II)I
    .locals 5
    .param p1, "cdmaDbm"    # I
    .param p2, "cdmaEcio"    # I

    .prologue
    const/4 v4, -0x1

    .line 2704
    if-eq p1, v4, :cond_0

    const/16 v3, -0x78

    if-ne p1, v3, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 2725
    :cond_1
    :goto_0
    return v0

    .line 2706
    :cond_2
    const/16 v3, -0x4b

    if-lt p1, v3, :cond_4

    const/4 v1, 0x4

    .line 2711
    .local v1, "levelDbm":I
    :goto_1
    add-int/lit8 v0, v1, 0x1

    .line 2713
    .local v0, "level":I
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportNew1xEvdoSignalMappingRule()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2715
    if-eq p2, v4, :cond_3

    const/16 v3, -0xa0

    if-ne p2, v3, :cond_8

    :cond_3
    const/4 v2, 0x0

    .line 2721
    .local v2, "levelEcio":I
    :goto_2
    if-ge v1, v2, :cond_d

    .end local v1    # "levelDbm":I
    :goto_3
    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    .line 2707
    .end local v0    # "level":I
    .end local v2    # "levelEcio":I
    :cond_4
    const/16 v3, -0x55

    if-lt p1, v3, :cond_5

    const/4 v1, 0x3

    .restart local v1    # "levelDbm":I
    goto :goto_1

    .line 2708
    .end local v1    # "levelDbm":I
    :cond_5
    const/16 v3, -0x5f

    if-lt p1, v3, :cond_6

    const/4 v1, 0x2

    .restart local v1    # "levelDbm":I
    goto :goto_1

    .line 2709
    .end local v1    # "levelDbm":I
    :cond_6
    const/16 v3, -0x64

    if-lt p1, v3, :cond_7

    const/4 v1, 0x1

    .restart local v1    # "levelDbm":I
    goto :goto_1

    .line 2710
    .end local v1    # "levelDbm":I
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "levelDbm":I
    goto :goto_1

    .line 2716
    .restart local v0    # "level":I
    :cond_8
    const/16 v3, -0x5a

    if-lt p2, v3, :cond_9

    const/4 v2, 0x4

    .restart local v2    # "levelEcio":I
    goto :goto_2

    .line 2717
    .end local v2    # "levelEcio":I
    :cond_9
    const/16 v3, -0x6e

    if-lt p2, v3, :cond_a

    const/4 v2, 0x3

    .restart local v2    # "levelEcio":I
    goto :goto_2

    .line 2718
    .end local v2    # "levelEcio":I
    :cond_a
    const/16 v3, -0x82

    if-lt p2, v3, :cond_b

    const/4 v2, 0x2

    .restart local v2    # "levelEcio":I
    goto :goto_2

    .line 2719
    .end local v2    # "levelEcio":I
    :cond_b
    const/16 v3, -0x96

    if-lt p2, v3, :cond_c

    const/4 v2, 0x1

    .restart local v2    # "levelEcio":I
    goto :goto_2

    .line 2720
    .end local v2    # "levelEcio":I
    :cond_c
    const/4 v2, 0x0

    .restart local v2    # "levelEcio":I
    goto :goto_2

    :cond_d
    move v1, v2

    .line 2721
    goto :goto_3
.end method

.method private getCmccLteLevel(I)I
    .locals 5
    .param p1, "signalLevel"    # I

    .prologue
    const/16 v4, -0x61

    const/16 v2, -0x69

    const/16 v3, -0x78

    .line 2175
    const/4 v0, 0x0

    .line 2177
    .local v0, "rsrpLevel":I
    const/4 v1, 0x5

    if-ne p1, v1, :cond_6

    .line 2178
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v1, v4, :cond_1

    const/4 v0, 0x5

    .line 2192
    :cond_0
    :goto_0
    return v0

    .line 2179
    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v1, v2, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    .line 2180
    :cond_2
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x6e

    if-lt v1, v2, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    .line 2181
    :cond_3
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x73

    if-lt v1, v2, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    .line 2182
    :cond_4
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v1, v3, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    .line 2183
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 2184
    :cond_6
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 2185
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v1, v4, :cond_7

    const/4 v0, 0x4

    goto :goto_0

    .line 2186
    :cond_7
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v1, v2, :cond_8

    const/4 v0, 0x3

    goto :goto_0

    .line 2187
    :cond_8
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x71

    if-lt v1, v2, :cond_9

    const/4 v0, 0x2

    goto :goto_0

    .line 2188
    :cond_9
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v1, v3, :cond_a

    const/4 v0, 0x1

    goto :goto_0

    .line 2189
    :cond_a
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCombineNetworkType(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1840
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    .line 1841
    .local v0, "combineNetworkType":I
    if-nez v0, :cond_0

    .line 1843
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getVoiceNetworkType(Landroid/content/Context;)I

    move-result v0

    .line 1845
    .end local v0    # "combineNetworkType":I
    :cond_0
    return v0
.end method

.method private getEvdoCTLevel(II)I
    .locals 3
    .param p1, "evdoDbm"    # I
    .param p2, "evdoSnr"    # I

    .prologue
    .line 2559
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    const/16 v2, -0x78

    if-ne p1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 2569
    :goto_0
    return v0

    .line 2561
    :cond_1
    const/16 v2, -0x5a

    if-lt p1, v2, :cond_2

    const/4 v1, 0x4

    .line 2567
    .local v1, "levelEvdoDbm":I
    :goto_1
    move v0, v1

    .line 2569
    .local v0, "level":I
    goto :goto_0

    .line 2562
    .end local v0    # "level":I
    .end local v1    # "levelEvdoDbm":I
    :cond_2
    const/16 v2, -0x64

    if-lt p1, v2, :cond_3

    const/4 v1, 0x3

    .restart local v1    # "levelEvdoDbm":I
    goto :goto_1

    .line 2563
    .end local v1    # "levelEvdoDbm":I
    :cond_3
    const/16 v2, -0x69

    if-lt p1, v2, :cond_4

    const/4 v1, 0x2

    .restart local v1    # "levelEvdoDbm":I
    goto :goto_1

    .line 2564
    .end local v1    # "levelEvdoDbm":I
    :cond_4
    const/16 v2, -0x6e

    if-lt p1, v2, :cond_5

    const/4 v1, 0x1

    .restart local v1    # "levelEvdoDbm":I
    goto :goto_1

    .line 2565
    .end local v1    # "levelEvdoDbm":I
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "levelEvdoDbm":I
    goto :goto_1
.end method

.method private getEvdoHtcLevel(III)I
    .locals 5
    .param p1, "evdoDbm"    # I
    .param p2, "evdoSnr"    # I
    .param p3, "signalBarLevel"    # I

    .prologue
    const/16 v4, -0x4b

    .line 2478
    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    const/16 v3, -0x78

    if-ne p1, v3, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 2506
    :cond_1
    :goto_0
    return v0

    .line 2480
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportNew1xEvdoSignalMappingRule()Z

    move-result v3

    if-nez v3, :cond_7

    .line 2481
    if-lt p1, v4, :cond_3

    const/4 v1, 0x4

    .line 2486
    .local v1, "levelEvdoDbm":I
    :goto_1
    move v0, v1

    .line 2503
    .local v0, "level":I
    :goto_2
    const/4 v3, 0x5

    if-ne p3, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2482
    .end local v0    # "level":I
    .end local v1    # "levelEvdoDbm":I
    :cond_3
    const/16 v3, -0x55

    if-lt p1, v3, :cond_4

    const/4 v1, 0x3

    .restart local v1    # "levelEvdoDbm":I
    goto :goto_1

    .line 2483
    .end local v1    # "levelEvdoDbm":I
    :cond_4
    const/16 v3, -0x5f

    if-lt p1, v3, :cond_5

    const/4 v1, 0x2

    .restart local v1    # "levelEvdoDbm":I
    goto :goto_1

    .line 2484
    .end local v1    # "levelEvdoDbm":I
    :cond_5
    const/16 v3, -0x64

    if-lt p1, v3, :cond_6

    const/4 v1, 0x1

    .restart local v1    # "levelEvdoDbm":I
    goto :goto_1

    .line 2485
    .end local v1    # "levelEvdoDbm":I
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "levelEvdoDbm":I
    goto :goto_1

    .line 2489
    .end local v1    # "levelEvdoDbm":I
    :cond_7
    const/16 v3, -0x41

    if-lt p1, v3, :cond_8

    const/4 v1, 0x4

    .line 2495
    .restart local v1    # "levelEvdoDbm":I
    :goto_3
    const/4 v3, 0x6

    if-le p2, v3, :cond_c

    const/4 v2, 0x4

    .line 2500
    .local v2, "levelEvdoSnr":I
    :goto_4
    if-ge v1, v2, :cond_10

    move v0, v1

    .restart local v0    # "level":I
    :goto_5
    goto :goto_2

    .line 2490
    .end local v0    # "level":I
    .end local v1    # "levelEvdoDbm":I
    .end local v2    # "levelEvdoSnr":I
    :cond_8
    if-lt p1, v4, :cond_9

    const/4 v1, 0x3

    .restart local v1    # "levelEvdoDbm":I
    goto :goto_3

    .line 2491
    .end local v1    # "levelEvdoDbm":I
    :cond_9
    const/16 v3, -0x5a

    if-lt p1, v3, :cond_a

    const/4 v1, 0x2

    .restart local v1    # "levelEvdoDbm":I
    goto :goto_3

    .line 2492
    .end local v1    # "levelEvdoDbm":I
    :cond_a
    const/16 v3, -0x69

    if-lt p1, v3, :cond_b

    const/4 v1, 0x1

    .restart local v1    # "levelEvdoDbm":I
    goto :goto_3

    .line 2493
    .end local v1    # "levelEvdoDbm":I
    :cond_b
    const/4 v1, 0x0

    .restart local v1    # "levelEvdoDbm":I
    goto :goto_3

    .line 2496
    :cond_c
    const/4 v3, 0x4

    if-le p2, v3, :cond_d

    const/4 v2, 0x3

    .restart local v2    # "levelEvdoSnr":I
    goto :goto_4

    .line 2497
    .end local v2    # "levelEvdoSnr":I
    :cond_d
    const/4 v3, 0x2

    if-le p2, v3, :cond_e

    const/4 v2, 0x2

    .restart local v2    # "levelEvdoSnr":I
    goto :goto_4

    .line 2498
    .end local v2    # "levelEvdoSnr":I
    :cond_e
    if-lez p2, :cond_f

    const/4 v2, 0x1

    .restart local v2    # "levelEvdoSnr":I
    goto :goto_4

    .line 2499
    .end local v2    # "levelEvdoSnr":I
    :cond_f
    const/4 v2, 0x0

    .restart local v2    # "levelEvdoSnr":I
    goto :goto_4

    :cond_10
    move v0, v2

    .line 2500
    goto :goto_5
.end method

.method private getEvdoKDDILevel(II)I
    .locals 4
    .param p1, "evdoDbm"    # I
    .param p2, "evdoSnr"    # I

    .prologue
    .line 2514
    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    const/16 v3, -0x78

    if-ne p1, v3, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 2523
    .local v1, "levelEvdoDbm":I
    :goto_0
    const/4 v3, 0x2

    if-lt p2, v3, :cond_6

    const/4 v2, 0x4

    .line 2530
    .local v2, "levelEvdoSnr":I
    :goto_1
    if-ge v1, v2, :cond_9

    move v0, v1

    .line 2532
    .local v0, "level":I
    :goto_2
    return v0

    .line 2515
    .end local v0    # "level":I
    .end local v1    # "levelEvdoDbm":I
    .end local v2    # "levelEvdoSnr":I
    :cond_1
    const/16 v3, -0x60

    if-lt p1, v3, :cond_2

    const/4 v1, 0x4

    .restart local v1    # "levelEvdoDbm":I
    goto :goto_0

    .line 2516
    .end local v1    # "levelEvdoDbm":I
    :cond_2
    const/16 v3, -0x63

    if-lt p1, v3, :cond_3

    const/4 v1, 0x3

    .restart local v1    # "levelEvdoDbm":I
    goto :goto_0

    .line 2517
    .end local v1    # "levelEvdoDbm":I
    :cond_3
    const/16 v3, -0x66

    if-lt p1, v3, :cond_4

    const/4 v1, 0x2

    .restart local v1    # "levelEvdoDbm":I
    goto :goto_0

    .line 2518
    .end local v1    # "levelEvdoDbm":I
    :cond_4
    const/16 v3, -0x69

    if-lt p1, v3, :cond_5

    const/4 v1, 0x1

    .restart local v1    # "levelEvdoDbm":I
    goto :goto_0

    .line 2519
    .end local v1    # "levelEvdoDbm":I
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "levelEvdoDbm":I
    goto :goto_0

    .line 2524
    :cond_6
    const/4 v3, 0x1

    if-lt p2, v3, :cond_7

    const/4 v2, 0x3

    .restart local v2    # "levelEvdoSnr":I
    goto :goto_1

    .line 2525
    .end local v2    # "levelEvdoSnr":I
    :cond_7
    if-ltz p2, :cond_8

    const/4 v2, 0x2

    .restart local v2    # "levelEvdoSnr":I
    goto :goto_1

    .line 2528
    .end local v2    # "levelEvdoSnr":I
    :cond_8
    const/4 v2, 0x0

    .restart local v2    # "levelEvdoSnr":I
    goto :goto_1

    :cond_9
    move v0, v2

    .line 2530
    goto :goto_2
.end method

.method private getEvdoSPCSLevel(IIII)I
    .locals 9
    .param p1, "evdoDbm"    # I
    .param p2, "evdoSnr"    # I
    .param p3, "evdoEcio"    # I
    .param p4, "maxLevel"    # I

    .prologue
    const/16 v8, -0x55

    const/16 v7, -0x5a

    const/16 v6, -0x5f

    const/16 v5, -0x69

    const/16 v4, -0x78

    .line 2577
    const/4 v3, 0x6

    if-ne p4, v3, :cond_8

    .line 2579
    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    if-ne p1, v4, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 2609
    :goto_0
    return v0

    .line 2581
    :cond_1
    const/16 v3, -0x4b

    if-lt p1, v3, :cond_2

    const/4 v2, 0x6

    .line 2589
    .local v2, "levelEvdoDbm":I
    :goto_1
    move v0, v2

    .local v0, "level":I
    goto :goto_0

    .line 2582
    .end local v0    # "level":I
    .end local v2    # "levelEvdoDbm":I
    :cond_2
    if-lt p1, v8, :cond_3

    const/4 v2, 0x5

    .restart local v2    # "levelEvdoDbm":I
    goto :goto_1

    .line 2583
    .end local v2    # "levelEvdoDbm":I
    :cond_3
    if-lt p1, v7, :cond_4

    const/4 v2, 0x4

    .restart local v2    # "levelEvdoDbm":I
    goto :goto_1

    .line 2584
    .end local v2    # "levelEvdoDbm":I
    :cond_4
    if-lt p1, v6, :cond_5

    const/4 v2, 0x3

    .restart local v2    # "levelEvdoDbm":I
    goto :goto_1

    .line 2585
    .end local v2    # "levelEvdoDbm":I
    :cond_5
    const/16 v3, -0x64

    if-lt p1, v3, :cond_6

    const/4 v2, 0x2

    .restart local v2    # "levelEvdoDbm":I
    goto :goto_1

    .line 2586
    .end local v2    # "levelEvdoDbm":I
    :cond_6
    if-lt p1, v5, :cond_7

    const/4 v2, 0x1

    .restart local v2    # "levelEvdoDbm":I
    goto :goto_1

    .line 2587
    .end local v2    # "levelEvdoDbm":I
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "levelEvdoDbm":I
    goto :goto_1

    .line 2592
    .end local v2    # "levelEvdoDbm":I
    :cond_8
    const/16 v3, -0x4b

    if-le p1, v3, :cond_a

    const/4 v2, 0x4

    .line 2599
    .restart local v2    # "levelEvdoDbm":I
    :goto_2
    const/4 v3, -0x1

    if-eq p3, v3, :cond_9

    const/16 v3, -0xa0

    if-ne p3, v3, :cond_e

    :cond_9
    const/4 v1, 0x0

    .line 2606
    .local v1, "levelEcio":I
    :goto_3
    if-ge v2, v1, :cond_13

    move v0, v2

    .restart local v0    # "level":I
    :goto_4
    goto :goto_0

    .line 2593
    .end local v0    # "level":I
    .end local v1    # "levelEcio":I
    .end local v2    # "levelEvdoDbm":I
    :cond_a
    if-le p1, v8, :cond_b

    const/4 v2, 0x3

    .restart local v2    # "levelEvdoDbm":I
    goto :goto_2

    .line 2594
    .end local v2    # "levelEvdoDbm":I
    :cond_b
    if-le p1, v6, :cond_c

    const/4 v2, 0x2

    .restart local v2    # "levelEvdoDbm":I
    goto :goto_2

    .line 2595
    .end local v2    # "levelEvdoDbm":I
    :cond_c
    if-le p1, v5, :cond_d

    const/4 v2, 0x1

    .restart local v2    # "levelEvdoDbm":I
    goto :goto_2

    .line 2596
    .end local v2    # "levelEvdoDbm":I
    :cond_d
    const/4 v2, 0x0

    .restart local v2    # "levelEvdoDbm":I
    goto :goto_2

    .line 2600
    :cond_e
    if-le p3, v7, :cond_f

    const/4 v1, 0x4

    .restart local v1    # "levelEcio":I
    goto :goto_3

    .line 2601
    .end local v1    # "levelEcio":I
    :cond_f
    if-le p3, v4, :cond_10

    const/4 v1, 0x3

    .restart local v1    # "levelEcio":I
    goto :goto_3

    .line 2602
    .end local v1    # "levelEcio":I
    :cond_10
    const/16 v3, -0x8c

    if-le p3, v3, :cond_11

    const/4 v1, 0x2

    .restart local v1    # "levelEcio":I
    goto :goto_3

    .line 2603
    .end local v1    # "levelEcio":I
    :cond_11
    const/16 v3, -0x96

    if-le p3, v3, :cond_12

    const/4 v1, 0x1

    .restart local v1    # "levelEcio":I
    goto :goto_3

    .line 2604
    .end local v1    # "levelEcio":I
    :cond_12
    const/4 v1, 0x0

    .restart local v1    # "levelEcio":I
    goto :goto_3

    :cond_13
    move v0, v1

    .line 2606
    goto :goto_4
.end method

.method private getGenericLteLevel(I)I
    .locals 4
    .param p1, "maxLevel"    # I

    .prologue
    .line 2135
    iget-boolean v2, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v2, :cond_8

    .line 2136
    const/4 v2, 0x5

    if-ne p1, v2, :cond_1

    .line 2154
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getAttLteLevel()I

    move-result v1

    .line 2170
    :cond_0
    :goto_0
    return v1

    .line 2157
    :cond_1
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x50

    if-le v2, v3, :cond_2

    const/4 v0, 0x4

    .line 2162
    .local v0, "rsrpLevel":I
    :goto_1
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v3, -0xa

    if-le v2, v3, :cond_5

    const/4 v1, 0x4

    .line 2167
    .local v1, "rsrqLevel":I
    :goto_2
    if-gt v0, v1, :cond_0

    move v1, v0

    goto :goto_0

    .line 2158
    .end local v0    # "rsrpLevel":I
    .end local v1    # "rsrqLevel":I
    :cond_2
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x5a

    if-le v2, v3, :cond_3

    const/4 v0, 0x3

    .restart local v0    # "rsrpLevel":I
    goto :goto_1

    .line 2159
    .end local v0    # "rsrpLevel":I
    :cond_3
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x64

    if-le v2, v3, :cond_4

    const/4 v0, 0x2

    .restart local v0    # "rsrpLevel":I
    goto :goto_1

    .line 2160
    .end local v0    # "rsrpLevel":I
    :cond_4
    const/4 v0, 0x1

    .restart local v0    # "rsrpLevel":I
    goto :goto_1

    .line 2163
    :cond_5
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v3, -0xd

    if-le v2, v3, :cond_6

    const/4 v1, 0x3

    .restart local v1    # "rsrqLevel":I
    goto :goto_2

    .line 2164
    .end local v1    # "rsrqLevel":I
    :cond_6
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v3, -0x10

    if-le v2, v3, :cond_7

    const/4 v1, 0x2

    .restart local v1    # "rsrqLevel":I
    goto :goto_2

    .line 2165
    .end local v1    # "rsrqLevel":I
    :cond_7
    const/4 v1, 0x1

    .restart local v1    # "rsrqLevel":I
    goto :goto_2

    .line 2170
    .end local v0    # "rsrpLevel":I
    .end local v1    # "rsrqLevel":I
    :cond_8
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getVZWLteLevel(I)I

    move-result v1

    goto :goto_0
.end method

.method private getH3gLteLevel()I
    .locals 3

    .prologue
    .line 2224
    const/4 v0, 0x1

    .line 2225
    .local v0, "rsrpLevel":I
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x55

    if-le v1, v2, :cond_1

    const/4 v0, 0x5

    .line 2231
    :cond_0
    :goto_0
    return v0

    .line 2226
    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x5f

    if-le v1, v2, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    .line 2227
    :cond_2
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x69

    if-le v1, v2, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    .line 2228
    :cond_3
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x71

    if-le v1, v2, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    .line 2229
    :cond_4
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x82

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getHKLteLevel()I
    .locals 4

    .prologue
    .line 2257
    const/4 v0, 0x1

    .line 2258
    .local v0, "rsrpLevel":I
    const/4 v1, 0x1

    .line 2259
    .local v1, "rsrqLevel":I
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x5a

    if-le v2, v3, :cond_0

    const/4 v0, 0x5

    .line 2266
    :goto_0
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/4 v3, -0x7

    if-le v2, v3, :cond_5

    const/4 v1, 0x5

    .line 2272
    :goto_1
    if-le v0, v1, :cond_a

    .end local v1    # "rsrqLevel":I
    :goto_2
    return v1

    .line 2260
    .restart local v1    # "rsrqLevel":I
    :cond_0
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x64

    if-le v2, v3, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    .line 2261
    :cond_1
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x69

    if-le v2, v3, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 2262
    :cond_2
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x73

    if-le v2, v3, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    .line 2263
    :cond_3
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x78

    if-le v2, v3, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    .line 2264
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 2267
    :cond_5
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v3, -0xd

    if-le v2, v3, :cond_6

    const/4 v1, 0x4

    goto :goto_1

    .line 2268
    :cond_6
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v3, -0x12

    if-le v2, v3, :cond_7

    const/4 v1, 0x3

    goto :goto_1

    .line 2269
    :cond_7
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v3, -0x16

    if-le v2, v3, :cond_8

    const/4 v1, 0x2

    goto :goto_1

    .line 2270
    :cond_8
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v3, -0x19

    if-le v2, v3, :cond_9

    const/4 v1, 0x1

    goto :goto_1

    .line 2271
    :cond_9
    const/4 v1, 0x0

    goto :goto_1

    :cond_a
    move v1, v0

    .line 2272
    goto :goto_2
.end method

.method private getHtcAddedFieldsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHtcTDLevel(I)I
    .locals 9
    .param p1, "networkType"    # I

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, -0x1

    .line 1856
    const/4 v1, 0x0

    .line 1857
    .local v1, "iconLevel":I
    iget v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    .line 1860
    .local v0, "asu":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcGsmMaxLevel()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_7

    .line 1861
    if-lez v0, :cond_0

    if-ne v0, v4, :cond_1

    .line 1862
    :cond_0
    const/4 v1, 0x0

    .line 1886
    :goto_0
    return v1

    .line 1863
    :cond_1
    const/16 v2, 0xe

    if-lt v0, v2, :cond_2

    .line 1864
    const/4 v1, 0x5

    goto :goto_0

    .line 1865
    :cond_2
    if-lt v0, v8, :cond_3

    .line 1866
    const/4 v1, 0x4

    goto :goto_0

    .line 1867
    :cond_3
    if-lt v0, v7, :cond_4

    .line 1868
    const/4 v1, 0x3

    goto :goto_0

    .line 1869
    :cond_4
    if-lt v0, v6, :cond_5

    .line 1870
    const/4 v1, 0x2

    goto :goto_0

    .line 1871
    :cond_5
    if-lt v0, v5, :cond_6

    .line 1872
    const/4 v1, 0x1

    goto :goto_0

    .line 1874
    :cond_6
    const/4 v1, 0x0

    goto :goto_0

    .line 1878
    :cond_7
    const/4 v2, 0x1

    if-le v0, v2, :cond_8

    if-ne v0, v4, :cond_9

    :cond_8
    const/4 v1, 0x0

    goto :goto_0

    .line 1879
    :cond_9
    if-lt v0, v8, :cond_a

    const/4 v1, 0x4

    goto :goto_0

    .line 1880
    :cond_a
    if-lt v0, v7, :cond_b

    const/4 v1, 0x3

    goto :goto_0

    .line 1881
    :cond_b
    if-lt v0, v6, :cond_c

    const/4 v1, 0x2

    goto :goto_0

    .line 1882
    :cond_c
    if-lt v0, v5, :cond_d

    const/4 v1, 0x1

    goto :goto_0

    .line 1883
    :cond_d
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getKddiLevel(Landroid/content/Context;)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0xd

    .line 1704
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcCdmaLevel()I

    move-result v0

    .line 1705
    .local v0, "cdmaLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcEvdoLevel()I

    move-result v2

    .line 1706
    .local v2, "evdoLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcLteLevel()I

    move-result v3

    .line 1708
    .local v3, "lteLevel":I
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getNetworkType(Landroid/content/Context;)I

    move-result v1

    .line 1709
    .local v1, "dataNetworkType":I
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getVoiceNetworkType(Landroid/content/Context;)I

    move-result v4

    .line 1714
    .local v4, "voiceNetworkType":I
    if-eq v1, v5, :cond_0

    if-ne v4, v5, :cond_2

    :cond_0
    move v2, v3

    .line 1748
    .end local v2    # "evdoLevel":I
    :cond_1
    :goto_0
    return v2

    .line 1720
    .restart local v2    # "evdoLevel":I
    :cond_2
    invoke-direct {p0, v1}, Landroid/telephony/SignalStrength;->isCdmaEvdoNetworkTypes(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1722
    if-eqz v4, :cond_1

    .line 1727
    if-nez v2, :cond_3

    move v2, v0

    .line 1729
    goto :goto_0

    .line 1730
    :cond_3
    if-eqz v0, :cond_1

    .line 1735
    if-lt v2, v0, :cond_1

    move v2, v0

    goto :goto_0

    .line 1740
    :cond_4
    invoke-direct {p0, v4}, Landroid/telephony/SignalStrength;->isCdma1xNetworkTypes(I)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-direct {p0, v1}, Landroid/telephony/SignalStrength;->isCdma1xNetworkTypes(I)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    move v2, v0

    .line 1743
    goto :goto_0

    .line 1748
    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getKddiLteLevel()I
    .locals 7

    .prologue
    const v6, 0x7fffffff

    const/4 v5, 0x0

    .line 2108
    const/4 v2, 0x0

    .line 2109
    .local v2, "rsrpLevel":I
    const/4 v1, 0x0

    .line 2111
    .local v1, "levelLteRssnr":I
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v3, v6, :cond_1

    :cond_0
    iput v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 2118
    :goto_0
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v3, v6, :cond_6

    const/4 v1, 0x0

    .line 2125
    :goto_1
    if-le v2, v1, :cond_b

    move v0, v1

    .line 2128
    .local v0, "level":I
    :goto_2
    return v0

    .line 2112
    .end local v0    # "level":I
    :cond_1
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x69

    if-lt v3, v4, :cond_2

    const/4 v2, 0x4

    goto :goto_0

    .line 2113
    :cond_2
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x73

    if-lt v3, v4, :cond_3

    const/4 v2, 0x3

    goto :goto_0

    .line 2114
    :cond_3
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x76

    if-lt v3, v4, :cond_4

    const/4 v2, 0x2

    goto :goto_0

    .line 2115
    :cond_4
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x78

    if-lt v3, v4, :cond_5

    const/4 v2, 0x1

    goto :goto_0

    .line 2116
    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    .line 2119
    :cond_6
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x2d

    if-lt v3, v4, :cond_7

    const/4 v1, 0x4

    goto :goto_1

    .line 2120
    :cond_7
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_8

    const/4 v1, 0x3

    goto :goto_1

    .line 2121
    :cond_8
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, -0xa

    if-lt v3, v4, :cond_9

    const/4 v1, 0x2

    goto :goto_1

    .line 2122
    :cond_9
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, -0x1e

    if-lt v3, v4, :cond_a

    const/4 v1, 0x1

    goto :goto_1

    .line 2123
    :cond_a
    iput v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    goto :goto_1

    :cond_b
    move v0, v2

    .line 2125
    goto :goto_2
.end method

.method private getNetworkType(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1804
    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1805
    .local v1, "telephonyMgr":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 1807
    .local v0, "networkType":I
    :goto_0
    return v0

    .line 1805
    .end local v0    # "networkType":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSignalStrengthLevelByOldRule(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1778
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getVoiceState(Landroid/content/Context;)I

    move-result v1

    .line 1781
    .local v1, "voiceServiceState":I
    if-nez v1, :cond_0

    .line 1782
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcCdmaLevel()I

    move-result v2

    .line 1796
    :goto_0
    return v2

    .line 1784
    :cond_0
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    .line 1787
    .local v0, "networkType":I
    invoke-direct {p0, v0}, Landroid/telephony/SignalStrength;->isCdmaEvdoNetworkTypes(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1788
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcEvdoLevel()I

    move-result v2

    goto :goto_0

    .line 1791
    :cond_1
    const/16 v2, 0xd

    if-ne v0, v2, :cond_2

    .line 1792
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcLteLevel()I

    move-result v2

    goto :goto_0

    .line 1796
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getSpcsLteLevel(I)I
    .locals 7
    .param p1, "signalBarLevel"    # I

    .prologue
    const v6, 0x7fffffff

    .line 2332
    const/4 v4, 0x4

    if-ne p1, v4, :cond_d

    .line 2334
    const/4 v2, 0x0

    .line 2335
    .local v2, "levelRsrp":I
    const/4 v3, 0x0

    .line 2337
    .local v3, "levelRssnr":I
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v4, v6, :cond_0

    .line 2338
    const/4 v2, 0x0

    .line 2352
    :goto_0
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v4, v6, :cond_5

    .line 2353
    const/4 v3, 0x0

    .line 2367
    :goto_1
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v4, v6, :cond_a

    .line 2368
    move v0, v3

    .line 2391
    .end local v2    # "levelRsrp":I
    .end local v3    # "levelRssnr":I
    :goto_2
    return v0

    .line 2339
    .restart local v2    # "levelRsrp":I
    .restart local v3    # "levelRssnr":I
    :cond_0
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v5, -0x55

    if-lt v4, v5, :cond_1

    .line 2340
    const/4 v2, 0x4

    goto :goto_0

    .line 2341
    :cond_1
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v5, -0x5f

    if-lt v4, v5, :cond_2

    .line 2342
    const/4 v2, 0x3

    goto :goto_0

    .line 2343
    :cond_2
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v5, -0x69

    if-lt v4, v5, :cond_3

    .line 2344
    const/4 v2, 0x2

    goto :goto_0

    .line 2345
    :cond_3
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v5, -0x73

    if-lt v4, v5, :cond_4

    .line 2346
    const/4 v2, 0x1

    goto :goto_0

    .line 2348
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 2354
    :cond_5
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v5, 0x82

    if-lt v4, v5, :cond_6

    .line 2355
    const/4 v3, 0x4

    goto :goto_1

    .line 2356
    :cond_6
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v5, 0x2d

    if-lt v4, v5, :cond_7

    .line 2357
    const/4 v3, 0x3

    goto :goto_1

    .line 2358
    :cond_7
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v5, 0xa

    if-lt v4, v5, :cond_8

    .line 2359
    const/4 v3, 0x2

    goto :goto_1

    .line 2360
    :cond_8
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v5, -0x1e

    if-lt v4, v5, :cond_9

    .line 2361
    const/4 v3, 0x1

    goto :goto_1

    .line 2363
    :cond_9
    const/4 v3, 0x0

    goto :goto_1

    .line 2369
    :cond_a
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v4, v6, :cond_b

    .line 2370
    move v0, v2

    .local v0, "level":I
    goto :goto_2

    .line 2372
    .end local v0    # "level":I
    :cond_b
    if-ge v3, v2, :cond_c

    move v0, v3

    .restart local v0    # "level":I
    :goto_3
    goto :goto_2

    .end local v0    # "level":I
    :cond_c
    move v0, v2

    goto :goto_3

    .line 2382
    .end local v2    # "levelRsrp":I
    .end local v3    # "levelRssnr":I
    :cond_d
    const/4 v1, 0x0

    .line 2383
    .local v1, "levelLteRsrp":I
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_e

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v4, v6, :cond_f

    :cond_e
    const/4 v1, 0x0

    :goto_4
    move v0, v1

    .line 2391
    goto :goto_2

    .line 2384
    :cond_f
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v5, -0x56

    if-lt v4, v5, :cond_10

    const/4 v1, 0x6

    goto :goto_4

    .line 2385
    :cond_10
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v5, -0x5a

    if-le v4, v5, :cond_11

    const/4 v1, 0x5

    goto :goto_4

    .line 2386
    :cond_11
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v5, -0x5e

    if-le v4, v5, :cond_12

    const/4 v1, 0x4

    goto :goto_4

    .line 2387
    :cond_12
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v5, -0x61

    if-le v4, v5, :cond_13

    const/4 v1, 0x3

    goto :goto_4

    .line 2388
    :cond_13
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v5, -0x64

    if-le v4, v5, :cond_14

    const/4 v1, 0x2

    goto :goto_4

    .line 2389
    :cond_14
    const/4 v1, 0x1

    goto :goto_4
.end method

.method private getTmoUsLteLevel()I
    .locals 3

    .prologue
    .line 2212
    const/4 v0, 0x1

    .line 2213
    .local v0, "rsrpLevel":I
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x64

    if-le v1, v2, :cond_0

    const/4 v0, 0x5

    .line 2220
    :goto_0
    return v0

    .line 2214
    :cond_0
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x6e

    if-le v1, v2, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    .line 2215
    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x73

    if-le v1, v2, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 2216
    :cond_2
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x78

    if-le v1, v2, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    .line 2219
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getVZWLteLevel(I)I
    .locals 8
    .param p1, "signalBarLevel"    # I

    .prologue
    const v7, 0x7fffffff

    .line 2295
    const/4 v1, 0x0

    .line 2296
    .local v1, "levelLteRsrp":I
    const/4 v2, 0x0

    .line 2297
    .local v2, "levelLteRssnr":I
    const/4 v3, 0x0

    .line 2298
    .local v3, "rsrpInvalid":Z
    const/4 v4, 0x0

    .line 2300
    .local v4, "rssnrInvalid":Z
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v5, v7, :cond_4

    :cond_0
    const/4 v3, 0x1

    .line 2306
    :cond_1
    :goto_0
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v5, v7, :cond_8

    const/4 v4, 0x1

    .line 2316
    :cond_2
    :goto_1
    if-eqz v3, :cond_c

    if-eqz v4, :cond_c

    const/4 v0, 0x0

    .line 2327
    :cond_3
    :goto_2
    return v0

    .line 2301
    :cond_4
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x55

    if-lt v5, v6, :cond_5

    const/4 v1, 0x4

    goto :goto_0

    .line 2302
    :cond_5
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x5f

    if-lt v5, v6, :cond_6

    const/4 v1, 0x3

    goto :goto_0

    .line 2303
    :cond_6
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x69

    if-lt v5, v6, :cond_7

    const/4 v1, 0x2

    goto :goto_0

    .line 2304
    :cond_7
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x73

    if-lt v5, v6, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 2307
    :cond_8
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0x82

    if-lt v5, v6, :cond_9

    const/4 v2, 0x4

    goto :goto_1

    .line 2308
    :cond_9
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0x2d

    if-lt v5, v6, :cond_a

    const/4 v2, 0x3

    goto :goto_1

    .line 2310
    :cond_a
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0xa

    if-lt v5, v6, :cond_b

    const/4 v2, 0x2

    goto :goto_1

    .line 2313
    :cond_b
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, -0x1e

    if-lt v5, v6, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    .line 2317
    :cond_c
    if-eqz v3, :cond_d

    .line 2318
    move v0, v2

    .line 2324
    .local v0, "level":I
    :goto_3
    const/4 v5, 0x5

    if-ne p1, v5, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2319
    .end local v0    # "level":I
    :cond_d
    if-eqz v4, :cond_e

    .line 2320
    move v0, v1

    .restart local v0    # "level":I
    goto :goto_3

    .line 2322
    .end local v0    # "level":I
    :cond_e
    if-ge v2, v1, :cond_f

    move v0, v2

    .restart local v0    # "level":I
    :goto_4
    goto :goto_3

    .end local v0    # "level":I
    :cond_f
    move v0, v1

    goto :goto_4
.end method

.method private getVodaFRLteLevel()I
    .locals 3

    .prologue
    .line 2246
    const/4 v0, 0x1

    .line 2247
    .local v0, "rsrpLevel":I
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x53

    if-lt v1, v2, :cond_0

    const/4 v0, 0x5

    .line 2253
    :goto_0
    return v0

    .line 2248
    :cond_0
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x5d

    if-lt v1, v2, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    .line 2249
    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x68

    if-lt v1, v2, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 2250
    :cond_2
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x71

    if-lt v1, v2, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    .line 2251
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getVoiceNetworkType(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1834
    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1835
    .local v0, "telephonyMgr":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v1

    .line 1836
    .local v1, "voiceNetworkType":I
    :goto_0
    return v1

    .line 1835
    .end local v1    # "voiceNetworkType":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getVoiceState(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1812
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v0

    .line 1813
    .local v0, "htctelephonyMgr":Lcom/htc/service/HtcTelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/service/HtcTelephonyManager;->getServiceState()I

    move-result v1

    .line 1815
    .local v1, "voiceServiceState":I
    :goto_0
    return v1

    .line 1813
    .end local v1    # "voiceServiceState":I
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private initHtcAddFields(IIIII)V
    .locals 0
    .param p1, "gsmSignalDbm"    # I
    .param p2, "gsmEcno"    # I
    .param p3, "evdoSingalBar"    # I
    .param p4, "htcLteRsrp"    # I
    .param p5, "htcLteRsrq"    # I

    .prologue
    .line 1409
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    .line 1410
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    .line 1411
    iput p3, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    .line 1412
    iput p4, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    .line 1413
    iput p5, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    .line 1414
    return-void
.end method

.method private isAboveGsm2GNetwork(I)Z
    .locals 1
    .param p1, "networkType"    # I

    .prologue
    .line 2790
    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    .line 2792
    :cond_0
    const/4 v0, 0x0

    .line 2794
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isCdma1xNetworkTypes(I)Z
    .locals 1
    .param p1, "networkType"    # I

    .prologue
    .line 1756
    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1758
    :cond_0
    const/4 v0, 0x1

    .line 1760
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCdmaEvdoNetworkTypes(I)Z
    .locals 1
    .param p1, "networkType"    # I

    .prologue
    .line 1765
    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xe

    if-ne p1, v0, :cond_1

    .line 1769
    :cond_0
    const/4 v0, 0x1

    .line 1771
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkRoaming(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1828
    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1829
    .local v1, "telephonyMgr":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 1830
    .local v0, "isRoaming":Z
    :goto_0
    return v0

    .line 1829
    .end local v0    # "isRoaming":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1372
    const-string v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    return-void
.end method

.method public static makeSignalStrengthFromRilParcel(Landroid/os/Parcel;)Landroid/telephony/SignalStrength;
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 496
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 497
    .local v0, "ss":Landroid/telephony/SignalStrength;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 498
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 499
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 500
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 501
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 502
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 503
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 504
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 505
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 506
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 507
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 508
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 509
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mTDRscp:I

    .line 511
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    .line 512
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    .line 513
    iget v1, v0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v1, v0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    .line 514
    iget v1, v0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v1, v0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    .line 519
    return-object v0
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .locals 1
    .param p0, "m"    # Landroid/os/Bundle;

    .prologue
    .line 125
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 126
    .local v0, "ret":Landroid/telephony/SignalStrength;
    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 127
    return-object v0
.end method

.method private readHtcAddedFieldsFrom(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1433
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    .line 1434
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    .line 1435
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    .line 1437
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    .line 1438
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    .line 1440
    return-void
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1327
    const-string v0, "GsmSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1328
    const-string v0, "GsmBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 1329
    const-string v0, "CdmaDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 1330
    const-string v0, "CdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 1331
    const-string v0, "EvdoDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 1332
    const-string v0, "EvdoEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 1333
    const-string v0, "EvdoSnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 1334
    const-string v0, "LteSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 1335
    const-string v0, "LteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 1336
    const-string v0, "LteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1337
    const-string v0, "LteRssnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1338
    const-string v0, "LteCqi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 1339
    const-string/jumbo v0, "isGsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 1340
    const-string v0, "TdRscp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    .line 1341
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->setHtcAddedFieldsFromNotifierBundle(Landroid/os/Bundle;)V

    .line 1342
    return-void
.end method

.method private setHtcAddedFieldsFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1471
    const-string v0, "GsmSignalDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    .line 1472
    const-string v0, "GsmEcno"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    .line 1473
    const-string v0, "EvdoSignalBar"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    .line 1475
    const-string v0, "HtcLteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    .line 1476
    const-string v0, "HtcLteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    .line 1478
    return-void
.end method

.method private writeHtcAddedFieldsInto(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 1446
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1447
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1448
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1450
    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1451
    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1453
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 444
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 445
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 446
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 447
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 448
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 449
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 450
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 451
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 452
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 453
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 454
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 455
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 456
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->isGsm:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 457
    iget v0, p1, Landroid/telephony/SignalStrength;->mTDRscp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    .line 458
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->copyHtcAddedFieldsFrom(Landroid/telephony/SignalStrength;)V

    .line 459
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 547
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1265
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/SignalStrength;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1270
    .local v3, "s":Landroid/telephony/SignalStrength;
    if-nez p1, :cond_0

    .line 1291
    .end local v3    # "s":Landroid/telephony/SignalStrength;
    :goto_0
    return v5

    .line 1266
    :catch_0
    move-exception v2

    .line 1267
    .local v2, "ex":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 1274
    .end local v2    # "ex":Ljava/lang/ClassCastException;
    .restart local v3    # "s":Landroid/telephony/SignalStrength;
    :cond_0
    iget v6, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v6, v7, :cond_1

    iget-boolean v6, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    iget-boolean v7, v3, Landroid/telephony/SignalStrength;->isGsm:Z

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mTDRscp:I

    if-ne v6, v7, :cond_1

    move v1, v4

    .line 1291
    .local v1, "equal":Z
    :goto_1
    if-eqz v1, :cond_2

    invoke-direct {p0, v3}, Landroid/telephony/SignalStrength;->equalsHtcAddedFields(Landroid/telephony/SignalStrength;)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_2
    move v5, v4

    goto :goto_0

    .end local v1    # "equal":Z
    :cond_1
    move v1, v5

    .line 1274
    goto :goto_1

    .restart local v1    # "equal":Z
    :cond_2
    move v4, v5

    .line 1291
    goto :goto_2
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1351
    const-string v0, "GsmSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1352
    const-string v0, "GsmBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1353
    const-string v0, "CdmaDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1354
    const-string v0, "CdmaEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1355
    const-string v0, "EvdoDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1356
    const-string v0, "EvdoEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1357
    const-string v0, "EvdoSnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1358
    const-string v0, "LteSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1359
    const-string v0, "LteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1360
    const-string v0, "LteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1361
    const-string v0, "LteRssnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1362
    const-string v0, "LteCqi"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1363
    const-string/jumbo v0, "isGsm"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1364
    const-string v0, "TdRscp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1365
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->fillHtcAddedFieldsInNotifierBundle(Landroid/os/Bundle;)V

    .line 1366
    return-void
.end method

.method public getAsuLevel()I
    .locals 4

    .prologue
    .line 871
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_3

    .line 873
    sget-object v3, Lcom/android/internal/telephony/ACCCustomizationManager;->SENSE_VERSION:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 875
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v3

    if-nez v3, :cond_0

    .line 876
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    .line 903
    .local v0, "asuLevel":I
    :goto_0
    return v0

    .line 878
    .end local v0    # "asuLevel":I
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    .restart local v0    # "asuLevel":I
    goto :goto_0

    .line 882
    .end local v0    # "asuLevel":I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isInvalidLteSignalStrength()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 883
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    .restart local v0    # "asuLevel":I
    goto :goto_0

    .line 885
    .end local v0    # "asuLevel":I
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    .restart local v0    # "asuLevel":I
    goto :goto_0

    .line 889
    .end local v0    # "asuLevel":I
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v1

    .line 890
    .local v1, "cdmaAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v2

    .line 891
    .local v2, "evdoAsuLevel":I
    if-nez v2, :cond_4

    .line 893
    move v0, v1

    .restart local v0    # "asuLevel":I
    goto :goto_0

    .line 894
    .end local v0    # "asuLevel":I
    :cond_4
    if-nez v1, :cond_5

    .line 896
    move v0, v2

    .restart local v0    # "asuLevel":I
    goto :goto_0

    .line 899
    .end local v0    # "asuLevel":I
    :cond_5
    if-ge v1, v2, :cond_6

    move v0, v1

    .restart local v0    # "asuLevel":I
    :goto_1
    goto :goto_0

    .end local v0    # "asuLevel":I
    :cond_6
    move v0, v2

    goto :goto_1
.end method

.method public getCdmaAsuLevel()I
    .locals 8

    .prologue
    const/16 v7, -0x5a

    const/16 v6, -0x64

    .line 1037
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 1038
    .local v1, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v2

    .line 1042
    .local v2, "cdmaEcio":I
    const/16 v5, -0x4b

    if-lt v1, v5, :cond_0

    const/16 v0, 0x10

    .line 1050
    .local v0, "cdmaAsuLevel":I
    :goto_0
    if-lt v2, v7, :cond_5

    const/16 v3, 0x10

    .line 1057
    .local v3, "ecioAsuLevel":I
    :goto_1
    if-ge v0, v3, :cond_a

    move v4, v0

    .line 1059
    .local v4, "level":I
    :goto_2
    return v4

    .line 1043
    .end local v0    # "cdmaAsuLevel":I
    .end local v3    # "ecioAsuLevel":I
    .end local v4    # "level":I
    :cond_0
    const/16 v5, -0x52

    if-lt v1, v5, :cond_1

    const/16 v0, 0x8

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 1044
    .end local v0    # "cdmaAsuLevel":I
    :cond_1
    if-lt v1, v7, :cond_2

    const/4 v0, 0x4

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 1045
    .end local v0    # "cdmaAsuLevel":I
    :cond_2
    const/16 v5, -0x5f

    if-lt v1, v5, :cond_3

    const/4 v0, 0x2

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 1046
    .end local v0    # "cdmaAsuLevel":I
    :cond_3
    if-lt v1, v6, :cond_4

    const/4 v0, 0x1

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 1047
    .end local v0    # "cdmaAsuLevel":I
    :cond_4
    const/16 v0, 0x63

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 1051
    :cond_5
    if-lt v2, v6, :cond_6

    const/16 v3, 0x8

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 1052
    .end local v3    # "ecioAsuLevel":I
    :cond_6
    const/16 v5, -0x73

    if-lt v2, v5, :cond_7

    const/4 v3, 0x4

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 1053
    .end local v3    # "ecioAsuLevel":I
    :cond_7
    const/16 v5, -0x82

    if-lt v2, v5, :cond_8

    const/4 v3, 0x2

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 1054
    .end local v3    # "ecioAsuLevel":I
    :cond_8
    const/16 v5, -0x96

    if-lt v2, v5, :cond_9

    const/4 v3, 0x1

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 1055
    .end local v3    # "ecioAsuLevel":I
    :cond_9
    const/16 v3, 0x63

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    :cond_a
    move v4, v3

    .line 1057
    goto :goto_2
.end method

.method public getCdmaDbm()I
    .locals 1

    .prologue
    .line 722
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    .prologue
    .line 729
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .locals 6

    .prologue
    .line 1008
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 1009
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 1013
    .local v1, "cdmaEcio":I
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_0

    const/4 v3, 0x4

    .line 1020
    .local v3, "levelDbm":I
    :goto_0
    const/16 v5, -0x5a

    if-lt v1, v5, :cond_4

    const/4 v4, 0x4

    .line 1026
    .local v4, "levelEcio":I
    :goto_1
    if-ge v3, v4, :cond_8

    move v2, v3

    .line 1028
    .local v2, "level":I
    :goto_2
    return v2

    .line 1014
    .end local v2    # "level":I
    .end local v3    # "levelDbm":I
    .end local v4    # "levelEcio":I
    :cond_0
    const/16 v5, -0x55

    if-lt v0, v5, :cond_1

    const/4 v3, 0x3

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 1015
    .end local v3    # "levelDbm":I
    :cond_1
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_2

    const/4 v3, 0x2

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 1016
    .end local v3    # "levelDbm":I
    :cond_2
    const/16 v5, -0x64

    if-lt v0, v5, :cond_3

    const/4 v3, 0x1

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 1017
    .end local v3    # "levelDbm":I
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 1021
    :cond_4
    const/16 v5, -0x6e

    if-lt v1, v5, :cond_5

    const/4 v4, 0x3

    .restart local v4    # "levelEcio":I
    goto :goto_1

    .line 1022
    .end local v4    # "levelEcio":I
    :cond_5
    const/16 v5, -0x82

    if-lt v1, v5, :cond_6

    const/4 v4, 0x2

    .restart local v4    # "levelEcio":I
    goto :goto_1

    .line 1023
    .end local v4    # "levelEcio":I
    :cond_6
    const/16 v5, -0x96

    if-lt v1, v5, :cond_7

    const/4 v4, 0x1

    .restart local v4    # "levelEcio":I
    goto :goto_1

    .line 1024
    .end local v4    # "levelEcio":I
    :cond_7
    const/4 v4, 0x0

    .restart local v4    # "levelEcio":I
    goto :goto_1

    :cond_8
    move v2, v4

    .line 1026
    goto :goto_2
.end method

.method public getDbm()I
    .locals 5

    .prologue
    const/16 v4, -0x78

    .line 914
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 915
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 917
    .local v1, "dBm":I
    sget-object v3, Lcom/android/internal/telephony/ACCCustomizationManager;->SENSE_VERSION:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 919
    const v3, 0x7fffffff

    if-ne v1, v3, :cond_0

    .line 920
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v1

    .line 936
    .end local v1    # "dBm":I
    :cond_0
    :goto_0
    return v1

    .line 924
    .restart local v1    # "dBm":I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isInvalidLteSignalStrength()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 925
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v1

    goto :goto_0

    .line 929
    .end local v1    # "dBm":I
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 930
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v2

    .line 932
    .local v2, "evdoDbm":I
    if-ne v2, v4, :cond_4

    .end local v0    # "cdmaDbm":I
    :cond_3
    :goto_1
    move v1, v0

    goto :goto_0

    .restart local v0    # "cdmaDbm":I
    :cond_4
    if-ne v0, v4, :cond_5

    move v0, v2

    goto :goto_1

    :cond_5
    if-lt v0, v2, :cond_3

    move v0, v2

    goto :goto_1
.end method

.method public getEvdoAsuLevel()I
    .locals 6

    .prologue
    .line 1096
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 1097
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 1101
    .local v1, "evdoSnr":I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_0

    const/16 v3, 0x10

    .line 1108
    .local v3, "levelEvdoDbm":I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_5

    const/16 v4, 0x10

    .line 1115
    .local v4, "levelEvdoSnr":I
    :goto_1
    if-ge v3, v4, :cond_a

    move v2, v3

    .line 1117
    .local v2, "level":I
    :goto_2
    return v2

    .line 1102
    .end local v2    # "level":I
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_0
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1

    const/16 v3, 0x8

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1103
    .end local v3    # "levelEvdoDbm":I
    :cond_1
    const/16 v5, -0x55

    if-lt v0, v5, :cond_2

    const/4 v3, 0x4

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1104
    .end local v3    # "levelEvdoDbm":I
    :cond_2
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1105
    .end local v3    # "levelEvdoDbm":I
    :cond_3
    const/16 v5, -0x69

    if-lt v0, v5, :cond_4

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1106
    .end local v3    # "levelEvdoDbm":I
    :cond_4
    const/16 v3, 0x63

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1109
    :cond_5
    const/4 v5, 0x6

    if-lt v1, v5, :cond_6

    const/16 v4, 0x8

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1110
    .end local v4    # "levelEvdoSnr":I
    :cond_6
    const/4 v5, 0x5

    if-lt v1, v5, :cond_7

    const/4 v4, 0x4

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1111
    .end local v4    # "levelEvdoSnr":I
    :cond_7
    const/4 v5, 0x3

    if-lt v1, v5, :cond_8

    const/4 v4, 0x2

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1112
    .end local v4    # "levelEvdoSnr":I
    :cond_8
    const/4 v5, 0x1

    if-lt v1, v5, :cond_9

    const/4 v4, 0x1

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1113
    .end local v4    # "levelEvdoSnr":I
    :cond_9
    const/16 v4, 0x63

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    :cond_a
    move v2, v4

    .line 1115
    goto :goto_2
.end method

.method public getEvdoDbm()I
    .locals 1

    .prologue
    .line 736
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    .prologue
    .line 743
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .locals 6

    .prologue
    .line 1068
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 1069
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 1073
    .local v1, "evdoSnr":I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_0

    const/4 v3, 0x4

    .line 1079
    .local v3, "levelEvdoDbm":I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_4

    const/4 v4, 0x4

    .line 1085
    .local v4, "levelEvdoSnr":I
    :goto_1
    if-ge v3, v4, :cond_8

    move v2, v3

    .line 1087
    .local v2, "level":I
    :goto_2
    return v2

    .line 1074
    .end local v2    # "level":I
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_0
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1

    const/4 v3, 0x3

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1075
    .end local v3    # "levelEvdoDbm":I
    :cond_1
    const/16 v5, -0x5a

    if-lt v0, v5, :cond_2

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1076
    .end local v3    # "levelEvdoDbm":I
    :cond_2
    const/16 v5, -0x69

    if-lt v0, v5, :cond_3

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1077
    .end local v3    # "levelEvdoDbm":I
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1080
    :cond_4
    const/4 v5, 0x5

    if-lt v1, v5, :cond_5

    const/4 v4, 0x3

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1081
    .end local v4    # "levelEvdoSnr":I
    :cond_5
    const/4 v5, 0x3

    if-lt v1, v5, :cond_6

    const/4 v4, 0x2

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1082
    .end local v4    # "levelEvdoSnr":I
    :cond_6
    const/4 v5, 0x1

    if-lt v1, v5, :cond_7

    const/4 v4, 0x1

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1083
    .end local v4    # "levelEvdoSnr":I
    :cond_7
    const/4 v4, 0x0

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    :cond_8
    move v2, v4

    .line 1085
    goto :goto_2
.end method

.method public getEvdoSignalBar()I
    .locals 1

    .prologue
    .line 1379
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    return v0
.end method

.method public getEvdoSnr()I
    .locals 1

    .prologue
    .line 750
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .locals 1

    .prologue
    .line 997
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 999
    .local v0, "level":I
    return v0
.end method

.method public getGsmBitErrorRate()I
    .locals 1

    .prologue
    .line 715
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 947
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 948
    .local v2, "gsmSignalStrength":I
    const/16 v5, 0x63

    if-ne v2, v5, :cond_1

    move v0, v4

    .line 950
    .local v0, "asu":I
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTDRscp()I

    move-result v3

    .line 951
    .local v3, "tdRscp":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isInvalidTDSignalStrength()Z

    move-result v5

    if-nez v5, :cond_0

    .line 952
    move v0, v3

    .line 956
    :cond_0
    if-eq v0, v4, :cond_2

    .line 957
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v1, v4, -0x71

    .line 962
    .local v1, "dBm":I
    :goto_1
    return v1

    .end local v0    # "asu":I
    .end local v1    # "dBm":I
    .end local v3    # "tdRscp":I
    :cond_1
    move v0, v2

    .line 948
    goto :goto_0

    .line 959
    .restart local v0    # "asu":I
    .restart local v3    # "tdRscp":I
    :cond_2
    const/4 v1, -0x1

    .restart local v1    # "dBm":I
    goto :goto_1
.end method

.method public getGsmEcno()I
    .locals 1

    .prologue
    .line 1400
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    return v0
.end method

.method public getGsmLevel()I
    .locals 3

    .prologue
    .line 977
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 978
    .local v0, "asu":I
    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    const/16 v2, 0x63

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 984
    .local v1, "level":I
    :goto_0
    return v1

    .line 979
    .end local v1    # "level":I
    :cond_1
    const/16 v2, 0xc

    if-lt v0, v2, :cond_2

    const/4 v1, 0x4

    .restart local v1    # "level":I
    goto :goto_0

    .line 980
    .end local v1    # "level":I
    :cond_2
    const/16 v2, 0x8

    if-lt v0, v2, :cond_3

    const/4 v1, 0x3

    .restart local v1    # "level":I
    goto :goto_0

    .line 981
    .end local v1    # "level":I
    :cond_3
    const/4 v2, 0x5

    if-lt v0, v2, :cond_4

    const/4 v1, 0x2

    .restart local v1    # "level":I
    goto :goto_0

    .line 982
    .end local v1    # "level":I
    :cond_4
    const/4 v1, 0x1

    .restart local v1    # "level":I
    goto :goto_0
.end method

.method public getGsmSignalDbm()I
    .locals 1

    .prologue
    .line 1396
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    return v0
.end method

.method public getGsmSignalStrength()I
    .locals 1

    .prologue
    .line 708
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    return v0
.end method

.method public getHtcCdmaLevel()I
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x4

    .line 2618
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 2619
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 2621
    .local v1, "cdmaEcio":I
    const/4 v3, 0x0

    .line 2622
    .local v3, "level":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcCdmaMaxLevel()I

    move-result v2

    .line 2623
    .local v2, "cdmaMaxLevel":I
    if-ne v2, v6, :cond_2

    .line 2624
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportSprintSignalMappingRule()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportMetroPcsSignalMappingRule()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2626
    :cond_0
    invoke-direct {p0, v0, v1, v6}, Landroid/telephony/SignalStrength;->getCdmaSPCSLevel(III)I

    move-result v3

    .line 2654
    :goto_0
    return v3

    .line 2629
    :cond_1
    invoke-direct {p0, v0, v1, v6}, Landroid/telephony/SignalStrength;->getCdmaSPCSLevel(III)I

    move-result v3

    goto :goto_0

    .line 2631
    :cond_2
    if-ne v2, v5, :cond_7

    .line 2632
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportCtSignalMappingRule()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAptgSignalMappingRule()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAsiaSignalMappingRule()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportMmrSignalMappingRule()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2636
    :cond_3
    invoke-direct {p0, v0, v1}, Landroid/telephony/SignalStrength;->getCdmaCTLevel(II)I

    move-result v3

    goto :goto_0

    .line 2637
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportKddiSignalMappingRule()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2638
    invoke-direct {p0, v0, v1}, Landroid/telephony/SignalStrength;->getCdmaKDDILevel(II)I

    move-result v3

    goto :goto_0

    .line 2641
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportSprintSignalMappingRule()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2642
    invoke-direct {p0, v0, v1, v5}, Landroid/telephony/SignalStrength;->getCdmaSPCSLevel(III)I

    move-result v3

    goto :goto_0

    .line 2645
    :cond_6
    invoke-direct {p0, v0, v1, v5}, Landroid/telephony/SignalStrength;->getCdmaHtcLevel(III)I

    move-result v3

    goto :goto_0

    .line 2648
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportVerizonSignalMappingRule()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2649
    invoke-direct {p0, v0, v1}, Landroid/telephony/SignalStrength;->getCdmaVZWLevel(II)I

    move-result v3

    goto :goto_0

    .line 2651
    :cond_8
    const/4 v4, 0x5

    invoke-direct {p0, v0, v1, v4}, Landroid/telephony/SignalStrength;->getCdmaHtcLevel(III)I

    move-result v3

    goto :goto_0
.end method

.method public getHtcCdmaMaxLevel()I
    .locals 1

    .prologue
    .line 1569
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->getCdmaSignalBarLevel()I

    move-result v0

    return v0
.end method

.method public getHtcEvdoLevel()I
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x4

    .line 2437
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v1

    .line 2438
    .local v1, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v3

    .line 2439
    .local v3, "evdoSnr":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoEcio()I

    move-result v2

    .line 2440
    .local v2, "evdoEcio":I
    const/4 v4, 0x0

    .line 2442
    .local v4, "level":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcCdmaMaxLevel()I

    move-result v0

    .line 2443
    .local v0, "cdmaMaxLevel":I
    if-ne v0, v7, :cond_2

    .line 2444
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportSprintSignalMappingRule()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportMetroPcsSignalMappingRule()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2446
    :cond_0
    invoke-direct {p0, v1, v3, v2, v7}, Landroid/telephony/SignalStrength;->getEvdoSPCSLevel(IIII)I

    move-result v4

    .line 2470
    :goto_0
    return v4

    .line 2449
    :cond_1
    invoke-direct {p0, v1, v3, v2, v7}, Landroid/telephony/SignalStrength;->getEvdoSPCSLevel(IIII)I

    move-result v4

    goto :goto_0

    .line 2451
    :cond_2
    if-ne v0, v6, :cond_7

    .line 2452
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportCtSignalMappingRule()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAptgSignalMappingRule()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAsiaSignalMappingRule()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportMmrSignalMappingRule()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2456
    :cond_3
    invoke-direct {p0, v1, v3}, Landroid/telephony/SignalStrength;->getEvdoCTLevel(II)I

    move-result v4

    goto :goto_0

    .line 2457
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportKddiSignalMappingRule()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2458
    invoke-direct {p0, v1, v3}, Landroid/telephony/SignalStrength;->getEvdoKDDILevel(II)I

    move-result v4

    goto :goto_0

    .line 2461
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportSprintSignalMappingRule()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2462
    invoke-direct {p0, v1, v3, v2, v6}, Landroid/telephony/SignalStrength;->getEvdoSPCSLevel(IIII)I

    move-result v4

    goto :goto_0

    .line 2465
    :cond_6
    invoke-direct {p0, v1, v3, v6}, Landroid/telephony/SignalStrength;->getEvdoHtcLevel(III)I

    move-result v4

    goto :goto_0

    .line 2468
    :cond_7
    const/4 v5, 0x5

    invoke-direct {p0, v1, v3, v5}, Landroid/telephony/SignalStrength;->getEvdoHtcLevel(III)I

    move-result v4

    goto :goto_0
.end method

.method public getHtcGsmLevel(I)I
    .locals 14
    .param p1, "networkType"    # I

    .prologue
    const/16 v13, 0xc

    const/4 v10, 0x4

    const/16 v9, -0x61

    const/16 v8, -0x68

    const/16 v12, 0x63

    .line 1896
    const/4 v6, 0x0

    .line 1897
    .local v6, "iconLevel":I
    iget v7, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    mul-int/lit8 v1, v7, -0x1

    .line 1898
    .local v1, "dbm":I
    iget v7, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    mul-int/lit8 v3, v7, -0x1

    .line 1899
    .local v3, "ecno":I
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1902
    .local v0, "asu":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcGsmMaxLevel()I

    move-result v5

    .line 1903
    .local v5, "gsmMaxLevel":I
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportVerizonSignalMappingRule()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1904
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->isAboveGsm2GNetwork(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1905
    if-gez v1, :cond_4

    .line 1906
    const/16 v7, -0x37

    if-lt v1, v7, :cond_0

    const/4 v6, 0x5

    .line 2045
    :goto_0
    return v6

    .line 1907
    :cond_0
    const/16 v7, -0x46

    if-lt v1, v7, :cond_1

    const/4 v6, 0x4

    goto :goto_0

    .line 1908
    :cond_1
    const/16 v7, -0x55

    if-lt v1, v7, :cond_2

    const/4 v6, 0x3

    goto :goto_0

    .line 1909
    :cond_2
    const/16 v7, -0x64

    if-lt v1, v7, :cond_3

    const/4 v6, 0x2

    goto :goto_0

    .line 1910
    :cond_3
    const/4 v6, 0x1

    goto :goto_0

    .line 1912
    :cond_4
    const/4 v6, 0x1

    goto :goto_0

    .line 1915
    :cond_5
    if-gez v1, :cond_a

    .line 1916
    const/16 v7, -0x54

    if-lt v1, v7, :cond_6

    const/4 v6, 0x5

    goto :goto_0

    .line 1917
    :cond_6
    const/16 v7, -0x5d

    if-lt v1, v7, :cond_7

    const/4 v6, 0x4

    goto :goto_0

    .line 1918
    :cond_7
    if-lt v1, v9, :cond_8

    const/4 v6, 0x3

    goto :goto_0

    .line 1919
    :cond_8
    if-lt v1, v8, :cond_9

    const/4 v6, 0x2

    goto :goto_0

    .line 1920
    :cond_9
    const/4 v6, 0x1

    goto :goto_0

    .line 1922
    :cond_a
    const/4 v6, 0x1

    goto :goto_0

    .line 1925
    :cond_b
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAttSignalMappingRule()Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 1926
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->isAboveGsm2GNetwork(I)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 1927
    if-ltz v1, :cond_c

    if-gez v3, :cond_15

    .line 1928
    :cond_c
    const/4 v2, 0x1

    .line 1929
    .local v2, "dbmLevel":I
    const/4 v4, 0x1

    .line 1930
    .local v4, "ecnoLevel":I
    const/16 v7, -0x50

    if-le v1, v7, :cond_d

    const/4 v2, 0x5

    .line 1936
    :goto_1
    const/16 v7, -0x14

    if-le v3, v7, :cond_11

    const/4 v4, 0x5

    .line 1942
    :goto_2
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1943
    goto :goto_0

    .line 1931
    :cond_d
    const/16 v7, -0x5a

    if-le v1, v7, :cond_e

    const/4 v2, 0x4

    goto :goto_1

    .line 1932
    :cond_e
    const/16 v7, -0x64

    if-le v1, v7, :cond_f

    const/4 v2, 0x3

    goto :goto_1

    .line 1933
    :cond_f
    const/16 v7, -0x6a

    if-le v1, v7, :cond_10

    const/4 v2, 0x2

    goto :goto_1

    .line 1934
    :cond_10
    const/4 v2, 0x1

    goto :goto_1

    .line 1937
    :cond_11
    const/16 v7, -0x18

    if-le v3, v7, :cond_12

    const/4 v4, 0x4

    goto :goto_2

    .line 1938
    :cond_12
    const/16 v7, -0x1c

    if-le v3, v7, :cond_13

    const/4 v4, 0x3

    goto :goto_2

    .line 1939
    :cond_13
    const/16 v7, -0x20

    if-le v3, v7, :cond_14

    const/4 v4, 0x2

    goto :goto_2

    .line 1940
    :cond_14
    const/4 v4, 0x1

    goto :goto_2

    .line 1945
    .end local v2    # "dbmLevel":I
    .end local v4    # "ecnoLevel":I
    :cond_15
    const/4 v6, 0x1

    goto :goto_0

    .line 1948
    :cond_16
    if-lez v0, :cond_17

    if-ne v0, v12, :cond_18

    :cond_17
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1949
    :cond_18
    const/16 v7, -0x50

    if-le v1, v7, :cond_19

    const/4 v6, 0x5

    goto/16 :goto_0

    .line 1950
    :cond_19
    const/16 v7, -0x59

    if-le v1, v7, :cond_1a

    const/4 v6, 0x4

    goto/16 :goto_0

    .line 1951
    :cond_1a
    const/16 v7, -0x62

    if-le v1, v7, :cond_1b

    const/4 v6, 0x3

    goto/16 :goto_0

    .line 1952
    :cond_1b
    if-le v1, v8, :cond_1c

    const/4 v6, 0x2

    goto/16 :goto_0

    .line 1953
    :cond_1c
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1955
    :cond_1d
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportSprintSignalMappingRule()Z

    move-result v7

    if-eqz v7, :cond_26

    .line 1957
    if-ne v5, v10, :cond_1e

    .line 1958
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v6

    goto/16 :goto_0

    .line 1962
    :cond_1e
    int-to-double v8, v0

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    cmpg-double v7, v8, v10

    if-ltz v7, :cond_1f

    if-ne v0, v12, :cond_20

    :cond_1f
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1963
    :cond_20
    int-to-double v8, v0

    const-wide v10, 0x4031800000000000L    # 17.5

    cmpl-double v7, v8, v10

    if-ltz v7, :cond_21

    const/4 v6, 0x6

    goto/16 :goto_0

    .line 1964
    :cond_21
    const/16 v7, 0xf

    if-lt v0, v7, :cond_22

    const/4 v6, 0x5

    goto/16 :goto_0

    .line 1965
    :cond_22
    if-lt v0, v13, :cond_23

    const/4 v6, 0x4

    goto/16 :goto_0

    .line 1966
    :cond_23
    int-to-double v8, v0

    const-wide/high16 v10, 0x4021000000000000L    # 8.5

    cmpl-double v7, v8, v10

    if-ltz v7, :cond_24

    const/4 v6, 0x3

    goto/16 :goto_0

    .line 1967
    :cond_24
    const/4 v7, 0x5

    if-lt v0, v7, :cond_25

    const/4 v6, 0x2

    goto/16 :goto_0

    .line 1968
    :cond_25
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1970
    :cond_26
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportH3gSignalMappingRule()Z

    move-result v7

    if-eqz v7, :cond_31

    .line 1971
    if-ltz v1, :cond_27

    if-gez v3, :cond_30

    .line 1975
    :cond_27
    const/4 v2, 0x0

    .line 1976
    .restart local v2    # "dbmLevel":I
    const/16 v7, -0x5b

    if-lt v1, v7, :cond_28

    const/4 v2, 0x5

    .line 1985
    :goto_3
    const/4 v4, 0x0

    .line 1986
    .restart local v4    # "ecnoLevel":I
    const/16 v7, -0x1a

    if-lt v3, v7, :cond_2d

    const/4 v4, 0x5

    .line 1991
    :goto_4
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1993
    goto/16 :goto_0

    .line 1977
    .end local v4    # "ecnoLevel":I
    :cond_28
    if-lt v1, v9, :cond_29

    const/4 v2, 0x4

    goto :goto_3

    .line 1978
    :cond_29
    if-lt v1, v8, :cond_2a

    const/4 v2, 0x3

    goto :goto_3

    .line 1979
    :cond_2a
    const/16 v7, -0x6f

    if-lt v1, v7, :cond_2b

    const/4 v2, 0x2

    goto :goto_3

    .line 1980
    :cond_2b
    const/16 v7, -0x73

    if-lt v1, v7, :cond_2c

    const/4 v2, 0x1

    goto :goto_3

    .line 1981
    :cond_2c
    const/4 v2, 0x0

    goto :goto_3

    .line 1987
    .restart local v4    # "ecnoLevel":I
    :cond_2d
    const/16 v7, -0x1e

    if-lt v3, v7, :cond_2e

    const/4 v4, 0x3

    goto :goto_4

    .line 1988
    :cond_2e
    const/16 v7, -0x24

    if-lt v3, v7, :cond_2f

    const/4 v4, 0x1

    goto :goto_4

    .line 1989
    :cond_2f
    const/4 v4, 0x0

    goto :goto_4

    .line 1994
    .end local v2    # "dbmLevel":I
    .end local v4    # "ecnoLevel":I
    :cond_30
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1997
    :cond_31
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportTmousSignalMappingRule()Z

    move-result v7

    if-eqz v7, :cond_37

    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->isAboveGsm2GNetwork(I)Z

    move-result v7

    if-eqz v7, :cond_37

    .line 1999
    const/16 v7, -0x59

    if-lt v1, v7, :cond_32

    const/4 v6, 0x5

    goto/16 :goto_0

    .line 2000
    :cond_32
    if-lt v1, v9, :cond_33

    const/4 v6, 0x4

    goto/16 :goto_0

    .line 2001
    :cond_33
    const/16 v7, -0x67

    if-lt v1, v7, :cond_34

    const/4 v6, 0x3

    goto/16 :goto_0

    .line 2002
    :cond_34
    const/16 v7, -0x71

    if-lt v1, v7, :cond_35

    const/4 v6, 0x2

    goto/16 :goto_0

    .line 2003
    :cond_35
    const/16 v7, -0x7d

    if-lt v1, v7, :cond_36

    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2004
    :cond_36
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2007
    :cond_37
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAusNzSignalMappingRule()Z

    move-result v7

    if-eqz v7, :cond_3d

    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->isAboveGsm2GNetwork(I)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 2009
    const/16 v7, -0x4e

    if-le v1, v7, :cond_38

    const/4 v6, 0x5

    goto/16 :goto_0

    .line 2010
    :cond_38
    const/16 v7, -0x57

    if-le v1, v7, :cond_39

    const/4 v6, 0x4

    goto/16 :goto_0

    .line 2011
    :cond_39
    const/16 v7, -0x5d

    if-le v1, v7, :cond_3a

    const/4 v6, 0x3

    goto/16 :goto_0

    .line 2012
    :cond_3a
    const/16 v7, -0x66

    if-le v1, v7, :cond_3b

    const/4 v6, 0x2

    goto/16 :goto_0

    .line 2013
    :cond_3b
    const/16 v7, -0x6d

    if-le v1, v7, :cond_3c

    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2014
    :cond_3c
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2018
    :cond_3d
    const/4 v7, 0x5

    if-ne v5, v7, :cond_45

    .line 2019
    if-lez v0, :cond_3e

    if-ne v0, v12, :cond_3f

    .line 2020
    :cond_3e
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2021
    :cond_3f
    const/16 v7, 0xe

    if-lt v0, v7, :cond_40

    .line 2022
    const/4 v6, 0x5

    goto/16 :goto_0

    .line 2023
    :cond_40
    if-lt v0, v13, :cond_41

    .line 2024
    const/4 v6, 0x4

    goto/16 :goto_0

    .line 2025
    :cond_41
    const/16 v7, 0x8

    if-lt v0, v7, :cond_42

    .line 2026
    const/4 v6, 0x3

    goto/16 :goto_0

    .line 2027
    :cond_42
    if-lt v0, v10, :cond_43

    .line 2028
    const/4 v6, 0x2

    goto/16 :goto_0

    .line 2029
    :cond_43
    const/4 v7, 0x2

    if-lt v0, v7, :cond_44

    .line 2030
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2032
    :cond_44
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2036
    :cond_45
    const/4 v7, 0x1

    if-le v0, v7, :cond_46

    if-ne v0, v12, :cond_47

    :cond_46
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2037
    :cond_47
    if-lt v0, v13, :cond_48

    const/4 v6, 0x4

    goto/16 :goto_0

    .line 2038
    :cond_48
    const/16 v7, 0x8

    if-lt v0, v7, :cond_49

    const/4 v6, 0x3

    goto/16 :goto_0

    .line 2039
    :cond_49
    if-lt v0, v10, :cond_4a

    const/4 v6, 0x2

    goto/16 :goto_0

    .line 2040
    :cond_4a
    const/4 v7, 0x2

    if-lt v0, v7, :cond_4b

    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2041
    :cond_4b
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method public getHtcGsmMaxLevel()I
    .locals 1

    .prologue
    .line 1560
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->getGsmSignalBarLevel()I

    move-result v0

    return v0
.end method

.method public getHtcLevel(Landroid/content/Context;)I
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x1

    .line 1622
    const/4 v5, 0x1

    .line 1626
    .local v5, "level":I
    iget-boolean v10, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v10, :cond_4

    .line 1627
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getCombineNetworkType(Landroid/content/Context;)I

    move-result v8

    .line 1629
    .local v8, "networkType":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isInvalidLteSignalStrength()Z

    move-result v10

    if-nez v10, :cond_2

    .line 1630
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcLteLevel()I

    move-result v5

    .line 1636
    :goto_0
    const/16 v10, 0x12

    if-ne v8, v10, :cond_0

    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getVoiceState(Landroid/content/Context;)I

    move-result v10

    if-eqz v10, :cond_0

    .line 1639
    const/4 v5, 0x0

    .line 1691
    .end local v8    # "networkType":I
    :cond_0
    :goto_1
    iget-boolean v10, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v10, :cond_c

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcGsmMaxLevel()I

    move-result v7

    .line 1692
    .local v7, "maxLevel":I
    :goto_2
    if-le v5, v7, :cond_1

    .line 1695
    move v5, v7

    :cond_1
    move v10, v5

    .line 1699
    .end local v7    # "maxLevel":I
    :goto_3
    return v10

    .line 1632
    .restart local v8    # "networkType":I
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isInvalidTDSignalStrength()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p0, v8}, Landroid/telephony/SignalStrength;->getHtcGsmLevel(I)I

    move-result v5

    :goto_4
    goto :goto_0

    :cond_3
    invoke-direct {p0, v8}, Landroid/telephony/SignalStrength;->getHtcTDLevel(I)I

    move-result v5

    goto :goto_4

    .line 1644
    .end local v8    # "networkType":I
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportKddiSignalMappingRule()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1645
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getKddiLevel(Landroid/content/Context;)I

    move-result v10

    goto :goto_3

    .line 1647
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportOldCdmaSignalMappingRule()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1648
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getSignalStrengthLevelByOldRule(Landroid/content/Context;)I

    move-result v5

    goto :goto_1

    .line 1650
    :cond_6
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcCdmaLevel()I

    move-result v2

    .line 1651
    .local v2, "cdmaLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcEvdoLevel()I

    move-result v3

    .line 1652
    .local v3, "evdoLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcLteLevel()I

    move-result v6

    .line 1653
    .local v6, "lteLevel":I
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getCallState(Landroid/content/Context;)I

    move-result v1

    .line 1656
    .local v1, "callState":I
    const/4 v4, 0x1

    .line 1657
    .local v4, "isImsPhoneIdle":Z
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isVoLTEEnabled()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1658
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1659
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v10

    const-string/jumbo v11, "isImsPhoneIdle"

    invoke-virtual {v10, v11, v0}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    .line 1660
    .local v9, "ret":Landroid/os/Bundle;
    const-string/jumbo v10, "isImsPhoneIdle"

    invoke-virtual {v9, v10, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1661
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isImsPhoneIdle: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1663
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v9    # "ret":Landroid/os/Bundle;
    :cond_7
    if-eqz v1, :cond_9

    if-ne v4, v12, :cond_9

    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getVoiceState(Landroid/content/Context;)I

    move-result v10

    if-nez v10, :cond_9

    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getVoiceNetworkType(Landroid/content/Context;)I

    move-result v10

    invoke-direct {p0, v10}, Landroid/telephony/SignalStrength;->isCdma1xNetworkTypes(I)Z

    move-result v10

    if-nez v10, :cond_8

    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getVoiceNetworkType(Landroid/content/Context;)I

    move-result v10

    invoke-direct {p0, v10}, Landroid/telephony/SignalStrength;->isCdmaEvdoNetworkTypes(I)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1677
    :cond_8
    move v5, v2

    goto/16 :goto_1

    .line 1679
    :cond_9
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getNetworkType(Landroid/content/Context;)I

    move-result v8

    .line 1680
    .restart local v8    # "networkType":I
    const/16 v10, 0xd

    if-ne v8, v10, :cond_a

    .line 1681
    move v5, v6

    goto/16 :goto_1

    .line 1682
    :cond_a
    invoke-direct {p0, v8}, Landroid/telephony/SignalStrength;->isCdmaEvdoNetworkTypes(I)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1683
    move v5, v3

    goto/16 :goto_1

    .line 1685
    :cond_b
    move v5, v2

    goto/16 :goto_1

    .line 1691
    .end local v1    # "callState":I
    .end local v2    # "cdmaLevel":I
    .end local v3    # "evdoLevel":I
    .end local v4    # "isImsPhoneIdle":Z
    .end local v6    # "lteLevel":I
    .end local v8    # "networkType":I
    :cond_c
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcCdmaMaxLevel()I

    move-result v7

    goto/16 :goto_2
.end method

.method public getHtcLevel(Landroid/content/Context;I)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    const/16 v6, 0xd

    .line 1582
    const/4 v2, 0x1

    .line 1583
    .local v2, "level":I
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->isNetworkRoaming(Landroid/content/Context;)Z

    move-result v1

    .line 1584
    .local v1, "isRoaming":Z
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getVoiceNetworkType(Landroid/content/Context;)I

    move-result v3

    .line 1585
    .local v3, "voiceNetworkType":I
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    .line 1587
    .local v0, "dataNetworkType":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHtcLevel, isRoaming = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", voiceNetworkType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dataNetworkType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1589
    const/16 v4, 0x64

    if-ne p2, v4, :cond_4

    .line 1590
    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v4, :cond_3

    .line 1591
    if-ne v3, v6, :cond_1

    .line 1592
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcLteLevel()I

    move-result v2

    .line 1612
    :cond_0
    :goto_0
    return v2

    .line 1594
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isInvalidTDSignalStrength()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v3}, Landroid/telephony/SignalStrength;->getHtcGsmLevel(I)I

    move-result v2

    :goto_1
    goto :goto_0

    :cond_2
    invoke-direct {p0, v3}, Landroid/telephony/SignalStrength;->getHtcTDLevel(I)I

    move-result v2

    goto :goto_1

    .line 1597
    :cond_3
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->getHtcLevel(Landroid/content/Context;)I

    move-result v2

    goto :goto_0

    .line 1599
    :cond_4
    const/16 v4, 0x65

    if-ne p2, v4, :cond_0

    .line 1600
    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v4, :cond_7

    .line 1601
    if-ne v0, v6, :cond_5

    .line 1602
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcLteLevel()I

    move-result v2

    goto :goto_0

    .line 1604
    :cond_5
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isInvalidTDSignalStrength()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0, v0}, Landroid/telephony/SignalStrength;->getHtcGsmLevel(I)I

    move-result v2

    :goto_2
    goto :goto_0

    :cond_6
    invoke-direct {p0, v0}, Landroid/telephony/SignalStrength;->getHtcTDLevel(I)I

    move-result v2

    goto :goto_2

    .line 1607
    :cond_7
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->getHtcLevel(Landroid/content/Context;)I

    move-result v2

    goto :goto_0
.end method

.method public getHtcLteLevel()I
    .locals 2

    .prologue
    .line 2054
    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcGsmMaxLevel()I

    move-result v0

    .line 2062
    .local v0, "maxLevel":I
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportVerizonSignalMappingRule()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2063
    invoke-direct {p0, v0}, Landroid/telephony/SignalStrength;->getVZWLteLevel(I)I

    move-result v1

    .line 2102
    :goto_1
    return v1

    .line 2054
    .end local v0    # "maxLevel":I
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcCdmaMaxLevel()I

    move-result v0

    goto :goto_0

    .line 2064
    .restart local v0    # "maxLevel":I
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAttSignalMappingRule()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2065
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getAttLteLevel()I

    move-result v1

    goto :goto_1

    .line 2066
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportVodafoneFraSignalMappingRule()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2068
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getVodaFRLteLevel()I

    move-result v1

    goto :goto_1

    .line 2069
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportHkSignalMappingRule()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2070
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getHKLteLevel()I

    move-result v1

    goto :goto_1

    .line 2071
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAsiaSignalMappingRule()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportCanadaSignalMappingRule()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2074
    :cond_5
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getAsiaLteLevel()I

    move-result v1

    goto :goto_1

    .line 2075
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportH3gSignalMappingRule()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2076
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getH3gLteLevel()I

    move-result v1

    goto :goto_1

    .line 2077
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportTmousSignalMappingRule()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2079
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getTmoUsLteLevel()I

    move-result v1

    goto :goto_1

    .line 2080
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportSprintSignalMappingRule()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2082
    invoke-direct {p0, v0}, Landroid/telephony/SignalStrength;->getSpcsLteLevel(I)I

    move-result v1

    goto :goto_1

    .line 2083
    :cond_9
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAusNzSignalMappingRule()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2085
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getAusNzLteLevel()I

    move-result v1

    goto :goto_1

    .line 2086
    :cond_a
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportCmccSignalMappingRule()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2087
    invoke-direct {p0, v0}, Landroid/telephony/SignalStrength;->getCmccLteLevel(I)I

    move-result v1

    goto :goto_1

    .line 2089
    :cond_b
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportCtSignalMappingRule()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2090
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getCTLteLevel()I

    move-result v1

    goto :goto_1

    .line 2093
    :cond_c
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportKddiSignalMappingRule()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2094
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getKddiLteLevel()I

    move-result v1

    goto/16 :goto_1

    .line 2097
    :cond_d
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportCuSignalMappingRule()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2098
    invoke-direct {p0, v0}, Landroid/telephony/SignalStrength;->getCULteLevel(I)I

    move-result v1

    goto/16 :goto_1

    .line 2102
    :cond_e
    invoke-direct {p0, v0}, Landroid/telephony/SignalStrength;->getGenericLteLevel(I)I

    move-result v1

    goto/16 :goto_1
.end method

.method public getHtcLteRsrp()I
    .locals 1

    .prologue
    .line 1533
    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    return v0
.end method

.method public getHtcLteRsrq()I
    .locals 1

    .prologue
    .line 1537
    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    return v0
.end method

.method public getLevel()I
    .locals 4

    .prologue
    .line 794
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_3

    .line 796
    sget-object v3, Lcom/android/internal/telephony/ACCCustomizationManager;->SENSE_VERSION:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 798
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    .line 799
    .local v2, "level":I
    if-nez v2, :cond_0

    .line 800
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v2

    .line 830
    :cond_0
    :goto_0
    return v2

    .line 806
    .end local v2    # "level":I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isInvalidLteSignalStrength()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 807
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v2

    .restart local v2    # "level":I
    goto :goto_0

    .line 809
    .end local v2    # "level":I
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    .line 810
    .restart local v2    # "level":I
    if-nez v2, :cond_0

    .line 811
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v2

    goto :goto_0

    .line 816
    .end local v2    # "level":I
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 817
    .local v0, "cdmaLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    .line 818
    .local v1, "evdoLevel":I
    if-nez v1, :cond_4

    .line 820
    move v2, v0

    .restart local v2    # "level":I
    goto :goto_0

    .line 821
    .end local v2    # "level":I
    :cond_4
    if-nez v0, :cond_5

    .line 823
    move v2, v1

    .restart local v2    # "level":I
    goto :goto_0

    .line 826
    .end local v2    # "level":I
    :cond_5
    if-ge v0, v1, :cond_6

    move v2, v0

    .restart local v2    # "level":I
    :goto_1
    goto :goto_0

    .end local v2    # "level":I
    :cond_6
    move v2, v1

    goto :goto_1
.end method

.method public getLteAsuLevel()I
    .locals 3

    .prologue
    .line 1209
    const/16 v0, 0x63

    .line 1210
    .local v0, "lteAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 1224
    .local v1, "lteDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/16 v0, 0xff

    .line 1227
    :goto_0
    return v0

    .line 1225
    :cond_0
    add-int/lit16 v0, v1, 0x8c

    goto :goto_0
.end method

.method public getLteCqi()I
    .locals 1

    .prologue
    .line 775
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    return v0
.end method

.method public getLteDbm()I
    .locals 1

    .prologue
    .line 1126
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, -0x1

    .line 1141
    const/4 v2, 0x0

    .local v2, "rssiIconLevel":I
    const/4 v0, -0x1

    .local v0, "rsrpIconLevel":I
    const/4 v3, -0x1

    .line 1143
    .local v3, "snrIconLevel":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e008f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1146
    .local v1, "rsrpThreshType":I
    if-nez v1, :cond_3

    .line 1147
    sget-object v4, Landroid/telephony/SignalStrength;->RSRP_THRESH_STRICT:[I

    .line 1152
    .local v4, "threshRsrp":[I
    :goto_0
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    aget v6, v4, v8

    if-le v5, v6, :cond_4

    const/4 v0, -0x1

    .line 1165
    :cond_0
    :goto_1
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0x12c

    if-le v5, v6, :cond_9

    const/4 v3, -0x1

    .line 1177
    :cond_1
    :goto_2
    if-eq v3, v7, :cond_f

    if-eq v0, v7, :cond_f

    .line 1183
    if-ge v0, v3, :cond_e

    .line 1199
    .end local v0    # "rsrpIconLevel":I
    :cond_2
    :goto_3
    return v0

    .line 1149
    .end local v4    # "threshRsrp":[I
    .restart local v0    # "rsrpIconLevel":I
    :cond_3
    sget-object v4, Landroid/telephony/SignalStrength;->RSRP_THRESH_LENIENT:[I

    .restart local v4    # "threshRsrp":[I
    goto :goto_0

    .line 1153
    :cond_4
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v6, 0x4

    aget v6, v4, v6

    if-lt v5, v6, :cond_5

    const/4 v0, 0x4

    goto :goto_1

    .line 1154
    :cond_5
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v6, 0x3

    aget v6, v4, v6

    if-lt v5, v6, :cond_6

    const/4 v0, 0x3

    goto :goto_1

    .line 1155
    :cond_6
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v6, 0x2

    aget v6, v4, v6

    if-lt v5, v6, :cond_7

    const/4 v0, 0x2

    goto :goto_1

    .line 1156
    :cond_7
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v6, 0x1

    aget v6, v4, v6

    if-lt v5, v6, :cond_8

    const/4 v0, 0x1

    goto :goto_1

    .line 1157
    :cond_8
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v6, 0x0

    aget v6, v4, v6

    if-lt v5, v6, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 1166
    :cond_9
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0x82

    if-lt v5, v6, :cond_a

    const/4 v3, 0x4

    goto :goto_2

    .line 1167
    :cond_a
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0x2d

    if-lt v5, v6, :cond_b

    const/4 v3, 0x3

    goto :goto_2

    .line 1168
    :cond_b
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0xa

    if-lt v5, v6, :cond_c

    const/4 v3, 0x2

    goto :goto_2

    .line 1169
    :cond_c
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, -0x1e

    if-lt v5, v6, :cond_d

    const/4 v3, 0x1

    goto :goto_2

    .line 1170
    :cond_d
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, -0xc8

    if-lt v5, v6, :cond_1

    .line 1171
    const/4 v3, 0x0

    goto :goto_2

    :cond_e
    move v0, v3

    .line 1183
    goto :goto_3

    .line 1186
    :cond_f
    if-eq v3, v7, :cond_10

    move v0, v3

    goto :goto_3

    .line 1188
    :cond_10
    if-ne v0, v7, :cond_2

    .line 1191
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v6, 0x3f

    if-le v5, v6, :cond_12

    const/4 v2, 0x0

    :cond_11
    :goto_4
    move v0, v2

    .line 1199
    goto :goto_3

    .line 1192
    :cond_12
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v6, 0xc

    if-lt v5, v6, :cond_13

    const/4 v2, 0x4

    goto :goto_4

    .line 1193
    :cond_13
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v6, 0x8

    if-lt v5, v6, :cond_14

    const/4 v2, 0x3

    goto :goto_4

    .line 1194
    :cond_14
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-lt v5, v8, :cond_15

    const/4 v2, 0x2

    goto :goto_4

    .line 1195
    :cond_15
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v5, :cond_11

    const/4 v2, 0x1

    goto :goto_4
.end method

.method public getLteRsrp()I
    .locals 1

    .prologue
    .line 760
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteRsrq()I
    .locals 1

    .prologue
    .line 765
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return v0
.end method

.method public getLteRssnr()I
    .locals 1

    .prologue
    .line 770
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return v0
.end method

.method public getLteSignalStrength()I
    .locals 1

    .prologue
    .line 755
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    return v0
.end method

.method public getTDRscp()I
    .locals 1

    .prologue
    .line 780
    iget v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1242
    const/16 v0, 0x1f

    .line 1243
    .local v0, "primeNum":I
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->calculateHtcAddedFieldsHashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initialize(IIIIIIIIIIIIIIIIIIZ)V
    .locals 7
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmSignalDbm"    # I
    .param p14, "gsmEcno"    # I
    .param p15, "evdoSignalBar"    # I
    .param p16, "htcLteRsrp"    # I
    .param p17, "htcLteRsrq"    # I
    .param p18, "tdRscp"    # I
    .param p19, "gsm"    # Z

    .prologue
    .line 415
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 416
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 417
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 418
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 419
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 420
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 421
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 422
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 423
    move/from16 v0, p9

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 424
    move/from16 v0, p10

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 425
    move/from16 v0, p11

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 426
    move/from16 v0, p12

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 427
    move/from16 v0, p18

    iput v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    .line 428
    move/from16 v0, p19

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    move-object v1, p0

    move/from16 v2, p13

    move/from16 v3, p14

    move/from16 v4, p15

    move/from16 v5, p16

    move/from16 v6, p17

    .line 433
    invoke-direct/range {v1 .. v6}, Landroid/telephony/SignalStrength;->initHtcAddFields(IIIII)V

    .line 434
    iput p2, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    .line 438
    return-void
.end method

.method public initialize(IIIIIIIIIIIIIIIIIZ)V
    .locals 20
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmSignalDbm"    # I
    .param p14, "gsmEcno"    # I
    .param p15, "evdoSignalBar"    # I
    .param p16, "htcLteRsrp"    # I
    .param p17, "htcLteRsrq"    # I
    .param p18, "gsm"    # Z

    .prologue
    .line 395
    const v18, 0x7fffffff

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v19, p18

    invoke-virtual/range {v0 .. v19}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIIIIIIIZ)V

    .line 403
    return-void
.end method

.method public initialize(IIIIIIIIIIIIIIIZ)V
    .locals 19
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmSignalDbm"    # I
    .param p14, "gsmEcno"    # I
    .param p15, "evdoSignalBar"    # I
    .param p16, "gsm"    # Z

    .prologue
    .line 378
    const v16, 0x7fffffff

    const v17, 0x7fffffff

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v18, p16

    invoke-virtual/range {v0 .. v18}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIIIIIIZ)V

    .line 385
    return-void
.end method

.method public initialize(IIIIIIIIIIIIZ)V
    .locals 17
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsm"    # Z

    .prologue
    .line 342
    const v13, 0x7fffffff

    const v14, 0x7fffffff

    const v15, 0x7fffffff

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v16, p13

    invoke-virtual/range {v0 .. v16}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIIIIZ)V

    .line 348
    return-void
.end method

.method public initialize(IIIIIIIZ)V
    .locals 14
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsm"    # Z

    .prologue
    .line 312
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 315
    return-void
.end method

.method public isGsm()Z
    .locals 1

    .prologue
    .line 1234
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return v0
.end method

.method public isInvalidLteSignalStrength()Z
    .locals 3

    .prologue
    const v2, 0x7fffffff

    .line 843
    const/16 v0, 0x63

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v2, v0, :cond_1

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v2, v0, :cond_1

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v2, v0, :cond_1

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-eq v2, v0, :cond_0

    const/4 v0, -0x1

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v0, v1, :cond_1

    .line 848
    :cond_0
    const/4 v0, 0x1

    .line 850
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInvalidTDSignalStrength()Z
    .locals 2

    .prologue
    .line 856
    iget v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 858
    :cond_0
    const/4 v0, 0x1

    .line 860
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setDefaultValues(IIIIIIIIIIIIIIIZ)V
    .locals 7
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmSignalDbm"    # I
    .param p14, "gsmEcno"    # I
    .param p15, "evdoSignalBar"    # I
    .param p16, "gsm"    # Z

    .prologue
    .line 686
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 687
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 688
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 689
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 690
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 691
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 692
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 693
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 694
    move/from16 v0, p9

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 695
    move/from16 v0, p10

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 696
    move/from16 v0, p11

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 697
    move/from16 v0, p12

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 698
    move/from16 v0, p16

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 699
    const v5, 0x7fffffff

    const v6, 0x7fffffff

    move-object v1, p0

    move/from16 v2, p13

    move/from16 v3, p14

    move/from16 v4, p15

    invoke-direct/range {v1 .. v6}, Landroid/telephony/SignalStrength;->initHtcAddFields(IIIII)V

    .line 700
    return-void
.end method

.method public setEvdoSignalBar(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 1544
    iput p1, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    .line 1545
    return-void
.end method

.method public setGsm(Z)V
    .locals 0
    .param p1, "gsmFlag"    # Z

    .prologue
    .line 675
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 676
    return-void
.end method

.method public setHtcLteRsrp(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 1525
    iput p1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    .line 1526
    return-void
.end method

.method public setHtcLteRsrq(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 1529
    iput p1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    .line 1530
    return-void
.end method

.method public setLteRsrq(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 1515
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1516
    return-void
.end method

.method public setLteRssnr(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 1519
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1520
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const-string v0, "gsm|lte"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cdma"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getHtcAddedFieldsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public validateInput()V
    .locals 6

    .prologue
    const/16 v5, 0x14

    const/4 v4, 0x3

    const/16 v1, -0x78

    const v3, 0x7fffffff

    const/4 v2, -0x1

    .line 579
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ltz v0, :cond_3

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    :goto_0
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 582
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-lez v0, :cond_4

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    neg-int v0, v0

    :goto_1
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 583
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-lez v0, :cond_5

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    neg-int v0, v0

    :goto_2
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 585
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    neg-int v1, v0

    :cond_0
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 586
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ltz v0, :cond_6

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    neg-int v0, v0

    :goto_3
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 587
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-lez v0, :cond_7

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_7

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    :goto_4
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 590
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v0, :cond_8

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    :goto_5
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 591
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x2c

    if-lt v0, v1, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x8c

    if-gt v0, v1, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    :goto_6
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 592
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-lt v0, v4, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-gt v0, v5, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    neg-int v0, v0

    :goto_7
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 593
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, -0xc8

    if-lt v0, v1, :cond_b

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_b

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    :goto_8
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 596
    iget v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    if-ltz v0, :cond_c

    iget v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    if-eq v0, v3, :cond_c

    iget v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    :goto_9
    iput v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    .line 599
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ltz v0, :cond_d

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    :goto_a
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 600
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    if-ltz v0, :cond_e

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    :goto_b
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    .line 601
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    if-ltz v0, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    :cond_1
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    .line 602
    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    const/16 v1, 0x2c

    if-lt v0, v1, :cond_f

    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    const/16 v1, 0x8c

    if-gt v0, v1, :cond_f

    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    :goto_c
    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    .line 603
    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    if-lt v0, v4, :cond_2

    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    if-gt v0, v5, :cond_2

    iget v3, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    :cond_2
    iput v3, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    .line 607
    return-void

    .line 579
    :cond_3
    const/16 v0, 0x63

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 582
    goto/16 :goto_1

    .line 583
    :cond_5
    const/16 v0, -0xa0

    goto/16 :goto_2

    :cond_6
    move v0, v2

    .line 586
    goto/16 :goto_3

    :cond_7
    move v0, v2

    .line 587
    goto/16 :goto_4

    .line 590
    :cond_8
    const/16 v0, 0x63

    goto/16 :goto_5

    :cond_9
    move v0, v3

    .line 591
    goto :goto_6

    :cond_a
    move v0, v3

    .line 592
    goto :goto_7

    :cond_b
    move v0, v3

    .line 593
    goto :goto_8

    :cond_c
    move v0, v2

    .line 596
    goto :goto_9

    :cond_d
    move v0, v2

    .line 599
    goto :goto_a

    :cond_e
    move v0, v2

    .line 600
    goto :goto_b

    :cond_f
    move v0, v3

    .line 602
    goto :goto_c
.end method

.method public validateInputForCDMA()V
    .locals 1

    .prologue
    .line 647
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->validateInput()V

    .line 650
    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->FEATURE_CT_CUSTOMIZATION:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSeparateSingnalBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 655
    :cond_0
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    .line 663
    :goto_0
    return-void

    .line 659
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 526
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 528
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 529
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 534
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 535
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 536
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 538
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 539
    iget v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 540
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->writeHtcAddedFieldsInto(Landroid/os/Parcel;)V

    .line 541
    return-void

    .line 538
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
