.class Landroid/drm/DrmManagerClient$EventHandler;
.super Landroid/os/Handler;
.source "DrmManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/drm/DrmManagerClient;


# direct methods
.method public constructor <init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 135
    iput-object p1, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    .line 136
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 137
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 28
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 140
    const/4 v8, 0x0

    .line 141
    .local v8, "event":Landroid/drm/DrmEvent;
    const/4 v7, 0x0

    .line 142
    .local v7, "error":Landroid/drm/DrmErrorEvent;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 144
    .local v3, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_0

    .line 229
    const-string v25, "DrmManagerClient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Unknown message type "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 146
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/drm/DrmInfo;

    .line 148
    .local v6, "drmInfo":Landroid/drm/DrmInfo;
    invoke-virtual {v6}, Landroid/drm/DrmInfo;->getMimeType()Ljava/lang/String;

    move-result-object v20

    .line 149
    .local v20, "strDRMType":Ljava/lang/String;
    const/4 v13, 0x0

    .line 150
    .local v13, "is":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 151
    .local v9, "fd":Ljava/io/FileDescriptor;
    const/4 v10, 0x0

    .line 152
    .local v10, "file":Ljava/io/File;
    const-string v25, "Path"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 153
    .local v17, "path":Ljava/lang/String;
    const-string v25, "URI"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/net/Uri;

    .line 154
    .local v24, "uri":Landroid/net/Uri;
    const-string v25, "application/vnd.oma.drm.message"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_1

    const-string v25, "application/x-android-drm-fl"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_1

    const-string v25, "application/vnd.oma.drm.content"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_7

    :cond_1
    const/4 v4, 0x1

    .line 157
    .local v4, "bIsOMAType":Z
    :goto_1
    if-eqz v4, :cond_2

    if-eqz v24, :cond_2

    if-nez v17, :cond_2

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    # invokes: Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v23

    .line 160
    .local v23, "strPath":Ljava/lang/String;
    const/16 v25, 0x1

    invoke-virtual {v6}, Landroid/drm/DrmInfo;->getInfoType()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_8

    .line 162
    const-string v25, "ReqisterPlaybackPath"

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/drm/DrmInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    .end local v23    # "strPath":Ljava/lang/String;
    :cond_2
    :goto_2
    if-eqz v4, :cond_9

    const/16 v25, 0x4

    invoke-virtual {v6}, Landroid/drm/DrmInfo;->getInfoType()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_3

    const/16 v25, 0x3

    invoke-virtual {v6}, Landroid/drm/DrmInfo;->getInfoType()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    :cond_3
    const/4 v5, 0x1

    .line 172
    .local v5, "bNeedToGetFileDescriptor":Z
    :goto_3
    if-eqz v5, :cond_a

    if-eqz v24, :cond_a

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    # invokes: Landroid/drm/DrmManagerClient;->GetFileDescriptorFromProvider(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    invoke-static {v0, v1}, Landroid/drm/DrmManagerClient;->access$100(Landroid/drm/DrmManagerClient;Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v18

    .line 174
    .local v18, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    .line 175
    invoke-virtual {v9}, Ljava/io/FileDescriptor;->toString()Ljava/lang/String;

    move-result-object v21

    .line 176
    .local v21, "strFD":Ljava/lang/String;
    const-string v25, "["

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 177
    .local v15, "nBeginIndex":I
    const-string v25, "]"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    .line 178
    .local v16, "nEndIndex":I
    add-int/lit8 v25, v15, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v25

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 179
    .local v22, "strFDNumber":Ljava/lang/String;
    const-string v25, "FileDescriptorKey"

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Landroid/drm/DrmInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    .end local v15    # "nBeginIndex":I
    .end local v16    # "nEndIndex":I
    .end local v18    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v21    # "strFD":Ljava/lang/String;
    .end local v22    # "strFDNumber":Ljava/lang/String;
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v26, v0

    # getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static/range {v26 .. v26}, Landroid/drm/DrmManagerClient;->access$300(Landroid/drm/DrmManagerClient;)I

    move-result v26

    move-object/from16 v0, v25

    move/from16 v1, v26

    # invokes: Landroid/drm/DrmManagerClient;->_processDrmInfo(ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;
    invoke-static {v0, v1, v6}, Landroid/drm/DrmManagerClient;->access$400(Landroid/drm/DrmManagerClient;ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;

    move-result-object v19

    .line 200
    .local v19, "status":Landroid/drm/DrmInfoStatus;
    if-eqz v13, :cond_5

    .line 202
    :try_start_0
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :cond_5
    :goto_5
    const-string v25, "drm_info_status_object"

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v25, "drm_info_object"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    if-eqz v19, :cond_c

    const/16 v25, 0x1

    move-object/from16 v0, v19

    iget v0, v0, Landroid/drm/DrmInfoStatus;->statusCode:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    .line 210
    new-instance v8, Landroid/drm/DrmEvent;

    .end local v8    # "event":Landroid/drm/DrmEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v25, v0

    # getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static/range {v25 .. v25}, Landroid/drm/DrmManagerClient;->access$300(Landroid/drm/DrmManagerClient;)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v26, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/drm/DrmInfoStatus;->infoType:I

    move/from16 v27, v0

    # invokes: Landroid/drm/DrmManagerClient;->getEventType(I)I
    invoke-static/range {v26 .. v27}, Landroid/drm/DrmManagerClient;->access$500(Landroid/drm/DrmManagerClient;I)I

    move-result v26

    const/16 v27, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v8, v0, v1, v2, v3}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    .line 232
    .end local v4    # "bIsOMAType":Z
    .end local v5    # "bNeedToGetFileDescriptor":Z
    .end local v6    # "drmInfo":Landroid/drm/DrmInfo;
    .end local v9    # "fd":Ljava/io/FileDescriptor;
    .end local v10    # "file":Ljava/io/File;
    .end local v13    # "is":Ljava/io/FileInputStream;
    .end local v17    # "path":Ljava/lang/String;
    .end local v19    # "status":Landroid/drm/DrmInfoStatus;
    .end local v20    # "strDRMType":Ljava/lang/String;
    .end local v24    # "uri":Landroid/net/Uri;
    .restart local v8    # "event":Landroid/drm/DrmEvent;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v25, v0

    # getter for: Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;
    invoke-static/range {v25 .. v25}, Landroid/drm/DrmManagerClient;->access$800(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnEventListener;

    move-result-object v25

    if-eqz v25, :cond_6

    if-eqz v8, :cond_6

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v25, v0

    # getter for: Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;
    invoke-static/range {v25 .. v25}, Landroid/drm/DrmManagerClient;->access$800(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnEventListener;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v8}, Landroid/drm/DrmManagerClient$OnEventListener;->onEvent(Landroid/drm/DrmManagerClient;Landroid/drm/DrmEvent;)V

    .line 235
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v25, v0

    # getter for: Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;
    invoke-static/range {v25 .. v25}, Landroid/drm/DrmManagerClient;->access$900(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    move-result-object v25

    if-eqz v25, :cond_0

    if-eqz v7, :cond_0

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v25, v0

    # getter for: Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;
    invoke-static/range {v25 .. v25}, Landroid/drm/DrmManagerClient;->access$900(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v7}, Landroid/drm/DrmManagerClient$OnErrorListener;->onError(Landroid/drm/DrmManagerClient;Landroid/drm/DrmErrorEvent;)V

    goto/16 :goto_0

    .line 154
    .restart local v6    # "drmInfo":Landroid/drm/DrmInfo;
    .restart local v9    # "fd":Ljava/io/FileDescriptor;
    .restart local v10    # "file":Ljava/io/File;
    .restart local v13    # "is":Ljava/io/FileInputStream;
    .restart local v17    # "path":Ljava/lang/String;
    .restart local v20    # "strDRMType":Ljava/lang/String;
    .restart local v24    # "uri":Landroid/net/Uri;
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 166
    .restart local v4    # "bIsOMAType":Z
    .restart local v23    # "strPath":Ljava/lang/String;
    :cond_8
    const-string v25, "Path"

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/drm/DrmInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 169
    .end local v23    # "strPath":Ljava/lang/String;
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 181
    .restart local v5    # "bNeedToGetFileDescriptor":Z
    :cond_a
    if-eqz v5, :cond_4

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    # invokes: Landroid/drm/DrmManagerClient;->isOMAContent(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Landroid/drm/DrmManagerClient;->access$200(Landroid/drm/DrmManagerClient;Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 183
    :try_start_1
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 184
    .end local v10    # "file":Ljava/io/File;
    .local v11, "file":Ljava/io/File;
    :try_start_2
    const-string v22, ""

    .line 185
    .restart local v22    # "strFDNumber":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_b

    .line 186
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 187
    .end local v13    # "is":Ljava/io/FileInputStream;
    .local v14, "is":Ljava/io/FileInputStream;
    :try_start_3
    invoke-virtual {v14}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    .line 188
    invoke-virtual {v9}, Ljava/io/FileDescriptor;->toString()Ljava/lang/String;

    move-result-object v21

    .line 189
    .restart local v21    # "strFD":Ljava/lang/String;
    const-string v25, "["

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 190
    .restart local v15    # "nBeginIndex":I
    const-string v25, "]"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    .line 191
    .restart local v16    # "nEndIndex":I
    add-int/lit8 v25, v15, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v25

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v22

    move-object v13, v14

    .line 193
    .end local v14    # "is":Ljava/io/FileInputStream;
    .end local v15    # "nBeginIndex":I
    .end local v16    # "nEndIndex":I
    .end local v21    # "strFD":Ljava/lang/String;
    .restart local v13    # "is":Ljava/io/FileInputStream;
    :cond_b
    :try_start_4
    const-string v25, "FileDescriptorKey"

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Landroid/drm/DrmInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v10, v11

    .line 195
    .end local v11    # "file":Ljava/io/File;
    .restart local v10    # "file":Ljava/io/File;
    goto/16 :goto_4

    .line 213
    .end local v22    # "strFDNumber":Ljava/lang/String;
    .restart local v19    # "status":Landroid/drm/DrmInfoStatus;
    :cond_c
    if-eqz v19, :cond_d

    move-object/from16 v0, v19

    iget v12, v0, Landroid/drm/DrmInfoStatus;->infoType:I

    .line 214
    .local v12, "infoType":I
    :goto_7
    new-instance v7, Landroid/drm/DrmErrorEvent;

    .end local v7    # "error":Landroid/drm/DrmErrorEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v25, v0

    # getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static/range {v25 .. v25}, Landroid/drm/DrmManagerClient;->access$300(Landroid/drm/DrmManagerClient;)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    # invokes: Landroid/drm/DrmManagerClient;->getErrorType(I)I
    invoke-static {v0, v12}, Landroid/drm/DrmManagerClient;->access$600(Landroid/drm/DrmManagerClient;I)I

    move-result v26

    const/16 v27, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    .line 217
    .restart local v7    # "error":Landroid/drm/DrmErrorEvent;
    goto/16 :goto_6

    .line 213
    .end local v12    # "infoType":I
    :cond_d
    invoke-virtual {v6}, Landroid/drm/DrmInfo;->getInfoType()I

    move-result v12

    goto :goto_7

    .line 220
    .end local v4    # "bIsOMAType":Z
    .end local v5    # "bNeedToGetFileDescriptor":Z
    .end local v6    # "drmInfo":Landroid/drm/DrmInfo;
    .end local v9    # "fd":Ljava/io/FileDescriptor;
    .end local v10    # "file":Ljava/io/File;
    .end local v13    # "is":Ljava/io/FileInputStream;
    .end local v17    # "path":Ljava/lang/String;
    .end local v19    # "status":Landroid/drm/DrmInfoStatus;
    .end local v20    # "strDRMType":Ljava/lang/String;
    .end local v24    # "uri":Landroid/net/Uri;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v26, v0

    # getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static/range {v26 .. v26}, Landroid/drm/DrmManagerClient;->access$300(Landroid/drm/DrmManagerClient;)I

    move-result v26

    # invokes: Landroid/drm/DrmManagerClient;->_removeAllRights(I)I
    invoke-static/range {v25 .. v26}, Landroid/drm/DrmManagerClient;->access$700(Landroid/drm/DrmManagerClient;I)I

    move-result v25

    if-nez v25, :cond_e

    .line 221
    new-instance v8, Landroid/drm/DrmEvent;

    .end local v8    # "event":Landroid/drm/DrmEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v25, v0

    # getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static/range {v25 .. v25}, Landroid/drm/DrmManagerClient;->access$300(Landroid/drm/DrmManagerClient;)I

    move-result v25

    const/16 v26, 0x3e9

    const/16 v27, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v8, v0, v1, v2}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;)V

    .restart local v8    # "event":Landroid/drm/DrmEvent;
    goto/16 :goto_6

    .line 223
    :cond_e
    new-instance v7, Landroid/drm/DrmErrorEvent;

    .end local v7    # "error":Landroid/drm/DrmErrorEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v25, v0

    # getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static/range {v25 .. v25}, Landroid/drm/DrmManagerClient;->access$300(Landroid/drm/DrmManagerClient;)I

    move-result v25

    const/16 v26, 0x7d7

    const/16 v27, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v7, v0, v1, v2}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;)V

    .line 226
    .restart local v7    # "error":Landroid/drm/DrmErrorEvent;
    goto/16 :goto_6

    .line 203
    .restart local v4    # "bIsOMAType":Z
    .restart local v5    # "bNeedToGetFileDescriptor":Z
    .restart local v6    # "drmInfo":Landroid/drm/DrmInfo;
    .restart local v9    # "fd":Ljava/io/FileDescriptor;
    .restart local v10    # "file":Ljava/io/File;
    .restart local v13    # "is":Ljava/io/FileInputStream;
    .restart local v17    # "path":Ljava/lang/String;
    .restart local v19    # "status":Landroid/drm/DrmInfoStatus;
    .restart local v20    # "strDRMType":Ljava/lang/String;
    .restart local v24    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v25

    goto/16 :goto_5

    .line 194
    .end local v19    # "status":Landroid/drm/DrmInfoStatus;
    :catch_1
    move-exception v25

    goto/16 :goto_4

    .end local v10    # "file":Ljava/io/File;
    .restart local v11    # "file":Ljava/io/File;
    :catch_2
    move-exception v25

    move-object v10, v11

    .end local v11    # "file":Ljava/io/File;
    .restart local v10    # "file":Ljava/io/File;
    goto/16 :goto_4

    .end local v10    # "file":Ljava/io/File;
    .end local v13    # "is":Ljava/io/FileInputStream;
    .restart local v11    # "file":Ljava/io/File;
    .restart local v14    # "is":Ljava/io/FileInputStream;
    .restart local v22    # "strFDNumber":Ljava/lang/String;
    :catch_3
    move-exception v25

    move-object v10, v11

    .end local v11    # "file":Ljava/io/File;
    .restart local v10    # "file":Ljava/io/File;
    move-object v13, v14

    .end local v14    # "is":Ljava/io/FileInputStream;
    .restart local v13    # "is":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
