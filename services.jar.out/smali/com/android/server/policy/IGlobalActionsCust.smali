.class interface abstract Lcom/android/server/policy/IGlobalActionsCust;
.super Ljava/lang/Object;
.source "IGlobalActionsCust.java"


# static fields
.field public static final FLASHLIGHT_MODE_HIDE:I = 0x0

.field public static final FLASHLIGHT_MODE_SHOW:I = 0x1

.field public static final FLASHLIGHT_MODE_SHOWONLY:I = 0x2

.field public static final INTENT_ACTUAL_SCREEN_OFF:Ljava/lang/String; = "com.htc.server.HtcPMSExtension.ACTUAL_SCREEN_OFF"

.field public static final MESSAGE_DISMISS_FLASHLIGHT:I = 0x182ae

.field public static final MESSAGE_NOTIFY:I = 0x182ad

.field public static final RESKEY_DRAWABLE_ICON_LAUNCHER_AIRPLANE:Ljava/lang/String; = "drawable.icon_launcher_airplane"

.field public static final RESKEY_DRAWABLE_ICON_LAUNCHER_AIRPLANE_OFF:Ljava/lang/String; = "drawable.icon_launcher_airplane"

.field public static final RESKEY_ID_ICON:Ljava/lang/String; = "id.icon"

.field public static final RESKEY_ID_MESSAGE:Ljava/lang/String; = "id.message"

.field public static final RESKEY_ID_STATUS:Ljava/lang/String; = "id.status"

.field public static final RESKEY_LAYOUT_PHONE_OPTIONS_ITEM:Ljava/lang/String; = "layout.phone_options_item"


# virtual methods
.method public abstract adjustHtcGlobalActionsDialog(Landroid/content/Context;Landroid/app/Dialog;Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$MyAdapter;)V
.end method

.method public abstract checkActualScreenOffAction(Landroid/content/Intent;)Z
.end method

.method public abstract checkAirPlaneModeState(Landroid/content/Context;Landroid/telephony/ServiceState;Lcom/android/server/policy/GlobalActions$ToggleAction$State;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
.end method

.method public abstract checkFlashlightMode(I)Z
.end method

.method public abstract checkShowAirplaneMode(Landroid/content/Context;)Z
.end method

.method public abstract getCustIntentFilter()Landroid/content/IntentFilter;
.end method

.method public abstract getFlashlightAction(Landroid/content/Context;)Lcom/android/server/policy/GlobalActions$Action;
.end method

.method public abstract getHtcGlobalActionsDialog(Landroid/content/Context;)Landroid/app/Dialog;
.end method

.method public abstract getIMS_REGISTRATION()Ljava/lang/String;
.end method

.method public abstract getPowerAction(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)Lcom/android/server/policy/GlobalActions$Action;
.end method

.method public abstract getRebootAction(Landroid/content/Context;)Lcom/android/server/policy/GlobalActions$Action;
.end method

.method public abstract handleAirplaneModeCheck(Z)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
.end method

.method public abstract handleIMSRegistrationBroadcast(Landroid/content/Context;Landroid/content/Intent;Lcom/android/server/policy/GlobalActions$ToggleAction$State;Lcom/android/server/policy/GlobalActions$ToggleAction;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
.end method

.method public abstract handleSimStateBroadcast(Landroid/content/Intent;)V
.end method

.method public abstract setFlashlightMode(I)V
.end method

.method public abstract setIfNeedTransition(Z)V
.end method

.method public abstract showFlashlightSpecialMode(Landroid/os/Handler;)V
.end method

.method public abstract showWarningForAirplaneMode(Landroid/content/Context;Z)Z
.end method
