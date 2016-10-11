.class public final Landroid/hardware/input/InputManager;
.super Ljava/lang/Object;
.source "InputManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/InputManager$1;,
        Landroid/hardware/input/InputManager$InputDeviceVibrator;,
        Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;,
        Landroid/hardware/input/InputManager$InputDevicesChangedListener;,
        Landroid/hardware/input/InputManager$InputDeviceListener;
    }
.end annotation


# static fields
.field public static final ACTION_QUERY_KEYBOARD_LAYOUTS:Ljava/lang/String; = "android.hardware.input.action.QUERY_KEYBOARD_LAYOUTS"

.field private static final DEBUG:Z = false

.field public static final DEFAULT_POINTER_SPEED:I = 0x0

.field public static final INJECT_INPUT_EVENT_MODE_ASYNC:I = 0x0

.field public static final INJECT_INPUT_EVENT_MODE_WAIT_FOR_FINISH:I = 0x2

.field public static final INJECT_INPUT_EVENT_MODE_WAIT_FOR_RESULT:I = 0x1

.field public static final MAX_POINTER_SPEED:I = 0x7

.field public static final META_DATA_KEYBOARD_LAYOUTS:Ljava/lang/String; = "android.hardware.input.metadata.KEYBOARD_LAYOUTS"

.field public static final MIN_POINTER_SPEED:I = -0x7

.field private static final MSG_DEVICE_ADDED:I = 0x1

.field private static final MSG_DEVICE_CHANGED:I = 0x3

.field private static final MSG_DEVICE_REMOVED:I = 0x2

.field public static final NONSYSTEMLEVEL_INJECT:I = 0x0

.field public static final SYSTEMLEVEL_INJECT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "InputManager"

.field private static sInstance:Landroid/hardware/input/InputManager;


# instance fields
.field private final mIm:Landroid/hardware/input/IInputManager;

.field private final mInputDeviceListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mInputDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mInputDevicesChangedListener:Landroid/hardware/input/InputManager$InputDevicesChangedListener;

.field private final mInputDevicesLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/hardware/input/IInputManager;)V
    .locals 1
    .param p1, "im"    # Landroid/hardware/input/IInputManager;

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    .line 187
    iput-object p1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    .line 188
    return-void
.end method

