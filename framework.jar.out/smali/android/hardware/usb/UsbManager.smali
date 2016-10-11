.class public Landroid/hardware/usb/UsbManager;
.super Ljava/lang/Object;
.source "UsbManager.java"


# static fields
.field public static final ACTION_USB_ACCESSORY_ATTACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

.field public static final ACTION_USB_ACCESSORY_DETACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

.field public static final ACTION_USB_CONNECT2PC:Ljava/lang/String; = "com.htc.intent.action.USB_CONNECT2PC"

.field public static final ACTION_USB_DEVICE_ATTACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_DEVICE_ATTACHED"

.field public static final ACTION_USB_DEVICE_DETACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_DEVICE_DETACHED"

.field public static final ACTION_USB_HSML_STATE:Ljava/lang/String; = "com.htc.mirrorlink.hsml.STATE_CHANGED"

.field public static final ACTION_USB_HTCMODE_STATE:Ljava/lang/String; = "com.htc.autobot.htcmodeclient.USBPlug"

.field public static final ACTION_USB_HTC_CARMODE:Ljava/lang/String; = "com.htc.intent.action.USB_HTC_CARMODE"

.field public static final ACTION_USB_PORT_CHANGED:Ljava/lang/String; = "android.hardware.usb.action.USB_PORT_CHANGED"

.field public static final ACTION_USB_STATE:Ljava/lang/String; = "android.hardware.usb.action.USB_STATE"

.field public static final EXTRA_ACCESSORY:Ljava/lang/String; = "accessory"

.field public static final EXTRA_DEVICE:Ljava/lang/String; = "device"

.field public static final EXTRA_PERMISSION_GRANTED:Ljava/lang/String; = "permission"

.field public static final EXTRA_PORT:Ljava/lang/String; = "port"

.field public static final EXTRA_PORT_STATUS:Ljava/lang/String; = "portStatus"

.field private static final TAG:Ljava/lang/String; = "UsbManager"

.field public static final USB_CONFIGURED:Ljava/lang/String; = "configured"

.field public static final USB_CONNECT2PC:Ljava/lang/String; = "connected"

.field public static final USB_CONNECTED:Ljava/lang/String; = "connected"

.field public static final USB_DATA_UNLOCKED:Ljava/lang/String; = "unlocked"

.field public static final USB_FUNCTION_ACCESSORY:Ljava/lang/String; = "accessory"

.field public static final USB_FUNCTION_ACM:Ljava/lang/String; = "acm"

.field public static final USB_FUNCTION_ADB:Ljava/lang/String; = "adb"

.field public static final USB_FUNCTION_AUDIO_SOURCE:Ljava/lang/String; = "audio_source"

.field public static final USB_FUNCTION_CDROM:Ljava/lang/String; = "cdrom"

.field public static final USB_FUNCTION_CHARGED:Ljava/lang/String; = "charged"

.field public static final USB_FUNCTION_CHARGING_OFF:Ljava/lang/String; = "charging_off"

.field public static final USB_FUNCTION_CHARGING_ON:Ljava/lang/String; = "charging_on"

.field public static final USB_FUNCTION_DIAG:Ljava/lang/String; = "diag"

.field public static final USB_FUNCTION_DIAG_MDM:Ljava/lang/String; = "diag_mdm"

.field public static final USB_FUNCTION_DISKMODE:Ljava/lang/String; = "diskmode"

.field public static final USB_FUNCTION_ECM:Ljava/lang/String; = "cdc_ethernet"

.field public static final USB_FUNCTION_HSM_ACM:Ljava/lang/String; = "hsm-acm"

.field public static final USB_FUNCTION_IPT:Ljava/lang/String; = "ipton"

.field public static final USB_FUNCTION_IPT_CONNECTED:Ljava/lang/String; = "ipt_connected"

.field public static final USB_FUNCTION_IPT_DISABLE:Ljava/lang/String; = "ipt_disable"

