.class public Lcom/htc/lockscreen/framework/wrapper/FingerprintManagerWrapper;
.super Ljava/lang/Object;
.source "FingerprintManagerWrapper.java"


# instance fields
.field public final FINGERPRINT_ACQUIRED_GOOD:I

.field private mFingerprint:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lockscreen/framework/wrapper/FingerprintManagerWrapper;->FINGERPRINT_ACQUIRED_GOOD:I

    .line 23
    const-string v0, "fingerprint"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/FingerprintManagerWrapper;->mFingerprint:Landroid/hardware/fingerprint/FingerprintManager;

    .line 24
    return-void
.end method


# virtual methods
.method public authenticate(Ljava/lang/Object;Landroid/os/CancellationSignal;ILcom/htc/lockscreen/framework/wrapper/AuthenticationCallbackWrapper;Landroid/os/Handler;I)V
    .locals 7
    .param p1, "crypto"    # Ljava/lang/Object;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/htc/lockscreen/framework/wrapper/AuthenticationCallbackWrapper;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/FingerprintManagerWrapper;->mFingerprint:Landroid/hardware/fingerprint/FingerprintManager;

    move-object v1, p1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;I)V

    .line 30
    return-void
.end method

.method public getEnrolledFingerprintsSize(I)I
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/FingerprintManagerWrapper;->mFingerprint:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isHardwareDetected()Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/FingerprintManagerWrapper;->mFingerprint:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    return v0
.end method
