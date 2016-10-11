.class public Lcom/android/server/wifi/hotspot/HtcHotspotNative;
.super Ljava/lang/Object;
.source "HtcHotspotNative.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "wifi-service"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/android/server/wifi/hotspot/HtcHotspotNative;->registerNatives()I

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native registerNatives()I
.end method

.method public static native stopEventWaiting()Z
.end method

.method public static native waitForEvent()Ljava/lang/String;
.end method