.method static synthetic access$100(Landroid/hardware/input/InputManager;[I)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/input/InputManager;
    .param p1, "x1"    # [I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager;->onInputDevicesChanged([I)V

    return-void
.end method

.method static synthetic access$200(Landroid/hardware/input/InputManager;)Landroid/hardware/input/IInputManager;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/input/InputManager;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    return-object v0
.end method

.method private static containsDeviceId([II)Z
    .locals 2
    .param p0, "deviceIdAndGeneration"    # [I
    .param p1, "deviceId"    # I

    .prologue
    .line 843
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 844
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 845
    const/4 v1, 0x1

    .line 848
    :goto_1
    return v1

    .line 843
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 848
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private findInputDeviceListenerLocked(Landroid/hardware/input/InputManager$InputDeviceListener;)I
    .locals 3
    .param p1, "listener"    # Landroid/hardware/input/InputManager$InputDeviceListener;

    .prologue
    .line 336
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 337
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 338
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;

    iget-object v2, v2, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;->mListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    if-ne v2, p1, :cond_0

    .line 342
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 337
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 342
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static getInstance()Landroid/hardware/input/InputManager;
    .locals 4

    .prologue
    .line 198
    const-class v2, Landroid/hardware/input/InputManager;

    monitor-enter v2

    .line 199
    :try_start_0
    sget-object v1, Landroid/hardware/input/InputManager;->sInstance:Landroid/hardware/input/InputManager;

    if-nez v1, :cond_0

    .line 200
    const-string/jumbo v1, "input"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 201
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Landroid/hardware/input/InputManager;

    invoke-static {v0}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/hardware/input/InputManager;-><init>(Landroid/hardware/input/IInputManager;)V

    sput-object v1, Landroid/hardware/input/InputManager;->sInstance:Landroid/hardware/input/InputManager;

    .line 203
    :cond_0
    sget-object v1, Landroid/hardware/input/InputManager;->sInstance:Landroid/hardware/input/InputManager;

    monitor-exit v2

    return-object v1

    .line 204
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onInputDevicesChanged([I)V
    .locals 8
    .param p1, "deviceIdAndGeneration"    # [I

    .prologue
    .line 796
    iget-object v6, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v6

    .line 797
    :try_start_0
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v3

    .local v3, "i":I
    :cond_0
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_1

    .line 798
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 799
    .local v1, "deviceId":I
    invoke-static {p1, v1}, Landroid/hardware/input/InputManager;->containsDeviceId([II)Z

    move-result v5

    if-nez v5, :cond_0

    .line 803
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 804
    const/4 v5, 0x2

    invoke-direct {p0, v5, v1}, Landroid/hardware/input/InputManager;->sendMessageToInputDeviceListenersLocked(II)V

    goto :goto_0

    .line 831
    .end local v1    # "deviceId":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 808
    .restart local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    :goto_1
    :try_start_1
    array-length v5, p1

    if-ge v3, v5, :cond_4

    .line 809
    aget v1, p1, v3

    .line 810
    .restart local v1    # "deviceId":I
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    .line 811
    .local v4, "index":I
    if-ltz v4, :cond_3

    .line 812
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputDevice;

    .line 813
    .local v0, "device":Landroid/view/InputDevice;
    if-eqz v0, :cond_2

    .line 814
    add-int/lit8 v5, v3, 0x1

    aget v2, p1, v5

    .line 815
    .local v2, "generation":I
    invoke-virtual {v0}, Landroid/view/InputDevice;->getGeneration()I

    move-result v5

    if-eq v5, v2, :cond_2

    .line 819
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 820
    const/4 v5, 0x3

    invoke-direct {p0, v5, v1}, Landroid/hardware/input/InputManager;->sendMessageToInputDeviceListenersLocked(II)V

    .line 808
    .end local v0    # "device":Landroid/view/InputDevice;
    .end local v2    # "generation":I
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 827
    :cond_3
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    const/4 v7, 0x0

    invoke-virtual {v5, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 828
    const/4 v5, 0x1

    invoke-direct {p0, v5, v1}, Landroid/hardware/input/InputManager;->sendMessageToInputDeviceListenersLocked(II)V

    goto :goto_2

    .line 831
    .end local v1    # "deviceId":I
    .end local v4    # "index":I
    :cond_4
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 832
    return-void
.end method

.method private populateInputDevicesLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 765
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevicesChangedListener:Landroid/hardware/input/InputManager$InputDevicesChangedListener;

    if-nez v4, :cond_0

    .line 766
    new-instance v3, Landroid/hardware/input/InputManager$InputDevicesChangedListener;

    invoke-direct {v3, p0, v6}, Landroid/hardware/input/InputManager$InputDevicesChangedListener;-><init>(Landroid/hardware/input/InputManager;Landroid/hardware/input/InputManager$1;)V

    .line 768
    .local v3, "listener":Landroid/hardware/input/InputManager$InputDevicesChangedListener;
    :try_start_0
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v4, v3}, Landroid/hardware/input/IInputManager;->registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    iput-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevicesChangedListener:Landroid/hardware/input/InputManager$InputDevicesChangedListener;

    .line 776
    .end local v3    # "listener":Landroid/hardware/input/InputManager$InputDevicesChangedListener;
    :cond_0
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    if-nez v4, :cond_1

    .line 779
    :try_start_1
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v4}, Landroid/hardware/input/IInputManager;->getInputDeviceIds()[I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 784
    .local v2, "ids":[I
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    .line 785
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 786
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    aget v5, v2, v1

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 785
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 769
    .end local v1    # "i":I
    .end local v2    # "ids":[I
    .restart local v3    # "listener":Landroid/hardware/input/InputManager$InputDevicesChangedListener;
    :catch_0
    move-exception v0

    .line 770
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Could not get register input device changed listener"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 780
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v3    # "listener":Landroid/hardware/input/InputManager$InputDevicesChangedListener;
    :catch_1
    move-exception v0

    .line 781
    .restart local v0    # "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Could not get input device ids."

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 789
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_1
    return-void
.end method

.method private sendMessageToInputDeviceListenersLocked(II)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "deviceId"    # I

    .prologue
    .line 835
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 836
    .local v2, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 837
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;

    .line 838
    .local v1, "listener":Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;
    const/4 v3, 0x0

    invoke-virtual {v1, p1, p2, v3}, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 836
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 840
    .end local v1    # "listener":Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;
    :cond_0
    return-void
.end method


# virtual methods
.method public addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 3
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    .line 471
    if-nez p1, :cond_0

    .line 472
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "inputDeviceDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 474
    :cond_0
    if-nez p2, :cond_1

    .line 475
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 479
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1, p2}, Landroid/hardware/input/IInputManager;->addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :goto_0
    return-void

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not add keyboard layout for input device."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public deviceHasKeys(I[I)[Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 649
    array-length v1, p2

    new-array v0, v1, [Z

    .line 651
    .local v0, "ret":[Z
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    const/16 v2, -0x100

    invoke-interface {v1, p1, v2, p2, v0}, Landroid/hardware/input/IInputManager;->hasKeys(II[I[Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    :goto_0
    return-object v0

    .line 652
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public deviceHasKeys([I)[Z
    .locals 1
    .param p1, "keyCodes"    # [I

    .prologue
    .line 632
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/input/InputManager;->deviceHasKeys(I[I)[Z

    move-result-object v0

    return-object v0
.end method

.method public getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    .locals 3
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 399
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 402
    :goto_0
    return-object v1

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not get current keyboard layout for input device."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 402
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInputDevice(I)Landroid/view/InputDevice;
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 213
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 214
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/input/InputManager;->populateInputDevicesLocked()V

    .line 216
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 217
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 218
    const/4 v2, 0x0

    monitor-exit v4

    .line 232
    :goto_0
    return-object v2

    .line 221
    :cond_0
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    .local v2, "inputDevice":Landroid/view/InputDevice;
    if-nez v2, :cond_1

    .line 224
    :try_start_1
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v3, p1}, Landroid/hardware/input/IInputManager;->getInputDevice(I)Landroid/view/InputDevice;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 228
    if-eqz v2, :cond_1

    .line 229
    :try_start_2
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 232
    :cond_1
    monitor-exit v4

    goto :goto_0

    .line 233
    .end local v1    # "index":I
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 225
    .restart local v1    # "index":I
    .restart local v2    # "inputDevice":Landroid/view/InputDevice;
    :catch_0
    move-exception v0

    .line 226
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_3
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "Could not get input device information."

    invoke-direct {v3, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public getInputDeviceByDescriptor(Ljava/lang/String;)Landroid/view/InputDevice;
    .locals 6
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 243
    if-nez p1, :cond_0

    .line 244
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "descriptor must not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 247
    :cond_0
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 248
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/input/InputManager;->populateInputDevicesLocked()V

    .line 250
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 251
    .local v3, "numDevices":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_4

    .line 252
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice;

    .line 253
    .local v2, "inputDevice":Landroid/view/InputDevice;
    if-nez v2, :cond_3

    .line 254
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 256
    .local v1, "id":I
    :try_start_1
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v4, v1}, Landroid/hardware/input/IInputManager;->getInputDevice(I)Landroid/view/InputDevice;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 260
    :goto_1
    if-nez v2, :cond_2

    .line 251
    .end local v1    # "id":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    .restart local v1    # "id":I
    :cond_2
    :try_start_2
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v0, v2}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 265
    .end local v1    # "id":I
    :cond_3
    invoke-virtual {v2}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 266
    monitor-exit v5

    .line 269
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    :goto_2
    return-object v2

    :cond_4
    const/4 v2, 0x0

    monitor-exit v5

    goto :goto_2

    .line 270
    .end local v0    # "i":I
    .end local v3    # "numDevices":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 257
    .restart local v0    # "i":I
    .restart local v1    # "id":I
    .restart local v2    # "inputDevice":Landroid/view/InputDevice;
    .restart local v3    # "numDevices":I
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public getInputDeviceIds()[I
    .locals 5

    .prologue
    .line 278
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 279
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/input/InputManager;->populateInputDevicesLocked()V

    .line 281
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 282
    .local v0, "count":I
    new-array v2, v0, [I

    .line 283
    .local v2, "ids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 284
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v2, v1

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 286
    :cond_0
    monitor-exit v4

    return-object v2

    .line 287
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "ids":[I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getInputDeviceVibrator(I)Landroid/os/Vibrator;
    .locals 1
    .param p1, "deviceId"    # I

    .prologue
    .line 884
    new-instance v0, Landroid/hardware/input/InputManager$InputDeviceVibrator;

    invoke-direct {v0, p0, p1}, Landroid/hardware/input/InputManager$InputDeviceVibrator;-><init>(Landroid/hardware/input/InputManager;I)V

    return-object v0
.end method

.method public getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    .locals 3
    .param p1, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    .line 376
    if-nez p1, :cond_0

    .line 377
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 381
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 384
    :goto_0
    return-object v1

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not get keyboard layout information."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    .locals 3

    .prologue
    .line 359
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1}, Landroid/hardware/input/IInputManager;->getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 362
    :goto_0
    return-object v1

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not get list of keyboard layout informations."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 362
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/hardware/input/KeyboardLayout;

    goto :goto_0
.end method

.method public getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    .locals 3
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 445
    if-nez p1, :cond_0

    .line 446
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "inputDeviceDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 450
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 453
    :goto_0
    return-object v1

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not get keyboard layouts for input device."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 453
    const-class v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getLatestEvent(Z)Landroid/view/InputEvent;
    .locals 2
    .param p1, "isKeyEvent"    # Z

    .prologue
    .line 757
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->getLatestEvent(Z)Landroid/view/InputEvent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 759
    :goto_0
    return-object v1

    .line 758
    :catch_0
    move-exception v0

    .line 759
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPointerSpeed(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 566
    const/4 v0, 0x0

    .line 568
    .local v0, "speed":I
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pointer_speed"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 572
    :goto_0
    return v0

    .line 570
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getTouchCalibration(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    .locals 3
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "surfaceRotation"    # I

    .prologue
    .line 524
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1, p2}, Landroid/hardware/input/IInputManager;->getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 527
    :goto_0
    return-object v1

    .line 525
    :catch_0
    move-exception v0

    .line 526
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not get calibration matrix for input device."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 527
    sget-object v1, Landroid/hardware/input/TouchCalibration;->IDENTITY:Landroid/hardware/input/TouchCalibration;

    goto :goto_0
.end method

.method public hasGloveMode()Z
    .locals 4

    .prologue
    .line 998
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1}, Landroid/hardware/input/IInputManager;->hasGloveMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1003
    :goto_0
    return v1

    .line 999
    :catch_0
    move-exception v0

    .line 1000
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasGloveMode Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;I)Z
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I

    .prologue
    .line 681
    if-nez p1, :cond_0

    .line 682
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "event must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 684
    :cond_0
    if-eqz p2, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    .line 687
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "mode is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 691
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1, p2}, Landroid/hardware/input/IInputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 693
    :goto_0
    return v1

    .line 692
    :catch_0
    move-exception v0

    .line 693
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public injectInputEventWithLevel(Landroid/view/InputEvent;II)Z
    .locals 8
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I
    .param p3, "injectLevel"    # I

    .prologue
    const/4 v7, 0x1

    .line 725
    if-nez p1, :cond_0

    .line 726
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "event must not be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 728
    :cond_0
    if-eqz p2, :cond_1

    const/4 v6, 0x2

    if-eq p2, v6, :cond_1

    if-eq p2, v7, :cond_1

    .line 731
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "mode is invalid"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 734
    :cond_1
    move-object v1, p1

    .line 736
    .local v1, "evt":Landroid/view/InputEvent;
    if-ne p3, v7, :cond_2

    .line 737
    :try_start_0
    instance-of v6, p1, Landroid/view/MotionEvent;

    if-eqz v6, :cond_3

    .line 738
    check-cast p1, Landroid/view/MotionEvent;

    .end local p1    # "event":Landroid/view/InputEvent;
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 739
    .local v4, "motion":Landroid/view/MotionEvent;
    invoke-virtual {v4}, Landroid/view/MotionEvent;->setSystemInjectFlag()V

    .line 740
    move-object v1, v4

    .line 747
    .end local v4    # "motion":Landroid/view/MotionEvent;
    :cond_2
    :goto_0
    iget-object v6, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v6, v1, p2}, Landroid/hardware/input/IInputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v6

    .line 749
    :goto_1
    return v6

    .line 741
    .restart local p1    # "event":Landroid/view/InputEvent;
    :cond_3
    instance-of v6, p1, Landroid/view/KeyEvent;

    if-eqz v6, :cond_2

    .line 742
    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    move-object v5, v0

    .line 743
    .local v5, "orig":Landroid/view/KeyEvent;
    invoke-virtual {v5}, Landroid/view/KeyEvent;->getFlags()I

    move-result v6

    const/high16 v7, 0x10000

    or-int/2addr v6, v7

    invoke-static {v5, v6}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 744
    .local v3, "key":Landroid/view/KeyEvent;
    move-object v1, v3

    goto :goto_0

    .line 748
    .end local v3    # "key":Landroid/view/KeyEvent;
    .end local v5    # "orig":Landroid/view/KeyEvent;
    .end local p1    # "event":Landroid/view/InputEvent;
    :catch_0
    move-exception v2

    .line 749
    .local v2, "ex":Landroid/os/RemoteException;
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/input/InputManager$InputDeviceListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 301
    if-nez p1, :cond_0

    .line 302
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "listener must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 305
    :cond_0
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 306
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager;->findInputDeviceListenerLocked(Landroid/hardware/input/InputManager$InputDeviceListener;)I

    move-result v0

    .line 307
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 308
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    new-instance v3, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;

    invoke-direct {v3, p1, p2}, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;-><init>(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_1
    monitor-exit v2

    .line 311
    return-void

    .line 310
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 3
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    .line 499
    if-nez p1, :cond_0

    .line 500
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "inputDeviceDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 502
    :cond_0
    if-nez p2, :cond_1

    .line 503
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 507
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1, p2}, Landroid/hardware/input/IInputManager;->removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    :goto_0
    return-void

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not remove keyboard layout for input device."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setBroadcastKeyEventMode(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 854
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->setBroadcastKeyEventMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    :goto_0
    return-void

    .line 855
    :catch_0
    move-exception v0

    .line 856
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBroadcastKeyEventMode Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBroadcastMotionEventMode(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 863
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->setBroadcastMotionEventMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    :goto_0
    return-void

    .line 864
    :catch_0
    move-exception v0

    .line 865
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBroadcastMotionEventMode Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBroadcastTrackballEventMode(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 871
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->setBroadcastTrackballEventMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    :goto_0
    return-void

    .line 872
    :catch_0
    move-exception v0

    .line 873
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBroadcastTrackballEventMode Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 3
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    .line 421
    if-nez p1, :cond_0

    .line 422
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "identifier must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 424
    :cond_0
    if-nez p2, :cond_1

    .line 425
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 429
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1, p2}, Landroid/hardware/input/IInputManager;->setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    :goto_0
    return-void

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not set current keyboard layout for input device."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPointerSpeed(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "speed"    # I

    .prologue
    .line 588
    const/4 v0, -0x7

    if-lt p2, v0, :cond_0

    const/4 v0, 0x7

    if-le p2, v0, :cond_1

    .line 589
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "speed out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pointer_speed"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 594
    return-void
.end method

.method public setTouchCalibration(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V
    .locals 3
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "surfaceRotation"    # I
    .param p3, "calibration"    # Landroid/hardware/input/TouchCalibration;

    .prologue
    .line 546
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/hardware/input/IInputManager;->setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :goto_0
    return-void

    .line 547
    :catch_0
    move-exception v0

    .line 548
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not set calibration matrix for input device."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public tryPointerSpeed(I)V
    .locals 3
    .param p1, "speed"    # I

    .prologue
    .line 608
    const/4 v1, -0x7

    if-lt p1, v1, :cond_0

    const/4 v1, 0x7

    if-le p1, v1, :cond_1

    .line 609
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "speed out of range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 613
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->tryPointerSpeed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    :goto_0
    return-void

    .line 614
    :catch_0
    move-exception v0

    .line 615
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not set temporary pointer speed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/input/InputManager$InputDeviceListener;

    .prologue
    .line 321
    if-nez p1, :cond_0

    .line 322
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "listener must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 325
    :cond_0
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 326
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager;->findInputDeviceListenerLocked(Landroid/hardware/input/InputManager$InputDeviceListener;)I

    move-result v1

    .line 327
    .local v1, "index":I
    if-ltz v1, :cond_1

    .line 328
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;

    .line 329
    .local v0, "d":Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 330
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 332
    .end local v0    # "d":Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;
    :cond_1
    monitor-exit v3

    .line 333
    return-void

    .line 332
    .end local v1    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