.field public static final USB_FUNCTION_IPT_ENABLE:Ljava/lang/String; = "ipt_enable"

.field public static final USB_FUNCTION_MASS_STORAGE:Ljava/lang/String; = "mass_storage"

.field public static final USB_FUNCTION_MIDI:Ljava/lang/String; = "midi"

.field public static final USB_FUNCTION_MODEM:Ljava/lang/String; = "modem"

.field public static final USB_FUNCTION_MTP:Ljava/lang/String; = "mtp"

.field public static final USB_FUNCTION_NCM:Ljava/lang/String; = "cdc_network"

.field public static final USB_FUNCTION_NONE:Ljava/lang/String; = "none"

.field public static final USB_FUNCTION_PTP:Ljava/lang/String; = "ptp"

.field public static final USB_FUNCTION_RNDIS:Ljava/lang/String; = "rndis"

.field public static final USB_FUNCTION_SERIAL:Ljava/lang/String; = "serial"

.field public static final USB_FUNCTION_TOOL_DIAG_OFF:Ljava/lang/String; = "tool_diag_off"

.field public static final USB_FUNCTION_TOOL_DIAG_ON:Ljava/lang/String; = "tool_diag_on"

.field public static final USB_HSML_STATE:Ljava/lang/String; = "state"

.field public static final USB_HTCMODE_STATE:Ljava/lang/String; = "IsPlug"

.field public static USB_SWITCH_MTP_OFF:Ljava/lang/String;

.field public static USB_SWITCH_MTP_ON:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/hardware/usb/IUsbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 350
    const-string v0, "com.htc.android.start_MTP"

    sput-object v0, Landroid/hardware/usb/UsbManager;->USB_SWITCH_MTP_ON:Ljava/lang/String;

    .line 352
    const-string v0, "com.htc.android.stop_MTP"

    sput-object v0, Landroid/hardware/usb/UsbManager;->USB_SWITCH_MTP_OFF:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/usb/IUsbManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/hardware/usb/IUsbManager;

    .prologue
    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    iput-object p1, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    .line 384
    iput-object p2, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    .line 385
    return-void
.end method

.method public static addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "functions"    # Ljava/lang/String;
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 702
    const-string/jumbo v0, "none"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    .end local p1    # "function":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 705
    .restart local p1    # "function":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 706
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 709
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    move-object p1, p0

    .line 711
    goto :goto_0
.end method

.method public static containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "functions"    # Ljava/lang/String;
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x2c

    const/4 v2, 0x0

    .line 740
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 741
    .local v1, "index":I
    if-gez v1, :cond_1

    .line 745
    :cond_0
    :goto_0
    return v2

    .line 742
    :cond_1
    if-lez v1, :cond_2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_0

    .line 743
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v1, v3

    .line 744
    .local v0, "charAfter":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_0

    .line 745
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "functions"    # Ljava/lang/String;
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 716
    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 717
    .local v3, "split":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 718
    aget-object v4, v3, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 719
    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 717
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 722
    :cond_1
    array-length v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-nez v4, :cond_2

    .line 723
    const-string/jumbo v4, "none"

    .line 735
    :goto_1
    return-object v4

    .line 725
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 726
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    :goto_2
    array-length v4, v3

    if-ge v1, v4, :cond_5

    .line 727
    aget-object v2, v3, v1

    .line 728
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 729
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 730
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 735
    .end local v2    # "s":Ljava/lang/String;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method


