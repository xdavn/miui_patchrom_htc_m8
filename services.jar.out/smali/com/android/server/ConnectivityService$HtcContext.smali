.class Lcom/android/server/ConnectivityService$HtcContext;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HtcContext"
.end annotation


# static fields
.field private static final DEBUG_SIGNATURE:Z = false

.field private static final DELAY_WHEN_SIGNATURE_MISMATCH_MS:J = 0x1388L

.field private static final sprintKey1:Ljava/lang/String; = "30820310308201f8a003020102021076c3b7bb6661ab632dc762ef1951f660300d06092a864886f70d01010505003036310b3009060355040613025553310f300d060355040a1306537072696e74311630140603550403130d537072696e7420417070204341301e170d3034303133303030303030305a170d3134303132393233353935395a3071310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310c300a060355040b1303505247311e301c06035504031315537072696e7420566973696f6e20526f6f7420434130819f300d06092a864886f70d010101050003818d0030818902818100f445b429c160c91022a93c1cf3a8e3ec2221251fc478b849252332e90ea484e1356cd327f7c6d3ad317495db01ad805f30de4cdb7ebfa01bdbf9ba4a168a433f5f4032ddf415d17bba0303063367667ec82388320e26406230be071b04c7bf902b74d0d28d318499418a207bb913c8efb2bf251c7f4b6acf152b3fbfebb822150203010001a363306130090603551d130402300030130603551d25040c300a06082b06010505070303300b0603551d0f040403020780301106096086480186f8420101040403020410301f0603551d23041830168014cb7a191aff9b7e74c5e75393c09470c7de0debe6300d06092a864886f70d01010505000382010100102d6d198d6b38a822571ad1ddb29c2e971308f8e81183933d9a1e9b44d3564006d66fb8477350cec63e1393645c6d488f41fc17f4f1849c4e549ba2a4297cc68b3b7af4d799ac9e5b86f4bdfb4e46f13e1eaa1779577c7f0e3609ff972a66866b19b3107ac022c69b9b9be13c7cec56e02c1fce16fdb10377c2db7d62ae0e11084186649ecd55bdba943f34dfb0d11255896bdc93bc867617b97b63022b7a9d745b5fec1ff7c97a5811807ab850984a3a8c6b4c8e7330de1401262495e1e492e65390d67f102ee91bc1b0c2300f4a0fd4d149aadfda1d285b8435bd78ebc79136e0fce06fa9c1752162cd017016fedeecd8484bcce0b34dc26bf4acf64c26af"

