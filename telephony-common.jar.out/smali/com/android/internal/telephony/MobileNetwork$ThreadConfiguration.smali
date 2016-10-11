.class Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;
.super Ljava/lang/Object;
.source "MobileNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MobileNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadConfiguration"
.end annotation


# instance fields
.field private cache:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/MobileNetwork$CachedSetting;",
            ">;"
        }
    .end annotation
.end field

.field private cacheInPreference:Ljava/lang/String;

.field private callback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

.field private context:Landroid/content/Context;

.field private criticalSection:Ljava/lang/Object;

.field private lastErrorLogTimeInMs:J

.field private matchSelection:Z

.field private slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/MobileNetwork$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/MobileNetwork$1;

    .prologue
    .line 5323
    invoke-direct {p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;-><init>()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    .prologue
    .line 5323
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 5323
    iput-object p1, p0, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->context:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    .prologue
    .line 5323
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->callback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;)Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;
    .param p1, "x1"    # Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    .prologue
    .line 5323
    iput-object p1, p0, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->callback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    .prologue
    .line 5323
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->cacheInPreference:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 5323
    iput-object p1, p0, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->cacheInPreference:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4000(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    .prologue
    .line 5323
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->criticalSection:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 5323
    iput-object p1, p0, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->criticalSection:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    .prologue
    .line 5323
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->cache:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;
    .param p1, "x1"    # Ljava/util/LinkedList;

    .prologue
    .line 5323
    iput-object p1, p0, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->cache:Ljava/util/LinkedList;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    .prologue
    .line 5323
    iget-boolean v0, p0, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->matchSelection:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;
    .param p1, "x1"    # Z

    .prologue
    .line 5323
    iput-boolean p1, p0, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->matchSelection:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Lcom/android/internal/telephony/MobileNetwork$Selection;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    .prologue
    .line 5323
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Selection;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;
    .param p1, "x1"    # Lcom/android/internal/telephony/MobileNetwork$Selection;

    .prologue
    .line 5323
    iput-object p1, p0, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    .prologue
    .line 5323
    iget-wide v0, p0, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->lastErrorLogTimeInMs:J

    return-wide v0
.end method

.method static synthetic access$6102(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;
    .param p1, "x1"    # J

    .prologue
    .line 5323
    iput-wide p1, p0, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->lastErrorLogTimeInMs:J

    return-wide p1
.end method
