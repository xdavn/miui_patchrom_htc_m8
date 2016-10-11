.class Lcom/android/server/notification/BatteryLightController;
.super Landroid/content/BroadcastReceiver;
.source "BatteryLightController.java"


# instance fields
.field final LIGHT_COLOR_AMBER:I

.field final LIGHT_COLOR_GREEN:I

.field final TAG:Ljava/lang/String;

.field private mBatteryFull:Z

.field private mBatteryLight:Lcom/android/server/lights/Light;

.field private mBatteryLow:Z

.field private mCharging:Z

.field private mDefaultNotificationLedOff:I

.field private mDefaultNotificationLedOn:I

.field private mHealth:I

.field private mStatus:I

.field private mTimeout:Z

.field private mUnsupportCharger:Z

.field private mUsbOverheat:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/lights/LightsManager;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lights"    # Lcom/android/server/lights/LightsManager;
    .param p3, "amber"    # I
    .param p4, "green"    # I

    .prologue
    const/4 v4, 0x0

    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    const-string v0, "BatteryLightController"

    iput-object v0, p0, Lcom/android/server/notification/BatteryLightController;->TAG:Ljava/lang/String;

    .line 38
    iput p3, p0, Lcom/android/server/notification/BatteryLightController;->LIGHT_COLOR_AMBER:I

    .line 39
    iput p4, p0, Lcom/android/server/notification/BatteryLightController;->LIGHT_COLOR_GREEN:I

    .line 40
    const-string v0, "BatteryLightController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init(amber=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " green=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/notification/LightsUtil;->getLightId(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/BatteryLightController;->mBatteryLight:Lcom/android/server/lights/Light;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/notification/BatteryLightController;->mDefaultNotificationLedOn:I

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/notification/BatteryLightController;->mDefaultNotificationLedOff:I

    .line 50
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, p1

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 52
    return-void
.end method

.method private updateBatteryLight()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 138
    const-string v0, "turn off"

    .line 139
    .local v0, "decision":Ljava/lang/String;
    const/4 v1, 0x1

    .line 141
    .local v1, "flashLight":Z
    iget v2, p0, Lcom/android/server/notification/BatteryLightController;->mHealth:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 142
    const-string v0, "cold"

    .line 159
    :goto_0
    if-eqz v1, :cond_7

    .line 160
    iget-object v2, p0, Lcom/android/server/notification/BatteryLightController;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/notification/BatteryLightController;->LIGHT_COLOR_AMBER:I

    iget v4, p0, Lcom/android/server/notification/BatteryLightController;->mDefaultNotificationLedOn:I

    iget v5, p0, Lcom/android/server/notification/BatteryLightController;->mDefaultNotificationLedOff:I

    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    .line 168
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(battery) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeNotificationLightDecision(Ljava/lang/String;)V

    .line 170
    return-void

    .line 143
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/notification/BatteryLightController;->mCharging:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/server/notification/BatteryLightController;->mHealth:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 144
    const-string v0, "overheat"

    goto :goto_0

    .line 145
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/notification/BatteryLightController;->mCharging:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/server/notification/BatteryLightController;->mStatus:I

    if-ne v2, v6, :cond_2

    .line 146
    const-string v0, "unknown state"

    goto :goto_0

    .line 147
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/notification/BatteryLightController;->mCharging:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/notification/BatteryLightController;->mTimeout:Z

    if-eqz v2, :cond_3

    .line 148
    const-string v0, "safety timeout"

    goto :goto_0

    .line 149
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/notification/BatteryLightController;->mUnsupportCharger:Z

    if-eqz v2, :cond_4

    .line 150
    const-string v0, "unsupport charger"

    goto :goto_0

    .line 151
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/notification/BatteryLightController;->mCharging:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/server/notification/BatteryLightController;->mBatteryLow:Z

    if-eqz v2, :cond_5

    .line 152
    const-string v0, "low battery"

    goto :goto_0

    .line 153
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/notification/BatteryLightController;->mUsbOverheat:Z

    if-eqz v2, :cond_6

    .line 154
    const-string v0, "usb overheat"

    goto :goto_0

    .line 156
    :cond_6
    const/4 v1, 0x0

    goto :goto_0

    .line 162
    :cond_7
    iget-boolean v2, p0, Lcom/android/server/notification/BatteryLightController;->mCharging:Z

    if-eqz v2, :cond_a

    .line 163
    iget-boolean v2, p0, Lcom/android/server/notification/BatteryLightController;->mBatteryFull:Z

    if-eqz v2, :cond_8

    const-string v0, "fully charge"

    .line 164
    :goto_2
    iget-object v3, p0, Lcom/android/server/notification/BatteryLightController;->mBatteryLight:Lcom/android/server/lights/Light;

    iget-boolean v2, p0, Lcom/android/server/notification/BatteryLightController;->mBatteryFull:Z

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/android/server/notification/BatteryLightController;->LIGHT_COLOR_GREEN:I

    :goto_3
    invoke-virtual {v3, v2}, Lcom/android/server/lights/Light;->setColor(I)V

    goto :goto_1

    .line 163
    :cond_8
    const-string v0, "charging"

    goto :goto_2

    .line 164
    :cond_9
    iget v2, p0, Lcom/android/server/notification/BatteryLightController;->LIGHT_COLOR_AMBER:I

    goto :goto_3

    .line 166
    :cond_a
    iget-object v2, p0, Lcom/android/server/notification/BatteryLightController;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_1
.end method

.method private updateBatteryState(Landroid/content/Intent;)V
    .locals 20
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 64
    const-string v17, "plugged"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    if-eqz v17, :cond_5

    const/4 v10, 0x1

    .line 66
    .local v10, "plugged":Z
    :goto_0
    const-string v17, "plugin_status"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 68
    .local v11, "plugin":Z
    if-nez v10, :cond_0

    if-eqz v11, :cond_6

    :cond_0
    const/4 v5, 0x1

    .line 70
    .local v5, "charging":Z
    :goto_1
    const/high16 v17, 0x42c80000    # 100.0f

    const-string v18, "level"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    const-string v18, "scale"

    const/16 v19, 0x64

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v7, v0

    .line 73
    .local v7, "level":I
    const-string v17, "status"

    const/16 v18, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 77
    .local v13, "status":I
    if-ltz v7, :cond_7

    const/16 v17, 0xa

    move/from16 v0, v17

    if-gt v7, v0, :cond_7

    const/4 v4, 0x1

    .line 79
    .local v4, "batteryLow":Z
    :goto_2
    const/16 v17, 0x64

    move/from16 v0, v17

    if-eq v7, v0, :cond_1

    const/16 v17, 0x5

    move/from16 v0, v17

    if-ne v13, v0, :cond_8

    :cond_1
    const/4 v3, 0x1

    .line 81
    .local v3, "batteryFull":Z
    :goto_3
    const-string v17, "health"

    const/16 v18, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 83
    .local v6, "health":I
    const-string v17, "support_extension"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    shr-int/lit8 v17, v17, 0x2

    rem-int/lit8 v17, v17, 0x2

    if-lez v17, :cond_9

    const/4 v14, 0x1

    .line 85
    .local v14, "timeout":Z
    :goto_4
    const-string v17, "unsupport_charger"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 87
    .local v15, "unsupportCharger":Z
    const-string v17, "usb_overheat"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    .line 91
    .local v16, "usbOverheat":Z
    const-string v17, "power_jacket_exist"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 93
    .local v8, "pjExist":Z
    const/4 v9, 0x0

    .line 95
    .local v9, "pjStatus":I
    if-eqz v8, :cond_2

    .line 96
    const-string v17, "power_jacket_status"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 99
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v0, v9, :cond_a

    const/16 v17, 0x1

    :goto_5
    and-int v3, v3, v17

    .line 103
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v12, "sb":Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "updateBattery(plugged="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " plugin="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " low="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " full="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " health="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " status="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " timeout="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " usbOverheat="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v17, "BatteryLightController"

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/notification/BatteryLightController;->mStatus:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v13, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/notification/BatteryLightController;->mHealth:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v6, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/notification/BatteryLightController;->mTimeout:Z

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v14, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/notification/BatteryLightController;->mCharging:Z

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v5, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/notification/BatteryLightController;->mBatteryLow:Z

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v4, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/notification/BatteryLightController;->mBatteryFull:Z

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/notification/BatteryLightController;->mUsbOverheat:Z

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/notification/BatteryLightController;->mUnsupportCharger:Z

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v15, :cond_4

    .line 124
    :cond_3
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/notification/BatteryLightController;->mTimeout:Z

    .line 125
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/notification/BatteryLightController;->mCharging:Z

    .line 126
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/notification/BatteryLightController;->mBatteryLow:Z

    .line 127
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/notification/BatteryLightController;->mBatteryFull:Z

    .line 128
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/notification/BatteryLightController;->mUsbOverheat:Z

    .line 129
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/notification/BatteryLightController;->mUnsupportCharger:Z

    .line 130
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/notification/BatteryLightController;->mStatus:I

    .line 131
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/server/notification/BatteryLightController;->mHealth:I

    .line 132
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/BatteryLightController;->updateBatteryLight()V

    .line 134
    :cond_4
    return-void

    .line 64
    .end local v3    # "batteryFull":Z
    .end local v4    # "batteryLow":Z
    .end local v5    # "charging":Z
    .end local v6    # "health":I
    .end local v7    # "level":I
    .end local v8    # "pjExist":Z
    .end local v9    # "pjStatus":I
    .end local v10    # "plugged":Z
    .end local v11    # "plugin":Z
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    .end local v13    # "status":I
    .end local v14    # "timeout":Z
    .end local v15    # "unsupportCharger":Z
    .end local v16    # "usbOverheat":Z
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 68
    .restart local v10    # "plugged":Z
    .restart local v11    # "plugin":Z
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 77
    .restart local v5    # "charging":Z
    .restart local v7    # "level":I
    .restart local v13    # "status":I
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 79
    .restart local v4    # "batteryLow":Z
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 83
    .restart local v3    # "batteryFull":Z
    .restart local v6    # "health":I
    :cond_9
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 99
    .restart local v8    # "pjExist":Z
    .restart local v9    # "pjStatus":I
    .restart local v14    # "timeout":Z
    .restart local v15    # "unsupportCharger":Z
    .restart local v16    # "usbOverheat":Z
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_5
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 56
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/notification/BatteryLightController;->updateBatteryState(Landroid/content/Intent;)V

    goto :goto_0
.end method
