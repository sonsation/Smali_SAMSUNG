.class Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;
.super Landroid/os/Handler;
.source "PrivateModeFileOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private getMovedPrivateResultMessage(I)Ljava/lang/String;
    .locals 7
    .param p1, "cnt"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 251
    const/4 v1, 0x0

    .line 252
    .local v1, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$400(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->getAlreadyMovedCount()I

    move-result v0

    .line 253
    .local v0, "alreadyMovedCount":I
    iget-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$400(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->isFolder()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 254
    if-lez v0, :cond_4

    .line 255
    if-ne v0, v4, :cond_1

    if-ne p1, v4, :cond_1

    .line 256
    iget-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$300(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a010c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 293
    :cond_0
    :goto_0
    return-object v1

    .line 257
    :cond_1
    if-ne v0, v4, :cond_2

    if-le p1, v4, :cond_2

    .line 258
    iget-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$300(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0110

    new-array v4, v4, [Ljava/lang/Object;

    .line 259
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 258
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 260
    :cond_2
    if-le v0, v4, :cond_3

    if-ne p1, v4, :cond_3

    .line 261
    iget-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$300(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a010d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 263
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$300(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0111

    new-array v4, v4, [Ljava/lang/Object;

    .line 264
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 263
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 267
    :cond_4
    if-ne p1, v4, :cond_5

    .line 268
    iget-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$300(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0114

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 270
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$300(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0116

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 274
    :cond_6
    if-lez v0, :cond_a

    .line 275
    if-ne v0, v4, :cond_7

    if-ne p1, v4, :cond_7

    .line 276
    iget-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$300(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a010e

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 277
    :cond_7
    if-ne v0, v4, :cond_8

    if-le p1, v4, :cond_8

    .line 278
    iget-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$300(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0113

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 279
    :cond_8
    if-le v0, v4, :cond_9

    if-ne p1, v4, :cond_9

    .line 280
    iget-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$300(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a010f

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 282
    :cond_9
    iget-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$300(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0112

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 285
    :cond_a
    if-ne p1, v4, :cond_b

    .line 286
    iget-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$300(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0115

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 287
    :cond_b
    if-le p1, v4, :cond_0

    .line 288
    iget-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$300(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0117

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private getMovedPublicResultMessage(I)Ljava/lang/String;
    .locals 8
    .param p1, "cnt"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 297
    if-nez p1, :cond_0

    .line 298
    const/4 v1, 0x0

    .line 329
    :goto_0
    return-object v1

    .line 301
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$400(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->getDestPath()Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "destPath":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$400(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->isFolder()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 303
    if-ne p1, v6, :cond_1

    .line 304
    iget-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$300(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0167

    new-array v4, v6, [Ljava/lang/Object;

    sget-object v5, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->RESTORE_MUSIC_PATH:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "message":Ljava/lang/String;
    goto :goto_0

    .line 307
    .end local v1    # "message":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$300(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a016a

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    sget-object v5, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->RESTORE_MUSIC_PATH:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "message":Ljava/lang/String;
    goto :goto_0

    .line 311
    .end local v1    # "message":Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->RESTORE_MUSIC_PATH:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 312
    if-ne p1, v6, :cond_3

    .line 313
    iget-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$300(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0168

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    sget-object v5, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->RESTORE_MUSIC_PATH:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "message":Ljava/lang/String;
    goto :goto_0

    .line 316
    .end local v1    # "message":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$300(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a016b

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    sget-object v5, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->RESTORE_MUSIC_PATH:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "message":Ljava/lang/String;
    goto/16 :goto_0

    .line 320
    .end local v1    # "message":Ljava/lang/String;
    :cond_4
    if-ne p1, v6, :cond_5

    .line 321
    iget-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$300(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0169

    new-array v4, v6, [Ljava/lang/Object;

    .line 322
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 321
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "message":Ljava/lang/String;
    goto/16 :goto_0

    .line 324
    .end local v1    # "message":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$300(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a016c

    new-array v4, v6, [Ljava/lang/Object;

    .line 325
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 324
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "message":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private showToastMessage(I)V
    .locals 3
    .param p1, "cnt"    # I

    .prologue
    .line 235
    iget-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$400(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 236
    iget-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$400(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->isMoveToPrivate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->getMovedPrivateResultMessage(I)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "message":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 246
    iget-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$300(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 248
    :cond_0
    return-void

    .line 239
    .end local v0    # "message":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->getMovedPublicResultMessage(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_0

    .line 242
    .end local v0    # "message":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$300(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00a4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_0

    .line 187
    const-string v5, "PrivateMode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mResultHandler - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 228
    :pswitch_0
    iget-object v5, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v5}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$600(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 191
    :pswitch_1
    :try_start_1
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Landroid/os/Bundle;

    if-eqz v5, :cond_1

    .line 192
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    .line 193
    .local v4, "value":Landroid/os/Bundle;
    const-string/jumbo v5, "progress"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 194
    .local v0, "count":I
    const-string v5, "curFilename"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "curFilename":Ljava/lang/String;
    const-string v5, "curPercent"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 196
    .local v2, "curPercent":I
    iget-object v5, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v5}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$500(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;

    move-result-object v5

    invoke-interface {v5, v0, v1, v2}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;->onUpdateProgress(ILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 186
    .end local v0    # "count":I
    .end local v1    # "curFilename":Ljava/lang/String;
    .end local v2    # "curPercent":I
    .end local v4    # "value":Landroid/os/Bundle;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 200
    :pswitch_2
    :try_start_2
    iget-object v5, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$002(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;I)I

    .line 201
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 202
    iget-object v5, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v5}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$500(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;

    move-result-object v6

    iget-object v5, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v5}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$000(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)I

    move-result v7

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-interface {v6, v7, v5}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;->onStateChanged(ILjava/lang/String;)V

    goto :goto_0

    .line 206
    :pswitch_3
    iget-object v5, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$002(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;I)I

    .line 207
    iget-object v5, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    .line 208
    invoke-static {v5}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$300(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a013e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "error":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v5}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$500(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v6}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$000(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)I

    move-result v6

    invoke-interface {v5, v6, v3}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;->onStateChanged(ILjava/lang/String;)V

    .line 210
    iget-object v5, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v5}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$600(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)V

    goto :goto_0

    .line 213
    .end local v3    # "error":Ljava/lang/String;
    :pswitch_4
    iget-object v5, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$002(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;I)I

    .line 214
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 215
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->showToastMessage(I)V

    .line 217
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v5}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$600(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)V

    goto/16 :goto_0

    .line 220
    :pswitch_5
    iget-object v5, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$002(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;I)I

    .line 221
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Integer;

    if-eqz v5, :cond_3

    .line 222
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->showToastMessage(I)V

    .line 224
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v5}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$500(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v6}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$000(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)I

    move-result v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;->onStateChanged(ILjava/lang/String;)V

    .line 225
    iget-object v5, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v5}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->access$600(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