.field private static final sprintKey2:Ljava/lang/String; = "3082036c30820254a00302010202044d23332e300d06092a864886f70d01010505003078310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310b3009060355040b13024345312630240603550403131d537072696e7420416e64726f69642050726f64756374696f6e204b6579301e170d3131303130343134343831345a170d3338303532323134343831345a3078310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310b3009060355040b13024345312630240603550403131d537072696e7420416e64726f69642050726f64756374696f6e204b657930820122300d06092a864886f70d01010105000382010f003082010a0282010100b3cca5f477ea6e744a61b7c19706d7976da388ea4b8598c4fbc5c31cc95abb3a7b949d5b10692d397f3d980eb7c5e305b2eac5329d485c76a2df1b530d3cffa5f4c436735449bd676eabc403e2981edfe883b296dbf89bdd655e2b8a065d68189db9763681aee66e1c0bed05defc4dbc9d749a04a4206b89cc9d6765ab726d3301fdffe21285fcffe8ba2c3069048e3435c8b73b0aeb79433e3dd5d19e35f3c618dc95103b89a562f4952543cf1221797fa3cbb224184e17fcb95c5c7474db377f106918cf84bbecb2da57c3bb2e01d4d4939dcf7e3c01288a9d3909606f99b040a62a920112a21b23602f1473966d3d3379018a2e0088e0209587ea06e084dd0203010001300d06092a864886f70d01010505000382010100766f3c7d3e9db4364856693f6acb07af7269d0524d5b6bb6072e78fd0873a102f427de9affa72d3b297c997d601d9678f6d670beaf0425653527ec327dc4817082b9afaa1ce10d3f979b5d950efe1ef5eeeecc06c0aebab6e941cc25983a6be2c724c7e2b2bbe52de9ffd10e0cb4b99f83c1680c5a5927e3752d9d5b7f30c53a93f83b17c708cb338550dc2d64b6f58f2594f6af3bef770dd4d2551818dbd8cbe6b853b9e8b611d2766dcadf57e2b2c42aa3bb7c914461686df500c0a9cc01ab3df1bc997a1c8608df7a3e335cf628682f8015ca274d10476b3b3eaa34c224301d6a92a85624a4c56473a54e56a7ae395edb012472c1b07bc84202da98433238"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callingWithPlatformOrSprintSignature(Landroid/content/Context;I)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 5686
    const/16 v4, 0x3e8

    if-eq p1, v4, :cond_0

    const/16 v4, 0x3e9

    if-ne p1, v4, :cond_1

    .line 5699
    :cond_0
    :goto_0
    return v3

    .line 5689
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 5690
    .local v0, "mPm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x3

    new-array v1, v4, [Landroid/content/pm/Signature;

    .line 5691
    .local v1, "matching":[Landroid/content/pm/Signature;
    invoke-static {v0}, Lcom/android/server/ConnectivityService$HtcContext;->getPlatformSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;

    move-result-object v4

    aput-object v4, v1, v5

    .line 5693
    invoke-static {}, Lcom/android/server/ConnectivityService$HtcContext;->getSprintSignature()[Landroid/content/pm/Signature;

    move-result-object v2

    .line 5694
    .local v2, "spcsSignature":[Landroid/content/pm/Signature;
    if-eqz v2, :cond_2

    .line 5695
    aget-object v4, v2, v5

    aput-object v4, v1, v3

    .line 5696
    const/4 v4, 0x2

    aget-object v5, v2, v3

    aput-object v5, v1, v4

    .line 5699
    :cond_2
    invoke-static {v0, p1, v1, v3}, Lcom/android/server/ConnectivityService$HtcContext;->checkCallingSignature(Landroid/content/pm/PackageManager;I[Landroid/content/pm/Signature;Z)Z

    move-result v3

    goto :goto_0
.end method

.method public static callingWithPlatformSignature(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .prologue
    const/4 v1, 0x1

    .line 5677
    const/16 v2, 0x3e8

    if-eq p1, v2, :cond_0

    const/16 v2, 0x3e9

    if-ne p1, v2, :cond_1

    .line 5681
    :cond_0
    :goto_0
    return v1

    .line 5680
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 5681
    .local v0, "mPm":Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/android/server/ConnectivityService$HtcContext;->getPlatformSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;

    move-result-object v2

    invoke-static {v0, p1, v2, v1}, Lcom/android/server/ConnectivityService$HtcContext;->checkCallingSignature(Landroid/content/pm/PackageManager;ILandroid/content/pm/Signature;Z)Z

    move-result v1

    goto :goto_0
.end method

.method private static checkCallingSignature(Landroid/content/pm/PackageManager;ILandroid/content/pm/Signature;Z)Z
    .locals 8
    .param p0, "mPm"    # Landroid/content/pm/PackageManager;
    .param p1, "callingUid"    # I
    .param p2, "matching"    # Landroid/content/pm/Signature;
    .param p3, "delayWhenNotMatch"    # Z

    .prologue
    const/4 v5, 0x1

    .line 5596
    if-nez p2, :cond_1

    .line 5615
    :cond_0
    :goto_0
    return v5

    .line 5599
    :cond_1
    invoke-static {p0, p1}, Lcom/android/server/ConnectivityService$HtcContext;->getUidSignatures(Landroid/content/pm/PackageManager;I)[Landroid/content/pm/Signature;

    move-result-object v1

    .line 5600
    .local v1, "callingSignatures":[Landroid/content/pm/Signature;
    if-eqz v1, :cond_2

    .line 5601
    move-object v0, v1

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 5602
    .local v4, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v4, p2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 5601
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5610
    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "sig":Landroid/content/pm/Signature;
    :cond_2
    if-eqz p3, :cond_3

    .line 5612
    const-wide/16 v6, 0x1388

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5615
    :cond_3
    :goto_2
    const/4 v5, 0x0

    goto :goto_0

    .line 5613
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method private static checkCallingSignature(Landroid/content/pm/PackageManager;I[Landroid/content/pm/Signature;Z)Z
    .locals 12
    .param p0, "mPm"    # Landroid/content/pm/PackageManager;
    .param p1, "callingUid"    # I
    .param p2, "matching"    # [Landroid/content/pm/Signature;
    .param p3, "delayWhenNotMatch"    # Z

    .prologue
    const/4 v9, 0x1

    .line 5620
    if-eqz p2, :cond_0

    array-length v10, p2

    if-nez v10, :cond_1

    .line 5641
    :cond_0
    :goto_0
    return v9

    .line 5623
    :cond_1
    invoke-static {p0, p1}, Lcom/android/server/ConnectivityService$HtcContext;->getUidSignatures(Landroid/content/pm/PackageManager;I)[Landroid/content/pm/Signature;

    move-result-object v2

    .line 5624
    .local v2, "callingSignatures":[Landroid/content/pm/Signature;
    if-eqz v2, :cond_4

    .line 5625
    move-object v0, v2

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v8, v0, v4

    .line 5626
    .local v8, "sig":Landroid/content/pm/Signature;
    move-object v1, p2

    .local v1, "arr$":[Landroid/content/pm/Signature;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_2
    if-ge v3, v6, :cond_3

    aget-object v7, v1, v3

    .line 5627
    .local v7, "matchSig":Landroid/content/pm/Signature;
    if-eqz v7, :cond_2

    invoke-virtual {v8, v7}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 5626
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 5625
    .end local v7    # "matchSig":Landroid/content/pm/Signature;
    :cond_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_1

    .line 5636
    .end local v1    # "arr$":[Landroid/content/pm/Signature;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .end local v8    # "sig":Landroid/content/pm/Signature;
    :cond_4
    if-eqz p3, :cond_5

    .line 5638
    const-wide/16 v10, 0x1388

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5641
    :cond_5
    :goto_3
    const/4 v9, 0x0

    goto :goto_0

    .line 5639
    :catch_0
    move-exception v9

    goto :goto_3
.end method

.method private static getPlatformSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;
    .locals 2
    .param p0, "mPm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 5646
    const/16 v1, 0x3e9

    invoke-static {p0, v1}, Lcom/android/server/ConnectivityService$HtcContext;->getUidSignatures(Landroid/content/pm/PackageManager;I)[Landroid/content/pm/Signature;

    move-result-object v0

    .line 5647
    .local v0, "phoneSignatures":[Landroid/content/pm/Signature;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 5648
    :cond_0
    const/4 v1, 0x0

    .line 5651
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method private static getSprintSignature()[Landroid/content/pm/Signature;
    .locals 4

    .prologue
    .line 5656
    # getter for: Lcom/android/server/ConnectivityService;->specialSignatureMatchReq:Z
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$5100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5657
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/content/pm/Signature;

    .line 5658
    .local v0, "sprintSignatures":[Landroid/content/pm/Signature;
    const/4 v1, 0x0

    new-instance v2, Landroid/content/pm/Signature;

    const-string v3, "30820310308201f8a003020102021076c3b7bb6661ab632dc762ef1951f660300d06092a864886f70d01010505003036310b3009060355040613025553310f300d060355040a1306537072696e74311630140603550403130d537072696e7420417070204341301e170d3034303133303030303030305a170d3134303132393233353935395a3071310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310c300a060355040b1303505247311e301c06035504031315537072696e7420566973696f6e20526f6f7420434130819f300d06092a864886f70d010101050003818d0030818902818100f445b429c160c91022a93c1cf3a8e3ec2221251fc478b849252332e90ea484e1356cd327f7c6d3ad317495db01ad805f30de4cdb7ebfa01bdbf9ba4a168a433f5f4032ddf415d17bba0303063367667ec82388320e26406230be071b04c7bf902b74d0d28d318499418a207bb913c8efb2bf251c7f4b6acf152b3fbfebb822150203010001a363306130090603551d130402300030130603551d25040c300a06082b06010505070303300b0603551d0f040403020780301106096086480186f8420101040403020410301f0603551d23041830168014cb7a191aff9b7e74c5e75393c09470c7de0debe6300d06092a864886f70d01010505000382010100102d6d198d6b38a822571ad1ddb29c2e971308f8e81183933d9a1e9b44d3564006d66fb8477350cec63e1393645c6d488f41fc17f4f1849c4e549ba2a4297cc68b3b7af4d799ac9e5b86f4bdfb4e46f13e1eaa1779577c7f0e3609ff972a66866b19b3107ac022c69b9b9be13c7cec56e02c1fce16fdb10377c2db7d62ae0e11084186649ecd55bdba943f34dfb0d11255896bdc93bc867617b97b63022b7a9d745b5fec1ff7c97a5811807ab850984a3a8c6b4c8e7330de1401262495e1e492e65390d67f102ee91bc1b0c2300f4a0fd4d149aadfda1d285b8435bd78ebc79136e0fce06fa9c1752162cd017016fedeecd8484bcce0b34dc26bf4acf64c26af"

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 5659
    const/4 v1, 0x1

    new-instance v2, Landroid/content/pm/Signature;

    const-string v3, "3082036c30820254a00302010202044d23332e300d06092a864886f70d01010505003078310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310b3009060355040b13024345312630240603550403131d537072696e7420416e64726f69642050726f64756374696f6e204b6579301e170d3131303130343134343831345a170d3338303532323134343831345a3078310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310b3009060355040b13024345312630240603550403131d537072696e7420416e64726f69642050726f64756374696f6e204b657930820122300d06092a864886f70d01010105000382010f003082010a0282010100b3cca5f477ea6e744a61b7c19706d7976da388ea4b8598c4fbc5c31cc95abb3a7b949d5b10692d397f3d980eb7c5e305b2eac5329d485c76a2df1b530d3cffa5f4c436735449bd676eabc403e2981edfe883b296dbf89bdd655e2b8a065d68189db9763681aee66e1c0bed05defc4dbc9d749a04a4206b89cc9d6765ab726d3301fdffe21285fcffe8ba2c3069048e3435c8b73b0aeb79433e3dd5d19e35f3c618dc95103b89a562f4952543cf1221797fa3cbb224184e17fcb95c5c7474db377f106918cf84bbecb2da57c3bb2e01d4d4939dcf7e3c01288a9d3909606f99b040a62a920112a21b23602f1473966d3d3379018a2e0088e0209587ea06e084dd0203010001300d06092a864886f70d01010505000382010100766f3c7d3e9db4364856693f6acb07af7269d0524d5b6bb6072e78fd0873a102f427de9affa72d3b297c997d601d9678f6d670beaf0425653527ec327dc4817082b9afaa1ce10d3f979b5d950efe1ef5eeeecc06c0aebab6e941cc25983a6be2c724c7e2b2bbe52de9ffd10e0cb4b99f83c1680c5a5927e3752d9d5b7f30c53a93f83b17c708cb338550dc2d64b6f58f2594f6af3bef770dd4d2551818dbd8cbe6b853b9e8b611d2766dcadf57e2b2c42aa3bb7c914461686df500c0a9cc01ab3df1bc997a1c8608df7a3e335cf628682f8015ca274d10476b3b3eaa34c224301d6a92a85624a4c56473a54e56a7ae395edb012472c1b07bc84202da98433238"

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 5663
    :goto_0
    return-object v0

    .end local v0    # "sprintSignatures":[Landroid/content/pm/Signature;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getUidSignatures(Landroid/content/pm/PackageManager;I)[Landroid/content/pm/Signature;
    .locals 4
    .param p0, "mPm"    # Landroid/content/pm/PackageManager;
    .param p1, "uid"    # I

    .prologue
    .line 5567
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 5568
    .local v0, "packages":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 5577
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/16 v3, 0x40

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 5579
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 5584
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5591
    .end local v0    # "packages":[Ljava/lang/String;
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 5590
    :catch_0
    move-exception v2

    .line 5591
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
