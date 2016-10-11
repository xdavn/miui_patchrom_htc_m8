.class public Lcom/htc/lockscreen/framework/wrapper/DevicePolicyManagerWrapper;
.super Ljava/lang/Object;
.source "DevicePolicyManagerWrapper.java"


# static fields
.field public static final ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED:Ljava/lang/String; = "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

.field private static LOG_PREFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "DevicePolicyManagerReflection"

    sput-object v0, Lcom/htc/lockscreen/framework/wrapper/DevicePolicyManagerWrapper;->LOG_PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKeyguardDisabledFeatures(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)I
    .locals 1
    .param p0, "dm"    # Landroid/app/admin/DevicePolicyManager;
    .param p1, "comp"    # Landroid/content/ComponentName;
    .param p2, "currentUser"    # I

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public static getMaximumFailedPasswordsForWipe(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)I
    .locals 1
    .param p0, "dm"    # Landroid/app/admin/DevicePolicyManager;
    .param p1, "comp"    # Landroid/content/ComponentName;
    .param p2, "currentUser"    # I

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public static getMaximumTimeToLock(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)J
    .locals 4
    .param p0, "dm"    # Landroid/app/admin/DevicePolicyManager;
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 39
    const-string v0, "getMaximumTimeToLock"

    .line 40
    .local v0, "METHOD":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 41
    .local v2, "result":J
    if-eqz p0, :cond_0

    .line 42
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v2

    .line 44
    :cond_0
    return-wide v2
.end method

.method public static getProfileWithMinimumFailedPasswordsForWipe(Landroid/app/admin/DevicePolicyManager;I)I
    .locals 1
    .param p0, "dm"    # Landroid/app/admin/DevicePolicyManager;
    .param p1, "currentUser"    # I

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    move-result v0

    return v0
.end method
