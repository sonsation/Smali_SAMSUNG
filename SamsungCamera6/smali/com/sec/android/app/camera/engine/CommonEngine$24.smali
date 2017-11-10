.class Lcom/sec/android/app/camera/engine/CommonEngine$24;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/engine/CommonEngine;->dbUpdateByThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/engine/CommonEngine;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$24;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    :try_start_0
    iget-object v12, p0, Lcom/sec/android/app/camera/engine/CommonEngine$24;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v12, v12, Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstDBUpdateStack:Ljava/util/Stack;

    invoke-virtual {v12}, Ljava/util/Stack;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_8

    iget-object v12, p0, Lcom/sec/android/app/camera/engine/CommonEngine$24;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v12, v12, Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstDBUpdateStack:Ljava/util/Stack;

    invoke-virtual {v12}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ContentValues;

    if-eqz v11, :cond_7

    const-string v12, "_data"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    iget-object v12, p0, Lcom/sec/android/app/camera/engine/CommonEngine$24;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4402(Lcom/sec/android/app/camera/engine/CommonEngine;Z)Z

    const-string v12, "CommonEngine"

    const-string v13, "lastImage is not exists physically yet"

    invoke-static {v12, v13}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v12, p0, Lcom/sec/android/app/camera/engine/CommonEngine$24;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4402(Lcom/sec/android/app/camera/engine/CommonEngine;Z)Z

    iget-object v12, p0, Lcom/sec/android/app/camera/engine/CommonEngine$24;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v12}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3700(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v12

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/sec/android/app/camera/engine/CommonEngine$24;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v12}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3700(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/app/camera/util/ContentData;->setContentVideoType(Z)V

    :cond_1
    iget-object v12, p0, Lcom/sec/android/app/camera/engine/CommonEngine$24;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v12, v12, Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstDBUpdateStack:Ljava/util/Stack;

    invoke-virtual {v12}, Ljava/util/Stack;->size()I

    move-result v12

    if-lez v12, :cond_6

    iget-object v12, p0, Lcom/sec/android/app/camera/engine/CommonEngine$24;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v12, v12, Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstDBUpdateStack:Ljava/util/Stack;

    iget-object v13, p0, Lcom/sec/android/app/camera/engine/CommonEngine$24;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v13, v13, Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstDBUpdateStack:Ljava/util/Stack;

    invoke-virtual {v13}, Ljava/util/Stack;->size()I

    move-result v13

    new-array v13, v13, [Landroid/content/ContentValues;

    invoke-virtual {v12, v13}, Ljava/util/Stack;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/ContentValues;

    const-string v12, "CommonEngine"

    const-string v13, "db insert E"

    invoke-static {v12, v13}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, p0, Lcom/sec/android/app/camera/engine/CommonEngine$24;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v13, p0, Lcom/sec/android/app/camera/engine/CommonEngine$24;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v13, v13, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v13}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13, v14, v6}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v13

    invoke-static {v12, v13}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4502(Lcom/sec/android/app/camera/engine/CommonEngine;I)I

    const-string v12, "CommonEngine"

    const-string v13, "db insert X"

    invoke-static {v12, v13}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "CommonEngine"

    const-string v13, "SEF insert E"

    invoke-static {v12, v13}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, p0, Lcom/sec/android/app/camera/engine/CommonEngine$24;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v12, v12, Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstDBUpdateStack:Ljava/util/Stack;

    invoke-virtual {v12}, Ljava/util/Stack;->size()I

    move-result v4

    const-string v12, "datetaken"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    const-wide/16 v2, 0x0

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :cond_2
    iget-object v12, p0, Lcom/sec/android/app/camera/engine/CommonEngine$24;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v12, v1, v2, v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4600(Lcom/sec/android/app/camera/engine/CommonEngine;Ljava/lang/String;J)V

    move v5, v4

    :goto_1
    add-int/lit8 v4, v5, -0x1

    if-lez v5, :cond_5

    iget-object v12, p0, Lcom/sec/android/app/camera/engine/CommonEngine$24;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v12, v12, Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstDBUpdateStack:Ljava/util/Stack;

    invoke-virtual {v12, v4}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    if-eqz v10, :cond_3

    const-string v12, "_data"

    invoke-virtual {v10, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v12, "datetaken"

    invoke-virtual {v10, v12}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_2
    iget-object v12, p0, Lcom/sec/android/app/camera/engine/CommonEngine$24;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v12, v0, v2, v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4600(Lcom/sec/android/app/camera/engine/CommonEngine;Ljava/lang/String;J)V

    :cond_3
    move v5, v4

    goto :goto_1

    :cond_4
    const-wide/16 v2, 0x0

    goto :goto_2

    :cond_5
    const-string v12, "CommonEngine"

    const-string v13, "SEF insert X"

    invoke-static {v12, v13}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v12, p0, Lcom/sec/android/app/camera/engine/CommonEngine$24;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v12, v11}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4700(Lcom/sec/android/app/camera/engine/CommonEngine;Landroid/content/ContentValues;)V

    :cond_7
    iget-object v12, p0, Lcom/sec/android/app/camera/engine/CommonEngine$24;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v12, v12, Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstDBUpdateStack:Ljava/util/Stack;

    invoke-virtual {v12}, Ljava/util/Stack;->removeAllElements()V

    :goto_3
    iget-object v12, p0, Lcom/sec/android/app/camera/engine/CommonEngine$24;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4802(Lcom/sec/android/app/camera/engine/CommonEngine;Ljava/lang/Thread;)Ljava/lang/Thread;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v8

    const-string v12, "CommonEngine"

    const-string v13, "Not enough space in database"

    invoke-static {v12, v13}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, p0, Lcom/sec/android/app/camera/engine/CommonEngine$24;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v12, v12, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v13, 0x7f0a01c2

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_8
    :try_start_1
    const-string v12, "CommonEngine"

    const-string v13, "BurstDBupdateStack is Empty"

    invoke-static {v12, v13}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
