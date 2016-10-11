.class public final enum Landroid/net/wifi/HtcWifiCustomizeReader$Feature;
.super Ljava/lang/Enum;
.source "HtcWifiCustomizeReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/HtcWifiCustomizeReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/wifi/HtcWifiCustomizeReader$Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

.field public static final enum AUTO_CONFIGURATION:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

.field public static final enum CONNECTION_FAIL_NOTIFICATION:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

.field public static final enum DEVICE_EXCHANGE_POLICY:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

.field public static final enum HOTSPOT_LAN_SETTING:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

.field public static final enum HOTSPOT_SLEEP_POLICY:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

.field public static final enum HTC_EAP_SIM_FIX:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

.field public static final enum HTC_HOTSPOT_CONFIGURATION:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

.field public static final enum HTC_RSSI_LEVEL:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

.field public static final enum KINETO_GANLITE_V2:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

.field public static final enum LOWER_OPEN_PRIORITY:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

.field public static final enum MANUAL_ASSOCIATE:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

.field public static final enum P2P_GC_EXTENSION:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

.field public static final enum POWER_SAVING:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

.field public static final enum SCREEN_OFF_ALLOW_P2P:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

.field public static final enum VZW_WIFI_AGGREGATION:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

.field public static final enum WIFI_DOCK:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

.field public static final enum WIFI_ENABLE_NOTIFICATION:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

.field public static final enum WIFI_PREFERRED_AP:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 124
    new-instance v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    const-string v1, "HTC_EAP_SIM_FIX"

    invoke-direct {v0, v1, v3}, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->HTC_EAP_SIM_FIX:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    .line 125
    new-instance v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    const-string v1, "KINETO_GANLITE_V2"

    invoke-direct {v0, v1, v4}, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->KINETO_GANLITE_V2:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    .line 126
    new-instance v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    const-string v1, "AUTO_CONFIGURATION"

    invoke-direct {v0, v1, v5}, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->AUTO_CONFIGURATION:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    .line 127
    new-instance v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    const-string v1, "CONNECTION_FAIL_NOTIFICATION"

    invoke-direct {v0, v1, v6}, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->CONNECTION_FAIL_NOTIFICATION:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    .line 128
    new-instance v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    const-string v1, "LOWER_OPEN_PRIORITY"

    invoke-direct {v0, v1, v7}, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->LOWER_OPEN_PRIORITY:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    .line 129
    new-instance v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    const-string v1, "WIFI_DOCK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->WIFI_DOCK:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    .line 130
    new-instance v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    const-string v1, "VZW_WIFI_AGGREGATION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->VZW_WIFI_AGGREGATION:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    .line 131
    new-instance v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    const-string v1, "P2P_GC_EXTENSION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->P2P_GC_EXTENSION:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    .line 132
    new-instance v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    const-string v1, "DEVICE_EXCHANGE_POLICY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->DEVICE_EXCHANGE_POLICY:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    .line 133
    new-instance v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    const-string v1, "HOTSPOT_SLEEP_POLICY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->HOTSPOT_SLEEP_POLICY:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    .line 134
    new-instance v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    const-string v1, "HTC_HOTSPOT_CONFIGURATION"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->HTC_HOTSPOT_CONFIGURATION:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    .line 135
    new-instance v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    const-string v1, "HTC_RSSI_LEVEL"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->HTC_RSSI_LEVEL:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    .line 136
    new-instance v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    const-string v1, "MANUAL_ASSOCIATE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->MANUAL_ASSOCIATE:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    .line 137
    new-instance v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    const-string v1, "SCREEN_OFF_ALLOW_P2P"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->SCREEN_OFF_ALLOW_P2P:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    .line 138
    new-instance v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    const-string v1, "WIFI_ENABLE_NOTIFICATION"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->WIFI_ENABLE_NOTIFICATION:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    .line 139
    new-instance v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    const-string v1, "WIFI_PREFERRED_AP"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->WIFI_PREFERRED_AP:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    .line 140
    new-instance v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    const-string v1, "POWER_SAVING"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->POWER_SAVING:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    .line 141
    new-instance v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    const-string v1, "HOTSPOT_LAN_SETTING"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->HOTSPOT_LAN_SETTING:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    .line 123
    const/16 v0, 0x12

    new-array v0, v0, [Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    sget-object v1, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->HTC_EAP_SIM_FIX:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    aput-object v1, v0, v3

    sget-object v1, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->KINETO_GANLITE_V2:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    aput-object v1, v0, v4

    sget-object v1, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->AUTO_CONFIGURATION:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    aput-object v1, v0, v5

    sget-object v1, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->CONNECTION_FAIL_NOTIFICATION:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    aput-object v1, v0, v6

    sget-object v1, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->LOWER_OPEN_PRIORITY:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->WIFI_DOCK:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->VZW_WIFI_AGGREGATION:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->P2P_GC_EXTENSION:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->DEVICE_EXCHANGE_POLICY:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->HOTSPOT_SLEEP_POLICY:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->HTC_HOTSPOT_CONFIGURATION:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->HTC_RSSI_LEVEL:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->MANUAL_ASSOCIATE:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->SCREEN_OFF_ALLOW_P2P:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->WIFI_ENABLE_NOTIFICATION:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->WIFI_PREFERRED_AP:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->POWER_SAVING:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->HOTSPOT_LAN_SETTING:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->$VALUES:[Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/wifi/HtcWifiCustomizeReader$Feature;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 123
    const-class v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    return-object v0
.end method

.method public static values()[Landroid/net/wifi/HtcWifiCustomizeReader$Feature;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->$VALUES:[Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    invoke-virtual {v0}, [Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    return-object v0
.end method
