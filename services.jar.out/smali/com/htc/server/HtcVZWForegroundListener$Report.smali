.class Lcom/htc/server/HtcVZWForegroundListener$Report;
.super Ljava/lang/Object;
.source "HtcVZWForegroundListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcVZWForegroundListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Report"
.end annotation


# instance fields
.field private componentName:Ljava/lang/String;

.field private packageName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/server/HtcVZWForegroundListener$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/htc/server/HtcVZWForegroundListener$1;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/htc/server/HtcVZWForegroundListener$Report;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/server/HtcVZWForegroundListener$Report;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/HtcVZWForegroundListener$Report;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/server/HtcVZWForegroundListener$Report;->componentName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/server/HtcVZWForegroundListener$Report;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/HtcVZWForegroundListener$Report;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/htc/server/HtcVZWForegroundListener$Report;->componentName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/server/HtcVZWForegroundListener$Report;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/HtcVZWForegroundListener$Report;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/server/HtcVZWForegroundListener$Report;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/server/HtcVZWForegroundListener$Report;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/HtcVZWForegroundListener$Report;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/htc/server/HtcVZWForegroundListener$Report;->packageName:Ljava/lang/String;

    return-object p1
.end method
