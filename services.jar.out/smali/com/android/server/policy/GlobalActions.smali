.class Lcom/android/server/policy/GlobalActions;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;,
        Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;,
        Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;,
        Lcom/android/server/policy/GlobalActions$ToggleAction;,
        Lcom/android/server/policy/GlobalActions$SinglePressAction;,
        Lcom/android/server/policy/GlobalActions$LongPressAction;,
        Lcom/android/server/policy/GlobalActions$Action;,
        Lcom/android/server/policy/GlobalActions$MyAdapter;,
        Lcom/android/server/policy/GlobalActions$PowerAction;
    }
.end annotation


# static fields
.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field static final FLASHLIGHT_MODE_HIDE:I = 0x0

.field static final FLASHLIGHT_MODE_SHOW:I = 0x1

.field static final FLASHLIGHT_MODE_SHOWONLY:I = 0x2

.field private static final GLOBAL_ACTION_KEY_AIRPLANE:Ljava/lang/String; = "airplane"

.field private static final GLOBAL_ACTION_KEY_ASSIST:Ljava/lang/String; = "assist"

.field private static final GLOBAL_ACTION_KEY_BUGREPORT:Ljava/lang/String; = "bugreport"

.field private static final GLOBAL_ACTION_KEY_LOCKDOWN:Ljava/lang/String; = "lockdown"

.field private static final GLOBAL_ACTION_KEY_POWER:Ljava/lang/String; = "power"

.field private static final GLOBAL_ACTION_KEY_SETTINGS:Ljava/lang/String; = "settings"

.field private static final GLOBAL_ACTION_KEY_SILENT:Ljava/lang/String; = "silent"

.field private static final GLOBAL_ACTION_KEY_USERS:Ljava/lang/String; = "users"

.field private static final GLOBAL_ACTION_KEY_VOICEASSIST:Ljava/lang/String; = "voiceassist"

.field private static final IMPLEMENTATION_CLASS_NAME:Ljava/lang/String; = "com.android.server.policy.GlobalActionsCust"

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final MESSAGE_SHOW:I = 0x2

.field private static final SHOW_SILENT_TOGGLE:Z = true

.field private static final TAG:Ljava/lang/String; = "GlobalActions"

.field private static final sSenseVersion:Z


# instance fields
.field private mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field private mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDialog:Landroid/app/Dialog;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private mHandler:Landroid/os/Handler;

.field private mHasTelephony:Z

.field private mHasVibrator:Z

.field private mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;

.field private mIsWaitingForEcmExit:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mShowSilentToggle:Z

