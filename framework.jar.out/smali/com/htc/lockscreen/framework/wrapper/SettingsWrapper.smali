.class public Lcom/htc/lockscreen/framework/wrapper/SettingsWrapper;
.super Ljava/lang/Object;
.source "SettingsWrapper.java"


# static fields
.field public static final Global_LOCK_SOUND:Ljava/lang/String; = "lock_sound"

.field public static final Global_UNLOCK_SOUND:Ljava/lang/String; = "unlock_sound"

.field public static final LOCK_SCREEN_LOCK_AFTER_TIMEOUT:Ljava/lang/String; = "lock_screen_lock_after_timeout"

.field public static final Secure_USER_SETUP_COMPLETE:Ljava/lang/String; = "user_setup_complete"

.field public static final System_LOCKSCREEN_SOUNDS_ENABLED:Ljava/lang/String; = "lockscreen_sounds_enabled"

.field public static final TRUSTED_SOUND:Ljava/lang/String; = "trusted_sound"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static global_getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const/4 v0, -0x2

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static secure_getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 22
    const/4 v0, -0x2

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static secure_getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const/4 v0, -0x2

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static system_getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 31
    const/4 v0, -0x2

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static system_getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const/4 v0, -0x2

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
