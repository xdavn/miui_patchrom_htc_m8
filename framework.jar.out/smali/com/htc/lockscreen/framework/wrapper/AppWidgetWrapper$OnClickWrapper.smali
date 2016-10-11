.class Lcom/htc/lockscreen/framework/wrapper/AppWidgetWrapper$OnClickWrapper;
.super Landroid/widget/RemoteViews$OnClickHandler;
.source "AppWidgetWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/framework/wrapper/AppWidgetWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnClickWrapper"
.end annotation


# instance fields
.field private mListener:Lcom/htc/lockscreen/framework/wrapper/AppWidgetWrapper$HtcOnWidgetClickInvocationHandler;


# direct methods
.method public constructor <init>(Lcom/htc/lockscreen/framework/wrapper/AppWidgetWrapper$HtcOnWidgetClickInvocationHandler;)V
    .locals 0
    .param p1, "listener"    # Lcom/htc/lockscreen/framework/wrapper/AppWidgetWrapper$HtcOnWidgetClickInvocationHandler;

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/widget/RemoteViews$OnClickHandler;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/htc/lockscreen/framework/wrapper/AppWidgetWrapper$OnClickWrapper;->mListener:Lcom/htc/lockscreen/framework/wrapper/AppWidgetWrapper$HtcOnWidgetClickInvocationHandler;

    .line 52
    return-void
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "hook":Z
    iget-object v1, p0, Lcom/htc/lockscreen/framework/wrapper/AppWidgetWrapper$OnClickWrapper;->mListener:Lcom/htc/lockscreen/framework/wrapper/AppWidgetWrapper$HtcOnWidgetClickInvocationHandler;

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/htc/lockscreen/framework/wrapper/AppWidgetWrapper$OnClickWrapper;->mListener:Lcom/htc/lockscreen/framework/wrapper/AppWidgetWrapper$HtcOnWidgetClickInvocationHandler;

    invoke-interface {v1, p1, p2, p3}, Lcom/htc/lockscreen/framework/wrapper/AppWidgetWrapper$HtcOnWidgetClickInvocationHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v0

    .line 61
    :cond_0
    if-nez v0, :cond_1

    .line 62
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v1

    .line 64
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
