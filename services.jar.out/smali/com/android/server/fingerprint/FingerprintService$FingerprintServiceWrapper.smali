.class final Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;
.super Landroid/hardware/fingerprint/IFingerprintService$Stub;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FingerprintServiceWrapper"
.end annotation


# static fields
.field private static final KEYGUARD_PACKAGE:Ljava/lang/String; = "com.android.systemui"


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method private constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0

    .prologue
    .line 806
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p2, "x1"    # Lcom/android/server/fingerprint/FingerprintService$1;

    .prologue
    .line 806
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    return-void
.end method

.method private isRestricted()Z
    .locals 3

    .prologue
    .line 851
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string v2, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 852
    .local v0, "restricted":Z
    :goto_0
    return v0

    .line 851
    .end local v0    # "restricted":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public authenticate(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
    .locals 12
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opId"    # J
    .param p4, "groupId"    # I
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "flags"    # I
    .param p7, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 870
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/fingerprint/FingerprintService;->isCurrentUserOrProfile(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 871
    const-string v2, "FingerprintService"

    const-string v3, "Can\'t authenticate non-current user"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :goto_0
    return-void

    .line 874
    :cond_0
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    move-object/from16 v0, p7

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->canUseFingerprint(Ljava/lang/String;)Z
    invoke-static {v2, v0}, Lcom/android/server/fingerprint/FingerprintService;->access$1200(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 875
    const-string v2, "FingerprintService"

    const-string v3, "Calling not granted permission to use fingerprint"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 880
    :cond_1
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mMinCpuNumLocker:Landroid/os/PowerManager$HtcCpuCtrl;
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$1300(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mMinCpuFreqLocker:Landroid/os/PowerManager$HtcCpuCtrl;
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$1400(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 881
    const-string v2, "FingerprintService"

    const-string v3, "Wake up CPU for authentication"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mMinCpuNumLocker:Landroid/os/PowerManager$HtcCpuCtrl;
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$1300(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v2

    const-wide/16 v4, 0x5dc

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$HtcCpuCtrl;->acquire(J)V

    .line 883
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mMinCpuFreqLocker:Landroid/os/PowerManager$HtcCpuCtrl;
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$1400(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v2

    const-wide/16 v4, 0x5dc

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$HtcCpuCtrl;->acquire(J)V

    .line 891
    :goto_1
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    move-result v8

    .line 893
    .local v8, "effectiveGroupId":I
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->isRestricted()Z

    move-result v11

    .line 894
    .local v11, "restricted":Z
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v2, v2, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;

    move-object v4, p0

    move-object v5, p1

    move-wide v6, p2

    move-object/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v3 .. v11}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 885
    .end local v8    # "effectiveGroupId":I
    .end local v11    # "restricted":Z
    :cond_2
    const-string v2, "FingerprintService"

    const-string v3, "Lack of CPU controller"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->canUseFingerprint(Ljava/lang/String;)Z
    invoke-static {v0, p2}, Lcom/android/server/fingerprint/FingerprintService;->access$1200(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 913
    :goto_0
    return-void

    .line 907
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$4;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public cancelEnrollment(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 857
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 858
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$2;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 864
    return-void
.end method

.method public enroll(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;I)V
    .locals 14
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cryptoToken"    # [B
    .param p3, "groupId"    # I
    .param p4, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p5, "flags"    # I

    .prologue
    .line 824
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string v2, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 825
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$1100(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0097

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 827
    .local v11, "limit":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 828
    .local v9, "callingUid":I
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 829
    .local v12, "userId":I
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v1, v12}, Lcom/android/server/fingerprint/FingerprintService;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    .line 830
    .local v10, "enrolled":I
    if-lt v10, v11, :cond_0

    .line 831
    const-string v1, "FingerprintService"

    const-string v2, "Too many fingerprints registered"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :goto_0
    return-void

    .line 834
    :cond_0
    move-object/from16 v0, p2

    array-length v1, v0

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    .line 838
    .local v4, "cryptoClone":[B
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    move-result v5

    .line 840
    .local v5, "effectiveGroupId":I
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->isRestricted()Z

    move-result v8

    .line 841
    .local v8, "restricted":Z
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v13, v1, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZ)V

    invoke-virtual {v13, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getAuthenticatorId(Ljava/lang/String;)J
    .locals 2
    .param p1, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 998
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->getAuthenticatorId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEnrolledFingerprints(ILjava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 962
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->canUseFingerprint(Ljava/lang/String;)Z
    invoke-static {v1, p2}, Lcom/android/server/fingerprint/FingerprintService;->access$1200(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 963
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 967
    :goto_0
    return-object v1

    .line 965
    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v1, p1}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    move-result v0

    .line 967
    .local v0, "effectiveUserId":I
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v1, v0}, Lcom/android/server/fingerprint/FingerprintService;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public hasEnrolledFingerprints(ILjava/lang/String;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 972
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->canUseFingerprint(Ljava/lang/String;)Z
    invoke-static {v1, p2}, Lcom/android/server/fingerprint/FingerprintService;->access$1200(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 973
    const/4 v1, 0x0

    .line 977
    :goto_0
    return v1

    .line 976
    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v1, p1}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    move-result v0

    .line 977
    .local v0, "effectiveUserId":I
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v1, v0}, Lcom/android/server/fingerprint/FingerprintService;->hasEnrolledFingerprints(I)Z

    move-result v1

    goto :goto_0
.end method

.method public isHardwareDetected(JLjava/lang/String;)Z
    .locals 6
    .param p1, "deviceId"    # J
    .param p3, "opPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 935
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->canUseFingerprint(Ljava/lang/String;)Z
    invoke-static {v1, p3}, Lcom/android/server/fingerprint/FingerprintService;->access$1200(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 936
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->HTC_DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$1500()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isHardwareDetected() = false, because unacceptable package = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_0

    const-string p3, "null"

    .end local p3    # "opPackageName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :cond_1
    :goto_0
    return v0

    .line 939
    .restart local p3    # "opPackageName":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$700(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .line 940
    .local v0, "result":Z
    :cond_3
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->HTC_DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$1500()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isHardwareDetected() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", package = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_4

    const-string p3, "null"

    .end local p3    # "opPackageName":Ljava/lang/String;
    :cond_4
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public postEnroll(Landroid/os/IBinder;)I
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 817
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 818
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0, p1}, Lcom/android/server/fingerprint/FingerprintService;->startPostEnroll(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method public preEnroll(Landroid/os/IBinder;)J
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 812
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0, p1}, Lcom/android/server/fingerprint/FingerprintService;->startPreEnroll(Landroid/os/IBinder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public remove(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fingerId"    # I
    .param p3, "groupId"    # I
    .param p4, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .prologue
    .line 918
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 919
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->isRestricted()Z

    move-result v6

    .line 923
    .local v6, "restricted":Z
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0, p3}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    move-result v4

    .line 924
    .local v4, "effectiveGroupId":I
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v7, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Z)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 931
    return-void
.end method

.method public rename(IILjava/lang/String;)V
    .locals 3
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 946
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string v2, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 950
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v1, p2}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    move-result v0

    .line 951
    .local v0, "effectiveGroupId":I
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v1, v1, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;

    invoke-direct {v2, p0, p1, v0, p3}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 958
    return-void
.end method
