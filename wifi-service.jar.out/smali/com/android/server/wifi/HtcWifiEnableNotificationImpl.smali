.class Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;
.super Lcom/android/server/wifi/HtcWifiEnableNotification;
.source "HtcWifiEnableNotification.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcWifiEnableNotification"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnableConfDialog:Z

.field private mLabelStr:Ljava/lang/String;

.field private mWifiEnabledNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiService"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiEnableNotification;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;->mWifiEnabledNotificationList:Ljava/util/ArrayList;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;->mEnableConfDialog:Z

    .line 66
    iput-object p1, p0, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;->mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;

    .line 68
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;->parseXMLListHandler()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;->mWifiEnabledNotificationList:Ljava/util/ArrayList;

    .line 69
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;->mEnableConfDialog:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;)Lcom/android/server/wifi/WifiServiceImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;->mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;

    return-object v0
.end method

.method private parseXMLListHandler()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    .line 168
    const/4 v3, 0x0

    .line 169
    .local v3, "fileReader":Ljava/io/FileReader;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v9, "whiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 172
    .local v2, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 174
    .local v10, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v4, Ljava/io/FileReader;

    const-string v11, "/system/etc/wifienablenotifylist.xml"

    invoke-direct {v4, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .local v4, "fileReader":Ljava/io/FileReader;
    const/4 v5, 0x0

    .line 177
    .local v5, "isPkgTag":Z
    const/4 v6, 0x0

    .line 179
    .local v6, "isWhiteTag":Z
    :try_start_1
    invoke-interface {v10, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 180
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 181
    .local v1, "eventType":I
    :goto_0
    if-eq v13, v1, :cond_4

    .line 182
    packed-switch v1, :pswitch_data_0

    .line 221
    :cond_0
    :goto_1
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 184
    :pswitch_0
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 185
    .local v7, "strTag":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 186
    const-string v11, "WhiteList"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 187
    const/4 v6, 0x1

    goto :goto_1

    .line 188
    :cond_1
    const-string v11, "Package"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 189
    const/4 v5, 0x1

    goto :goto_1

    .line 196
    .end local v7    # "strTag":Ljava/lang/String;
    :pswitch_1
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 197
    .restart local v7    # "strTag":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 198
    const-string v11, "WhiteList"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 199
    const/4 v6, 0x0

    goto :goto_1

    .line 200
    :cond_2
    const-string v11, "Package"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 201
    const/4 v5, 0x0

    goto :goto_1

    .line 208
    .end local v7    # "strTag":Ljava/lang/String;
    :pswitch_2
    if-ne v13, v5, :cond_0

    .line 209
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    .line 210
    .local v8, "strText":Ljava/lang/String;
    if-ne v13, v6, :cond_0

    .line 211
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WifiEnabledNotificationList: WhiteList:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 223
    .end local v1    # "eventType":I
    .end local v8    # "strText":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 224
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .end local v5    # "isPkgTag":Z
    .end local v6    # "isWhiteTag":Z
    .end local v10    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    :goto_2
    :try_start_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 225
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 227
    if-eqz v3, :cond_3

    .line 229
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 235
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    return-object v9

    .line 227
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "eventType":I
    .restart local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "isPkgTag":Z
    .restart local v6    # "isWhiteTag":Z
    .restart local v10    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_4
    if-eqz v4, :cond_6

    .line 229
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v3, v4

    .line 232
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .line 230
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_1
    move-exception v0

    .line 231
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;->loge(Ljava/lang/String;)V

    move-object v3, v4

    .line 232
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .line 230
    .end local v1    # "eventType":I
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "isPkgTag":Z
    .end local v6    # "isWhiteTag":Z
    .end local v10    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v0

    .line 231
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;->loge(Ljava/lang/String;)V

    goto :goto_3

    .line 227
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    :goto_4
    if-eqz v3, :cond_5

    .line 229
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 232
    :cond_5
    :goto_5
    throw v11

    .line 230
    :catch_3
    move-exception v0

    .line 231
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;->loge(Ljava/lang/String;)V

    goto :goto_5

    .line 227
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "isPkgTag":Z
    .restart local v6    # "isWhiteTag":Z
    .restart local v10    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_1
    move-exception v11

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_4

    .line 223
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "isPkgTag":Z
    .end local v6    # "isWhiteTag":Z
    .end local v10    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_4
    move-exception v0

    goto :goto_2

    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "eventType":I
    .restart local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "isPkgTag":Z
    .restart local v6    # "isWhiteTag":Z
    .restart local v10    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_6
    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .line 182
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public isWifiEnableNotifyPackageName(Ljava/lang/String;)Z
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 83
    iget-object v3, p0, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;->mWifiEnabledNotificationList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;->mWifiEnabledNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v2

    .line 87
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_0

    .line 91
    iget-object v3, p0, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;->mWifiEnabledNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 92
    .local v1, "pack":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 96
    .end local v1    # "pack":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 72
    const-string v0, "HtcWifiEnableNotification"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 75
    const-string v0, "HtcWifiEnableNotification"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method public setWifiEnableNotify(Lcom/android/server/wifi/WifiController;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "wifiController"    # Lcom/android/server/wifi/WifiController;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "labelStr"    # Ljava/lang/String;

    .prologue
    .line 100
    const v1, 0x26014

    invoke-virtual {p1, v1}, Lcom/android/server/wifi/WifiController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 101
    .local v0, "msg":Landroid/os/Message;
    iput-object p3, p0, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;->mLabelStr:Ljava/lang/String;

    .line 102
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 103
    invoke-virtual {p1, v0}, Lcom/android/server/wifi/WifiController;->sendMessage(Landroid/os/Message;)V

    .line 104
    const/4 v1, 0x1

    return v1
.end method

.method public showAlertDialog()V
    .locals 7

    .prologue
    .line 109
    iget-boolean v4, p0, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;->mEnableConfDialog:Z

    if-nez v4, :cond_0

    .line 110
    iget-object v3, p0, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;->mLabelStr:Ljava/lang/String;

    .line 111
    .local v3, "labelName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10700cf

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10700d0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "body":Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10700ce

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10700d1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl$4;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl$4;-><init>(Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10700d2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl$3;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl$3;-><init>(Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl$2;

    invoke-direct {v5, p0}, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl$2;-><init>(Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl$1;

    invoke-direct {v5, p0}, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl$1;-><init>(Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 155
    .local v1, "confirmDialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 156
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 157
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 158
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;->mEnableConfDialog:Z

    .line 163
    .end local v0    # "body":Ljava/lang/String;
    .end local v1    # "confirmDialog":Landroid/app/AlertDialog$Builder;
    .end local v2    # "dialog":Landroid/app/AlertDialog;
    .end local v3    # "labelName":Ljava/lang/String;
    :goto_0
    return-void

    .line 160
    :cond_0
    const-string v4, "Do not pop-out setwifienable dialog since it does not get response yet !"

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/HtcWifiEnableNotificationImpl;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
