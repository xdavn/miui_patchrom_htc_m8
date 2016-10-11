.class public Lcom/htc/lockscreen/framework/wrapper/AppWidgetWrapper;
.super Ljava/lang/Object;
.source "AppWidgetWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/framework/wrapper/AppWidgetWrapper$OnClickWrapper;,
        Lcom/htc/lockscreen/framework/wrapper/AppWidgetWrapper$HtcOnWidgetClickInvocationHandler;
    }
.end annotation


# static fields
.field public static final ACTION_KEYGUARD_APPWIDGET_PICK:Ljava/lang/String; = "android.appwidget.action.KEYGUARD_APPWIDGET_PICK"

.field public static final EXTRA_CATEGORY_FILTER:Ljava/lang/String; = "categoryFilter"

.field public static final EXTRA_CUSTOM_SORT:Ljava/lang/String; = "customSort"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static bindAppWidgetId(Landroid/appwidget/AppWidgetManager;ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "manager"    # Landroid/appwidget/AppWidgetManager;
    .param p1, "appWidgetId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 95
    if-eqz p0, :cond_0

    .line 96
    if-nez p3, :cond_1

    .line 97
    invoke-virtual {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static createAppWidgetHost(Landroid/content/Context;ILcom/htc/lockscreen/framework/wrapper/AppWidgetWrapper$HtcOnWidgetClickInvocationHandler;)Landroid/appwidget/AppWidgetHost;
    .locals 3
    .param p0, "userContext"    # Landroid/content/Context;
    .param p1, "APPWIDGET_HOST_ID"    # I
    .param p2, "listener"    # Lcom/htc/lockscreen/framework/wrapper/AppWidgetWrapper$HtcOnWidgetClickInvocationHandler;

    .prologue
    .line 42
    new-instance v0, Lcom/htc/lockscreen/framework/wrapper/AppWidgetWrapper$OnClickWrapper;

    invoke-direct {v0, p2}, Lcom/htc/lockscreen/framework/wrapper/AppWidgetWrapper$OnClickWrapper;-><init>(Lcom/htc/lockscreen/framework/wrapper/AppWidgetWrapper$HtcOnWidgetClickInvocationHandler;)V

    .line 44
    .local v0, "handler":Lcom/htc/lockscreen/framework/wrapper/AppWidgetWrapper$OnClickWrapper;
    new-instance v1, Landroid/appwidget/AppWidgetHost;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, p1, v0, v2}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;ILandroid/widget/RemoteViews$OnClickHandler;Landroid/os/Looper;)V

    return-object v1
.end method

.method public static getAppWidgetIds(Landroid/appwidget/AppWidgetHost;)[I
    .locals 1
    .param p0, "appWidgetHost"    # Landroid/appwidget/AppWidgetHost;

    .prologue
    .line 77
    if-eqz p0, :cond_0

    .line 78
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHost;->getAppWidgetIds()[I

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    goto :goto_0
.end method

.method public static updateAppWidgetSize(Landroid/appwidget/AppWidgetHostView;Landroid/os/Bundle;IIIIZ)V
    .locals 0
    .param p0, "awhv"    # Landroid/appwidget/AppWidgetHostView;
    .param p1, "newOptions"    # Landroid/os/Bundle;
    .param p2, "minWidth"    # I
    .param p3, "minHeight"    # I
    .param p4, "maxWidth"    # I
    .param p5, "maxHeight"    # I
    .param p6, "ignorePadding"    # Z

    .prologue
    .line 117
    if-eqz p0, :cond_0

    .line 118
    invoke-virtual/range {p0 .. p6}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIIIZ)V

    .line 120
    :cond_0
    return-void
.end method