# virtual methods
.method public getAccessoryList()[Landroid/hardware/usb/UsbAccessory;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 443
    :try_start_0
    iget-object v3, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v3}, Landroid/hardware/usb/IUsbManager;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    .line 444
    .local v0, "accessory":Landroid/hardware/usb/UsbAccessory;
    if-nez v0, :cond_0

    .line 451
    .end local v0    # "accessory":Landroid/hardware/usb/UsbAccessory;
    :goto_0
    return-object v2

    .line 447
    .restart local v0    # "accessory":Landroid/hardware/usb/UsbAccessory;
    :cond_0
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/hardware/usb/UsbAccessory;

    const/4 v4, 0x0

    aput-object v0, v3, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 449
    .end local v0    # "accessory":Landroid/hardware/usb/UsbAccessory;
    :catch_0
    move-exception v1

    .line 450
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "UsbManager"

    const-string v4, "RemoteException in getAccessoryList"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getDeviceList()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 396
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 398
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_0
    iget-object v5, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v5, v0}, Landroid/hardware/usb/IUsbManager;->getDeviceList(Landroid/os/Bundle;)V

    .line 399
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 400
    .local v4, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/hardware/usb/UsbDevice;>;"
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 401
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 404
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/hardware/usb/UsbDevice;>;"
    :catch_0
    move-exception v1

    .line 405
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "UsbManager"

    const-string v6, "RemoteException in getDeviceList"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 406
    const/4 v4, 0x0

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v4
.end method

