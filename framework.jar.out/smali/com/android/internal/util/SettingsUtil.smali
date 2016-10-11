.class public Lcom/android/internal/util/SettingsUtil;
.super Ljava/lang/Object;
.source "SettingsUtil.java"


# static fields
.field public static final LEVEL_GLOBAL:I = 0x3

.field public static final LEVEL_SECURE:I = 0x1

.field public static final LEVEL_SYSTEM:I = 0x2

.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "SettingsUtil"

    sput-object v0, Lcom/android/internal/util/SettingsUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defValue"    # Z
    .param p3, "level"    # I

    .prologue
    .line 38
    const/4 v0, -0x2

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/util/SettingsUtil;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;ZII)Z

    move-result v0

    return v0
.end method

.method public static getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;ZII)Z
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defValue"    # Z
    .param p3, "level"    # I
    .param p4, "userId"    # I

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, "result":Ljava/lang/String;
    packed-switch p3, :pswitch_data_0

    .line 55
    :goto_0
    if-nez v0, :cond_0

    .line 58
    .end local p2    # "defValue":Z
    :goto_1
    return p2

    .line 46
    .restart local p2    # "defValue":Z
    :pswitch_0
    invoke-static {p0, p1, p4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 47
    goto :goto_0

    .line 49
    :pswitch_1
    invoke-static {p0, p1, p4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 50
    goto :goto_0

    .line 52
    :pswitch_2
    invoke-static {p0, p1, p4}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_0
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    goto :goto_1

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "level"    # I

    .prologue
    .line 16
    const/4 v0, -0x2

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/util/SettingsUtil;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;ZII)Z

    move-result v0

    return v0
.end method

.method public static putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;ZII)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "level"    # I
    .param p4, "userId"    # I

    .prologue
    .line 21
    packed-switch p3, :pswitch_data_0

    .line 32
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 23
    :pswitch_0
    if-eqz p2, :cond_0

    const-string v0, "1"

    :goto_1
    invoke-static {p0, p1, v0, p4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const-string v0, "0"

    goto :goto_1

    .line 26
    :pswitch_1
    if-eqz p2, :cond_1

    const-string v0, "1"

    :goto_2
    invoke-static {p0, p1, v0, p4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    :cond_1
    const-string v0, "0"

    goto :goto_2

    .line 29
    :pswitch_2
    if-eqz p2, :cond_2

    const-string v0, "1"

    :goto_3
    invoke-static {p0, p1, v0, p4}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    :cond_2
    const-string v0, "0"

    goto :goto_3

    .line 21
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
