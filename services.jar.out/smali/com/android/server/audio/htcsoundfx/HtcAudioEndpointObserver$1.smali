.class Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver$1;
.super Landroid/os/FileObserver;
.source "HtcAudioEndpointObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver;->startObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver;


# direct methods
.method constructor <init>(Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver;Ljava/lang/String;I)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # I

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver$1;->this$0:Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 48
    if-eqz p2, :cond_0

    :try_start_0
    const-string v1, "effect_endpoint_update"

    invoke-virtual {v1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 49
    const-string v1, "HtcAudioEndpointObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver$1;->this$0:Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver;

    # invokes: Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver;->updateAudioEndpoint()V
    invoke-static {v1}, Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver;->access$000(Lcom/android/server/audio/htcsoundfx/HtcAudioEndpointObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
