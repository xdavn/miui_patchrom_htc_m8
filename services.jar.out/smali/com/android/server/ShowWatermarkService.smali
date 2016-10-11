.class public Lcom/android/server/ShowWatermarkService;
.super Landroid/app/Service;
.source "ShowWatermarkService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ShowWatermarkService$LoadView;
    }
.end annotation


# static fields
.field private static final DATALENGTH:I = 0xf

.field private static final IMEILENGTH:I = 0xf

.field private static final INFOLENGTH:I = 0xe

.field private static final KEYFILE:Ljava/lang/String; = "wmk.key"

.field private static final KEYVERKEY:Ljava/lang/String; = "key ver."

.field private static final KEYVERNUM:Ljava/lang/String; = "1 "

.field private static final MAGICCODE:Ljava/lang/String; = "htcUNITED"

.field private static final MEIDLENGTH:I = 0xe

.field private static final MSG_COLLECT_INFO:I = 0x1

.field private static final MSG_INIT:I = 0x2

.field private static final PUBLICKEY:Ljava/lang/String; = "30820120300d06092a864886f70d01010105000382010d00308201080282010100a0c54745024225572290e1b4169f6bc67a73ac17d926c1f519c94a88211b4056da248ef480fb10948471896da7c1105b5290fa0c0df339908a1e7ccd1f1213726a9a5f2b0a7f31e0756a2aa3660ff57ede8799267479e622ba8a245898c62a1c0b8ac972534fd83f108af429a5d9a52107c98bf7d7f0b9cfc89c9317a25e756ae9388aa0981a937e33fe694a2b27c8e736d85125104bc38f4579f725f2618e7ec7b066ba1bbb8ff5620251663d72d0f2cd55e7382b133026897a8a9908cdd7404d06de98bf8c9af6a8c4ec5773c5c9a87e515f1ec3adafefe79bf965ba02777724cc12b25bbf5d4bd8fa7027f8db3d766bd75777ef68e40720706141bad42f43020103"

.field private static final RETRY_TIMEOUT_MAX:I = 0x3c

.field private static final RETRY_TIMEOUT_MIN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "watermark"

.field private static final TYPE_IMEI:B = 0x45t

.field private static final TYPE_INFO:B = 0x6et

.field private static final TYPE_MEID:B = 0x64t

.field private static final TYPE_VERS:B = 0x20t

.field private static final VERSION:Ljava/lang/String; = "2.8"

.field private static final ZIPFILE:Ljava/lang/String; = "wmkey.zip"

