.class Lcom/android/server/usb/UsbDeviceManager$1;
.super Landroid/os/UEventObserver;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 292
    const-string v5, "UsbDeviceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USB UEVENT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v5}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v5

    if-nez v5, :cond_1

    .line 294
    const-string v5, "UsbDeviceManager"

    const-string v6, "[USBNET][UEventObserver] mHandler = null"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    const-string v5, "USB_STATE"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, "state":Ljava/lang/String;
    const-string v5, "ACCESSORY"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "accessory":Ljava/lang/String;
    const-string v5, "SWITCH_NAME"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 301
    .local v3, "szSwName":Ljava/lang/String;
    const-string v5, "SWITCH_STATE"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 303
    .local v4, "szSwState":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 304
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v5}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateState(Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_2
    const-string v5, "START"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 306
    const-string v5, "UsbDeviceManager"

    const-string v6, "got accessory start"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->startAccessoryMode()V
    invoke-static {v5}, Lcom/android/server/usb/UsbDeviceManager;->access$200(Lcom/android/server/usb/UsbDeviceManager;)V

    goto :goto_0

    .line 309
    :cond_3
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 311
    :try_start_0
    const-string v5, "usb_connect2pc"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 312
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mConnect2Pc:I
    invoke-static {v5, v6}, Lcom/android/server/usb/UsbDeviceManager;->access$302(Lcom/android/server/usb/UsbDeviceManager;I)I

    .line 314
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v5}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v5

    const/16 v6, 0x69

    const/4 v7, 0x0

    # invokes: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->update2(II)V
    invoke-static {v5, v6, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$400(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 366
    :catch_0
    move-exception v1

    .line 367
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v5, "UsbDeviceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not parse switch state from event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 316
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    :try_start_1
    const-string v5, "scsi_cmd"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 318
    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 319
    const-string v5, "UsbDeviceManager"

    const-string v6, "[USB_SCSI] Enable ADB by SCSI uevent"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/android/server/usb/UsbDeviceManager;->access$000(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "adb_enabled"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 322
    :cond_5
    const-string v5, "0"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 323
    const-string v5, "UsbDeviceManager"

    const-string v6, "[USB_SCSI] Disable ADB by SCSI uevent"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/android/server/usb/UsbDeviceManager;->access$000(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "adb_enabled"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 327
    :cond_6
    const-string v5, "mirror_link"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 328
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mHtc_Mode:I
    invoke-static {v5, v6}, Lcom/android/server/usb/UsbDeviceManager;->access$502(Lcom/android/server/usb/UsbDeviceManager;I)I

    .line 329
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v5}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v5

    const/16 v6, 0x67

    const/4 v7, 0x0

    # invokes: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->update2(II)V
    invoke-static {v5, v6, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$400(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;II)V

    goto/16 :goto_0

    .line 331
    :cond_7
    const-string v5, "prj2_status"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 332
    const-string v5, "online"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 333
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v6, 0x1

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mProjector2State:I
    invoke-static {v5, v6}, Lcom/android/server/usb/UsbDeviceManager;->access$602(Lcom/android/server/usb/UsbDeviceManager;I)I

    .line 338
    :cond_8
    :goto_1
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v5}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v5

    const/16 v6, 0x68

    const/4 v7, 0x0

    # invokes: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->update2(II)V
    invoke-static {v5, v6, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$400(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;II)V

    goto/16 :goto_0

    .line 334
    :cond_9
    const-string v5, "offline"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 335
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v6, 0x2

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mProjector2State:I
    invoke-static {v5, v6}, Lcom/android/server/usb/UsbDeviceManager;->access$602(Lcom/android/server/usb/UsbDeviceManager;I)I

    goto :goto_1

    .line 336
    :cond_a
    const-string v5, "projecting"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 337
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v6, 0x3

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mProjector2State:I
    invoke-static {v5, v6}, Lcom/android/server/usb/UsbDeviceManager;->access$602(Lcom/android/server/usb/UsbDeviceManager;I)I

    goto :goto_1

    .line 340
    :cond_b
    const-string v5, "htcmode"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 341
    const-string v5, "online"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 342
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v6, 0x1

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mProjector1StateIsPlug:Z
    invoke-static {v5, v6}, Lcom/android/server/usb/UsbDeviceManager;->access$702(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 343
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v5}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v5

    const/16 v6, 0x6b

    const/4 v7, 0x0

    # invokes: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->update2(II)V
    invoke-static {v5, v6, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$400(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;II)V

    goto/16 :goto_0

    .line 345
    :cond_c
    const-string v5, "offline"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 346
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v6, 0x0

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mProjector1StateIsPlug:Z
    invoke-static {v5, v6}, Lcom/android/server/usb/UsbDeviceManager;->access$702(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 347
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v5}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v5

    const/16 v6, 0x6b

    const/4 v7, 0x0

    # invokes: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->update2(II)V
    invoke-static {v5, v6, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$400(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;II)V

    goto/16 :goto_0

    .line 350
    :cond_d
    const-string v5, "function_switch_on"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 352
    const-string v5, "UsbDeviceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[USBNET] SWITCH_NAME: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",SWITCH_STATE="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v6, 0x1

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mSwitchFunction:Z
    invoke-static {v5, v6}, Lcom/android/server/usb/UsbDeviceManager;->access$802(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 355
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->szSwitchFunctions:Ljava/lang/String;
    invoke-static {v5, v4}, Lcom/android/server/usb/UsbDeviceManager;->access$902(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 356
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v5}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v5

    const/16 v6, 0x6d

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->szSwitchFunctions:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$900(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    # invokes: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->update2(ILjava/lang/Object;II)V
    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$1000(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 358
    :cond_e
    const-string v5, "function_switch_off"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 360
    const-string v5, "UsbDeviceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[USBNET] SWITCH_NAME: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",SWITCH_STATE="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v6, 0x0

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mSwitchFunction:Z
    invoke-static {v5, v6}, Lcom/android/server/usb/UsbDeviceManager;->access$802(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 363
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->szSwitchFunctions:Ljava/lang/String;
    invoke-static {v5, v4}, Lcom/android/server/usb/UsbDeviceManager;->access$902(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 364
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v5}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v5

    const/16 v6, 0x6d

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->szSwitchFunctions:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$900(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    # invokes: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->update2(ILjava/lang/Object;II)V
    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$1000(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
