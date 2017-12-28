.class Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$4;
.super Ljava/lang/Object;
.source "BNRClientHelper.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$SyncServiceHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->setServiceHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$4;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 206
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 207
    .local v9, "result":Landroid/os/Bundle;
    const-string v13, "start"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 208
    .local v11, "start":I
    const-string v13, "max_count"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 209
    .local v7, "max_count":I
    const/4 v8, 0x0

    .line 210
    .local v8, "path":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 211
    .local v10, "size":[J
    const/4 v6, 0x0

    .line 212
    .local v6, "isExternal":[Z
    const/4 v12, 0x0

    .line 213
    .local v12, "timeStamp":[J
    const/4 v4, 0x0

    .line 214
    .local v4, "index":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$4;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v13}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "GET_FILE_META, s: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", m: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$4;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v13}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$200(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v13, v0, v11, v7}, Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;->getFileMeta(Landroid/content/Context;II)Ljava/util/ArrayList;

    move-result-object v3

    .line 216
    .local v3, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;>;"
    if-nez v3, :cond_0

    .line 217
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$4;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v13}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "GET_FILE_META, nothing to backup"

    invoke-static {v13, v14}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v13, "is_continue"

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 219
    const-string v13, "is_success"

    const/4 v14, 0x1

    invoke-virtual {v9, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 244
    :goto_0
    return-object v9

    .line 220
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-nez v13, :cond_1

    .line 221
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$4;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v13}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "GET_FILE_META, value is incorrect, return err"

    invoke-static {v13, v14}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v13, "is_success"

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 224
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$4;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v13}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "GET_FILE_META, c: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v8, v13, [Ljava/lang/String;

    .line 226
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v10, v13, [J

    .line 227
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v6, v13, [Z

    .line 228
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v12, v13, [J

    .line 230
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;

    .line 231
    .local v2, "file":Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$4;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v14}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "GET_FILE_META, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->getSize()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->getisExternal()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->getTimeStamp()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->getPath()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v8, v4

    .line 233
    invoke-virtual {v2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->getSize()J

    move-result-wide v14

    aput-wide v14, v10, v4

    .line 234
    invoke-virtual {v2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->getisExternal()Z

    move-result v14

    aput-boolean v14, v6, v4

    .line 235
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    invoke-virtual {v2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->getTimeStamp()J

    move-result-wide v14

    aput-wide v14, v12, v4

    move v4, v5

    .line 236
    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_1

    .line 237
    .end local v2    # "file":Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;
    :cond_2
    const-string v14, "is_continue"

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v13, v7, :cond_3

    const/4 v13, 0x0

    :goto_2
    invoke-virtual {v9, v14, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 238
    const-string v13, "path"

    invoke-virtual {v9, v13, v8}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 239
    const-string v13, "size"

    invoke-virtual {v9, v13, v10}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 240
    const-string v13, "external"

    invoke-virtual {v9, v13, v6}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 241
    const-string v13, "timestamp"

    invoke-virtual {v9, v13, v12}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 242
    const-string v13, "is_success"

    const/4 v14, 0x1

    invoke-virtual {v9, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 237
    :cond_3
    const/4 v13, 0x1

    goto :goto_2
.end method
