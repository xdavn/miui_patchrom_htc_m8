.class public Lcom/android/server/audio/htcsoundfx/dolby/DsEffect;
.super Ljava/lang/Object;
.source "DsEffect.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcDsEffect"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEffectExist()Z
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 21
    :try_start_0
    const-string v11, "android.dolby.ds.DsEffect"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 22
    .local v0, "DsEffectClass":Ljava/lang/Class;
    new-instance v2, Lcom/android/server/audio/htcutil/HtcField;

    const-string v11, "EFFECT_DS"

    invoke-direct {v2, v11}, Lcom/android/server/audio/htcutil/HtcField;-><init>(Ljava/lang/String;)V

    .line 23
    .local v2, "FIELD_EFFECT_DS":Lcom/android/server/audio/htcutil/HtcField;
    const/4 v11, 0x1

    new-array v8, v11, [Lcom/android/server/audio/htcutil/HtcField;

    const/4 v11, 0x0

    aput-object v2, v8, v11

    .line 24
    .local v8, "list":[Lcom/android/server/audio/htcutil/HtcField;
    invoke-static {v8, v0}, Lcom/android/server/audio/htcutil/HtcField;->initFields([Lcom/android/server/audio/htcutil/HtcField;Ljava/lang/Class;)V

    .line 26
    const/4 v11, 0x0

    invoke-static {v2, v11}, Lcom/android/server/audio/htcutil/HtcField;->getField(Lcom/android/server/audio/htcutil/HtcField;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v2    # "FIELD_EFFECT_DS":Lcom/android/server/audio/htcutil/HtcField;
    .end local v8    # "list":[Lcom/android/server/audio/htcutil/HtcField;
    .local v1, "EFFECT_DS":Ljava/util/UUID;
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v4

    .local v4, "arr$":[Landroid/media/audiofx/AudioEffect$Descriptor;
    array-length v7, v4

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_1

    aget-object v3, v4, v6

    .line 35
    .local v3, "ad":Landroid/media/audiofx/AudioEffect$Descriptor;
    iget-object v11, v3, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    if-eqz v11, :cond_0

    .line 36
    iget-object v11, v3, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    invoke-virtual {v11, v1}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    if-nez v11, :cond_0

    .line 44
    .end local v3    # "ad":Landroid/media/audiofx/AudioEffect$Descriptor;
    .end local v4    # "arr$":[Landroid/media/audiofx/AudioEffect$Descriptor;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :goto_2
    return v9

    .line 28
    .end local v1    # "EFFECT_DS":Ljava/util/UUID;
    :catch_0
    move-exception v5

    .line 29
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 30
    const-string v11, "9d4921da-8225-4f29-aefa-39537a04bcaa"

    invoke-static {v11}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    .restart local v1    # "EFFECT_DS":Ljava/util/UUID;
    goto :goto_0

    .line 34
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v3    # "ad":Landroid/media/audiofx/AudioEffect$Descriptor;
    .restart local v4    # "arr$":[Landroid/media/audiofx/AudioEffect$Descriptor;
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 40
    .end local v3    # "ad":Landroid/media/audiofx/AudioEffect$Descriptor;
    .end local v4    # "arr$":[Landroid/media/audiofx/AudioEffect$Descriptor;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :catch_1
    move-exception v5

    .line 41
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v9, "HtcDsEffect"

    const-string v11, "no dolby effect found"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    .line 44
    goto :goto_2
.end method
