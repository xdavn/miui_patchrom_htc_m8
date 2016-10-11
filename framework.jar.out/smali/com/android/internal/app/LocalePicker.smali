.class public Lcom/android/internal/app/LocalePicker;
.super Landroid/app/ListFragment;
.source "LocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocalePicker$LocaleInfo;,
        Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final ENG_LANG:Ljava/lang/String;

.field private static final ENG_MMR_UNICODE:Ljava/lang/String; = "enu_MM"

.field private static final ENG_MMR_ZAWGYI:Ljava/lang/String; = "enz_MM"

.field private static final TAG:Ljava/lang/String; = "LocalePicker"

.field private static final VOICE_DATA_INTEGRITY_CHECK:I = 0x7b9

.field private static mCtx:Landroid/view/ContextThemeWrapper;

.field private static mEnableMMR:Z

.field private static mIsCheckingVoiceData:Z

.field private static final mMMRSkus:[I

.field private static final mSkuId:I

.field private static mTalkbackSupportLocales:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSenseVersion:Z


# instance fields
.field mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 105
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/internal/app/LocalePicker;->ENG_LANG:Ljava/lang/String;

    .line 112
    const/4 v5, 0x7

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    sput-object v5, Lcom/android/internal/app/LocalePicker;->mMMRSkus:[I

    .line 113
    sput-boolean v7, Lcom/android/internal/app/LocalePicker;->mEnableMMR:Z

    .line 120
    const-string v5, "sense_version"

    invoke-static {v5, v9}, Lcom/htc/customization/HtcCustomizationSystemReaderImpl;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, "sense":Ljava/lang/String;
    if-eqz v4, :cond_1

    move v5, v6

    :goto_0
    sput-boolean v5, Lcom/android/internal/app/LocalePicker;->sSenseVersion:Z

    .line 123
    const-string v5, "sku_id"

    invoke-static {v5, v7}, Lcom/htc/customization/HtcCustomizationSystemReaderImpl;->readInteger(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/android/internal/app/LocalePicker;->mSkuId:I

    .line 125
    sget-object v0, Lcom/android/internal/app/LocalePicker;->mMMRSkus:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_0

    aget v2, v0, v1

    .line 126
    .local v2, "id":I
    sget v5, Lcom/android/internal/app/LocalePicker;->mSkuId:I

    if-ne v5, v2, :cond_2

    .line 127
    sput-boolean v6, Lcom/android/internal/app/LocalePicker;->mEnableMMR:Z

    .line 131
    .end local v2    # "id":I
    :cond_0
    sget-boolean v5, Lcom/android/internal/app/LocalePicker;->mEnableMMR:Z

    if-eqz v5, :cond_3

    sget-boolean v5, Lcom/android/internal/app/LocalePicker;->sSenseVersion:Z

    if-eqz v5, :cond_3

    :goto_2
    sput-boolean v6, Lcom/android/internal/app/LocalePicker;->mEnableMMR:Z

    .line 133
    const-string v5, "LocalePicker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sku_id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v8, Lcom/android/internal/app/LocalePicker;->mSkuId:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", enableMMR="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v8, Lcom/android/internal/app/LocalePicker;->mEnableMMR:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", sense="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", senseVersion="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v8, Lcom/android/internal/app/LocalePicker;->sSenseVersion:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    sput-object v9, Lcom/android/internal/app/LocalePicker;->mTalkbackSupportLocales:Ljava/util/ArrayList;

    .line 500
    sput-boolean v7, Lcom/android/internal/app/LocalePicker;->mIsCheckingVoiceData:Z

    return-void

    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    move v5, v7

    .line 121
    goto :goto_0

    .line 125
    .restart local v0    # "arr$":[I
    .restart local v1    # "i$":I
    .restart local v2    # "id":I
    .restart local v3    # "len$":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2    # "id":I
    :cond_3
    move v6, v7

    .line 131
    goto :goto_2

    .line 112
    :array_0
    .array-data 4
        0x4
        0x21
        0x23
        0x46
        0x49
        0x7d
        0x88
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 74
    return-void
.end method

.method private static checkAccessibilityOn(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 512
    const-string v1, "accessibility"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 513
    .local v0, "acManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkNeedShowWarning(Ljava/util/Locale;)Z
    .locals 4
    .param p1, "loc"    # Ljava/util/Locale;

    .prologue
    .line 466
    const/4 v0, 0x0

    .line 467
    .local v0, "needShowWarning":Z
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 469
    .local v1, "sysLoc":Ljava/util/Locale;
    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    .line 470
    invoke-virtual {p1}, Ljava/util/Locale;->isZawgyi()Z

    move-result v2

    invoke-virtual {v1}, Ljava/util/Locale;->isZawgyi()Z

    move-result v3

    xor-int v0, v2, v3

    .line 473
    :cond_0
    return v0
.end method

.method private checkVoiceData()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 517
    new-instance v2, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    .line 518
    .local v2, "tts":Landroid/speech/tts/TextToSpeech;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 519
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    sput-object v4, Lcom/android/internal/app/LocalePicker;->mTalkbackSupportLocales:Ljava/util/ArrayList;

    .line 522
    const/16 v3, 0x7b9

    :try_start_0
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/app/LocalePicker;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    :goto_0
    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 527
    return-void

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v3, "LocalePicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to check TTS data, no activity found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    sget-boolean v0, Lcom/android/internal/app/LocalePicker;->sSenseVersion:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/internal/app/LocalePicker;->getMaterialLightTheme(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;

    move-result-object p0

    .line 314
    :cond_0
    const v0, 0x1090078

    const v1, 0x10201cd

    invoke-static {p0, v0, v1}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "layoutId"    # I
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 320
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v8, 0x1

    .line 322
    .local v8, "isInDeveloperMode":Z
    :cond_0
    invoke-static {p0, v8}, Lcom/android/internal/app/LocalePicker;->getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v4

    .line 324
    .local v4, "localeInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 326
    .local v5, "inflater":Landroid/view/LayoutInflater;
    new-instance v0, Lcom/android/internal/app/LocalePicker$1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/LocalePicker$1;-><init>(Landroid/content/Context;IILjava/util/List;Landroid/view/LayoutInflater;II)V

    return-object v0
.end method

.method private dp2px(F)I
    .locals 3
    .param p1, "dp"    # F

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 567
    .local v0, "density":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isInDeveloperMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 142
    .local v8, "resources":Landroid/content/res/Resources;
    sget-boolean v11, Lcom/android/internal/app/LocalePicker;->sSenseVersion:Z

    if-nez v11, :cond_2

    .line 143
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v6

    .line 144
    .local v6, "locales":[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    array-length v11, v6

    invoke-direct {v5, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    .local v5, "localeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v5, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 164
    .end local v6    # "locales":[Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_0

    .line 165
    const-string v11, "ar-XB"

    invoke-interface {v5, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 166
    const-string v11, "en-XA"

    invoke-interface {v5, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 169
    :cond_0
    sget-boolean v11, Lcom/android/internal/app/LocalePicker;->sSenseVersion:Z

    if-nez v11, :cond_1

    .line 170
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 172
    :cond_1
    const v11, 0x1070008

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 173
    .local v9, "specialLocaleCodes":[Ljava/lang/String;
    const v11, 0x1070009

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 175
    .local v10, "specialLocaleNames":[Ljava/lang/String;
    sget-boolean v11, Lcom/android/internal/app/LocalePicker;->sSenseVersion:Z

    if-eqz v11, :cond_5

    .line 176
    invoke-static {v5, v9, v10}, Lcom/android/internal/app/LocalePicker;->getSenseVersionLocales(Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 223
    :goto_1
    return-object v4

    .line 149
    .end local v5    # "localeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "specialLocaleCodes":[Ljava/lang/String;
    .end local v10    # "specialLocaleNames":[Ljava/lang/String;
    :cond_2
    const-string v11, "ro.bootmode"

    const-string v12, "unknown"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "factory"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 150
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v5    # "localeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 153
    .end local v5    # "localeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-static {p0}, Lcom/android/internal/app/LocalePicker;->checkAccessibilityOn(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_4

    sget-boolean v11, Lcom/android/internal/app/LocalePicker;->mIsCheckingVoiceData:Z

    if-nez v11, :cond_4

    sget-object v11, Lcom/android/internal/app/LocalePicker;->mTalkbackSupportLocales:Ljava/util/ArrayList;

    if-eqz v11, :cond_4

    .line 154
    sget-object v5, Lcom/android/internal/app/LocalePicker;->mTalkbackSupportLocales:Ljava/util/ArrayList;

    .restart local v5    # "localeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 157
    .end local v5    # "localeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/android/internal/app/customize/storage/customize/HtcCustomizedLocale;->getLocalList(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v5    # "localeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 179
    .restart local v9    # "specialLocaleCodes":[Ljava/lang/String;
    .restart local v10    # "specialLocaleNames":[Ljava/lang/String;
    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v4, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 180
    .local v4, "localeInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 181
    .local v3, "locale":Ljava/lang/String;
    const/16 v11, 0x5f

    const/16 v12, 0x2d

    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    .line 182
    .local v2, "l":Ljava/util/Locale;
    if-eqz v2, :cond_6

    const-string v11, "und"

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    .line 187
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 191
    new-instance v11, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v2, v2}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v2}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 197
    :cond_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 198
    .local v7, "previous":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    iget-object v11, v7, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, v7, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    const-string v12, "zz"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 204
    iget-object v11, v7, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-static {v11, v9, v10}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    .line 210
    new-instance v11, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-static {v2, v9, v10}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v2}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 213
    :cond_8
    invoke-virtual {v2, v2}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "displayName":Ljava/lang/String;
    new-instance v11, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-direct {v11, v0, v2}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 222
    .end local v0    # "displayName":Ljava/lang/String;
    .end local v2    # "l":Ljava/util/Locale;
    .end local v3    # "locale":Ljava/lang/String;
    .end local v7    # "previous":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_9
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto/16 :goto_1
.end method

.method private static getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "l"    # Ljava/util/Locale;
    .param p1, "specialLocaleCodes"    # [Ljava/lang/String;
    .param p2, "specialLocaleNames"    # [Ljava/lang/String;

    .prologue
    .line 375
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, "code":Ljava/lang/String;
    sget-boolean v2, Lcom/android/internal/app/LocalePicker;->sSenseVersion:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/internal/app/LocalePicker;->mEnableMMR:Z

    if-eqz v2, :cond_0

    const-string v2, "^en[-_]MM$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 379
    invoke-virtual {p0}, Ljava/util/Locale;->isZawgyi()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "enz_MM"

    .line 383
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 384
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 385
    aget-object v2, p2, v1

    .line 389
    :goto_2
    return-object v2

    .line 379
    .end local v1    # "i":I
    :cond_1
    const-string v0, "enu_MM"

    goto :goto_0

    .line 383
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 389
    :cond_3
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method private static getMaterialLightTheme(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 559
    sget-object v1, Lcom/android/internal/app/LocalePicker;->mCtx:Landroid/view/ContextThemeWrapper;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/app/LocalePicker;->mCtx:Landroid/view/ContextThemeWrapper;

    .line 562
    .end local p0    # "context":Landroid/content/Context;
    :goto_0
    return-object v1

    .line 560
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 561
    .local v0, "appContext":Landroid/content/Context;
    new-instance v1, Landroid/view/ContextThemeWrapper;

    if-nez v0, :cond_1

    .end local p0    # "context":Landroid/content/Context;
    :goto_1
    const v2, 0x1030237

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    sput-object v1, Lcom/android/internal/app/LocalePicker;->mCtx:Landroid/view/ContextThemeWrapper;

    .line 562
    sget-object v1, Lcom/android/internal/app/LocalePicker;->mCtx:Landroid/view/ContextThemeWrapper;

    goto :goto_0

    .restart local p0    # "context":Landroid/content/Context;
    :cond_1
    move-object p0, v0

    .line 561
    goto :goto_1
.end method

.method private static getSenseVersionLocales(Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 18
    .param p1, "specialLocaleCodes"    # [Ljava/lang/String;
    .param p2, "specialLocaleNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "localeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v12, v0, [Ljava/lang/String;

    .line 229
    .local v12, "locales":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "locales":[Ljava/lang/String;
    check-cast v12, [Ljava/lang/String;

    .line 231
    .restart local v12    # "locales":[Ljava/lang/String;
    array-length v13, v12

    .line 232
    .local v13, "origSize":I
    new-array v14, v13, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 233
    .local v14, "preprocess":[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    const/4 v5, 0x0

    .line 235
    .local v5, "finalSize":I
    const/4 v7, 0x0

    .local v7, "i":I
    move v6, v5

    .end local v5    # "finalSize":I
    .local v6, "finalSize":I
    :goto_0
    if-ge v7, v13, :cond_6

    .line 236
    aget-object v15, v12, v7

    .line 237
    .local v15, "s":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v10

    .line 238
    .local v10, "len":I
    const/16 v16, 0x5

    move/from16 v0, v16

    if-eq v10, v0, :cond_0

    const/16 v16, 0x6

    move/from16 v0, v16

    if-ne v10, v0, :cond_8

    .line 241
    :cond_0
    const/16 v16, 0x5

    move/from16 v0, v16

    if-ne v10, v0, :cond_1

    .line 242
    const/16 v16, 0x0

    const/16 v17, 0x2

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 243
    .local v9, "language":Ljava/lang/String;
    const/16 v16, 0x3

    const/16 v17, 0x5

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, "country":Ljava/lang/String;
    :goto_1
    new-instance v8, Ljava/util/Locale;

    invoke-direct {v8, v9, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .local v8, "l":Ljava/util/Locale;
    if-nez v6, :cond_2

    .line 254
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "finalSize":I
    .restart local v5    # "finalSize":I
    new-instance v16, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v8, v8}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v8}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v16, v14, v6

    .line 235
    .end local v3    # "country":Ljava/lang/String;
    .end local v8    # "l":Ljava/util/Locale;
    .end local v9    # "language":Ljava/lang/String;
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move v6, v5

    .end local v5    # "finalSize":I
    .restart local v6    # "finalSize":I
    goto :goto_0

    .line 245
    :cond_1
    const/16 v16, 0x0

    const/16 v17, 0x3

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 246
    .restart local v9    # "language":Ljava/lang/String;
    const/16 v16, 0x4

    const/16 v17, 0x6

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "country":Ljava/lang/String;
    goto :goto_1

    .line 261
    .restart local v8    # "l":Ljava/util/Locale;
    :cond_2
    add-int/lit8 v16, v6, -0x1

    aget-object v16, v14, v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v8}, Lcom/android/internal/app/LocalePicker;->theSameWithPrevLang(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v16

    if-eqz v16, :cond_3

    add-int/lit8 v16, v6, -0x1

    aget-object v16, v14, v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v16

    const-string v17, "zz"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 269
    add-int/lit8 v16, v6, -0x1

    aget-object v16, v14, v16

    add-int/lit8 v17, v6, -0x1

    aget-object v17, v14, v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    .line 276
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "finalSize":I
    .restart local v5    # "finalSize":I
    new-instance v16, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v8, v0, v1}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v8}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v16, v14, v6

    goto :goto_2

    .line 282
    .end local v5    # "finalSize":I
    .restart local v6    # "finalSize":I
    :cond_3
    const-string v16, "zz_ZZ"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 283
    const-string v4, "[Developer] Accented English"

    .line 292
    .local v4, "displayName":Ljava/lang/String;
    :goto_3
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "finalSize":I
    .restart local v5    # "finalSize":I
    new-instance v16, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v8}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v16, v14, v6

    goto/16 :goto_2

    .line 284
    .end local v4    # "displayName":Ljava/lang/String;
    .end local v5    # "finalSize":I
    .restart local v6    # "finalSize":I
    :cond_4
    const-string v16, "zz_ZY"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 285
    const-string v4, "[Developer] Fake Bi-Directional"

    .restart local v4    # "displayName":Ljava/lang/String;
    goto :goto_3

    .line 287
    .end local v4    # "displayName":Ljava/lang/String;
    :cond_5
    invoke-virtual {v8, v8}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "displayName":Ljava/lang/String;
    goto :goto_3

    .line 298
    .end local v3    # "country":Ljava/lang/String;
    .end local v4    # "displayName":Ljava/lang/String;
    .end local v8    # "l":Ljava/util/Locale;
    .end local v9    # "language":Ljava/lang/String;
    .end local v10    # "len":I
    .end local v15    # "s":Ljava/lang/String;
    :cond_6
    new-array v11, v6, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 299
    .local v11, "localeInfos":[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v6, :cond_7

    .line 300
    aget-object v16, v14, v7

    aput-object v16, v11, v7

    .line 299
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 303
    :cond_7
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    return-object v16

    .end local v11    # "localeInfos":[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .restart local v10    # "len":I
    .restart local v15    # "s":Ljava/lang/String;
    :cond_8
    move v5, v6

    .end local v6    # "finalSize":I
    .restart local v5    # "finalSize":I
    goto/16 :goto_2
.end method

.method private static theSameWithPrevLang(Ljava/util/Locale;Ljava/util/Locale;)Z
    .locals 7
    .param p0, "prevLoc"    # Ljava/util/Locale;
    .param p1, "currLoc"    # Ljava/util/Locale;

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 358
    if-nez p0, :cond_2

    move-object v1, v0

    .line 359
    .local v1, "prevLang":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_3

    .line 361
    .local v0, "currLang":Ljava/lang/String;
    :goto_1
    if-eqz p0, :cond_0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    if-nez v0, :cond_4

    :cond_0
    move v3, v4

    .line 369
    :cond_1
    :goto_2
    return v3

    .line 358
    .end local v0    # "currLang":Ljava/lang/String;
    .end local v1    # "prevLang":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 359
    .restart local v1    # "prevLang":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 364
    .restart local v0    # "currLang":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Ljava/util/Locale;->isZawgyi()Z

    move-result v5

    invoke-virtual {p1}, Ljava/util/Locale;->isZawgyi()Z

    move-result v6

    if-ne v5, v6, :cond_7

    move v2, v3

    .line 366
    .local v2, "sameZawgyi":Z
    :goto_3
    sget-object v5, Lcom/android/internal/app/LocalePicker;->ENG_LANG:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 369
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v2, :cond_1

    :cond_6
    move v3, v4

    goto :goto_2

    .end local v2    # "sameZawgyi":Z
    :cond_7
    move v2, v4

    .line 364
    goto :goto_3
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 349
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 353
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static updateLocale(Ljava/util/Locale;)V
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 483
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 484
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 486
    .local v1, "config":Landroid/content/res/Configuration;
    invoke-virtual {v1, p0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 487
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 489
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 491
    const-string v2, "com.android.providers.settings"

    invoke-static {v2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "config":Landroid/content/res/Configuration;
    :goto_0
    return-void

    .line 492
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v4, 0x41700000    # 15.0f

    const/4 v3, 0x0

    .line 394
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 396
    sget-boolean v0, Lcom/android/internal/app/LocalePicker;->mIsCheckingVoiceData:Z

    if-nez v0, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v6

    .line 398
    .local v6, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-virtual {p0, v6}, Lcom/android/internal/app/LocalePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 403
    .end local v6    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/LocalePicker;->getMaterialLightTheme(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;

    move-result-object v7

    .line 404
    .local v7, "myCtx":Landroid/content/Context;
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {v7, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 405
    .local v9, "ta":Landroid/content/res/TypedArray;
    if-eqz v9, :cond_2

    .line 406
    invoke-virtual {v9, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 407
    .local v1, "divider":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 408
    .local v8, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 409
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v10

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-direct {p0, v4}, Lcom/android/internal/app/LocalePicker;->dp2px(F)I

    move-result v2

    invoke-direct {p0, v4}, Lcom/android/internal/app/LocalePicker;->dp2px(F)I

    move-result v4

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v10, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 410
    :cond_1
    if-eqz v8, :cond_2

    .line 411
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 414
    .end local v1    # "divider":Landroid/graphics/drawable/Drawable;
    .end local v8    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_2
    return-void

    .line 404
    nop

    :array_0
    .array-data 4
        0x1010214
        0x10102f0
    .end array-data
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 531
    const/16 v6, 0x7b9

    if-ne p1, v6, :cond_2

    .line 532
    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    .line 533
    const-string v6, "availableVoices"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 534
    .local v1, "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    .line 535
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v6, Lcom/android/internal/app/LocalePicker;->mTalkbackSupportLocales:Ljava/util/ArrayList;

    .line 536
    new-instance v5, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    .line 537
    .local v5, "ttsEngine":Landroid/speech/tts/TtsEngines;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 538
    .local v4, "localeString":Ljava/lang/String;
    invoke-virtual {v5, v4}, Landroid/speech/tts/TtsEngines;->parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    .line 539
    .local v3, "loc":Ljava/util/Locale;
    if-eqz v3, :cond_0

    sget-object v6, Lcom/android/internal/app/LocalePicker;->mTalkbackSupportLocales:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 541
    .end local v3    # "loc":Ljava/util/Locale;
    .end local v4    # "localeString":Ljava/lang/String;
    :cond_1
    sget-object v6, Lcom/android/internal/app/LocalePicker;->mTalkbackSupportLocales:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 549
    .end local v1    # "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "ttsEngine":Landroid/speech/tts/TtsEngines;
    :goto_1
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/internal/app/LocalePicker;->mIsCheckingVoiceData:Z

    .line 550
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 551
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    const/4 v6, 0x0

    sput-object v6, Lcom/android/internal/app/LocalePicker;->mTalkbackSupportLocales:Ljava/util/ArrayList;

    .line 552
    invoke-virtual {p0, v0}, Lcom/android/internal/app/LocalePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 554
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    :cond_2
    return-void

    .line 543
    .restart local v1    # "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const-string v6, "LocalePicker"

    const-string v7, "returned data by TTSEngine is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 546
    .end local v1    # "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const-string v6, "LocalePicker"

    const-string v7, "CheckVoiceData activity failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 503
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 505
    sget-boolean v0, Lcom/android/internal/app/LocalePicker;->sSenseVersion:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/internal/app/LocalePicker;->mSkuId:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/LocalePicker;->checkAccessibilityOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/app/LocalePicker;->mIsCheckingVoiceData:Z

    .line 507
    invoke-direct {p0}, Lcom/android/internal/app/LocalePicker;->checkVoiceData()V

    .line 509
    :cond_0
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 434
    iget-object v2, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    if-eqz v2, :cond_0

    .line 435
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    iget-object v1, v2, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    .line 437
    .local v1, "locale":Ljava/util/Locale;
    sget-boolean v2, Lcom/android/internal/app/LocalePicker;->sSenseVersion:Z

    if-nez v2, :cond_1

    .line 438
    iget-object v2, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    invoke-interface {v2, v1}, Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;->onLocaleSelected(Ljava/util/Locale;)V

    .line 462
    .end local v1    # "locale":Ljava/util/Locale;
    :cond_0
    :goto_0
    return-void

    .line 440
    .restart local v1    # "locale":Ljava/util/Locale;
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/internal/app/LocalePicker;->checkNeedShowWarning(Ljava/util/Locale;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 441
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 442
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x10700d5

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 443
    const v2, 0x10700d6

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 444
    const v2, 0x1040013

    new-instance v3, Lcom/android/internal/app/LocalePicker$2;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/app/LocalePicker$2;-><init>(Lcom/android/internal/app/LocalePicker;Ljava/util/Locale;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 450
    const v2, 0x1040009

    new-instance v3, Lcom/android/internal/app/LocalePicker$3;

    invoke-direct {v3, p0}, Lcom/android/internal/app/LocalePicker$3;-><init>(Lcom/android/internal/app/LocalePicker;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 455
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 457
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    invoke-interface {v2, v1}, Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;->onLocaleSelected(Ljava/util/Locale;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 422
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 423
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 424
    return-void
.end method

.method public setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    .line 418
    return-void
.end method
