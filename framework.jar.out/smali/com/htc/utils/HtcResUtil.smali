.class public Lcom/htc/utils/HtcResUtil;
.super Ljava/lang/Object;
.source "HtcResUtil.java"


# static fields
.field private static final ALL_CAPS_LOCALE:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "HtcResUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "en"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "es"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "da"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "de"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "fi"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "fr"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "it"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "nl"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "nb"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pl"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "pt"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "sv"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/utils/HtcResUtil;->ALL_CAPS_LOCALE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInAllCapsLocale(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    if-eqz p0, :cond_6

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 68
    .local v6, "res":Landroid/content/res/Resources;
    if-eqz v6, :cond_5

    .line 69
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 70
    .local v1, "config":Landroid/content/res/Configuration;
    if-eqz v1, :cond_4

    .line 71
    iget-object v5, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 72
    .local v5, "locale":Ljava/util/Locale;
    if-eqz v5, :cond_3

    .line 73
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "language":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 75
    sget-object v0, Lcom/htc/utils/HtcResUtil;->ALL_CAPS_LOCALE:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v7, v0, v2

    .line 76
    .local v7, "tmp":Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 77
    const/4 v8, 0x1

    .line 96
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v2    # "i$":I
    .end local v3    # "language":Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "locale":Ljava/util/Locale;
    .end local v6    # "res":Landroid/content/res/Resources;
    .end local v7    # "tmp":Ljava/lang/String;
    :goto_1
    return v8

    .line 75
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "config":Landroid/content/res/Configuration;
    .restart local v2    # "i$":I
    .restart local v3    # "language":Ljava/lang/String;
    .restart local v4    # "len$":I
    .restart local v5    # "locale":Ljava/util/Locale;
    .restart local v6    # "res":Landroid/content/res/Resources;
    .restart local v7    # "tmp":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v7    # "tmp":Ljava/lang/String;
    :cond_1
    const-string v8, "HtcResUtil"

    const-string v9, "Fail to get language."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v3    # "language":Ljava/lang/String;
    .end local v5    # "locale":Ljava/util/Locale;
    .end local v6    # "res":Landroid/content/res/Resources;
    :cond_2
    :goto_2
    const/4 v8, 0x0

    goto :goto_1

    .line 84
    .restart local v1    # "config":Landroid/content/res/Configuration;
    .restart local v5    # "locale":Ljava/util/Locale;
    .restart local v6    # "res":Landroid/content/res/Resources;
    :cond_3
    const-string v8, "HtcResUtil"

    const-string v9, "Fail to get locale."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 87
    .end local v5    # "locale":Ljava/util/Locale;
    :cond_4
    const-string v8, "HtcResUtil"

    const-string v9, "Fail to get configuration."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 90
    .end local v1    # "config":Landroid/content/res/Configuration;
    :cond_5
    const-string v8, "HtcResUtil"

    const-string v9, "Fail to get res."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 93
    .end local v6    # "res":Landroid/content/res/Resources;
    :cond_6
    const-string v8, "HtcResUtil"

    const-string v9, "Context is null."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