.method public getPortStatus(Landroid/hardware/usb/UsbPort;)Landroid/hardware/usb/UsbPortStatus;
    .locals 3
    .param p1, "port"    # Landroid/hardware/usb/UsbPort;

    .prologue
    .line 660
    const-string/jumbo v1, "port must not be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/hardware/usb/IUsbManager;->getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 667
    :goto_0
    return-object v1

    .line 664
    :catch_0
    move-exception v0

    .line 665
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "UsbManager"

    const-string v2, "RemoteException in getPortStatus"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 667
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPorts()[Landroid/hardware/usb/UsbPort;
    .locals 3

    .prologue
    .line 644
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v1}, Landroid/hardware/usb/IUsbManager;->getPorts()[Landroid/hardware/usb/UsbPort;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 648
    :goto_0
    return-object v1

    .line 645
    :catch_0
    move-exception v0

    .line 646
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "UsbManager"

    const-string v2, "RemoteException in getPorts"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 648
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUsbDriveStatus()Z
    .locals 3

    .prologue
    .line 776
    const-string v1, "UsbManager"

    const-string v2, "[USBNET] getUsbDriveStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v1}, Landroid/hardware/usb/IUsbManager;->getUsbDriveStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 780
    :goto_0
    return v1

    .line 779
    :catch_0
    move-exception v0

    .line 780
    .local v0, "sEx":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUsbStatus()Z
    .locals 3

    .prologue
    .line 758
    const-string v1, "UsbManager"

    const-string v2, "[USBNET] getUsbStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v1}, Landroid/hardware/usb/IUsbManager;->getUsbStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 762
    :goto_0
    return v1

    .line 761
    :catch_0
    move-exception v0

    .line 762
    .local v0, "sEx":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasPermission(Landroid/hardware/usb/UsbAccessory;)Z
    .locals 3
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .prologue
    .line 499
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v1, p1}, Landroid/hardware/usb/IUsbManager;->hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 502
    :goto_0
    return v1

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "UsbManager"

    const-string v2, "RemoteException in hasPermission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 502
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasPermission(Landroid/hardware/usb/UsbDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 481
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v1, p1}, Landroid/hardware/usb/IUsbManager;->hasDevicePermission(Landroid/hardware/usb/UsbDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 484
    :goto_0
    return v1

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "UsbManager"

    const-string v2, "RemoteException in hasPermission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 484
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFunctionEnabled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 572
    if-nez p1, :cond_0

    .line 579
    :goto_0
    return v1

    .line 576
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v2, p1}, Landroid/hardware/usb/IUsbManager;->isFunctionEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 577
    :catch_0
    move-exception v0

    .line 578
    .local v0, "sEx":Landroid/os/RemoteException;
    const-string v2, "UsbManager"

    const-string v3, "RemoteException in isFunctionEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .prologue
    .line 463
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v1, p1}, Landroid/hardware/usb/IUsbManager;->openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 466
    :goto_0
    return-object v1

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "UsbManager"

    const-string v2, "RemoteException in openAccessory"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 466
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;
    .locals 7
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 419
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, "deviceName":Ljava/lang/String;
    iget-object v5, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v5, v1}, Landroid/hardware/usb/IUsbManager;->openDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 421
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v3, :cond_0

    .line 422
    new-instance v0, Landroid/hardware/usb/UsbDeviceConnection;

    invoke-direct {v0, p1}, Landroid/hardware/usb/UsbDeviceConnection;-><init>(Landroid/hardware/usb/UsbDevice;)V

    .line 423
    .local v0, "connection":Landroid/hardware/usb/UsbDeviceConnection;
    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbDeviceConnection;->open(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v4

    .line 424
    .local v4, "result":Z
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    if-eqz v4, :cond_0

    .line 432
    .end local v0    # "connection":Landroid/hardware/usb/UsbDeviceConnection;
    .end local v1    # "deviceName":Ljava/lang/String;
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "result":Z
    :goto_0
    return-object v0

    .line 429
    :catch_0
    move-exception v2

    .line 430
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "UsbManager"

    const-string v6, "exception in UsbManager.openDevice"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 432
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestPermission(Landroid/hardware/usb/UsbAccessory;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 552
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    iget-object v2, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/hardware/usb/IUsbManager;->requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    :goto_0
    return-void

    .line 553
    :catch_0
    move-exception v0

    .line 554
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "UsbManager"

    const-string v2, "RemoteException in requestPermission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 526
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    iget-object v2, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/hardware/usb/IUsbManager;->requestDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :goto_0
    return-void

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "UsbManager"

    const-string v2, "RemoteException in requestPermission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setCurrentFunction(Ljava/lang/String;)V
    .locals 3
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 607
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v1, p1}, Landroid/hardware/usb/IUsbManager;->setCurrentFunction(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    :goto_0
    return-void

    .line 608
    :catch_0
    move-exception v0

    .line 609
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "UsbManager"

    const-string v2, "RemoteException in setCurrentFunction"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPortRoles(Landroid/hardware/usb/UsbPort;II)V
    .locals 3
    .param p1, "port"    # Landroid/hardware/usb/UsbPort;
    .param p2, "powerRole"    # I
    .param p3, "dataRole"    # I

    .prologue
    .line 690
    const-string/jumbo v1, "port must not be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    invoke-static {p2, p3}, Landroid/hardware/usb/UsbPort;->checkRoles(II)V

    .line 694
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2, p3}, Landroid/hardware/usb/IUsbManager;->setPortRoles(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    :goto_0
    return-void

    .line 695
    :catch_0
    move-exception v0

    .line 696
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "UsbManager"

    const-string v2, "RemoteException in setPortRole"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setUsbDataUnlocked(Z)V
    .locals 3
    .param p1, "unlocked"    # Z

    .prologue
    .line 623
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v1, p1}, Landroid/hardware/usb/IUsbManager;->setUsbDataUnlocked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    :goto_0
    return-void

    .line 624
    :catch_0
    move-exception v0

    .line 625
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "UsbManager"

    const-string v2, "RemoteException in setUsbDataUnlocked"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setUsbDriveStatus(Z)Z
    .locals 4
    .param p1, "bAllowUsb"    # Z

    .prologue
    .line 767
    const-string v1, "UsbManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[USBNET] setUsbDriveStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v1, p1}, Landroid/hardware/usb/IUsbManager;->setUsbDriveStatus(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 771
    :goto_0
    return v1

    .line 770
    :catch_0
    move-exception v0

    .line 771
    .local v0, "sEx":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setUsbStatus(Z)Z
    .locals 4
    .param p1, "bAllowUsb"    # Z

    .prologue
    .line 749
    const-string v1, "UsbManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[USBNET] setUsbStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v1, p1}, Landroid/hardware/usb/IUsbManager;->setUsbStatus(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 753
    :goto_0
    return v1

    .line 752
    :catch_0
    move-exception v0

    .line 753
    .local v0, "sEx":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method
