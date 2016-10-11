.class public Landroid/content/pm/NonHTCAPList;
.super Ljava/lang/Object;
.source "NonHTCAPList.java"


# static fields
.field private static final GMSPackages:[Ljava/lang/String;

.field private static final GOOGLE_PREFIX:Ljava/lang/String; = "com.google"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.vending"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.vending.updater"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.setupwizard"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.android.facelock"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.android.providers.partnerbookmarks"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.android.chrome"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.browser.provider"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.phasebeamorange"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.facebook.katana"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.qo.android.sp.oem"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.quickoffice.android"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.hp.android.printservice"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "jp.co.omronsoft.iwnnime.ml"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "jp.co.omronsoft.iwnnime.ml.kbd.white"

    aput-object v2, v0, v1

    sput-object v0, Landroid/content/pm/NonHTCAPList;->GMSPackages:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNonHTCAP(Ljava/lang/String;)Z
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 33
    if-nez p0, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v4

    .line 36
    :cond_1
    const-string v6, "com.google"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v4, v5

    .line 37
    goto :goto_0

    .line 39
    :cond_2
    sget-object v0, Landroid/content/pm/NonHTCAPList;->GMSPackages:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 40
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v5

    .line 41
    goto :goto_0

    .line 39
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