.field private static final ZIPPATH:[Ljava/lang/String;


# instance fields
.field private final ERROR_CODE_INVALID_IMEI:I

.field private final ERROR_CODE_INVALID_KEYFILE:I

.field private final ERROR_CODE_INVALID_KEYVER:I

.field private final ERROR_CODE_INVALID_MEID:I

.field private final ERROR_CODE_INVALID_SIGNATURE:I

.field private final ERROR_CODE_NO_CERTIFICATE:I

.field private final ERROR_CODE_NO_IMEI:I

.field private final ERROR_CODE_NO_KEYFILE:I

.field private final ERROR_CODE_VERIFY_FAIL:I

.field private mAccountChangeListener:Landroid/accounts/OnAccountsUpdateListener;

.field private final mDebug:Z

.field private final mDebugSkipBuildFlag:Z

.field private final mDebugSkipCertificate:Z

.field private mErrCode:I

.field private mHandler:Landroid/os/Handler;

.field private mImei:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyBytes:[B

.field private mMeid:Ljava/lang/String;

.field private mMessages:[Ljava/lang/String;

.field private mMonitorAccount:Z

.field private mRetry:I

.field private mRetryTimeoutCount:I

.field private mView:Landroid/view/View;

.field private final slotId_0:I

.field private final slotId_1:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 780
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/data/local/tmp/"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/data/"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/ShowWatermarkService;->ZIPPATH:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 93
    const-string v0, "persist.debug.watermark"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/ShowWatermarkService;->mDebug:Z

    .line 94
    iput-boolean v2, p0, Lcom/android/server/ShowWatermarkService;->mDebugSkipCertificate:Z

    .line 95
    iput-boolean v2, p0, Lcom/android/server/ShowWatermarkService;->mDebugSkipBuildFlag:Z

    .line 99
    iput-boolean v2, p0, Lcom/android/server/ShowWatermarkService;->mMonitorAccount:Z

    .line 103
    iput v2, p0, Lcom/android/server/ShowWatermarkService;->slotId_0:I

    .line 105
    iput v1, p0, Lcom/android/server/ShowWatermarkService;->slotId_1:I

    .line 107
    iput v2, p0, Lcom/android/server/ShowWatermarkService;->mErrCode:I

    .line 109
    iput v1, p0, Lcom/android/server/ShowWatermarkService;->ERROR_CODE_NO_KEYFILE:I

    .line 110
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/ShowWatermarkService;->ERROR_CODE_NO_CERTIFICATE:I

    .line 111
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/ShowWatermarkService;->ERROR_CODE_INVALID_SIGNATURE:I

    .line 112
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/ShowWatermarkService;->ERROR_CODE_INVALID_IMEI:I

    .line 113
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/server/ShowWatermarkService;->ERROR_CODE_NO_IMEI:I

    .line 114
    const/16 v0, 0x20

    iput v0, p0, Lcom/android/server/ShowWatermarkService;->ERROR_CODE_INVALID_MEID:I

    .line 115
    const/16 v0, 0x40

    iput v0, p0, Lcom/android/server/ShowWatermarkService;->ERROR_CODE_VERIFY_FAIL:I

    .line 116
    const/16 v0, 0x80

    iput v0, p0, Lcom/android/server/ShowWatermarkService;->ERROR_CODE_INVALID_KEYVER:I

    .line 117
    const/16 v0, 0x100

    iput v0, p0, Lcom/android/server/ShowWatermarkService;->ERROR_CODE_INVALID_KEYFILE:I

    .line 314
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/ShowWatermarkService;->mRetryTimeoutCount:I

    .line 315
    iput v2, p0, Lcom/android/server/ShowWatermarkService;->mRetry:I

    .line 317
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ShowWatermarkService;->mImei:Ljava/util/List;

    .line 318
    iput-object v4, p0, Lcom/android/server/ShowWatermarkService;->mMeid:Ljava/lang/String;

    .line 320
    new-instance v0, Lcom/android/server/ShowWatermarkService$1;

    invoke-direct {v0, p0}, Lcom/android/server/ShowWatermarkService$1;-><init>(Lcom/android/server/ShowWatermarkService;)V

    iput-object v0, p0, Lcom/android/server/ShowWatermarkService;->mHandler:Landroid/os/Handler;

    .line 549
    new-instance v0, Lcom/android/server/ShowWatermarkService$2;

    invoke-direct {v0, p0}, Lcom/android/server/ShowWatermarkService$2;-><init>(Lcom/android/server/ShowWatermarkService;)V

    iput-object v0, p0, Lcom/android/server/ShowWatermarkService;->mAccountChangeListener:Landroid/accounts/OnAccountsUpdateListener;

    .line 786
    iput-object v4, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    return-void

    :cond_0
    move v0, v2

    .line 93
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/ShowWatermarkService;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ShowWatermarkService;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/ShowWatermarkService;->mMessages:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/ShowWatermarkService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ShowWatermarkService;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/ShowWatermarkService;->mImei:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/ShowWatermarkService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ShowWatermarkService;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/server/ShowWatermarkService;->mMonitorAccount:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/ShowWatermarkService;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ShowWatermarkService;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/server/ShowWatermarkService;->mImei:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/ShowWatermarkService;)Landroid/accounts/OnAccountsUpdateListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ShowWatermarkService;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/ShowWatermarkService;->mAccountChangeListener:Landroid/accounts/OnAccountsUpdateListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/ShowWatermarkService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ShowWatermarkService;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/ShowWatermarkService;->getAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/ShowWatermarkService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ShowWatermarkService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/ShowWatermarkService;->strimString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/ShowWatermarkService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ShowWatermarkService;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/ShowWatermarkService;->removeAccountListener()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/ShowWatermarkService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ShowWatermarkService;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/server/ShowWatermarkService;->mDebug:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/ShowWatermarkService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ShowWatermarkService;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/ShowWatermarkService;->mMeid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/ShowWatermarkService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ShowWatermarkService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/server/ShowWatermarkService;->mMeid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$408(Lcom/android/server/ShowWatermarkService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/ShowWatermarkService;

    .prologue
    .line 69
    iget v0, p0, Lcom/android/server/ShowWatermarkService;->mRetry:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/ShowWatermarkService;->mRetry:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/ShowWatermarkService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ShowWatermarkService;

    .prologue
    .line 69
    iget v0, p0, Lcom/android/server/ShowWatermarkService;->mRetryTimeoutCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/ShowWatermarkService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ShowWatermarkService;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/ShowWatermarkService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/ShowWatermarkService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ShowWatermarkService;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/ShowWatermarkService;->isCertificated()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/ShowWatermarkService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ShowWatermarkService;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/ShowWatermarkService;->getWatermarkWords()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/ShowWatermarkService;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ShowWatermarkService;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/ShowWatermarkService;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/ShowWatermarkService;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ShowWatermarkService;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/server/ShowWatermarkService;->mView:Landroid/view/View;

    return-object p1
.end method

.method private bytesToHexString([B)Ljava/lang/String;
    .locals 5
    .param p1, "b"    # [B

    .prologue
    .line 790
    const-string v1, ""

    .line 792
    .local v1, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 794
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 792
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 797
    :cond_0
    return-object v1
.end method

.method private decodeKey([BII)[B
    .locals 10
    .param p1, "key"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 805
    move v6, p2

    .line 807
    .local v6, "rlen":I
    add-int/lit8 v2, p2, 0x1e

    .local v2, "idx":I
    :goto_0
    if-gt v2, p3, :cond_5

    .line 809
    add-int/lit8 v3, v2, -0xf

    .line 811
    .local v3, "ie":I
    aget-byte v8, p1, v3

    sparse-switch v8, :sswitch_data_0

    .line 824
    :goto_1
    add-int/lit8 v4, v2, -0x1e

    .local v4, "ir":I
    :goto_2
    if-ge v3, v2, :cond_3

    .line 826
    aget-byte v8, p1, v3

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_0

    .line 828
    aget-byte v8, p1, v3

    and-int/lit8 v8, v8, 0x7f

    int-to-byte v8, v8

    aput-byte v8, p1, v3

    .line 824
    :goto_3
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 814
    .end local v4    # "ir":I
    :sswitch_0
    add-int/lit8 v3, v3, 0xf

    .line 815
    goto :goto_1

    .line 817
    :sswitch_1
    add-int/lit8 v3, v3, 0x1

    .line 818
    goto :goto_1

    .line 820
    :sswitch_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 832
    .restart local v4    # "ir":I
    :cond_0
    const-string v8, "htcUNITED"

    aget-byte v9, p1, v3

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 834
    .local v0, "c":I
    const/4 v8, -0x1

    if-ne v0, v8, :cond_2

    .line 836
    aget-byte v8, p1, v3

    const/16 v9, 0x5a

    if-ne v8, v9, :cond_1

    .line 838
    aget-byte v8, p1, v4

    aput-byte v8, p1, v3

    goto :goto_3

    .line 842
    :cond_1
    aget-byte v8, p1, v3

    aget-byte v9, p1, v4

    add-int/lit8 v9, v9, -0x30

    add-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, p1, v3

    goto :goto_3

    .line 847
    :cond_2
    aget-byte v8, p1, v4

    sub-int/2addr v8, v0

    add-int/lit8 v0, v8, -0x1

    .line 849
    int-to-byte v8, v0

    aput-byte v8, p1, v3

    goto :goto_3

    .line 853
    .end local v0    # "c":I
    :cond_3
    add-int/lit8 v3, v2, -0xf

    move v7, v6

    .end local v6    # "rlen":I
    .local v7, "rlen":I
    :goto_4
    if-ge v3, v2, :cond_4

    .line 855
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "rlen":I
    .restart local v6    # "rlen":I
    aget-byte v8, p1, v3

    aput-byte v8, p1, v7

    .line 853
    add-int/lit8 v3, v3, 0x1

    move v7, v6

    .end local v6    # "rlen":I
    .restart local v7    # "rlen":I
    goto :goto_4

    .line 807
    :cond_4
    add-int/lit8 v2, v2, 0x1e

    move v6, v7

    .end local v7    # "rlen":I
    .restart local v6    # "rlen":I
    goto :goto_0

    .line 859
    .end local v3    # "ie":I
    .end local v4    # "ir":I
    :cond_5
    sub-int v8, v6, p2

    new-array v5, v8, [B

    .line 861
    .local v5, "ret":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    sub-int v8, v6, p2

    if-ge v1, v8, :cond_6

    .line 862
    add-int v8, p2, v1

    aget-byte v8, p1, v8

    aput-byte v8, v5, v1

    .line 861
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 864
    :cond_6
    return-object v5

    .line 811
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x64 -> :sswitch_2
        0x6e -> :sswitch_1
    .end sparse-switch
.end method

.method private getAccount()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 632
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 634
    .local v1, "accountMgr":Landroid/accounts/AccountManager;
    const-string v6, "NoAccount"

    .line 636
    .local v6, "nullAccount":Ljava/lang/String;
    iput-boolean v8, p0, Lcom/android/server/ShowWatermarkService;->mMonitorAccount:Z

    .line 638
    if-nez v1, :cond_0

    .line 673
    .end local v6    # "nullAccount":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 642
    .restart local v6    # "nullAccount":Ljava/lang/String;
    :cond_0
    const-string v7, "com.htc.android.mail.eas"

    invoke-virtual {v1, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 644
    .local v2, "accounts":[Landroid/accounts/Account;
    if-eqz v2, :cond_1

    array-length v7, v2

    if-lez v7, :cond_1

    .line 645
    aget-object v7, v2, v8

    iget-object v6, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    .line 648
    :cond_1
    const-string v7, "com.google"

    invoke-virtual {v1, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 650
    if-eqz v2, :cond_2

    array-length v7, v2

    if-lez v7, :cond_2

    .line 651
    aget-object v7, v2, v8

    iget-object v6, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    .line 654
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 656
    if-eqz v2, :cond_5

    array-length v7, v2

    if-lez v7, :cond_5

    .line 658
    move-object v3, v2

    .local v3, "arr$":[Landroid/accounts/Account;
    array-length v5, v3

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_5

    aget-object v0, v3, v4

    .line 660
    .local v0, "ac":Landroid/accounts/Account;
    const-string v7, "com.htc.showme"

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "com.htc.sync.provider.weather"

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "com.htc.android.Stock"

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "com.htc.stock"

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "com.htc.newsreader"

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 658
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 667
    :cond_4
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    .line 671
    .end local v0    # "ac":Landroid/accounts/Account;
    .end local v3    # "arr$":[Landroid/accounts/Account;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_5
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/ShowWatermarkService;->mMonitorAccount:Z

    goto :goto_0
.end method

.method private getDataType(B)B
    .locals 1
    .param p1, "type"    # B

    .prologue
    .line 981
    sparse-switch p1, :sswitch_data_0

    .line 990
    const/16 v0, 0x45

    :goto_0
    return v0

    .line 984
    :sswitch_0
    const/16 v0, 0x20

    goto :goto_0

    .line 986
    :sswitch_1
    const/16 v0, 0x6e

    goto :goto_0

    .line 988
    :sswitch_2
    const/16 v0, 0x64

    goto :goto_0

    .line 981
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x64 -> :sswitch_2
        0x6e -> :sswitch_1
    .end sparse-switch
.end method

.method private getWatermarkWords()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 565
    sget-object v5, Lcom/htc/htcjavaflag/HtcWatermarkWord;->Htc_WATERMARK_MSG:[Ljava/lang/String;

    array-length v1, v5

    .line 566
    .local v1, "mWordFromConf":I
    add-int/lit8 v2, v1, 0x1

    .line 569
    .local v2, "mWordLength":I
    add-int/lit8 v2, v2, 0x1

    .line 572
    iget v5, p0, Lcom/android/server/ShowWatermarkService;->mErrCode:I

    if-eqz v5, :cond_0

    .line 573
    add-int/lit8 v2, v2, 0x1

    .line 575
    :cond_0
    new-array v5, v2, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/ShowWatermarkService;->mMessages:[Ljava/lang/String;

    .line 576
    sget-object v5, Lcom/htc/htcjavaflag/HtcWatermarkWord;->Htc_WATERMARK_MSG:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/ShowWatermarkService;->mMessages:[Ljava/lang/String;

    invoke-static {v5, v7, v6, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 579
    iget-object v5, p0, Lcom/android/server/ShowWatermarkService;->mMessages:[Ljava/lang/String;

    const-string v6, "ro.serialno"

    const-string v7, "null"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 586
    const-string v5, "ro.un"

    const-string v6, "unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 587
    .local v4, "userName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 588
    iget-object v5, p0, Lcom/android/server/ShowWatermarkService;->mMessages:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 590
    const-string v5, "unknown"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 592
    iget-object v5, p0, Lcom/android/server/ShowWatermarkService;->mMessages:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/ShowWatermarkService;->getAccount()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/ShowWatermarkService;->strimString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 601
    :cond_1
    :goto_0
    iget v5, p0, Lcom/android/server/ShowWatermarkService;->mErrCode:I

    if-eqz v5, :cond_2

    .line 603
    add-int/lit8 v1, v1, 0x1

    .line 604
    iget-object v5, p0, Lcom/android/server/ShowWatermarkService;->mMessages:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_2

    .line 608
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Err = 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%04x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const v9, 0xffff

    iget v10, p0, Lcom/android/server/ShowWatermarkService;->mErrCode:I

    and-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 609
    .local v3, "mszErrorCode":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/ShowWatermarkService;->mMessages:[Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/ShowWatermarkService;->strimString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 610
    const-string v5, "watermark"

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    .end local v3    # "mszErrorCode":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 596
    :cond_3
    iget-object v5, p0, Lcom/android/server/ShowWatermarkService;->mMessages:[Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/ShowWatermarkService;->strimString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    goto :goto_0

    .line 612
    :catch_0
    move-exception v0

    .line 614
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "watermark"

    const-string v6, "Got exception while make error code "

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private isCertificated()Z
    .locals 2

    .prologue
    .line 1241
    iget-object v1, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1243
    .local v0, "verified":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1248
    invoke-direct {p0}, Lcom/android/server/ShowWatermarkService;->verifyVersion()Z

    move-result v0

    .line 1256
    :goto_1
    if-eqz v0, :cond_2

    .line 1261
    invoke-direct {p0}, Lcom/android/server/ShowWatermarkService;->verifyInfo()Z

    move-result v0

    .line 1268
    :goto_2
    return v0

    .line 1241
    .end local v0    # "verified":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1253
    .restart local v0    # "verified":Z
    :cond_1
    iget v1, p0, Lcom/android/server/ShowWatermarkService;->mErrCode:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/ShowWatermarkService;->mErrCode:I

    goto :goto_1

    .line 1265
    :cond_2
    iget v1, p0, Lcom/android/server/ShowWatermarkService;->mErrCode:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/android/server/ShowWatermarkService;->mErrCode:I

    goto :goto_2
.end method

.method private loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[Ljava/security/cert/Certificate;
    .locals 7
    .param p1, "jarFile"    # Ljava/util/jar/JarFile;
    .param p2, "je"    # Ljava/util/jar/JarEntry;

    .prologue
    .line 869
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    if-nez v4, :cond_1

    .line 871
    :cond_0
    const-string v4, "watermark"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid values! file="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", entry="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", buffer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :goto_0
    const/4 v4, 0x0

    :goto_1
    return-object v4

    .line 880
    :cond_1
    const/4 v2, 0x0

    .line 882
    .local v2, "idx":I
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 886
    .local v3, "is":Ljava/io/InputStream;
    :cond_2
    iget-object v4, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    iget-object v5, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    array-length v5, v5

    sub-int/2addr v5, v2

    invoke-virtual {v3, v4, v2, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 888
    .local v0, "count":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_3

    .line 897
    :goto_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 899
    iget-object v4, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v2}, Lcom/android/server/ShowWatermarkService;->decodeKey([BII)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    .line 901
    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v4

    goto :goto_1

    .line 891
    :cond_3
    add-int/2addr v2, v0

    .line 893
    iget-object v4, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    array-length v4, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v2, v4, :cond_2

    goto :goto_2

    .line 903
    .end local v0    # "count":I
    .end local v3    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 905
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "watermark"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private loadKeyFile()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1207
    iput-object v8, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    .line 1212
    sget-object v0, Lcom/android/server/ShowWatermarkService;->ZIPPATH:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1214
    .local v3, "p":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 1236
    .end local v3    # "p":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    :goto_1
    return v5

    .line 1217
    .restart local v3    # "p":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "wmkey.zip"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1219
    .local v4, "zipFile":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1221
    iget-boolean v5, p0, Lcom/android/server/ShowWatermarkService;->mDebug:Z

    if-eqz v5, :cond_2

    const-string v5, "watermark"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1225
    :cond_3
    const-string v5, "watermark"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    invoke-direct {p0, v4}, Lcom/android/server/ShowWatermarkService;->verifySignature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1228
    const/4 v5, 0x1

    goto :goto_1

    .line 1230
    :cond_4
    iput-object v8, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    goto :goto_2
.end method

.method private readCustomizeInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1148
    iget-object v3, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v1, v2

    .line 1162
    :goto_0
    return-object v1

    .line 1151
    :cond_1
    const/16 v0, 0xf

    .local v0, "idx":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    array-length v3, v3

    if-gt v0, v3, :cond_4

    .line 1153
    iget-object v3, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    add-int/lit8 v4, v0, -0xf

    aget-byte v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/server/ShowWatermarkService;->getDataType(B)B

    move-result v3

    const/16 v4, 0x6e

    if-eq v3, v4, :cond_3

    .line 1151
    :cond_2
    add-int/lit8 v0, v0, 0xf

    goto :goto_1

    .line 1156
    :cond_3
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    add-int/lit8 v4, v0, -0xe

    const/16 v5, 0xe

    invoke-direct {v1, v3, v4, v5}, Ljava/lang/String;-><init>([BII)V

    .line 1158
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .end local v1    # "s":Ljava/lang/String;
    :cond_4
    move-object v1, v2

    .line 1162
    goto :goto_0
.end method

.method private readCustomizeInfoTimeout(III)I
    .locals 6
    .param p1, "minValue"    # I
    .param p2, "maxValue"    # I
    .param p3, "defaultValue"    # I

    .prologue
    .line 1167
    const-string v3, "TIMEOUT="

    invoke-direct {p0, v3}, Lcom/android/server/ShowWatermarkService;->readCustomizeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1169
    .local v2, "timeout":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1171
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1173
    .local v1, "i":I
    if-gez v1, :cond_0

    .line 1175
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 1180
    :cond_0
    const/16 v3, 0x8

    :try_start_0
    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1182
    if-lt v1, p1, :cond_1

    if-le v1, p2, :cond_3

    .line 1184
    :cond_1
    const-string v3, "watermark"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "custom ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], invalid value=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], range ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "~"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "i":I
    :cond_2
    :goto_0
    move v1, p3

    .line 1199
    :goto_1
    return v1

    .line 1188
    .restart local v1    # "i":I
    :cond_3
    const-string v3, "watermark"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "custom ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], value=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1193
    :catch_0
    move-exception v0

    .line 1195
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "watermark"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "custom ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], error="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeAccountListener()V
    .locals 3

    .prologue
    .line 680
    :try_start_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ShowWatermarkService;->mAccountChangeListener:Landroid/accounts/OnAccountsUpdateListener;

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 690
    :goto_0
    return-void

    .line 682
    :catch_0
    move-exception v0

    .line 684
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "watermark"

    const-string v2, "remove account listener fail, listener is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 686
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 688
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "watermark"

    const-string v2, "remove account listener fail, listener is not added"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private strimString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 622
    const/16 v0, 0x14

    .line 624
    .local v0, "MAX_ACCOUNT_LEN":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 625
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 627
    .end local p1    # "s":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private verifyInfo()Z
    .locals 12

    .prologue
    const/16 v11, 0xf

    const/16 v10, 0xe

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1056
    iget-object v7, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    if-nez v7, :cond_0

    .line 1058
    iget v6, p0, Lcom/android/server/ShowWatermarkService;->mErrCode:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/android/server/ShowWatermarkService;->mErrCode:I

    .line 1143
    :goto_0
    return v5

    .line 1069
    :cond_0
    iget-object v7, p0, Lcom/android/server/ShowWatermarkService;->mImei:Ljava/util/List;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/server/ShowWatermarkService;->mImei:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_8

    .line 1071
    iget-object v7, p0, Lcom/android/server/ShowWatermarkService;->mImei:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1073
    .local v2, "imei":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v7, v11, :cond_3

    .line 1075
    :cond_2
    const-string v7, "watermark"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid imei=["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    iget v7, p0, Lcom/android/server/ShowWatermarkService;->mErrCode:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/android/server/ShowWatermarkService;->mErrCode:I

    goto :goto_1

    .line 1080
    :cond_3
    const/16 v1, 0xf

    .local v1, "idx":I
    :goto_2
    iget-object v7, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    array-length v7, v7

    if-gt v1, v7, :cond_1

    .line 1082
    iget-object v7, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    add-int/lit8 v8, v1, -0xf

    aget-byte v7, v7, v8

    invoke-direct {p0, v7}, Lcom/android/server/ShowWatermarkService;->getDataType(B)B

    move-result v7

    const/16 v8, 0x45

    if-eq v7, v8, :cond_5

    .line 1080
    :cond_4
    add-int/lit8 v1, v1, 0xf

    goto :goto_2

    .line 1085
    :cond_5
    new-instance v3, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    add-int/lit8 v8, v1, -0xf

    invoke-direct {v3, v7, v8, v11}, Ljava/lang/String;-><init>([BII)V

    .line 1087
    .local v3, "imei2":Ljava/lang/String;
    iget-boolean v7, p0, Lcom/android/server/ShowWatermarkService;->mDebug:Z

    if-eqz v7, :cond_6

    const-string v7, "watermark"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] -> ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_6
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1091
    iget-boolean v5, p0, Lcom/android/server/ShowWatermarkService;->mDebug:Z

    if-eqz v5, :cond_7

    const-string v5, "watermark"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  matched imei "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v5, v6

    .line 1092
    goto/16 :goto_0

    .line 1100
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "idx":I
    .end local v2    # "imei":Ljava/lang/String;
    .end local v3    # "imei2":Ljava/lang/String;
    :cond_8
    const-string v7, "watermark"

    const-string v8, "No get any imei from this device"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    iget-object v7, p0, Lcom/android/server/ShowWatermarkService;->mImei:Ljava/util/List;

    if-nez v7, :cond_d

    .line 1103
    iget-boolean v7, p0, Lcom/android/server/ShowWatermarkService;->mDebug:Z

    if-eqz v7, :cond_9

    const-string v7, "watermark"

    const-string v8, "mImei == null"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    :cond_9
    :goto_3
    iget v7, p0, Lcom/android/server/ShowWatermarkService;->mErrCode:I

    or-int/lit8 v7, v7, 0x10

    iput v7, p0, Lcom/android/server/ShowWatermarkService;->mErrCode:I

    .line 1118
    :cond_a
    iget-object v7, p0, Lcom/android/server/ShowWatermarkService;->mMeid:Ljava/lang/String;

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/server/ShowWatermarkService;->mMeid:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v7, v10, :cond_e

    .line 1120
    :cond_b
    const-string v6, "watermark"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid meid=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/ShowWatermarkService;->mMeid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    iget v6, p0, Lcom/android/server/ShowWatermarkService;->mErrCode:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/android/server/ShowWatermarkService;->mErrCode:I

    .line 1142
    :cond_c
    iget v6, p0, Lcom/android/server/ShowWatermarkService;->mErrCode:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, Lcom/android/server/ShowWatermarkService;->mErrCode:I

    goto/16 :goto_0

    .line 1107
    :cond_d
    iget-boolean v7, p0, Lcom/android/server/ShowWatermarkService;->mDebug:Z

    if-eqz v7, :cond_9

    const-string v7, "watermark"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mImei.size() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/ShowWatermarkService;->mImei:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1125
    :cond_e
    const/16 v1, 0xf

    .restart local v1    # "idx":I
    :goto_4
    iget-object v7, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    array-length v7, v7

    if-gt v1, v7, :cond_c

    .line 1127
    iget-object v7, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    add-int/lit8 v8, v1, -0xf

    aget-byte v7, v7, v8

    invoke-direct {p0, v7}, Lcom/android/server/ShowWatermarkService;->getDataType(B)B

    move-result v7

    const/16 v8, 0x64

    if-eq v7, v8, :cond_10

    .line 1125
    :cond_f
    add-int/lit8 v1, v1, 0xf

    goto :goto_4

    .line 1130
    :cond_10
    new-instance v4, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    add-int/lit8 v8, v1, -0xe

    invoke-direct {v4, v7, v8, v10}, Ljava/lang/String;-><init>([BII)V

    .line 1132
    .local v4, "meid2":Ljava/lang/String;
    iget-boolean v7, p0, Lcom/android/server/ShowWatermarkService;->mDebug:Z

    if-eqz v7, :cond_11

    const-string v7, "watermark"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/ShowWatermarkService;->mMeid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] -> ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    :cond_11
    iget-object v7, p0, Lcom/android/server/ShowWatermarkService;->mMeid:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1136
    iget-boolean v5, p0, Lcom/android/server/ShowWatermarkService;->mDebug:Z

    if-eqz v5, :cond_12

    const-string v5, "watermark"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  matched meid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/ShowWatermarkService;->mMeid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    move v5, v6

    .line 1137
    goto/16 :goto_0
.end method

.method private verifySignature(Ljava/lang/String;)Z
    .locals 12
    .param p1, "zipFile"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 913
    const/4 v2, 0x0

    .line 915
    .local v2, "certs":[Ljava/security/cert/Certificate;
    if-eqz p1, :cond_0

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 917
    :cond_0
    const-string v9, "watermark"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is not existed!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    :goto_0
    return v8

    .line 921
    :cond_1
    iget-object v9, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    if-nez v9, :cond_2

    .line 923
    const/16 v9, 0x2000

    new-array v9, v9, [B

    iput-object v9, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    .line 928
    :cond_2
    :try_start_0
    new-instance v6, Ljava/util/jar/JarFile;

    invoke-direct {v6, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 933
    .local v6, "jarFile":Ljava/util/jar/JarFile;
    const-string v9, "wmk.key"

    invoke-virtual {v6, v9}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v5

    .line 935
    .local v5, "jarEntry":Ljava/util/jar/JarEntry;
    if-nez v5, :cond_3

    .line 937
    const-string v9, "watermark"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "wmk.key is not found in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    invoke-virtual {v6}, Ljava/util/jar/JarFile;->close()V

    .line 939
    iget v9, p0, Lcom/android/server/ShowWatermarkService;->mErrCode:I

    or-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/server/ShowWatermarkService;->mErrCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 968
    .end local v5    # "jarEntry":Ljava/util/jar/JarEntry;
    .end local v6    # "jarFile":Ljava/util/jar/JarFile;
    :catch_0
    move-exception v3

    .line 970
    .local v3, "e":Ljava/lang/Exception;
    const-string v9, "watermark"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed to parse "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 971
    iget v9, p0, Lcom/android/server/ShowWatermarkService;->mErrCode:I

    or-int/lit16 v9, v9, 0x100

    iput v9, p0, Lcom/android/server/ShowWatermarkService;->mErrCode:I

    goto :goto_0

    .line 943
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v5    # "jarEntry":Ljava/util/jar/JarEntry;
    .restart local v6    # "jarFile":Ljava/util/jar/JarFile;
    :cond_3
    :try_start_1
    invoke-direct {p0, v6, v5}, Lcom/android/server/ShowWatermarkService;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[Ljava/security/cert/Certificate;

    move-result-object v2

    .line 945
    invoke-virtual {v6}, Ljava/util/jar/JarFile;->close()V

    .line 947
    if-eqz v2, :cond_4

    array-length v9, v2

    if-nez v9, :cond_5

    .line 949
    :cond_4
    const-string v9, "watermark"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "no certificates in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget v9, p0, Lcom/android/server/ShowWatermarkService;->mErrCode:I

    or-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/android/server/ShowWatermarkService;->mErrCode:I

    goto/16 :goto_0

    .line 954
    :cond_5
    const-string v10, "watermark"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ": entry="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " certs="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v2, :cond_6

    array-length v9, v2

    :goto_1
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    iget-boolean v9, p0, Lcom/android/server/ShowWatermarkService;->mDebug:Z

    if-eqz v9, :cond_7

    move-object v0, v2

    .local v0, "arr$":[Ljava/security/cert/Certificate;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v7, :cond_7

    aget-object v1, v0, v4

    .line 958
    .local v1, "cert":Ljava/security/cert/Certificate;
    const-string v9, "watermark"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  public key: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v11

    invoke-interface {v11}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v0    # "arr$":[Ljava/security/cert/Certificate;
    .end local v1    # "cert":Ljava/security/cert/Certificate;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    :cond_6
    move v9, v8

    .line 954
    goto :goto_1

    .line 961
    :cond_7
    const-string v9, "30820120300d06092a864886f70d01010105000382010d00308201080282010100a0c54745024225572290e1b4169f6bc67a73ac17d926c1f519c94a88211b4056da248ef480fb10948471896da7c1105b5290fa0c0df339908a1e7ccd1f1213726a9a5f2b0a7f31e0756a2aa3660ff57ede8799267479e622ba8a245898c62a1c0b8ac972534fd83f108af429a5d9a52107c98bf7d7f0b9cfc89c9317a25e756ae9388aa0981a937e33fe694a2b27c8e736d85125104bc38f4579f725f2618e7ec7b066ba1bbb8ff5620251663d72d0f2cd55e7382b133026897a8a9908cdd7404d06de98bf8c9af6a8c4ec5773c5c9a87e515f1ec3adafefe79bf965ba02777724cc12b25bbf5d4bd8fa7027f8db3d766bd75777ef68e40720706141bad42f43020103"

    const/4 v10, 0x0

    aget-object v10, v2, v10

    invoke-virtual {v10}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v10

    invoke-interface {v10}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/ShowWatermarkService;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 963
    const-string v9, "watermark"

    const-string v10, "invalid signature!"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget v9, p0, Lcom/android/server/ShowWatermarkService;->mErrCode:I

    or-int/lit8 v9, v9, 0x4

    iput v9, p0, Lcom/android/server/ShowWatermarkService;->mErrCode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 975
    :cond_8
    iget-boolean v8, p0, Lcom/android/server/ShowWatermarkService;->mDebug:Z

    if-eqz v8, :cond_9

    const-string v8, "watermark"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  data ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/lang/String;

    iget-object v11, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    :cond_9
    const/4 v8, 0x1

    goto/16 :goto_0
.end method

.method private verifyVersion()Z
    .locals 11

    .prologue
    const/16 v10, 0xe

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 995
    const/4 v2, 0x0

    .line 997
    .local v2, "version":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    if-nez v5, :cond_1

    .line 1051
    :cond_0
    :goto_0
    return v3

    .line 1006
    :cond_1
    const/16 v0, 0xf

    .local v0, "idx":I
    :goto_1
    iget-object v5, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    array-length v5, v5

    if-gt v0, v5, :cond_4

    .line 1008
    iget-object v5, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    add-int/lit8 v6, v0, -0xf

    aget-byte v5, v5, v6

    invoke-direct {p0, v5}, Lcom/android/server/ShowWatermarkService;->getDataType(B)B

    move-result v1

    .line 1010
    .local v1, "type":B
    const/16 v5, 0x20

    if-ne v1, v5, :cond_3

    .line 1012
    new-instance v2, Ljava/lang/String;

    .end local v2    # "version":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    add-int/lit8 v6, v0, -0xe

    invoke-direct {v2, v5, v6, v10}, Ljava/lang/String;-><init>([BII)V

    .line 1014
    .restart local v2    # "version":Ljava/lang/String;
    const-string v5, "watermark"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "key ver."

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0xf

    goto :goto_1

    .line 1016
    :cond_3
    const/16 v5, 0x6e

    if-ne v1, v5, :cond_2

    .line 1018
    const-string v5, "watermark"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    add-int/lit8 v9, v0, -0xe

    invoke-direct {v7, v8, v9, v10}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1022
    .end local v1    # "type":B
    :cond_4
    if-nez v2, :cond_5

    .line 1024
    const-string v5, "1 "

    const-string v6, "1 "

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 1029
    goto :goto_0

    .line 1034
    :cond_5
    const-string v5, "key ver.1 "

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1036
    const-string v4, "watermark"

    const-string v5, "invalid version!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1040
    :cond_6
    new-instance v5, Ljava/lang/String;

    const-string v6, "key ver.1 "

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1045
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_7

    const-string v5, "30820120300d06092a864886f70d01010105000382010d00308201080282010100a0c54745024225572290e1b4169f6bc67a73ac17d926c1f519c94a88211b4056da248ef480fb10948471896da7c1105b5290fa0c0df339908a1e7ccd1f1213726a9a5f2b0a7f31e0756a2aa3660ff57ede8799267479e622ba8a245898c62a1c0b8ac972534fd83f108af429a5d9a52107c98bf7d7f0b9cfc89c9317a25e756ae9388aa0981a937e33fe694a2b27c8e736d85125104bc38f4579f725f2618e7ec7b066ba1bbb8ff5620251663d72d0f2cd55e7382b133026897a8a9908cdd7404d06de98bf8c9af6a8c4ec5773c5c9a87e515f1ec3adafefe79bf965ba02777724cc12b25bbf5d4bd8fa7027f8db3d766bd75777ef68e40720706141bad42f43020103"

    const/16 v6, 0xf

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0xf

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 1047
    :cond_7
    const-string v4, "watermark"

    const-string v5, "invalid key!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    move v3, v4

    .line 1051
    goto/16 :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 749
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 527
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 530
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 695
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 697
    iget-object v0, p0, Lcom/android/server/ShowWatermarkService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 698
    iget-object v0, p0, Lcom/android/server/ShowWatermarkService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 700
    const-string v0, "watermark"

    const-string v1, "stop watermark service, reboot device"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-boolean v0, p0, Lcom/android/server/ShowWatermarkService;->mMonitorAccount:Z

    if-eqz v0, :cond_0

    .line 703
    invoke-direct {p0}, Lcom/android/server/ShowWatermarkService;->removeAccountListener()V

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/android/server/ShowWatermarkService;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 707
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/server/ShowWatermarkService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/ShowWatermarkService;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 709
    iput-object v2, p0, Lcom/android/server/ShowWatermarkService;->mView:Landroid/view/View;

    .line 742
    :cond_1
    invoke-static {v2, v3, v2}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 744
    return-void
.end method
