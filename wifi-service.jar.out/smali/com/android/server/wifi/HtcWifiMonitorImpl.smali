.class Lcom/android/server/wifi/HtcWifiMonitorImpl;
.super Lcom/android/server/wifi/HtcWifiMonitor;
.source "HtcWifiMonitor.java"


# static fields
.field private static final AKAPrefix:Ljava/lang/String; = "AKA-"

.field private static final AKAPrefixLen:I

.field private static DBG:Z = false

.field private static EVENT_PREFIX_STR:Ljava/lang/String; = null

.field public static final IDPW_MAY_HAVE_PROBLEM_STR:Ljava/lang/String; = "idpw may have problem"

.field public static final NETWORK_MAY_HAVE_PROBLEM_STR:Ljava/lang/String; = "network may have problem"

.field private static PASSWORD_STR:Ljava/lang/String; = null

.field private static REQUEST_PREFIX_STR:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "HtcWifiMonitor"

.field private static mRequestPasswordPattern:Ljava/util/regex/Pattern; = null

.field private static final szAkaInvalidSimEvent:Ljava/lang/String; = "INVALID-SIM"


# instance fields
.field private mStateMachine:Lcom/android/internal/util/StateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/HtcWifiMonitorImpl;->DBG:Z

    .line 61
    const-string v0, ""

    sput-object v0, Lcom/android/server/wifi/HtcWifiMonitorImpl;->EVENT_PREFIX_STR:Ljava/lang/String;

    .line 62
    const-string v0, ""

    sput-object v0, Lcom/android/server/wifi/HtcWifiMonitorImpl;->REQUEST_PREFIX_STR:Ljava/lang/String;

    .line 64
    const-string v0, "PASSWORD"

    sput-object v0, Lcom/android/server/wifi/HtcWifiMonitorImpl;->PASSWORD_STR:Ljava/lang/String;

    .line 71
    const-string v0, "AKA-"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/server/wifi/HtcWifiMonitorImpl;->AKAPrefixLen:I

    .line 75
    const-string v0, "PASSWORD-([0-9]+):Password needed for SSID (.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/HtcWifiMonitorImpl;->mRequestPasswordPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/StateMachine;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "stateMachine"    # Lcom/android/internal/util/StateMachine;
    .param p2, "reqPrefix"    # Ljava/lang/String;
    .param p3, "event_prefix_str"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiMonitor;-><init>()V

    .line 80
    sget-boolean v0, Lcom/android/server/wifi/HtcWifiMonitorImpl;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcWifiMonitor"

    const-string v1, "HtcWifiMonitor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    iput-object p1, p0, Lcom/android/server/wifi/HtcWifiMonitorImpl;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 82
    sput-object p3, Lcom/android/server/wifi/HtcWifiMonitorImpl;->EVENT_PREFIX_STR:Ljava/lang/String;

    .line 83
    sput-object p2, Lcom/android/server/wifi/HtcWifiMonitorImpl;->REQUEST_PREFIX_STR:Ljava/lang/String;

    .line 84
    return-void
.end method


# virtual methods
.method public htcdispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "eventStr"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 87
    sget-object v5, Lcom/android/server/wifi/HtcWifiMonitorImpl;->REQUEST_PREFIX_STR:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 89
    sget-object v5, Lcom/android/server/wifi/HtcWifiMonitorImpl;->REQUEST_PREFIX_STR:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    .line 90
    .local v0, "ReqPrefixLen":I
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "eventName0":Ljava/lang/String;
    const/4 v4, -0x2

    .line 94
    .local v4, "netID":I
    sget-object v5, Lcom/android/server/wifi/HtcWifiMonitorImpl;->PASSWORD_STR:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 95
    const-string v5, "HtcWifiMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handle wrong password:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object v5, Lcom/android/server/wifi/HtcWifiMonitorImpl;->mRequestPasswordPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 97
    .local v3, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 99
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 103
    :goto_0
    iget-object v5, p0, Lcom/android/server/wifi/HtcWifiMonitorImpl;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v6, 0x2406d

    invoke-virtual {v5, v6, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    .line 132
    .end local v0    # "ReqPrefixLen":I
    .end local v2    # "eventName0":Ljava/lang/String;
    .end local v3    # "match":Ljava/util/regex/Matcher;
    .end local v4    # "netID":I
    :cond_0
    :goto_1
    return-void

    .line 100
    .restart local v0    # "ReqPrefixLen":I
    .restart local v2    # "eventName0":Ljava/lang/String;
    .restart local v3    # "match":Ljava/util/regex/Matcher;
    .restart local v4    # "netID":I
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v4, -0x1

    goto :goto_0

    .line 105
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    const-string v5, "HtcWifiMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "didn\'t find SSID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 111
    .end local v0    # "ReqPrefixLen":I
    .end local v2    # "eventName0":Ljava/lang/String;
    .end local v3    # "match":Ljava/util/regex/Matcher;
    .end local v4    # "netID":I
    :cond_2
    const-string v5, "AKA-"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 112
    sget v5, Lcom/android/server/wifi/HtcWifiMonitorImpl;->AKAPrefixLen:I

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 114
    .restart local v2    # "eventName0":Ljava/lang/String;
    const-string v5, "INVALID-SIM"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 115
    iget-object v5, p0, Lcom/android/server/wifi/HtcWifiMonitorImpl;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v6, 0x2406b

    invoke-virtual {v5, v6}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_1
.end method