.field private mSilentModeAction:Lcom/android/server/policy/GlobalActions$Action;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 139
    const-string v1, "sense_version"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/customization/HtcCustomizationSystemReaderImpl;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "sense_version":Ljava/lang/String;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->sSenseVersion:Z

    .line 141
    return-void

    .line 140
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-boolean v6, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    .line 119
    iput-boolean v6, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    .line 120
    sget-object v4, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v4, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 121
    iput-boolean v6, p0, Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z

    .line 127
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/policy/GlobalActions;->mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;

    .line 1150
    new-instance v4, Lcom/android/server/policy/GlobalActions$9;

    invoke-direct {v4, p0}, Lcom/android/server/policy/GlobalActions$9;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v4, p0, Lcom/android/server/policy/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1177
    new-instance v4, Lcom/android/server/policy/GlobalActions$10;

    invoke-direct {v4, p0}, Lcom/android/server/policy/GlobalActions$10;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v4, p0, Lcom/android/server/policy/GlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1194
    new-instance v4, Lcom/android/server/policy/GlobalActions$11;

    invoke-direct {v4, p0}, Lcom/android/server/policy/GlobalActions$11;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v4, p0, Lcom/android/server/policy/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 1203
    new-instance v4, Lcom/android/server/policy/GlobalActions$12;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v7}, Lcom/android/server/policy/GlobalActions$12;-><init>(Lcom/android/server/policy/GlobalActions;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 1215
    new-instance v4, Lcom/android/server/policy/GlobalActions$13;

    invoke-direct {v4, p0}, Lcom/android/server/policy/GlobalActions$13;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v4, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    .line 147
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    .line 148
    iput-object p2, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 149
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    .line 150
    const-string v4, "dreams"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 154
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->getCustmizationClass(Landroid/content/Context;)Lcom/android/server/policy/IGlobalActionsCust;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/policy/GlobalActions;->mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;

    .line 155
    const-string v7, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Customization class "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;

    if-nez v4, :cond_1

    const-string v4, "not"

    :goto_0
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " found!!!"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 159
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string v4, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;

    if-eqz v4, :cond_0

    .line 164
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;

    invoke-interface {v4}, Lcom/android/server/policy/IGlobalActionsCust;->getCustIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    .line 166
    :cond_0
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    const-string v4, "connectivity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 170
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    .line 173
    const-string v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 175
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 176
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "airplane_mode_on"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v7, v5, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 179
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string v7, "vibrator"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    .line 180
    .local v3, "vibrator":Landroid/os/Vibrator;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/server/policy/GlobalActions;->mHasVibrator:Z

    .line 182
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x1120079

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_3

    :goto_2
    iput-boolean v5, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    .line 184
    return-void

    .line 155
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v3    # "vibrator":Landroid/os/Vibrator;
    :cond_1
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .restart local v3    # "vibrator":Landroid/os/Vibrator;
    :cond_2
    move v4, v6

    .line 180
    goto :goto_1

    :cond_3
    move v5, v6

    .line 182
    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/policy/GlobalActions;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    .line 87
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sSenseVersion:Z

    return v0
.end method

.method static synthetic access$1400(Ljava/lang/String;I)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-static {p0, p1}, Lcom/android/server/policy/GlobalActions;->getCustomResourceID(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/policy/GlobalActions;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/policy/GlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/policy/GlobalActions;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/server/policy/GlobalActions;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/server/policy/GlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->refreshSilentMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/policy/GlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->handleShow()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/IGlobalActionsCust;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/policy/GlobalActions;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction$State;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/policy/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addUsersToMenu(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/policy/GlobalActions$Action;>;"
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 635
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserManager;

    .line 636
    .local v9, "um":Landroid/os/UserManager;
    invoke-virtual {v9}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 637
    invoke-virtual {v9}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v10

    .line 638
    .local v10, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 639
    .local v6, "currentUser":Landroid/content/pm/UserInfo;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 640
    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 641
    if-nez v6, :cond_2

    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_1

    move v8, v11

    .line 643
    .local v8, "isCurrentUser":Z
    :goto_1
    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 645
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    :goto_2
    new-instance v0, Lcom/android/server/policy/GlobalActions$8;

    const v2, 0x10803b5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v8, :cond_6

    const-string v1, " \u2714"

    :goto_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$8;-><init>(Lcom/android/server/policy/GlobalActions;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    .line 665
    .local v0, "switchToUser":Lcom/android/server/policy/GlobalActions$SinglePressAction;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "switchToUser":Lcom/android/server/policy/GlobalActions$SinglePressAction;
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v8    # "isCurrentUser":Z
    :cond_1
    move v8, v12

    .line 641
    goto :goto_1

    :cond_2
    iget v1, v6, Landroid/content/pm/UserInfo;->id:I

    iget v2, v5, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, v2, :cond_3

    move v8, v11

    goto :goto_1

    :cond_3
    move v8, v12

    goto :goto_1

    .line 643
    .restart local v8    # "isCurrentUser":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 645
    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_5
    const-string v1, "Primary"

    goto :goto_3

    :cond_6
    const-string v1, ""

    goto :goto_4

    .line 669
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v6    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "isCurrentUser":Z
    .end local v10    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_7
    return-void
.end method

.method private awakenIfNecessary()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_0

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 1264
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1270
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;

    if-eqz v1, :cond_0

    .line 1271
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;

    invoke-interface {v1, p1}, Lcom/android/server/policy/IGlobalActionsCust;->setIfNeedTransition(Z)V

    .line 1273
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1274
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1275
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1276
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1277
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    if-nez v1, :cond_1

    .line 1278
    if-eqz p1, :cond_3

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_1
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 1280
    :cond_1
    return-void

    .line 1264
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1278
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_3
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_1
.end method

.method private createDialog()Landroid/app/Dialog;
    .locals 17

    .prologue
    .line 247
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/policy/GlobalActions;->mHasVibrator:Z

    if-nez v1, :cond_2

    .line 248
    new-instance v1, Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;-><init>(Lcom/android/server/policy/GlobalActions;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$Action;

    .line 254
    :goto_0
    const v3, 0x1080359

    .line 255
    .local v3, "airResID":I
    const v4, 0x108035b

    .line 257
    .local v4, "airOffResID":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;

    if-eqz v1, :cond_0

    .line 258
    const-string v1, "drawable.icon_launcher_airplane"

    invoke-static {v1, v3}, Lcom/android/server/policy/GlobalActions;->getCustomResourceID(Ljava/lang/String;I)I

    move-result v3

    .line 259
    const-string v1, "drawable.icon_launcher_airplane"

    invoke-static {v1, v4}, Lcom/android/server/policy/GlobalActions;->getCustomResourceID(Ljava/lang/String;I)I

    move-result v4

    .line 263
    :cond_0
    new-instance v1, Lcom/android/server/policy/GlobalActions$1;

    const v5, 0x1040112

    const v6, 0x1040113

    const v7, 0x1040114

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/policy/GlobalActions$1;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    .line 321
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->onAirplaneModeChanged()V

    .line 323
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    .line 326
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;

    if-eqz v1, :cond_9

    .line 327
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/server/policy/IGlobalActionsCust;->checkFlashlightMode(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 328
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/android/server/policy/IGlobalActionsCust;->getFlashlightAction(Landroid/content/Context;)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v12

    .line 329
    .local v12, "flashlightMode":Lcom/android/server/policy/GlobalActions$Action;
    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    .end local v12    # "flashlightMode":Lcom/android/server/policy/GlobalActions$Action;
    :cond_1
    :goto_1
    new-instance v1, Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;-><init>(Lcom/android/server/policy/GlobalActions;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    .line 400
    new-instance v14, Lcom/android/internal/app/AlertController$AlertParams;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v14, v1}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .line 401
    .local v14, "params":Lcom/android/internal/app/AlertController$AlertParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    iput-object v1, v14, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 402
    move-object/from16 v0, p0

    iput-object v0, v14, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 403
    const/4 v1, 0x1

    iput-boolean v1, v14, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 406
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;

    if-eqz v1, :cond_15

    .line 407
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/android/server/policy/IGlobalActionsCust;->getHtcGlobalActionsDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v11

    .line 408
    .local v11, "dialog":Landroid/app/Dialog;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-object/from16 v0, p0

    invoke-interface {v1, v2, v11, v0, v5}, Lcom/android/server/policy/IGlobalActionsCust;->adjustHtcGlobalActionsDialog(Landroid/content/Context;Landroid/app/Dialog;Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$MyAdapter;)V

    .line 429
    .end local v11    # "dialog":Landroid/app/Dialog;
    :goto_2
    return-object v11

    .line 250
    .end local v3    # "airResID":I
    .end local v4    # "airOffResID":I
    .end local v14    # "params":Lcom/android/internal/app/AlertController$AlertParams;
    :cond_2
    new-instance v1, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v5, v6}, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$Action;

    goto/16 :goto_0

    .line 331
    .restart local v3    # "airResID":I
    .restart local v4    # "airOffResID":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v1, v2, v5}, Lcom/android/server/policy/IGlobalActionsCust;->getPowerAction(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v15

    .line 332
    .local v15, "powerAction":Lcom/android/server/policy/GlobalActions$Action;
    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/android/server/policy/IGlobalActionsCust;->checkShowAirplaneMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 335
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/server/policy/IGlobalActionsCust;->checkFlashlightMode(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 338
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/android/server/policy/IGlobalActionsCust;->getFlashlightAction(Landroid/content/Context;)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v12

    .line 339
    .restart local v12    # "flashlightMode":Lcom/android/server/policy/GlobalActions$Action;
    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    .end local v12    # "flashlightMode":Lcom/android/server/policy/GlobalActions$Action;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/android/server/policy/IGlobalActionsCust;->getRebootAction(Landroid/content/Context;)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v16

    .line 343
    .local v16, "rebootAction":Lcom/android/server/policy/GlobalActions$Action;
    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bugreport_in_power_menu"

    const/4 v5, 0x0

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->isCurrentUserOwner()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 347
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->getBugReportAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    :cond_8
    const-string v1, "fw.power_user_switcher"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/policy/GlobalActions;->addUsersToMenu(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 355
    .end local v15    # "powerAction":Lcom/android/server/policy/GlobalActions$Action;
    .end local v16    # "rebootAction":Lcom/android/server/policy/GlobalActions$Action;
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 358
    .local v10, "defaultActions":[Ljava/lang/String;
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 359
    .local v9, "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    array-length v1, v10

    if-ge v13, v1, :cond_1

    .line 360
    aget-object v8, v10, v13

    .line 361
    .local v8, "actionKey":Ljava/lang/String;
    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 359
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 365
    :cond_a
    const-string v1, "power"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 366
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/policy/GlobalActions$PowerAction;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v5}, Lcom/android/server/policy/GlobalActions$PowerAction;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$1;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    :cond_b
    :goto_5
    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 367
    :cond_c
    const-string v1, "airplane"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 368
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 369
    :cond_d
    const-string v1, "bugreport"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 370
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bugreport_in_power_menu"

    const/4 v5, 0x0

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->isCurrentUserOwner()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 372
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->getBugReportAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 374
    :cond_e
    const-string v1, "silent"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 375
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_b

    .line 376
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$Action;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 378
    :cond_f
    const-string v1, "users"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 379
    const-string v1, "fw.power_user_switcher"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 380
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/policy/GlobalActions;->addUsersToMenu(Ljava/util/ArrayList;)V

    goto :goto_5

    .line 382
    :cond_10
    const-string v1, "settings"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 383
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->getSettingsAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 384
    :cond_11
    const-string v1, "lockdown"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 385
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->getLockdownAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 386
    :cond_12
    const-string v1, "voiceassist"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 387
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->getVoiceAssistAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 388
    :cond_13
    const-string v1, "assist"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 389
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->getAssistAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 391
    :cond_14
    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid global action key "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 411
    .end local v8    # "actionKey":Ljava/lang/String;
    .end local v9    # "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v10    # "defaultActions":[Ljava/lang/String;
    .end local v13    # "i":I
    .restart local v14    # "params":Lcom/android/internal/app/AlertController$AlertParams;
    :cond_15
    new-instance v11, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v11, v1, v14}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;-><init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;)V

    .line 412
    .local v11, "dialog":Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setCanceledOnTouchOutside(Z)V

    .line 413
    invoke-virtual {v11}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 414
    invoke-virtual {v11}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 415
    invoke-virtual {v11}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/GlobalActions$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/policy/GlobalActions$2;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 427
    invoke-virtual {v11}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 428
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_2
.end method

.method private getAssistAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    .line 552
    new-instance v0, Lcom/android/server/policy/GlobalActions$5;

    const v1, 0x10802f3

    const v2, 0x1040116

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$5;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getBugReportAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    .line 468
    new-instance v0, Lcom/android/server/policy/GlobalActions$3;

    const v1, 0x108035d

    const v2, 0x104010c

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$3;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 2

    .prologue
    .line 623
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 625
    :goto_0
    return-object v1

    .line 624
    :catch_0
    move-exception v0

    .line 625
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getCustmizationClass(Landroid/content/Context;)Lcom/android/server/policy/IGlobalActionsCust;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1445
    const/4 v2, 0x0

    .line 1447
    .local v2, "custTarget":Lcom/android/server/policy/IGlobalActionsCust;
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->sSenseVersion:Z

    if-eqz v4, :cond_0

    .line 1449
    :try_start_0
    const-string v4, "com.android.server.policy.GlobalActionsCust"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1450
    .local v1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/policy/IGlobalActionsCust;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1456
    .end local v1    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v2

    .line 1451
    :catch_0
    move-exception v3

    .local v3, "ex":Ljava/lang/Exception;
    const-string v4, "GlobalActions"

    const-string v5, "Load implementation failed!"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1453
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_0
    const-string v4, "GlobalActions"

    const-string v5, "Not sense version, will not load customization implement"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getCustomResourceID(Ljava/lang/String;I)I
    .locals 8
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defID"    # I

    .prologue
    .line 1429
    move v3, p1

    .line 1431
    .local v3, "retID":I
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->sSenseVersion:Z

    if-eqz v4, :cond_0

    .line 1433
    :try_start_0
    const-string v4, "com.android.server.policy.GlobalActionsCust"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1434
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "getCustomResourceID"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1435
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1441
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return v3

    .line 1436
    :catch_0
    move-exception v1

    .line 1437
    .local v1, "ex":Ljava/lang/Exception;
    const-string v4, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can not get res id of key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getLockdownAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    .line 596
    new-instance v0, Lcom/android/server/policy/GlobalActions$7;

    const v1, 0x108002f

    const v2, 0x1040118

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$7;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getSettingsAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    .line 529
    new-instance v0, Lcom/android/server/policy/GlobalActions$4;

    const v1, 0x108041c

    const v2, 0x1040115

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$4;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getVoiceAssistAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    .line 574
    new-instance v0, Lcom/android/server/policy/GlobalActions$6;

    const v1, 0x1080430

    const v2, 0x1040117

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$6;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private handleShow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 219
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->awakenIfNecessary()V

    .line 220
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->createDialog()Landroid/app/Dialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Landroid/app/Dialog;

    .line 221
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->prepareDialog()V

    .line 223
    const/4 v1, 0x0

    .line 224
    .local v1, "isFlashlightShowOnly":Z
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;

    if-eqz v2, :cond_0

    .line 225
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/android/server/policy/IGlobalActionsCust;->checkFlashlightMode(I)Z

    move-result v1

    .line 228
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2, v4}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    instance-of v2, v2, Lcom/android/server/policy/GlobalActions$SinglePressAction;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2, v4}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    instance-of v2, v2, Lcom/android/server/policy/GlobalActions$LongPressAction;

    if-nez v2, :cond_1

    .line 231
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2, v4}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/GlobalActions$SinglePressAction;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$SinglePressAction;->onPress()V

    .line 239
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 234
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const-string v2, "GlobalActions"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 236
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 237
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method private isCurrentUserOwner()Z
    .locals 2

    .prologue
    .line 630
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 631
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onAirplaneModeChanged()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1250
    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    if-eqz v2, :cond_0

    .line 1258
    :goto_0
    return-void

    .line 1252
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 1256
    .local v0, "airplaneModeOn":Z
    :goto_1
    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_2
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 1257
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    goto :goto_0

    .end local v0    # "airplaneModeOn":Z
    :cond_1
    move v0, v1

    .line 1252
    goto :goto_1

    .line 1256
    .restart local v0    # "airplaneModeOn":Z
    :cond_2
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_2
.end method

.method private prepareDialog()V
    .locals 3

    .prologue
    .line 672
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->refreshSilentMode()V

    .line 673
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 675
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 676
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 677
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_0

    .line 678
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 679
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 681
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private refreshSilentMode()V
    .locals 3

    .prologue
    .line 684
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mHasVibrator:Z

    if-nez v1, :cond_0

    .line 685
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 687
    .local v0, "silentModeOn":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$Action;

    check-cast v1, Lcom/android/server/policy/GlobalActions$ToggleAction;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 690
    .end local v0    # "silentModeOn":Z
    :cond_0
    return-void

    .line 685
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 687
    .restart local v0    # "silentModeOn":Z
    :cond_2
    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;

    if-nez v0, :cond_0

    .line 707
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/GlobalActions$Action;->onPress()V

    .line 710
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 694
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_0

    .line 696
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 697
    :catch_0
    move-exception v0

    .line 699
    .local v0, "ie":Ljava/lang/IllegalArgumentException;
    const-string v1, "GlobalActions"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setFlashlightMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;

    if-eqz v0, :cond_0

    .line 1424
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;

    invoke-interface {v0, p1}, Lcom/android/server/policy/IGlobalActionsCust;->setFlashlightMode(I)V

    .line 1426
    :cond_0
    return-void
.end method

.method public showDialog(ZZ)V
    .locals 2
    .param p1, "keyguardShowing"    # Z
    .param p2, "isDeviceProvisioned"    # Z

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    .line 192
    iput-boolean p2, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    .line 193
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Landroid/app/Dialog;

    .line 197
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 202
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mIGlobalActionsCust:Lcom/android/server/policy/IGlobalActionsCust;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/server/policy/IGlobalActionsCust;->showFlashlightSpecialMode(Landroid/os/Handler;)V

    .line 204
    :cond_0
    return-void

    .line 199
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->handleShow()V

    goto :goto_0
.end method
